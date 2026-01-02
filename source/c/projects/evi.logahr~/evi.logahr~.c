/**
 @file
 evi.logahr~ - A cheap attack/hold/release envelope signal follower
 */

#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

#define LN2 0.6931471805599453
#define MAX_NUM_ENVELOPES 8

static t_class* evi_logahr_class;

typedef struct _evi_logahr
{
    t_pxobject p_eob;

    double e_z; // state 1
    double e_g; // state 2

    double e_dest; // float dest val
    double e_msattack; // attack time ms
    double e_mshold; // hold time ms
    double e_msrelease; // release time ms
    double e_ea; // computed attack time to pole
    double e_eh; // computed hold time
    double e_er; // computed release time to pole

    double e_sr; // cache samplerate
    long e_banks; // # of envelopes/outlets (instantiation @ttribute only)

    short e_inconnect[MAX_NUM_ENVELOPES]; // is a signal connected to the inlet(s)
    short e_attconnect; // is a signal connected to the attack milliseconds inlet
    short e_hldconnect; // is a signal connected to the hold milliseconds inlet
    short e_relconnect; // is a signal connected to the release milliseconds inlet
} t_evi_logahr;

void evi_logahr_dsp64(t_evi_logahr* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags);
void evi_logahr_perform64(t_evi_logahr* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_logahr_perform_float64(t_evi_logahr* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_logahr_int(t_evi_logahr* x, long n);
void evi_logahr_float(t_evi_logahr* x, double f);
void evi_logahr_coefficients(t_evi_logahr* x);
t_max_err evi_logahr_attr_setatt(t_evi_logahr* x, void* attr, long argc, t_atom* argv);
t_max_err evi_logahr_attr_sethld(t_evi_logahr* x, void* attr, long argc, t_atom* argv);
t_max_err evi_logahr_attr_setrel(t_evi_logahr* x, void* attr, long argc, t_atom* argv);
t_max_err evi_logahr_attr_setbanks(t_evi_logahr* x, void* attr, long argc, t_atom* argv);
void evi_logahr_clear(t_evi_logahr* x);
void evi_logahr_assist(t_evi_logahr* x, void* b, long m, long a, char* s);
void* evi_logahr_new(t_symbol* s, long argc, t_atom* argv);
static inline double evi_log_sad(double s, double sr);

C74_EXPORT void ext_main(void* r)
{
    t_class* c;

    c = class_new("evi.logahr~", (method)evi_logahr_new, (method)dsp_free, sizeof(t_evi_logahr), 0L, A_GIMME, 0);

    class_addmethod(c, (method)evi_logahr_dsp64, "dsp64", A_CANT, 0);
    class_addmethod(c, (method)evi_logahr_assist, "assist", A_CANT, 0);
    class_addmethod(c, (method)evi_logahr_clear, "clear", 0); // not needed :-)
    class_addmethod(c, (method)evi_logahr_int, "int", A_LONG, 0);
    class_addmethod(c, (method)evi_logahr_float, "float", A_FLOAT, 0);

    CLASS_ATTR_DOUBLE(c, "attack", 0, t_evi_logahr, e_msattack);
    CLASS_ATTR_BASIC(c, "attack", 0);
    CLASS_ATTR_LABEL(c, "attack", 0, "Attack Time in ms");
    CLASS_ATTR_ACCESSORS(c, "attack", 0, evi_logahr_attr_setatt);

    CLASS_ATTR_DOUBLE(c, "hold", 0, t_evi_logahr, e_mshold);
    CLASS_ATTR_BASIC(c, "hold", 0);
    CLASS_ATTR_LABEL(c, "hold", 0, "Hold Time in ms");
    CLASS_ATTR_ACCESSORS(c, "hold", 0, evi_logahr_attr_sethld);

    CLASS_ATTR_DOUBLE(c, "release", 0, t_evi_logahr, e_msrelease);
    CLASS_ATTR_BASIC(c, "release", 0);
    CLASS_ATTR_LABEL(c, "release", 0, "release Time in ms");
    CLASS_ATTR_ACCESSORS(c, "release", 0, evi_logahr_attr_setrel);

    // we are not using this at the moment
    CLASS_ATTR_LONG(c, "banks", 0, t_evi_logahr, e_banks);
    CLASS_ATTR_ACCESSORS(c, "banks", 0, evi_logahr_attr_setbanks);
    CLASS_ATTR_LABEL(c, "banks", 0, "Number of Envelopes"); // not needed ?
    CLASS_ATTR_FILTER_CLIP(c, "banks", 1, MAX_NUM_ENVELOPES);
    CLASS_ATTR_INVISIBLE(c, "banks", 0); // only instantiation @ttribute

    class_dspinit(c);
    class_register(CLASS_BOX, c);
    evi_logahr_class = c;
}

void evi_logahr_dsp64(t_evi_logahr* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags)
{
    long i;
    long anycount = 0;

    if (samplerate <= 0) {
        x->e_sr = 48000.0;
    } else {
        x->e_sr = samplerate;
    }
    evi_logahr_coefficients(x);

    for (i = 0; i < x->e_banks; i++) {
        x->e_inconnect[i] = count[i]; // signal connected to the ramp inlet(s)?
        anycount += x->e_inconnect[i];
    }
    x->e_attconnect = count[x->e_banks]; // signal connected to the attack time inlet?
    x->e_hldconnect = count[x->e_banks + 1]; // signal connected to the hold time inlet?
    x->e_relconnect = count[x->e_banks + 2]; // signal connected to the release time inlet?

    evi_logahr_clear(x);

    if (anycount > 0 || count[x->e_banks] || count[x->e_banks + 1] || count[x->e_banks + 2]) {
        dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_logahr_perform64, 0, NULL);
    }
    else {
        dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_logahr_perform_float64, 0, NULL);
    }
}

void evi_logahr_perform64(t_evi_logahr* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out1 = outs[0];
    int vs = sampleframes;

    t_double xin = x->e_inconnect[0] ? *ins[0] : x->e_dest;
    t_double attack = x->e_attconnect ? *ins[x->e_banks] : x->e_msattack;
    t_double hold = x->e_hldconnect ? *ins[x->e_banks + 1] : x->e_mshold;
    t_double release = x->e_relconnect ? *ins[x->e_banks + 2] : x->e_msrelease;

    t_double z = x->e_z;
    t_double g = x->e_g;
    double ea = x->e_ea;
    double eh = x->e_eh;
    double er = x->e_er;
    double ff = 0.0, hh = 0.0, env = 0.0, y = 0.0;
    long fcond = 0;

	if (x->p_eob.z_disabled)
		return;

    // constrain attack value
    if (attack < 0.0) {
        attack = 0.0;
    }
    // constrain hold value
    if (hold < 0.0) {
        hold = 0.0;
    }
    // constrain release value
    if (release < 0.0) {
        release = 0.0;
    }

    // do we need to recompute?
    if (attack != x->e_msattack) {
        x->e_ea = ea = evi_log_sad(attack * 0.001, x->e_sr);
        x->e_msattack = attack;
    }
    if (hold != x->e_mshold) {
        x->e_eh = eh = MAX((hold * 0.001 * x->e_sr), 1.0) - 1.0;
        x->e_mshold = hold;
    }
    if (release != x->e_msrelease) {
        x->e_er = er = evi_log_sad(release * 0.001, x->e_sr);
        x->e_msrelease = release;
    }

    while (vs--) {

        ff = xin - z;
        fcond = (ff > 0.0);
        hh = fcond ? eh : (g - 1.0);
        env = fcond ? ea : ((hh > 0.000001) ? 0.0 : er);
        y = (ff * env) + z;
        g = hh;
        z = y;

        *out1++ = y;
    }

    x->e_z = z;
    x->e_g = g;
}

void evi_logahr_perform_float64(t_evi_logahr* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out1 = outs[0];
    int vs = sampleframes;

    double xin = x->e_dest;
    double attack = x->e_msattack;
    double hold = x->e_mshold;
    double release = x->e_msrelease;

    t_double z = x->e_z;
    t_double g = x->e_g;
    double ea = x->e_ea;
    double eh = x->e_eh;
    double er = x->e_er;
    double ff = 0.0, hh = 0.0, env = 0.0, y = 0.0;
    long fcond = 0;

	if (x->p_eob.z_disabled)
		return;

    // constrain attack value
    if (attack < 0.0) {
        attack = 0.0;
    }
    // constrain hold value
    if (hold < 0.0) {
        hold = 0.0;
    }
    // constrain release value
    if (release < 0.0) {
        release = 0.0;
    }

    // do we need to recompute?
    if (attack != x->e_msattack) {
        x->e_ea = ea = evi_log_sad(attack * 0.001, x->e_sr);
        x->e_msattack = attack;
    }
    if (hold != x->e_mshold) {
        x->e_eh = eh = MAX((hold * 0.001 * x->e_sr), 1.0) - 1.0;
        x->e_mshold = hold;
    }
    if (release != x->e_msrelease) {
        x->e_er = er = evi_log_sad(release * 0.001, x->e_sr);
        x->e_msrelease = release;
    }

    while (vs--) {

        ff = xin - z;
        fcond = (ff > 0.0);
        hh = fcond ? eh : (g - 1.0);
        env = fcond ? ea : ((hh > 0.000001) ? 0.0 : er);
        y = (ff * env) + z;
        g = hh;
        z = y;

        *out1++ = y;
    }

    x->e_z = z;
    x->e_g = g;
}

void evi_logahr_int(t_evi_logahr* x, long n)
{
    evi_logahr_float(x, (double)n);
}

void evi_logahr_float(t_evi_logahr* x, double f)
{
    long inlet = proxy_getinlet((t_object*)x);
    long i;
    double val;

    if (inlet == 0) {
        val = f;
        x->e_dest = val;
        // x->p_logso[0].o_dest = val;
    }
    else if (inlet == x->e_banks) { // antipenultimate (right) inlet
        val = f;
        if (val < 0.0) {
            val = 0.0;
        }
        x->e_msattack = val;
        object_attr_touch((t_object*)x, gensym("attack"));
        evi_logahr_coefficients(x);
    }
    else if (inlet == x->e_banks + 1) { // penultimate (right) inlet
        val = f;
        if (val < 0.0) {
            val = 0.0;
        }
        x->e_mshold = val;
        object_attr_touch((t_object*)x, gensym("hold"));
        evi_logahr_coefficients(x);
    }
    else if (inlet == x->e_banks + 2) { // far right inlet
        val = f;
        if (val < 0.0) {
            val = 0.0;
        }
        x->e_msrelease = val;
        object_attr_touch((t_object*)x, gensym("release"));
        evi_logahr_coefficients(x);
    }
}

t_max_err evi_logahr_attr_setbanks(t_evi_logahr* x, void* attr, long argc, t_atom* argv)
{
    long banks = atom_getlong(argv);
    if (banks < 1) {
        banks = 1;
    }
    x->e_banks = banks;

    return 0;
}

t_max_err evi_logahr_attr_setatt(t_evi_logahr* x, void* attr, long argc, t_atom* argv)
{
    double ms = atom_getfloat(argv);
    // should we also have a maximum ?
    if (ms < 0.0) {
        ms = 0.0;
    }
    x->e_msattack = ms;
    evi_logahr_coefficients(x);

    return 0;
}

t_max_err evi_logahr_attr_sethld(t_evi_logahr* x, void* attr, long argc, t_atom* argv)
{
    double ms = atom_getfloat(argv);
    // should we also have a maximum ?
    if (ms < 0.0) {
        ms = 0.0;
    }
    x->e_mshold = ms;
    evi_logahr_coefficients(x);

    return 0;
}

t_max_err evi_logahr_attr_setrel(t_evi_logahr* x, void* attr, long argc, t_atom* argv)
{
    double ms = atom_getfloat(argv);
    // should we also have a maximum ?
    if (ms < 0.0) {
        ms = 0.0;
    }
    x->e_msrelease = ms;
    evi_logahr_coefficients(x);

    return 0;
}

void evi_logahr_clear(t_evi_logahr* x)
{
    x->e_z = 0.0;
    x->e_g = 0.0;
}

void evi_logahr_coefficients(t_evi_logahr* x)
{
    x->e_ea = evi_log_sad(x->e_msattack * 0.001, x->e_sr);
    x->e_eh = MAX((x->e_mshold * 0.001 * x->e_sr), 1.0) - 1.0;
    x->e_er = evi_log_sad(x->e_msrelease * 0.001, x->e_sr);
}

// approx attack/release times to pole, has excellent accuracy above 0.01 seconds input
static inline double evi_log_sad(double s, double sr) // s = release time to drop 6dB in seconds, sr = samplerate
{
	// return LN2 / (s * sr);
    return LN2 / MAX((s * sr), 1.0);
}

void evi_logahr_assist(t_evi_logahr* x, void* b, long m, long a, char* s)
{
    long ASSIST = 256;
    long offset = a + 1;
    a = (a < x->e_banks) ? 0 : ((a > x->e_banks) ? ((a > x->e_banks + 1) ? 3 : 2) : 1); // :-(
    
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
                strncpy_zero(s, "(signal/float) Attack Time in milliseconds", ASSIST);
                break;
            case 2:
                strncpy_zero(s, "(signal/float) Hold Time in milliseconds", ASSIST);
                break;
            case 3:
                strncpy_zero(s, "(signal/float) Release Time in milliseconds", ASSIST);
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

void* evi_logahr_new(t_symbol* s, long argc, t_atom* argv)
{
    t_evi_logahr* x = object_alloc(evi_logahr_class);
    long i;
    long offset;
    long banks = 1;
    double attack = 0.0, hold = 0.0, release = 0.0;

    if (!x)
        return x;

    offset = attr_args_offset((short)argc, argv);

    if (offset) {
        attack = atom_getfloat(argv);
        if (attack < 0.0) {
            attack = 0.0;
        }
        if (offset > 1) {
            hold = atom_getfloat(argv + 1);
            if (hold < 0.0) {
                hold = 0.0;
            }
            if (offset > 2) {
                release = atom_getfloat(argv + 2);
                if (release < 0.0) {
                    release = 0.0;
                }
            }
        }
    }
    x->e_msattack = attack;
    x->e_mshold = hold;
    x->e_msrelease = release;

    if (sys_getsr() <= 0) {
        x->e_sr = 48000.0;
    } else {
        x->e_sr = (double)sys_getsr();
    }

    x->e_banks = banks;

    attr_args_process(x, (short)argc, argv); // attrs win out over args

    dsp_setup((t_pxobject*)x, (x->e_banks + 3));
    for (i = x->e_banks; i > 0; i--) {
        outlet_new((t_object*)x, "signal");
    }

    evi_logahr_clear(x);
    evi_logahr_coefficients(x);

    return x;
}
