/**
 @file
 evi.logsmooth~ - A cheap non-exact signal smoother,
 not to be confused with evi.lAgsmooth~ !!
 */

#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

#define LN2 0.6931471805599453
#define MAX_NUM_SMOOTHERS 8

static t_class* evi_logsmooth_class;

// one filter, separated for banks, only used for "multi"
// typedef struct _evi_logso
// {
//     double o_w; // state
//     double o_dest; // float dest val
// } t_evi_logso;

// object
typedef struct _evi_logsmooth
{
    t_pxobject p_sob;
    // t_evi_logso p_logso[MAX_NUM_SMOOTHERS];

    double s_z; // state
    double s_initial; // init arg
    double s_dest; // float dest val
    double s_ms; // ramp time
    double s_ad; // computed time to pole
    double s_sr; // cache samplerate
    long s_banks; // # of smoothers/outlets (instantiation @ttribute only)

    short s_inconnect[MAX_NUM_SMOOTHERS]; // is a signal connected to the inlet(s)
    short s_msconnect; // is a signal connected to the milliseconds inlet
    short s_isinitial; // is new instantiation
} t_evi_logsmooth;

// void evi_logsmooth_free(t_evi_logsmooth* x);
void evi_logsmooth_dsp64(t_evi_logsmooth* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags);
void evi_logsmooth_perform64(t_evi_logsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_logsmooth_perform_float64(t_evi_logsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
// void evi_logsmooth_perform_unroll64(t_evi_logsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
// void evi_logsmooth_perform_multi64(t_evi_logsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
// void evi_logsmooth_perform_multifloat64(t_evi_logsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
// void evi_logsmooth_perform_multiunroll64(t_evi_logsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_logsmooth_int(t_evi_logsmooth* x, long n);
void evi_logsmooth_float(t_evi_logsmooth* x, double f);
void evi_logsmooth_coefficients(t_evi_logsmooth* x);
t_max_err evi_logsmooth_attr_setms(t_evi_logsmooth* x, void* attr, long argc, t_atom* argv);
t_max_err evi_logsmooth_attr_setbanks(t_evi_logsmooth* x, void* attr, long argc, t_atom* argv);
void evi_logsmooth_clear(t_evi_logsmooth* x);
void evi_logsmooth_assist(t_evi_logsmooth* x, void* b, long m, long a, char* s);
void* evi_logsmooth_new(t_symbol* s, long argc, t_atom* argv);
// static inline double evi_exp_A(double x0);
static inline double evi_log_sad(double s, double sr);

C74_EXPORT void ext_main(void* r)
{
    t_class* c;

    c = class_new("evi.logsmooth~", (method)evi_logsmooth_new, (method)dsp_free, sizeof(t_evi_logsmooth), 0L, A_GIMME, 0);

    class_addmethod(c, (method)evi_logsmooth_dsp64, "dsp64", A_CANT, 0);
    class_addmethod(c, (method)evi_logsmooth_assist, "assist", A_CANT, 0);
    class_addmethod(c, (method)evi_logsmooth_clear, "clear", 0); // not needed :-)
    class_addmethod(c, (method)evi_logsmooth_int, "int", A_LONG, 0);
    class_addmethod(c, (method)evi_logsmooth_float, "float", A_FLOAT, 0);

    CLASS_ATTR_DOUBLE(c, "time", 0, t_evi_logsmooth, s_ms);
    CLASS_ATTR_BASIC(c, "time", 0);
    CLASS_ATTR_LABEL(c, "time", 0, "Smoothing Time in ms");
    CLASS_ATTR_ALIAS(c, "time", "smooth");
    CLASS_ATTR_ALIAS(c, "time", "ms");
    CLASS_ATTR_ACCESSORS(c, "time", 0, evi_logsmooth_attr_setms);

    CLASS_ATTR_LONG(c, "banks", 0, t_evi_logsmooth, s_banks);
    CLASS_ATTR_ACCESSORS(c, "banks", 0, evi_logsmooth_attr_setbanks);
    CLASS_ATTR_LABEL(c, "banks", 0, "Number of Smoothers"); // not needed ?
    CLASS_ATTR_FILTER_CLIP(c, "banks", 1, MAX_NUM_SMOOTHERS);
    CLASS_ATTR_INVISIBLE(c, "banks", 0); // only instantiation @ttribute

    class_dspinit(c);
    class_register(CLASS_BOX, c);
    evi_logsmooth_class = c;
}

// void evi_logsmooth_free(t_evi_logsmooth* x)
// {
//     dsp_free(&x->p_sob);
//     object_free(x->p_logso);
// }

void evi_logsmooth_dsp64(t_evi_logsmooth* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags)
{
    long i;
    long anycount = 0;

    if (samplerate <= 0) {
        x->s_sr = 48000.0;
    } else {
        x->s_sr = samplerate;
    }
    evi_logsmooth_coefficients(x);
    x->s_isinitial = 1;

    // for (i = 0; i < MAX_NUM_SMOOTHERS; i++) {
    //     x->s_inconnect[i] = count[i]; // signal connected to the ramp inlet(s)?
    // }
    // x->s_msconnect = count[MAX_NUM_SMOOTHERS]; // signal connected to the time inlet?
    for (i = 0; i < x->s_banks; i++) {
        x->s_inconnect[i] = count[i]; // signal connected to the ramp inlet(s)?
        anycount += x->s_inconnect[i];
    }
    x->s_msconnect = count[x->s_banks]; // signal connected to the time inlet?

    evi_logsmooth_clear(x);

    // if (x->s_banks > 1) { // multi (banks)
    //     if (anycount > 0 || count[x->s_banks]) {
    //         dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_logsmooth_perform_multi64, 0, NULL);
    //     }
    //     else {
    //         dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_logsmooth_perform_multifloat64, 0, NULL);
    //     }
    // }
    // else { // 1 in 1 out
        if (anycount > 0 || count[x->s_banks]) {
            dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_logsmooth_perform64, 0, NULL);
        }
        else {
            dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_logsmooth_perform_float64, 0, NULL);
        }
    // }
/*
    // TODO
    if (maxvectorsize >= 4) {
        dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_logsmooth_perform_unroll64, 0, NULL);
    }
    else {
        dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_logsmooth_perform64, 0, NULL);
    }
*/
}

void evi_logsmooth_perform64(t_evi_logsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out1 = outs[0];
    int vs = sampleframes;

    t_double xin = x->s_inconnect[0] ? *ins[0] : (x->s_isinitial ? x->s_initial : x->s_dest);
    t_double ms = x->s_msconnect ? *ins[x->s_banks] : x->s_ms;

    t_double z = x->s_z;
    double ad = x->s_ad;
    double y = 0.0;

	if (x->p_sob.z_disabled)
		return;

    // constrain ms value
    if (ms < 0.0) {
        ms = 0.0;
    }

    // do we need to recompute?
    if (ms != x->s_ms) {
        ad = evi_log_sad(ms * 0.001, x->s_sr);
        x->s_ms = ms;
        x->s_ad = ad;
    }
    x->s_isinitial = 0;

    while (vs--) {

        // (((*in1++) - z) * ad) + z
        y = ((xin - z) * ad) + z;
        z = y;

        *out1++ = y;
    }

    x->s_z = z;
}

void evi_logsmooth_perform_float64(t_evi_logsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out1 = outs[0];
    int vs = sampleframes;

    double xin = x->s_isinitial ? x->s_initial : x->s_dest;
    double ms = x->s_ms;

    t_double z = x->s_z;
    double ad = x->s_ad;
    double y = x->s_isinitial ? x->s_initial : 0.0;

	if (x->p_sob.z_disabled)
		return;

    // constrain ms value
    if (ms < 0.0) {
        ms = 0.0;
    }

    // do we need to recompute?
    if (ms != x->s_ms) {
        ad = evi_log_sad(ms * 0.001, x->s_sr);
        x->s_ms = ms;
        x->s_ad = ad;
    }
    x->s_isinitial = 0;

    while (vs--) {

        y = ((xin - z) * ad) + z;
        z = y;

        *out1++ = y;
    }

    x->s_z = z;
}

/*
// TODO
void evi_logsmooth_perform_unroll64(t_evi_logsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    ;
}
*/
/*
void evi_logsmooth_perform_multi64(t_evi_logsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    ;
}
*/
/*
void evi_logsmooth_perform_multifloat64(t_evi_logsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    ;
}
*/
/*
// TODO
void evi_logsmooth_perform_multiunroll64(t_evi_logsmooth* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    ;
}
*/

void evi_logsmooth_int(t_evi_logsmooth* x, long n)
{
    evi_logsmooth_float(x, (double)n);
}

void evi_logsmooth_float(t_evi_logsmooth* x, double f)
{
    long inlet = proxy_getinlet((t_object*)x);
    long i;
    double val;

    if (inlet == 0) {
        val = f;
        x->s_dest = val;
        // x->p_logso[0].o_dest = val;
    }
    else if (inlet == x->s_banks) { // far right inlet
        val = f;
        if (val < 0.0) {
            val = 0.0;
        }
        x->s_ms = val;
        object_attr_touch((t_object*)x, gensym("time"));
        evi_logsmooth_coefficients(x);
    }
    // else if (inlet < x->s_banks) { // if (x->s_banks > 1)
    //     val = f;
    //     x->p_logso[inlet].o_dest = val;
    // }
}

t_max_err evi_logsmooth_attr_setbanks(t_evi_logsmooth* x, void* attr, long argc, t_atom* argv)
{
    long banks = atom_getlong(argv);
    if (banks < 1) {
        banks = 1;
    }
    x->s_banks = banks;

    return 0;
}

t_max_err evi_logsmooth_attr_setms(t_evi_logsmooth* x, void* attr, long argc, t_atom* argv)
{
    double ms = atom_getfloat(argv);
    // should we also have a maximum ?
    if (ms < 0.0) {
        ms = 0.0;
    }
    x->s_ms = ms;
    evi_logsmooth_coefficients(x);

    return 0;
}

void evi_logsmooth_clear(t_evi_logsmooth* x)
{
    x->s_z = 0.0;
}

void evi_logsmooth_coefficients(t_evi_logsmooth* x)
{
    x->s_ad = evi_log_sad(x->s_ms * 0.001, x->s_sr);
}

// cheap approx exp(x)
// static inline double evi_exp_A(double x0)
// {
// 	double x = 0.999996 + (0.031261316 + (0.00048274797 + 0.000006 * x0) * x0) * x0;
// 	x *= x; x *= x; x *= x; x *= x; x *= x;
// 	return x;
// }

// approx time to pole, has excellent accuracy above 0.01 seconds input
static inline double evi_log_sad(double s, double sr) // s = time to drop 6dB in seconds, sr = samplerate
{
	// return LN2 / (s * sr);
    return LN2 / MAX((s * sr), 1.0);
}

void evi_logsmooth_assist(t_evi_logsmooth* x, void* b, long m, long a, char* s)
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

void* evi_logsmooth_new(t_symbol* s, long argc, t_atom* argv)
{
    t_evi_logsmooth* x = object_alloc(evi_logsmooth_class);
    long i;
    long offset;
    long banks = 1;
    double initial = 0.0, ms = 0.0;

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

    evi_logsmooth_clear(x);
    evi_logsmooth_coefficients(x);
    x->s_isinitial = 1; // actually do not need this in "_new" ?

    return x;
}
