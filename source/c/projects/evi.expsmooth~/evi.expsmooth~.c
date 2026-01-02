/**
 @file
 evi.expsmooth~ - A cheap non-exact signal smoother
 */

#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

#define MAX_NUM_SMOOTHERS 8

static t_class* evi_expsmooth_class;

// object
typedef struct _evi_expsmooth
{
    t_pxobject p_sob;

    double s_w; // state
    double s_initial; // init arg
    double s_dest; // float dest val
    double s_ms; // ramp time
    double s_z; // computed time to pole
    double s_sr; // cache samplerate
    long s_banks; // # of smoothers/outlets (instantiation @ttribute only)

    short s_inconnect[MAX_NUM_SMOOTHERS]; // is a signal connected to the inlet(s)
    short s_msconnect; // is a signal connected to the milliseconds inlet
    short s_isinitial; // is new instantiation
} t_evi_expsmooth;

void evi_expsmooth_dsp64(t_evi_expsmooth* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags);
void evi_expsmooth_perform64(t_evi_expsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_expsmooth_perform_float64(t_evi_expsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_expsmooth_int(t_evi_expsmooth* x, long n);
void evi_expsmooth_float(t_evi_expsmooth* x, double f);
void evi_expsmooth_coefficients(t_evi_expsmooth* x);
t_max_err evi_expsmooth_attr_setms(t_evi_expsmooth* x, void* attr, long argc, t_atom* argv);
t_max_err evi_expsmooth_attr_setbanks(t_evi_expsmooth* x, void* attr, long argc, t_atom* argv);
void evi_expsmooth_clear(t_evi_expsmooth* x);
void evi_expsmooth_assist(t_evi_expsmooth* x, void* b, long m, long a, char* s);
void* evi_expsmooth_new(t_symbol* s, long argc, t_atom* argv);
static inline double evi_exp_A(double x0);
static inline double evi_tau_A(double t, double sr);

C74_EXPORT void ext_main(void* r)
{
    t_class* c;

    c = class_new("evi.expsmooth~", (method)evi_expsmooth_new, (method)dsp_free, sizeof(t_evi_expsmooth), 0L, A_GIMME, 0);

    class_addmethod(c, (method)evi_expsmooth_dsp64, "dsp64", A_CANT, 0);
    class_addmethod(c, (method)evi_expsmooth_assist, "assist", A_CANT, 0);
    class_addmethod(c, (method)evi_expsmooth_clear, "clear", 0); // not needed :-)
    class_addmethod(c, (method)evi_expsmooth_int, "int", A_LONG, 0);
    class_addmethod(c, (method)evi_expsmooth_float, "float", A_FLOAT, 0);

    CLASS_ATTR_DOUBLE(c, "time", 0, t_evi_expsmooth, s_ms);
    CLASS_ATTR_BASIC(c, "time", 0);
    CLASS_ATTR_LABEL(c, "time", 0, "Smoothing Time in ms");
    CLASS_ATTR_ALIAS(c, "time", "smooth");
    CLASS_ATTR_ALIAS(c, "time", "ms");
    CLASS_ATTR_ACCESSORS(c, "time", 0, evi_expsmooth_attr_setms);

    // we are not using this at the moment
    CLASS_ATTR_LONG(c, "banks", 0, t_evi_expsmooth, s_banks);
    CLASS_ATTR_ACCESSORS(c, "banks", 0, evi_expsmooth_attr_setbanks);
    CLASS_ATTR_LABEL(c, "banks", 0, "Number of Smoothers"); // not needed ?
    CLASS_ATTR_FILTER_CLIP(c, "banks", 1, MAX_NUM_SMOOTHERS);
    CLASS_ATTR_INVISIBLE(c, "banks", 0); // only instantiation @ttribute

    class_dspinit(c);
    class_register(CLASS_BOX, c);
    evi_expsmooth_class = c;
}

void evi_expsmooth_dsp64(t_evi_expsmooth* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags)
{
    long i;
    long anycount = 0;

    if (samplerate <= 0) {
        x->s_sr = 48000.0;
    } else {
        x->s_sr = samplerate;
    }
    evi_expsmooth_coefficients(x);
    x->s_isinitial = 1;

    for (i = 0; i < x->s_banks; i++) {
        x->s_inconnect[i] = count[i]; // signal connected to the ramp inlet(s)?
        anycount += x->s_inconnect[i];
    }
    x->s_msconnect = count[x->s_banks]; // signal connected to the time inlet?

    evi_expsmooth_clear(x);

    if (anycount > 0 || count[x->s_banks]) {
        dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_expsmooth_perform64, 0, NULL);
    }
    else {
        dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_expsmooth_perform_float64, 0, NULL);
    }
}

void evi_expsmooth_perform64(t_evi_expsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out1 = outs[0];
    int vs = sampleframes;

    t_double xin = x->s_inconnect[0] ? *ins[0] : (x->s_isinitial ? x->s_initial : x->s_dest);
    t_double ms = x->s_msconnect ? *ins[x->s_banks] : x->s_ms;

    t_double w = x->s_w;
    double z = x->s_z;
    double invz = 1.0 - z;
    double y = 0.0;

	if (x->p_sob.z_disabled)
		return;

    // constrain ms value
    if (ms < 0.0) {
        ms = 0.0;
    }

    // do we need to recompute?
    if (ms != x->s_ms) {
        z = evi_tau_A(ms * 0.001, x->s_sr);
        invz = 1.0 - z;
        x->s_ms = ms;
        x->s_z = z;
    }
    x->s_isinitial = 0;

    while (vs--) {

        y = (z * w) + (xin * invz);
        w = y;

        *out1++ = y;
    }

    x->s_w = w;
}

void evi_expsmooth_perform_float64(t_evi_expsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out1 = outs[0];
    int vs = sampleframes;

    double xin = x->s_isinitial ? x->s_initial : x->s_dest;
    double ms = x->s_ms;

    t_double w = x->s_w;
    double z = x->s_z;
    double invz = 1.0 - z;
    double y = x->s_isinitial ? x->s_initial : 0.0;

	if (x->p_sob.z_disabled)
		return;

    // constrain ms value
    if (ms < 0.0) {
        ms = 0.0;
    }

    // do we need to recompute?
    if (ms != x->s_ms) {
        z = evi_tau_A(ms * 0.001, x->s_sr);
        invz = 1.0 - z;
        x->s_ms = ms;
        x->s_z = z;
    }
    x->s_isinitial = 0;

    while (vs--) {

        y = (z * w) + (xin * invz);
        w = y;

        *out1++ = y;
    }

    x->s_w = w;
}

void evi_expsmooth_int(t_evi_expsmooth* x, long n)
{
    evi_expsmooth_float(x, (double)n);
}

void evi_expsmooth_float(t_evi_expsmooth* x, double f)
{
    long inlet = proxy_getinlet((t_object*)x);
    long i;
    double val;

    if (inlet == 0) {
        val = f;
        x->s_dest = val;
    }
    else if (inlet == x->s_banks) { // far right inlet
        val = f;
        if (val < 0.0) {
            val = 0.0;
        }
        x->s_ms = val;
        object_attr_touch((t_object*)x, gensym("time"));
        evi_expsmooth_coefficients(x);
    }
}

// we do not need this
t_max_err evi_expsmooth_attr_setbanks(t_evi_expsmooth* x, void* attr, long argc, t_atom* argv)
{
    long banks = atom_getlong(argv);
    if (banks < 1) {
        banks = 1;
    }
    x->s_banks = banks;

    return 0;
}

t_max_err evi_expsmooth_attr_setms(t_evi_expsmooth* x, void* attr, long argc, t_atom* argv)
{
    double ms = atom_getfloat(argv);
    // should we also have a maximum ?
    if (ms < 0.0) {
        ms = 0.0;
    }
    x->s_ms = ms;
    evi_expsmooth_coefficients(x);

    return 0;
}

void evi_expsmooth_clear(t_evi_expsmooth* x)
{
    x->s_w = 0.0;
}

void evi_expsmooth_coefficients(t_evi_expsmooth* x)
{
    x->s_z = evi_tau_A(x->s_ms * 0.001, x->s_sr);
}

// cheap approx exp(x)
static inline double evi_exp_A(double x0)
{
	double x = 0.999996 + (0.031261316 + (0.00048274797 + 0.000006 * x0) * x0) * x0;
	x *= x; x *= x; x *= x; x *= x; x *= x;
	return x;
}

// approx time to pole, has excellent accuracy above 0.01 seconds input
static inline double evi_tau_A(double t, double sr) // sr = samplerate
{
	return evi_exp_A(-1.0 / (t * sr)) + 0.000128;
}

void evi_expsmooth_assist(t_evi_expsmooth* x, void* b, long m, long a, char* s)
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
                        strncpy_zero(s, "(signal/float) Destination Value", ASSIST);
                    else
                        strncpy_zero(s, "(signal/float) Destination Value 1", ASSIST);
                } else {
                    snprintf_zero(s, ASSIST, "(signal/float) Destination Value %ld", offset);
                }
                break;
            case 1:
                strncpy_zero(s, "(signal/float) Ramp Time in milliseconds", ASSIST);
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

void* evi_expsmooth_new(t_symbol* s, long argc, t_atom* argv)
{
    t_evi_expsmooth* x = object_alloc(evi_expsmooth_class);
    long i;
    long offset;
    long banks = 1;
    double initial = 0.0, ms = 0.0;

    offset = attr_args_offset((short)argc, argv);

    if (!x)
        return x;

    if (offset) {
        initial = atom_getfloat(argv);
        if (offset > 1) {
            ms = atom_getfloat(argv + 1);
            if (ms < 0.0) {
                ms = 0.0;
            }
        }
    }
    x->s_dest = x->s_initial = initial;
    x->s_ms = ms;

    if (sys_getsr() <= 0) {
        x->s_sr = 48000.0;
    } else {
        x->s_sr = (double)sys_getsr();
    }

    x->s_banks = banks;

    attr_args_process(x, (short)argc, argv); // @time attr wins over ms arg

    dsp_setup((t_pxobject*)x, (x->s_banks + 1));
    for (i = x->s_banks; i > 0; i--) {
        outlet_new((t_object*)x, "signal");
    }

    evi_expsmooth_clear(x);
    evi_expsmooth_coefficients(x);
    x->s_isinitial = 1; // actually do not need this in "_new" ?

    return x;
}
