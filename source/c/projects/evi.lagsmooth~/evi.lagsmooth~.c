/**
 @file
 evi.lagsmooth~ - A non-exact buttery signal smoother,
 based on [lag3] from SuperCollider, GPLv2,
 not to be confused with evi.lOgsmooth~ !!
 */

#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

// TODO: variable threshold version
#define THETA -6.907755278982137 // log(0.001), fixed threshold of -60 dB

static t_class* evi_lagsmooth_class;

typedef struct _evi_lagsmooth
{
    t_pxobject p_sob;

    double s_lp1; // pole 1 state
    double s_lp2; // pole 2 state
    double s_lp3; // pole 3 state

    double s_initial; // init arg
    double s_dest; // float dest val
    double s_ms; // ramp time
    double s_coef; // computed time coefficient

    double s_sr; // cache samplerate

    short s_inconnect; // is a signal connected to the destination inlet
    short s_msconnect; // is a signal connected to the milliseconds inlet
    short s_isinitial; // is new instantiation
} t_evi_lagsmooth;

void evi_lagsmooth_dsp64(t_evi_lagsmooth* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags);
void evi_lagsmooth_perform64(t_evi_lagsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_lagsmooth_perform_float64(t_evi_lagsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_lagsmooth_int(t_evi_lagsmooth* x, long n);
void evi_lagsmooth_float(t_evi_lagsmooth* x, double f);
void evi_lagsmooth_coefficients(t_evi_lagsmooth* x);
t_max_err evi_lagsmooth_attr_setms(t_evi_lagsmooth* x, void* attr, long argc, t_atom* argv);
void evi_lagsmooth_clear(t_evi_lagsmooth* x);
void evi_lagsmooth_assist(t_evi_lagsmooth* x, void* b, long m, long a, char* s);
void* evi_lagsmooth_new(t_symbol* s, long argc, t_atom* argv);
static inline double evi_exp_A(double x0);
static inline double evi_lag_coeff(double lp0, double sr);
static inline double evi_lag_pole(double x, double c, double l);

C74_EXPORT void ext_main(void* r)
{
    t_class* c;

    c = class_new("evi.lagsmooth~", (method)evi_lagsmooth_new, (method)dsp_free, sizeof(t_evi_lagsmooth), 0L, A_GIMME, 0);

    class_addmethod(c, (method)evi_lagsmooth_dsp64, "dsp64", A_CANT, 0);
    class_addmethod(c, (method)evi_lagsmooth_assist, "assist", A_CANT, 0);
    class_addmethod(c, (method)evi_lagsmooth_clear, "clear", 0);
    class_addmethod(c, (method)evi_lagsmooth_int, "int", A_LONG, 0);
    class_addmethod(c, (method)evi_lagsmooth_float, "float", A_FLOAT, 0);

    CLASS_ATTR_DOUBLE(c, "time", 0, t_evi_lagsmooth, s_ms);
    CLASS_ATTR_BASIC(c, "time", 0);
    CLASS_ATTR_LABEL(c, "time", 0, "Smoothing Time in ms");
    CLASS_ATTR_ALIAS(c, "time", "smooth");
    CLASS_ATTR_ALIAS(c, "time", "ms");
    CLASS_ATTR_ACCESSORS(c, "time", 0, evi_lagsmooth_attr_setms); // clamped in accessor

    class_dspinit(c);
    class_register(CLASS_BOX, c);
    evi_lagsmooth_class = c;
}

void evi_lagsmooth_dsp64(t_evi_lagsmooth* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags)
{
    long i;
    long anycount = 0;

    if (samplerate <= 0) {
        x->s_sr = 48000.0;
    } else {
        x->s_sr = samplerate;
    }
    evi_lagsmooth_coefficients(x);
    x->s_isinitial = 1;

    x->s_inconnect = count[0]; // signal connected to the ramp inlet(s)?
    x->s_msconnect = count[1]; // signal connected to the time inlet?

    evi_lagsmooth_clear(x);

    if (count[0] || count[1]) {
        dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_lagsmooth_perform64, 0, NULL);
    }
    else {
        dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_lagsmooth_perform_float64, 0, NULL);
    }
}

void evi_lagsmooth_perform64(t_evi_lagsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out = outs[0];
    int vs = sampleframes;

    t_double xin = x->s_inconnect ? *ins[0] : (x->s_isinitial ? x->s_initial : x->s_dest);
    t_double ms = x->s_msconnect ? *ins[1] : x->s_ms;

    t_double lp1 = x->s_lp1;
    t_double lp2 = x->s_lp2;
    t_double lp3 = x->s_lp3;
    double coef = x->s_coef;

	if (x->p_sob.z_disabled)
		return;

    // constrain ms value (this is an empirical value, otherwise blowup!)
    if (ms < 0.008) {
        ms = 0.008;
    }

    // do we need to recompute?
    if (ms != x->s_ms) {
        coef = evi_lag_coeff(ms * 0.001, x->s_sr);
        x->s_ms = ms;
        x->s_coef = coef;
    }
    x->s_isinitial = 0;

    while (vs--) {

        lp1 = evi_lag_pole(xin, coef, lp1);
        lp2 = evi_lag_pole(lp1, coef, lp2);
        lp3 = evi_lag_pole(lp2, coef, lp3);

        *out++ = lp3;
    }

    x->s_lp1 = lp1;
    x->s_lp2 = lp2;
    x->s_lp3 = lp3;
}

void evi_lagsmooth_perform_float64(t_evi_lagsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out = outs[0];
    int vs = sampleframes;

    double xin = x->s_isinitial ? x->s_initial : x->s_dest;
    double ms = x->s_ms;

    t_double lp1 = x->s_lp1;
    t_double lp2 = x->s_lp2;
    t_double lp3 = x->s_isinitial ? x->s_initial : x->s_lp3;
    double coef = x->s_coef;

	if (x->p_sob.z_disabled)
		return;

    // constrain ms value (this is an empirical value, otherwise blowup!)
    if (ms < 0.008) {
        ms = 0.008;
    }

    // do we need to recompute?
    if (ms != x->s_ms) {
        coef = evi_lag_coeff(ms * 0.001, x->s_sr);
        x->s_ms = ms;
        x->s_coef = coef;
    }
    x->s_isinitial = 0;

    while (vs--) {

        lp1 = evi_lag_pole(xin, coef, lp1);
        lp2 = evi_lag_pole(lp1, coef, lp2);
        lp3 = evi_lag_pole(lp2, coef, lp3);

        *out++ = lp3;
    }

    x->s_lp1 = lp1;
    x->s_lp2 = lp2;
    x->s_lp3 = lp3;
}

void evi_lagsmooth_int(t_evi_lagsmooth* x, long n)
{
    evi_lagsmooth_float(x, (double)n);
}

void evi_lagsmooth_float(t_evi_lagsmooth* x, double f)
{
    long inlet = proxy_getinlet((t_object*)x);
    double val;

    if (inlet == 0) {
        val = f;
        x->s_dest = val;
    }
    else if (inlet == 1) { // far right inlet
        val = f;
        if (val < 0.008) {
            val = 0.008; // empirical!
        }
        x->s_ms = val;
        object_attr_touch((t_object*)x, gensym("time"));
        evi_lagsmooth_coefficients(x);
    }
}

t_max_err evi_lagsmooth_attr_setms(t_evi_lagsmooth* x, void* attr, long argc, t_atom* argv)
{
    double ms = atom_getfloat(argv);
    // should we also have a maximum ?
    if (ms < 0.008) {
        ms = 0.008; // empirical!
    }
    x->s_ms = ms;
    evi_lagsmooth_coefficients(x);

    return 0;
}

void evi_lagsmooth_clear(t_evi_lagsmooth* x)
{
    x->s_lp1 = 0.0;
    x->s_lp2 = 0.0;
    x->s_lp3 = 0.0;
}

void evi_lagsmooth_coefficients(t_evi_lagsmooth* x)
{
    x->s_coef = evi_lag_coeff(x->s_ms * 0.001, x->s_sr);
}

static inline double evi_lag_coeff(double lp0, double sr) // sr = samplerate
{
    return MAX(evi_exp_A(THETA / (lp0 * sr)), 0.0);
}

// cheap approx exp(x)
static inline double evi_exp_A(double x0)
{
	double x = 0.999996 + (0.031261316 + (0.00048274797 + 0.000006 * x0) * x0) * x0;
	x *= x; x *= x; x *= x; x *= x; x *= x;
	return x;
}

// pole smoothing stage
static inline double evi_lag_pole(double x, double c, double l) // value, coefficient, previous
{
//	return ((1.0 - fabs(c)) * x) + (c * l);
	return ((1.0 - c) * x) + (c * l); // no need for abs here ?
}

void evi_lagsmooth_assist(t_evi_lagsmooth* x, void* b, long m, long a, char* s)
{
    if (m == 2) {
        sprintf(s, "(signal) Output Ramp");
    }
    else {
        switch (a) {
            case 0: sprintf(s, "(signal/float) Destination Value"); break;
            case 1: sprintf(s, "(signal/float) Ramp Time in milliseconds"); break;
        }
    }
}

void* evi_lagsmooth_new(t_symbol* s, long argc, t_atom* argv)
{
    t_evi_lagsmooth* x = object_alloc(evi_lagsmooth_class);
    long offset;
    double initial = 0.0, ms = 20.0;

    if (!x)
        return x;

    offset = attr_args_offset((short)argc, argv);

    if (offset) {
        initial = atom_getfloat(argv);
        if (offset > 1) {
            ms = atom_getfloat(argv + 1);
            if (ms < 0.008) {
                ms = 0.008; // empirical!
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

    attr_args_process(x, (short)argc, argv); // @time attr wins over ms arg

    dsp_setup((t_pxobject*)x, 2);
    outlet_new((t_object*)x, "signal");

    evi_lagsmooth_clear(x);
    evi_lagsmooth_coefficients(x);
    x->s_isinitial = 1; // actually do not need this in "_new" ?

    return x;
}
