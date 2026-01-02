/**
 @file
 evi.logdecay~ - A cheap decay envelope signal follower
 */

#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

#define LN2 0.6931471805599453
#define MAX_NUM_ENVELOPES 8

static t_class* evi_logdecay_class;

typedef struct _evi_logdecay
{
    t_pxobject p_eob;

    double e_z; // state
    // double e_initial; // init arg
    double e_dest; // float dest val
    double e_ms; // decay time
    double e_ad; // computed decay time to pole
    double e_sr; // cache samplerate
    long e_banks; // # of envelopes/outlets (instantiation @ttribute only)

    short e_inconnect[MAX_NUM_ENVELOPES]; // is a signal connected to the inlet(s)
    short e_msconnect; // is a signal connected to the milliseconds inlet
    // short e_isinitial; // is new instantiation
} t_evi_logdecay;

void evi_logdecay_dsp64(t_evi_logdecay* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags);
void evi_logdecay_perform64(t_evi_logdecay* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_logdecay_perform_float64(t_evi_logdecay* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_logdecay_int(t_evi_logdecay* x, long n);
void evi_logdecay_float(t_evi_logdecay* x, double f);
void evi_logdecay_coefficients(t_evi_logdecay* x);
t_max_err evi_logdecay_attr_setms(t_evi_logdecay* x, void* attr, long argc, t_atom* argv);
t_max_err evi_logdecay_attr_setbanks(t_evi_logdecay* x, void* attr, long argc, t_atom* argv);
void evi_logdecay_clear(t_evi_logdecay* x);
void evi_logdecay_assist(t_evi_logdecay* x, void* b, long m, long a, char* s);
void* evi_logdecay_new(t_symbol* s, long argc, t_atom* argv);
static inline double evi_log_sad(double s, double sr);

C74_EXPORT void ext_main(void* r)
{
    t_class* c;

    c = class_new("evi.logdecay~", (method)evi_logdecay_new, (method)dsp_free, sizeof(t_evi_logdecay), 0L, A_GIMME, 0);

    class_addmethod(c, (method)evi_logdecay_dsp64, "dsp64", A_CANT, 0);
    class_addmethod(c, (method)evi_logdecay_assist, "assist", A_CANT, 0);
    class_addmethod(c, (method)evi_logdecay_clear, "clear", 0); // not needed :-)
    class_addmethod(c, (method)evi_logdecay_int, "int", A_LONG, 0);
    class_addmethod(c, (method)evi_logdecay_float, "float", A_FLOAT, 0);

    CLASS_ATTR_DOUBLE(c, "decay", 0, t_evi_logdecay, e_ms);
    CLASS_ATTR_BASIC(c, "decay", 0);
    CLASS_ATTR_LABEL(c, "decay", 0, "Decay Time in ms");
    CLASS_ATTR_ALIAS(c, "decay", "ms");
    CLASS_ATTR_ACCESSORS(c, "decay", 0, evi_logdecay_attr_setms);

    // we are not using this at the moment
    CLASS_ATTR_LONG(c, "banks", 0, t_evi_logdecay, e_banks);
    CLASS_ATTR_ACCESSORS(c, "banks", 0, evi_logdecay_attr_setbanks);
    CLASS_ATTR_LABEL(c, "banks", 0, "Number of Envelopes"); // not needed ?
    CLASS_ATTR_FILTER_CLIP(c, "banks", 1, MAX_NUM_ENVELOPES);
    CLASS_ATTR_INVISIBLE(c, "banks", 0); // only instantiation @ttribute

    class_dspinit(c);
    class_register(CLASS_BOX, c);
    evi_logdecay_class = c;
}

void evi_logdecay_dsp64(t_evi_logdecay* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags)
{
    long i;
    long anycount = 0;

    if (samplerate <= 0) {
        x->e_sr = 48000.0;
    } else {
        x->e_sr = samplerate;
    }
    evi_logdecay_coefficients(x);

    for (i = 0; i < x->e_banks; i++) {
        x->e_inconnect[i] = count[i]; // signal connected to the ramp inlet(s)?
        anycount += x->e_inconnect[i];
    }
    x->e_msconnect = count[x->e_banks]; // signal connected to the decay time inlet?

    evi_logdecay_clear(x);

    if (anycount > 0 || count[x->e_banks]) {
        dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_logdecay_perform64, 0, NULL);
    }
    else {
        dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_logdecay_perform_float64, 0, NULL);
    }
}

void evi_logdecay_perform64(t_evi_logdecay* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out1 = outs[0];
    int vs = sampleframes;

    // t_double xin = x->e_inconnect[0] ? *ins[0] : (x->e_isinitial ? x->e_initial : x->e_dest);
    t_double xin = x->e_inconnect[0] ? *ins[0] : x->e_dest;
    t_double ms = x->e_msconnect ? *ins[x->e_banks] : x->e_ms;

    t_double z = x->e_z;
    double ad = x->e_ad;
    double ff = 0.0, y = 0.0;

	if (x->p_eob.z_disabled)
		return;

    // constrain ms value
    if (ms < 0.0) {
        ms = 0.0;
    }

    // do we need to recompute?
    if (ms != x->e_ms) {
        ad = evi_log_sad(ms * 0.001, x->e_sr);
        x->e_ms = ms;
        x->e_ad = ad;
    }
    // x->e_isinitial = 0;

    while (vs--) {

        ff = xin - z;
        y  = (ff > 0.0) ? xin : ((ff * ad) + z);
        z  = y;

        *out1++ = y;
    }

    x->e_z = z;
}

void evi_logdecay_perform_float64(t_evi_logdecay* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out1 = outs[0];
    int vs = sampleframes;

    // double xin = x->e_isinitial ? x->e_initial : x->e_dest;
    double xin = x->e_dest;
    double ms = x->e_ms;

    t_double z = x->e_z;
    double ad = x->e_ad;
    // double y = x->e_isinitial ? x->e_initial : 0.0;
    double ff = 0.0, y = 0.0;

	if (x->p_eob.z_disabled)
		return;

    // constrain ms value
    if (ms < 0.0) {
        ms = 0.0;
    }

    // do we need to recompute?
    if (ms != x->e_ms) {
        ad = evi_log_sad(ms * 0.001, x->e_sr);
        x->e_ms = ms;
        x->e_ad = ad;
    }
    // x->e_isinitial = 0;

    while (vs--) {

        ff = xin - z;
        y  = (ff > 0.0) ? xin : ((ff * ad) + z);
        z  = y;

        *out1++ = y;
    }

    x->e_z = z;
}

void evi_logdecay_int(t_evi_logdecay* x, long n)
{
    evi_logdecay_float(x, (double)n);
}

void evi_logdecay_float(t_evi_logdecay* x, double f)
{
    long inlet = proxy_getinlet((t_object*)x);
    long i;
    double val;

    if (inlet == 0) {
        val = f;
        x->e_dest = val;
    }
    else if (inlet == x->e_banks) { // far right inlet
        val = f;
        if (val < 0.0) {
            val = 0.0;
        }
        x->e_ms = val;
        object_attr_touch((t_object*)x, gensym("decay"));
        evi_logdecay_coefficients(x);
    }
}

t_max_err evi_logdecay_attr_setbanks(t_evi_logdecay* x, void* attr, long argc, t_atom* argv)
{
    long banks = atom_getlong(argv);
    if (banks < 1) {
        banks = 1;
    }
    x->e_banks = banks;

    return 0;
}

t_max_err evi_logdecay_attr_setms(t_evi_logdecay* x, void* attr, long argc, t_atom* argv)
{
    double ms = atom_getfloat(argv);
    // should we also have a maximum ?
    if (ms < 0.0) {
        ms = 0.0;
    }
    x->e_ms = ms;
    evi_logdecay_coefficients(x);

    return 0;
}

void evi_logdecay_clear(t_evi_logdecay* x)
{
    x->e_z = 0.0;
}

void evi_logdecay_coefficients(t_evi_logdecay* x)
{
    x->e_ad = evi_log_sad(x->e_ms * 0.001, x->e_sr);
}

// approx decay time to pole, has excellent accuracy above 0.01 seconds input
static inline double evi_log_sad(double s, double sr) // s = decay time to drop 6dB in seconds, sr = samplerate
{
	// return LN2 / (s * sr);
    return LN2 / MAX((s * sr), 1.0);
}

void evi_logdecay_assist(t_evi_logdecay* x, void* b, long m, long a, char* s)
{
    long ASSIST = 256;
    long offset = a + 1;
    a = (a < x->e_banks) ? 0 : ((a > x->e_banks) ? 2 : 1);
    
    if (m == ASSIST_INLET) {
        switch (a)
        {
            case 0:
                if (offset == 1) {
                    if (x->e_banks == 1)
                        strncpy_zero(s, "(signal/float) Value to Follow", ASSIST);
                    else
                        strncpy_zero(s, "(signal/float) Value to Follow 1", ASSIST);
                } else {
                    snprintf_zero(s, ASSIST, "(signal/float) Value to Follow %ld", offset);
                }
                break;
            case 1:
                strncpy_zero(s, "(signal/float) Decay Time in milliseconds", ASSIST);
                break;
            case 2:
                break;
        }
    } else {    // ASSIST_OUTLET
        switch (a)
        {
            case 0:
                if (x->e_banks == 1)
                    strncpy_zero(s, "(signal) Output Envelope", ASSIST);
                else
                    snprintf_zero(s, ASSIST, "(signal) Output Envelope %ld", offset);
                break;
            case 1:
                break;
            case 2:
                break;
        }
    }
}

void* evi_logdecay_new(t_symbol* s, long argc, t_atom* argv)
{
    t_evi_logdecay* x = object_alloc(evi_logdecay_class);
    long i;
    long offset;
    long banks = 1;
    // double initial = 0.0, ms = 0.0;
    double ms = 0.0;

    if (!x)
        return x;

    offset = attr_args_offset((short)argc, argv);

    if (offset) {
        // initial = atom_getfloat(argv);
        // if (offset > 1) {
            // ms = atom_getfloat(argv + 1);
            ms = atom_getfloat(argv);
            if (ms < 0.0) {
                ms = 0.0;
            }
        // }
    }
    // x->e_dest = x->e_initial = initial;
    x->e_ms = ms;

    if (sys_getsr() <= 0) {
        x->e_sr = 48000.0;
    } else {
        x->e_sr = (double)sys_getsr();
    }

    x->e_banks = banks;

    attr_args_process(x, (short)argc, argv); // @decay attr wins over ms arg

    dsp_setup((t_pxobject*)x, (x->e_banks + 1));
    for (i = x->e_banks; i > 0; i--) {
        outlet_new((t_object*)x, "signal");
    }

    evi_logdecay_clear(x);
    evi_logdecay_coefficients(x);
    // x->e_isinitial = 1; // actually do not need this in "_new" ?

    return x;
}
