/**
 @file
 evi.cfsmooth~ - A non-exact signal smoother,
 specifically suited to filter frequency smoothing
 based on Andy Simper's tpt svf smoother concept
 */

#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include <math.h>

#define MAX_NUM_SMOOTHERS 2

static t_class* evi_cfsmooth_class;

// one filter, separated for banks, only used for "multi"
// typedef struct _evi_cfso
// {
//     double o_low1; // state 1
//     double o_low2; // state 2
//     double o_dest; // float dest val
// } t_evi_cfso;

// object
typedef struct _evi_cfsmooth
{
    t_pxobject p_sob;
    // t_evi_cfso p_cfso[MAX_NUM_SMOOTHERS];

    double s_low1; // state 1
    double s_low2; // state 2
    double s_inz; // prev in for cubic only

    double s_g0; // coefficient 1
    double s_s0; // coefficient 2
    double s_wc; // cubic coefficient

    double s_initial; // init arg
    double s_dest; // float dest val
    double s_hz; // smooth hz
    double s_ms; // ramp time

    double s_sr; // cache samplerate
    double s_eviivsr; // cache PI / samplerate
    long s_banks; // # of smoothers/outlets (instantiation @ttribute only)
    long s_mode; // mode of operation, 0=linear / 1=cubic

    short s_inconnect[MAX_NUM_SMOOTHERS]; // is a signal connected to the inlet(s)
    short s_msconnect; // is a signal connected to the milliseconds inlet
    short s_isinitial; // is new instantiation
} t_evi_cfsmooth;

// void evi_cfsmooth_free(t_evi_cfsmooth* x);
void evi_cfsmooth_dsp64(t_evi_cfsmooth* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags);
void evi_cfsmooth_linear_perform64(t_evi_cfsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_cfsmooth_linear_perform_float64(t_evi_cfsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_cfsmooth_cubic_perform64(t_evi_cfsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_cfsmooth_cubic_perform_float64(t_evi_cfsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_cfsmooth_int(t_evi_cfsmooth* x, long n);
void evi_cfsmooth_float(t_evi_cfsmooth* x, double f);
void evi_cfsmooth_coefficients(t_evi_cfsmooth* x);
void evi_cfsmooth_linear_coefficients(t_evi_cfsmooth* x);
void evi_cfsmooth_cubic_coefficients(t_evi_cfsmooth* x);
t_max_err evi_cfsmooth_attr_sethz(t_evi_cfsmooth* x, void* attr, long argc, t_atom* argv);
t_max_err evi_cfsmooth_attr_setms(t_evi_cfsmooth* x, void* attr, long argc, t_atom* argv);
t_max_err evi_cfsmooth_attr_setbanks(t_evi_cfsmooth* x, void* attr, long argc, t_atom* argv);
t_max_err evi_cfsmooth_attr_setmode(t_evi_cfsmooth* x, void* attr, long argc, t_atom* argv);
void evi_cfsmooth_clear(t_evi_cfsmooth* x);
void evi_cfsmooth_assist(t_evi_cfsmooth* x, void* b, long m, long a, char* s);
void* evi_cfsmooth_new(t_symbol* s, long argc, t_atom* argv);
static inline double evi_exp_A(double x0);
static inline double evi_tau_A(double t, double sr);
static inline double evi_tan_A(double x);

C74_EXPORT void ext_main(void* r)
{
    t_class* c;

    c = class_new("evi.cfsmooth~", (method)evi_cfsmooth_new, (method)dsp_free, sizeof(t_evi_cfsmooth), 0L, A_GIMME, 0);

    class_addmethod(c, (method)evi_cfsmooth_dsp64, "dsp64", A_CANT, 0);
    class_addmethod(c, (method)evi_cfsmooth_assist, "assist", A_CANT, 0);
    class_addmethod(c, (method)evi_cfsmooth_clear, "clear", 0); // not needed :-)
    class_addmethod(c, (method)evi_cfsmooth_int, "int", A_LONG, 0);
    class_addmethod(c, (method)evi_cfsmooth_float, "float", A_FLOAT, 0);

    CLASS_ATTR_DOUBLE(c, "hz", 0, t_evi_cfsmooth, s_hz);
    CLASS_ATTR_BASIC(c, "hz", 0);
    CLASS_ATTR_LABEL(c, "hz", 0, "Smoothing Filter in Hz");
    CLASS_ATTR_ACCESSORS(c, "hz", 0, evi_cfsmooth_attr_sethz);
    CLASS_ATTR_FILTER_CLIP(c, "hz", 0.01, 10.0);
    // CLASS_ATTR_DEFAULT(c, "hz", 0, "2.0"); // TODO

    CLASS_ATTR_DOUBLE(c, "time", 0, t_evi_cfsmooth, s_ms);
    CLASS_ATTR_BASIC(c, "time", 0);
    CLASS_ATTR_LABEL(c, "time", 0, "Smoothing Time in ms");
    CLASS_ATTR_ALIAS(c, "time", "smooth");
    CLASS_ATTR_ALIAS(c, "time", "ms");
    CLASS_ATTR_ACCESSORS(c, "time", 0, evi_cfsmooth_attr_setms);

    CLASS_ATTR_LONG(c, "banks", 0, t_evi_cfsmooth, s_banks);
    CLASS_ATTR_ACCESSORS(c, "banks", 0, evi_cfsmooth_attr_setbanks);
    CLASS_ATTR_LABEL(c, "banks", 0, "Number of Smoothers"); // not needed ?
    CLASS_ATTR_FILTER_CLIP(c, "banks", 1, MAX_NUM_SMOOTHERS);
    CLASS_ATTR_INVISIBLE(c, "banks", 0); // only instantiation @ttribute

    CLASS_ATTR_LONG(c, "mode", 0, t_evi_cfsmooth, s_mode);
    CLASS_ATTR_ACCESSORS(c, "mode", 0, evi_cfsmooth_attr_setmode);
    CLASS_ATTR_LABEL(c, "mode", 0, "Operation: Linear or Cubic"); // not needed ?
    CLASS_ATTR_FILTER_CLIP(c, "mode", 0, 1); // 0=linear, 1=cubic
    CLASS_ATTR_INVISIBLE(c, "mode", 0); // only instantiation @ttribute :-( :-(

    class_dspinit(c);
    class_register(CLASS_BOX, c);
    evi_cfsmooth_class = c;
}

// void evi_cfsmooth_free(t_evi_cfsmooth* x)
// {
//     dsp_free(&x->p_sob);
//     object_free(x->p_cfso);
// }

void evi_cfsmooth_dsp64(t_evi_cfsmooth* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags)
{
    long i;
    long anycount = 0;

    if (samplerate <= 0) {
        x->s_sr = 48000.0;
    } else {
        x->s_sr = samplerate;
    }
    x->s_eviivsr = PI / x->s_sr;
    evi_cfsmooth_coefficients(x);
    x->s_isinitial = 1;

    for (i = 0; i < x->s_banks; i++) {
        x->s_inconnect[i] = count[i]; // signal connected to the ramp inlet(s)?
        anycount += x->s_inconnect[i];
    }
    x->s_msconnect = count[x->s_banks]; // signal connected to the time inlet?

    evi_cfsmooth_clear(x);

    if (x->s_mode > 0) {
        if (anycount > 0 || count[x->s_banks]) {
            dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_cfsmooth_cubic_perform64, 0, NULL);
        }
        else {
            dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_cfsmooth_cubic_perform_float64, 0, NULL);
        }
    }
    else {
        if (anycount > 0 || count[x->s_banks]) {
            dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_cfsmooth_linear_perform64, 0, NULL);
        }
        else {
            dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_cfsmooth_linear_perform_float64, 0, NULL);
        }
    }
}

void evi_cfsmooth_linear_perform64(t_evi_cfsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out1 = outs[0];
    int vs = sampleframes;

    t_double xin = x->s_inconnect[0] ? *ins[0] : (x->s_isinitial ? x->s_initial : x->s_dest);
    t_double ms = x->s_msconnect ? *ins[x->s_banks] : x->s_ms;

    t_double low1 = x->s_low1;
    t_double low2 = x->s_low2;
    double hz = x->s_hz;
    double g0 = x->s_g0;
    double s0 = x->s_s0;
    double w0;
    double low1z, low2z, bandz, gz;

	if (x->p_sob.z_disabled)
		return;

    // constrain hz value
    hz = CLAMP(hz, 0.01, 10.0);
    // constrain ms value
    if (ms < 0.0) {
        ms = 0.0;
    }

    // do we need to recompute?
    if (ms != x->s_ms || hz != x->s_hz) {
        w0 = evi_tan_A(hz * x->s_eviivsr);
        x->s_g0 = g0 = (w0 + w0) / (1.0 + w0);
        x->s_s0 = s0 = (1.0 - evi_tau_A(ms * 0.001, x->s_sr)) * 4.0;
        x->s_ms = ms;
        x->s_hz = hz;
    }
    x->s_isinitial = 0;

    while (vs--) {

        low1z	= low1;
        low2z	= low2;
        bandz	= low1z - low2z;
        gz		= MIN(g0 + s0 * fabs(bandz), 1.0);

        low1	= low1z + gz * (xin - low1z);
        low2	= low2z + gz * (low1 - low2z);

        *out1++ = low2;
    }

    x->s_low1 = low1;
    x->s_low2 = low2;
}

void evi_cfsmooth_linear_perform_float64(t_evi_cfsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out1 = outs[0];
    int vs = sampleframes;

    double xin = x->s_isinitial ? x->s_initial : x->s_dest;
    double ms = x->s_ms;

    t_double low1 = x->s_low1;
    t_double low2 = x->s_isinitial ? x->s_initial : x->s_low2;
    double hz = x->s_hz;
    double g0 = x->s_g0;
    double s0 = x->s_s0;
    double w0;
    double low1z, low2z, bandz, gz;

	if (x->p_sob.z_disabled)
		return;

    // constrain hz value
    hz = CLAMP(hz, 0.01, 10.0);
    // constrain ms value
    if (ms < 0.0) {
        ms = 0.0;
    }

    // do we need to recompute?
    if (ms != x->s_ms || hz != x->s_hz) {
        w0 = evi_tan_A(hz * x->s_eviivsr);
        x->s_g0 = g0 = (w0 + w0) / (1.0 + w0);
        x->s_s0 = s0 = (1.0 - evi_tau_A(ms * 0.001, x->s_sr)) * 4.0;
        x->s_ms = ms;
        x->s_hz = hz;
    }
    x->s_isinitial = 0;

    while (vs--) {

        low1z	= low1;
        low2z	= low2;
        bandz	= low1z - low2z;
        gz		= MIN(g0 + s0 * fabs(bandz), 1.0);

        low1	= low1z + gz * (xin - low1z);
        low2	= low2z + gz * (low1 - low2z);

        *out1++ = low2;
    }

    x->s_low1 = low1;
    x->s_low2 = low2;
}

void evi_cfsmooth_cubic_perform64(t_evi_cfsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out1 = outs[0];
    int vs = sampleframes;

    t_double xin = x->s_inconnect[0] ? *ins[0] : (x->s_isinitial ? x->s_initial : x->s_dest);
    t_double ms = x->s_msconnect ? *ins[x->s_banks] : x->s_ms;

    t_double low1 = x->s_low1;
    t_double low2 = x->s_low2;
    t_double inz = x->s_inz;
    double hz = x->s_hz;
    double wc = x->s_wc;
    double s0 = x->s_s0;
    double low1z, low2z, bandz, gz, wd;

	if (x->p_sob.z_disabled)
		return;

    // constrain hz value
    hz = CLAMP(hz, 0.01, 10.0);
    // constrain ms value
    if (ms < 0.0) {
        ms = 0.0;
    }

    // do we need to recompute?
    if (ms != x->s_ms || hz != x->s_hz) {
	    x->s_wc = wc = hz / x->s_sr;
	    x->s_s0 = s0 = (1.0 - evi_tau_A(ms * 0.001, x->s_sr));
        x->s_ms = ms;
        x->s_hz = hz;
    }
    x->s_isinitial = 0;

    while (vs--) {

	    low1z	= low1;
	    low2z	= low2;

	    bandz	= low1z - low2z;
	    wd		= wc + s0 * fabs(bandz);
	    gz		= MIN(wd * (5.9948827 + wd * (-11.969296 + wd * 15.959062)), 1.0);

	    low1	= low1z + gz * (0.5 * (xin + inz) - low1z);
	    low2	= low2z + gz * (0.5 * (low1 + low1z) - low2z);
	    inz		= xin;

        *out1++ = low2;
    }

    x->s_low1 = low1;
    x->s_low2 = low2;
    x->s_inz = inz;
}

void evi_cfsmooth_cubic_perform_float64(t_evi_cfsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out1 = outs[0];
    int vs = sampleframes;

    double xin = x->s_isinitial ? x->s_initial : x->s_dest;
    double ms = x->s_ms;

    t_double low1 = x->s_low1;
    t_double low2 = x->s_low2;
    t_double inz = x->s_inz;
    double hz = x->s_hz;
    double wc = x->s_wc;
    double s0 = x->s_s0;
    double low1z, low2z, bandz, gz, wd;

	if (x->p_sob.z_disabled)
		return;

    // constrain hz value
    hz = CLAMP(hz, 0.01, 10.0);
    // constrain ms value
    if (ms < 0.0) {
        ms = 0.0;
    }

    // do we need to recompute?
    if (ms != x->s_ms || hz != x->s_hz) {
	    x->s_wc = wc = hz / x->s_sr;
	    x->s_s0 = s0 = (1.0 - evi_tau_A(ms * 0.001, x->s_sr));
        x->s_ms = ms;
        x->s_hz = hz;
    }
    x->s_isinitial = 0;

    while (vs--) {

	    low1z	= low1;
	    low2z	= low2;

	    bandz	= low1z - low2z;
	    wd		= wc + s0 * fabs(bandz);
	    gz		= MIN(wd * (5.9948827 + wd * (-11.969296 + wd * 15.959062)), 1.0);

	    low1	= low1z + gz * (0.5 * (xin + inz) - low1z);
	    low2	= low2z + gz * (0.5 * (low1 + low1z) - low2z);
	    inz		= xin;

        *out1++ = low2;
    }

    x->s_low1 = low1;
    x->s_low2 = low2;
    x->s_inz = inz;
}

void evi_cfsmooth_int(t_evi_cfsmooth* x, long n)
{
    evi_cfsmooth_float(x, (double)n);
}

void evi_cfsmooth_float(t_evi_cfsmooth* x, double f)
{
    long inlet = proxy_getinlet((t_object*)x);
    long i;
    double val;

    if (inlet == 0) {
        val = f;
        x->s_dest = val;
        // x->p_cfso[0].o_dest = val;
    }
    else if (inlet == x->s_banks) { // far right inlet
        val = f;
        if (val < 0.0) {
            val = 0.0;
        }
        x->s_ms = val;
        object_attr_touch((t_object*)x, gensym("time"));
        evi_cfsmooth_coefficients(x);
    }
    // else if (inlet < x->s_banks) { // if (x->s_banks > 1)
    //     val = f;
    //     x->p_cfso[inlet].o_dest = val;
    // }
}

t_max_err evi_cfsmooth_attr_setmode(t_evi_cfsmooth* x, void* attr, long argc, t_atom* argv)
{
    long mode = atom_getlong(argv);
    if (mode > 1) {
        mode = 1;
    }
    else if (mode < 0) {
        mode = 0;
    }
    x->s_mode = mode;

    return 0;
}

t_max_err evi_cfsmooth_attr_setbanks(t_evi_cfsmooth* x, void* attr, long argc, t_atom* argv)
{
    long banks = atom_getlong(argv);
    if (banks < 1) {
        banks = 1;
    }
    x->s_banks = banks;

    return 0;
}

t_max_err evi_cfsmooth_attr_setms(t_evi_cfsmooth* x, void* attr, long argc, t_atom* argv)
{
    double ms = atom_getfloat(argv);
    // should we also have a maximum ?
    if (ms < 0.0) {
        ms = 0.0;
    }
    x->s_ms = ms;
    evi_cfsmooth_coefficients(x);

    return 0;
}

t_max_err evi_cfsmooth_attr_sethz(t_evi_cfsmooth* x, void* attr, long argc, t_atom* argv)
{
    double hz = atom_getfloat(argv);
    if (hz > 10.0) {
        hz = 10.0;
    }
    else if (hz < 0.01) {
        hz = 0.01;
    }
    x->s_hz = hz;
    evi_cfsmooth_coefficients(x);

    return 0;
}

void evi_cfsmooth_clear(t_evi_cfsmooth* x)
{
    x->s_low1 = 0.0;
    x->s_low2 = 0.0;
    x->s_inz = 0.0; // cubic only
}

void evi_cfsmooth_coefficients(t_evi_cfsmooth* x)
{
    if (x->s_mode > 0) {
        evi_cfsmooth_cubic_coefficients(x);
    }
    else {
        evi_cfsmooth_linear_coefficients(x);
    }
}

void evi_cfsmooth_linear_coefficients(t_evi_cfsmooth* x)
{
    double w0 = evi_tan_A(x->s_hz * x->s_eviivsr);
    x->s_g0 = (w0 + w0) / (1.0 + w0);
    x->s_s0 = (1.0 - evi_tau_A(x->s_ms * 0.001, x->s_sr)) * 4.0; // this is stuevi
}

void evi_cfsmooth_cubic_coefficients(t_evi_cfsmooth* x)
{
	x->s_wc = x->s_hz / x->s_sr;
	x->s_s0 = (1.0 - evi_tau_A(x->s_ms * 0.001, x->s_sr)); // this is stuevi
}

// approx time to pole, has excellent accuracy above 0.01 seconds input
static inline double evi_tau_A(double t, double sr) // sr = samplerate
{
	return evi_exp_A(-1.0 / (t * sr)) + 0.000128; // offset for exp() approx
}

// cheap approx exp(x)
static inline double evi_exp_A(double x0)
{
	double x = 0.999996 + (0.031261316 + (0.00048274797 + 0.000006 * x0) * x0) * x0;
	x *= x; x *= x; x *= x; x *= x; x *= x;
	return x;
}

// cheap approx tan(x), favouring accuracy in lower Hz, 0..1 input only
static inline double evi_tan_A(double x)
{
	double x2 = (x * x);
	double x3 = (x2 * x);
	double x5 = (x2 * x3);
	return ((x5 * 0.133333333333) + (x3 * 0.333333333333)) + x;
}

void evi_cfsmooth_assist(t_evi_cfsmooth* x, void* b, long m, long a, char* s)
{
    long ASSIST = 256;
    long offset = a + 1;
    a = (a < x->s_banks) ? 0 : ((a > x->s_banks) ? 2 : 1);
    
    if (m == ASSIST_INLET) {
        switch (a)
        {
            case 0:
                if (offset == 1) {
                    if (x->s_banks == 1)
                        strncpy_zero(s, "(signal/float/int) Destination Value", ASSIST);
                    else
                        strncpy_zero(s, "(signal/float/int) Destination Value 1", ASSIST);
                } else {
                    snprintf_zero(s, ASSIST, "(signal/float/int) Destination Value %ld", offset);
                }
                break;
            case 1:
                strncpy_zero(s, "(signal/float/int) Ramp Time in milliseconds", ASSIST);
                break;
            case 2:
                break;
        }
    } else {    // ASSIST_OUTLET
        switch (a)
        {
            case 0:
                if (x->s_banks == 1)
                    strncpy_zero(s, "(signal) Output Ramp", ASSIST);
                else
                    snprintf_zero(s, ASSIST, "(signal) Output Ramp %ld", offset);
                break;
            case 1:
                break;
            case 2:
                break;
        }
    }
}

void* evi_cfsmooth_new(t_symbol* s, long argc, t_atom* argv)
{
    t_evi_cfsmooth* x = object_alloc(evi_cfsmooth_class);
    long i;
    long offset;
    long banks = 1;
    long mode = 0;
    double initial = 0.0, hz = 2.0, ms = 10.0;

    if (!x)
        return x;

    offset = attr_args_offset((short)argc, argv);

    if (offset) {
        initial = atom_getfloat(argv);
        if (offset > 1) {
            ms = atom_getfloat(argv + 1);
            if (ms < 0.0) {
                ms = 0.0;
            }
            if (offset > 2) {
                hz = atom_getfloat(argv + 2);
                if (hz > 10.0) {
                    hz = 10.0;
                }
                else if (hz < 0.01) {
                    hz = 0.01;
                }
            }
        }
    }
    x->s_dest = x->s_initial = initial;
    x->s_ms = ms;
    x->s_hz = hz; // TODO: proper defaults

    if (sys_getsr() <= 0) {
        x->s_sr = 48000.0;
    } else {
        x->s_sr = (double)sys_getsr();
    }
    x->s_eviivsr = PI / x->s_sr;

    x->s_banks = banks;
    x->s_mode = mode;

    attr_args_process(x, (short)argc, argv); // @time attr wins over ms arg

    dsp_setup((t_pxobject*)x, (x->s_banks + 1));
    for (i = x->s_banks; i > 0; i--) {
        outlet_new((t_object*)x, "signal");
    }

    evi_cfsmooth_clear(x);
    evi_cfsmooth_coefficients(x);
    x->s_isinitial = 1; // actually do not need this in "_new" ?

    return x;
}
