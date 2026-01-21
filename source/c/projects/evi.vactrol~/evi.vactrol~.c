/**
 @file
 evi.vactrol~ - A vactrol emulation filter,
 time domain signal follower / smoother,
 see also: evi_vactrol.gendsp
 */

/** 
 * A basic not-really-a-model of the Perkin Elmer VTL5C3, the resistive
 * part of a photoresistive opto-isolator.
 * As it turns out, the shape is similar to [slide~] in MSP/RNBO
 * or [slide] in gen~, but not the behaviour in terms of retrigger.
 * 
 * Based on "A Digital Model of the Buchla Lowpass-Gate"
 * by Julian Parker and Stefano D’Angelo, 2013
 * "...an ad-hoc nonlinear filter structure that will behave similarly
 * to the vactrol with correct setting of parameter values".
 */

#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

#define PI1000 3141.592653589793238 // 1000 * PI :-)

static t_class* evi_vactrol_class;

typedef struct _evi_vactrol
{
    t_pxobject p_vob;

    double v_s; // state

    double v_rise; // samples up
    double v_fall; // samples down
    double v_scalar; // output multiplier

    double v_base; // cache base
    double v_sr; // cache samplerate

    short v_trigconnect; // is a signal connected to the trigger inlet
    short v_riseconnect; // is a signal connected to the rise inlet
    short v_fallconnect; // is a signal connected to the fall inlet
} t_evi_vactrol;

void evi_vactrol_dsp64(t_evi_vactrol* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags);
void evi_vactrol_perform64(t_evi_vactrol* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_vactrol_perform_float64(t_evi_vactrol* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_vactrol_int(t_evi_vactrol* x, long n);
void evi_vactrol_float(t_evi_vactrol* x, double f);
t_max_err evi_vactrol_attr_setrise(t_evi_vactrol* x, void* attr, long argc, t_atom* argv);
t_max_err evi_vactrol_attr_setfall(t_evi_vactrol* x, void* attr, long argc, t_atom* argv);
void evi_vactrol_clear(t_evi_vactrol* x);
void evi_vactrol_assist(t_evi_vactrol* x, void* b, long m, long a, char* s);
void* evi_vactrol_new(t_symbol* s, long argc, t_atom* argv);
static inline double evi_vactrol_section(double xi, double ud);

C74_EXPORT void ext_main(void* r)
{
    t_class* c;

    c = class_new("evi.vactrol~", (method)evi_vactrol_new, (method)dsp_free, sizeof(t_evi_vactrol), 0L, A_GIMME, 0);

    class_addmethod(c, (method)evi_vactrol_dsp64, "dsp64", A_CANT, 0);
    class_addmethod(c, (method)evi_vactrol_assist, "assist", A_CANT, 0);
    class_addmethod(c, (method)evi_vactrol_clear, "clear", 0);
    class_addmethod(c, (method)evi_vactrol_int, "int", A_LONG, 0);
    class_addmethod(c, (method)evi_vactrol_float, "float", A_FLOAT, 0);

    CLASS_ATTR_DOUBLE(c, "rise", 0, t_evi_vactrol, v_rise);
    CLASS_ATTR_BASIC(c, "rise", 0);
    CLASS_ATTR_LABEL(c, "rise", 0, "Rise Time in Samples");
    CLASS_ATTR_ALIAS(c, "rise", "up");
    CLASS_ATTR_ACCESSORS(c, "rise", 0, evi_vactrol_attr_setrise);

    CLASS_ATTR_DOUBLE(c, "fall", 0, t_evi_vactrol, v_fall);
    CLASS_ATTR_BASIC(c, "fall", 0);
    CLASS_ATTR_LABEL(c, "fall", 0, "Fall Time in Samples");
    CLASS_ATTR_ALIAS(c, "fall", "down");
    CLASS_ATTR_ACCESSORS(c, "fall", 0, evi_vactrol_attr_setfall);

    CLASS_ATTR_DOUBLE(c, "scalar", 0, t_evi_vactrol, v_scalar);
    CLASS_ATTR_BASIC(c, "scalar", 0);
    CLASS_ATTR_LABEL(c, "scalar", 0, "Env Output Multiplier");
    CLASS_ATTR_ALIAS(c, "scalar", "mult");

    class_dspinit(c);
    class_register(CLASS_BOX, c);
    evi_vactrol_class = c;
}

void evi_vactrol_dsp64(t_evi_vactrol* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags)
{
    if (samplerate <= 0) {
        x->v_sr = 48000.0;
    } else {
        x->v_sr = samplerate;
    }
    x->v_base = PI1000 / x->v_sr;

    x->v_trigconnect = count[0]; // count[0] must always be a signal
    x->v_riseconnect = count[1]; // signal connected to the rise inlet?
    x->v_fallconnect = count[2]; // signal connected to the fall inlet?

    evi_vactrol_clear(x);

    if (count[1] || count[2]) {
        dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_vactrol_perform64, 0, NULL);
    }
    else {
        dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_vactrol_perform_float64, 0, NULL);
    }
}

void evi_vactrol_perform64(t_evi_vactrol* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out1 = outs[0];
    int vs = sampleframes;

    t_double impulse = x->v_trigconnect ? *ins[0] : 0.0;
    t_double rise = x->v_riseconnect ? *ins[1] : x->v_rise;
    t_double fall = x->v_fallconnect ? *ins[2] : x->v_fall;

    t_double s = x->v_s;
    double scalar = x->v_scalar;
    double base = x->v_base;
    double down, up;
    double ds, us;
    double x0, x1, y0;

	if (x->p_vob.z_disabled)
		return;

    // constrain rise value
    if (rise < 0.0) {
        rise = 0.0;
    }
    // constrain fall value
    if (fall < 0.0) {
        fall = 0.0;
    }
    scalar = CLAMP(scalar, 1.0, 10000.0);

    x->v_rise = rise;
    x->v_fall = fall;
    x->v_scalar = scalar;

    // the nature of the algo means we have to do everything in the while loop :-(
    while (vs--) {

        ds      = 10.0 + fall*(1.0 - 0.9*s);	// fall time
        us      = 1.0 + rise*(1.0 - 0.999*s);	// rise time
        down    = base/ds;
        up      = base/us;

        x0		= impulse - s;
        x1 		= (x0 < 0.0) ? evi_vactrol_section(x0, down) : evi_vactrol_section(x0, up);
        y0		= x1 + s;
        s		= y0 + x1;

        *out1++ = y0 * scalar;
    }

    x->v_s = s;
}

void evi_vactrol_perform_float64(t_evi_vactrol* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out1 = outs[0];
    int vs = sampleframes;

    t_double impulse = x->v_trigconnect ? *ins[0] : 0.0;
    double rise = x->v_rise;
    double fall = x->v_fall;

    t_double s = x->v_s;
    double scalar = x->v_scalar;
    double base = x->v_base;
    double down, up;
    double ds, us;
    double x0, x1, y0;

	if (x->p_vob.z_disabled)
		return;

    // constrain rise value
    if (rise < 0.0) {
        rise = 0.0;
    }
    // constrain fall value
    if (fall < 0.0) {
        fall = 0.0;
    }
    scalar = CLAMP(scalar, 1.0, 10000.0);

    x->v_rise = rise;
    x->v_fall = fall;
    x->v_scalar = scalar;

    // the nature of the algo means we have to do everything in the while loop :-(
    while (vs--) {

        ds      = 10.0 + fall*(1.0 - 0.9*s);	// fall time
        us      = 1.0 + rise*(1.0 - 0.999*s);	// rise time
        down    = base/ds;
        up      = base/us;

        x0		= impulse - s;
        x1 		= (x0 < 0.0) ? evi_vactrol_section(x0, down) : evi_vactrol_section(x0, up);
        y0		= x1 + s;
        s		= y0 + x1;

        *out1++ = y0 * scalar;
    }

    x->v_s = s;
}

void evi_vactrol_int(t_evi_vactrol* x, long n)
{
    evi_vactrol_float(x, (double)n);
}

void evi_vactrol_float(t_evi_vactrol* x, double f)
{
    long inlet = proxy_getinlet((t_object*)x);
    double val;

    if (inlet == 1) { // middle inlet
        val = f;
        if (val < 0.0) {
            val = 0.0;
        }
        x->v_rise = val;
        object_attr_touch((t_object*)x, gensym("rise"));
    }
    else if (inlet == 2) { // far right inlet
        val = f;
        if (val < 0.0) {
            val = 0.0;
        }
        x->v_fall = val;
        object_attr_touch((t_object*)x, gensym("fall"));
    }
}

t_max_err evi_vactrol_attr_setrise(t_evi_vactrol* x, void* attr, long argc, t_atom* argv)
{
    double rise = atom_getfloat(argv);
    // should we also have a maximum ?
    if (rise < 0.0) {
        rise = 0.0;
    }
    x->v_rise = rise;

    return 0;
}

t_max_err evi_vactrol_attr_setfall(t_evi_vactrol* x, void* attr, long argc, t_atom* argv)
{
    double fall = atom_getfloat(argv);
    // should we also have a maximum ?
    if (fall < 0.0) {
        fall = 0.0;
    }
    x->v_fall = fall;

    return 0;
}

void evi_vactrol_clear(t_evi_vactrol* x)
{
    x->v_s = 0.0;
}

static inline double evi_vactrol_section(double xi, double ud)
{
    return xi * ud / (1.0 + ud);
}

void evi_vactrol_assist(t_evi_vactrol* x, void* b, long m, long a, char* s)
{
    if (m == 2) {
        switch (a) {
            case 0: sprintf(s, "(signal) Vactrol Envelope"); break;
        }
    }
    else {
        switch (a) {
            case 0: sprintf(s, "(signal) Trigger Input"); break;
            case 1: sprintf(s, "(signal/float/int) Envelope Rise Time in Samples"); break;
            case 2: sprintf(s, "(signal/float/int) Envelope Fall Time in Samples"); break;
        }
    }
}

void* evi_vactrol_new(t_symbol* s, long argc, t_atom* argv)
{
    t_evi_vactrol* x = object_alloc(evi_vactrol_class);
    long offset;
    double rise = 20.0, fall = 3000.0, scalar = 1.0;

    if (!x)
        return x;

    offset = attr_args_offset((short)argc, argv);

    if (offset) {
        rise = atom_getfloat(argv);
        if (rise < 0.0) {
            rise = 0.0;
        }
        if (offset > 1) {
            fall = atom_getfloat(argv + 1);
            if (fall < 0.0) {
                fall = 0.0;
            }
            if (offset > 2) {
                scalar = atom_getfloat(argv + 2);
                if (scalar < 1.0) {
                    scalar = 1.0;
                }
                else if (scalar > 10000.0) {
                    scalar = 10000.0;
                }
            }
        }
    }
    x->v_rise = rise;
    x->v_fall = fall;
    x->v_scalar = scalar;

    if (sys_getsr() <= 0) {
        x->v_sr = 48000.0;
    } else {
        x->v_sr = (double)sys_getsr();
    }
    x->v_base = PI1000 / x->v_sr;

    attr_args_process(x, (short)argc, argv); // @attrs win out over args

    dsp_setup((t_pxobject*)x, 3);
    outlet_new((t_object*)x, "signal");

    evi_vactrol_clear(x);

    return x;
}
