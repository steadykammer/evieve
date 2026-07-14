/**
 @file
 evi.vactrol~ - A vactrol emulation filter,
 time domain signal follower / smoother,
 see also: evi_vactrol.gendsp, evi_vactrol_fix.gendsp
 */

/** 
 * A basic not-really-a-model of the Perkin Elmer VTL5C3, the resistive
 * part of a photoresistive opto-isolator.
 * As it turns out, the shape (not the behaviour) can be similar to [slide~]
 * in MSP/RNBO or [slide] in gen~, achievable via the @shape attribute here.
 * 
 * Original 'fixed' version (@fix 1 here) based on "A Digital Model of the
 * Buchla Lowpass-Gate" by Julian Parker and Stefano D’Angelo, 2013
 * "...an ad-hoc nonlinear filter structure that will behave similarly
 * to the vactrol with correct setting of parameter values".
 */

#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

// for @fix 1 version
#define PI1000 3194.680112489021459 // 1016.898263 * PI
#define FIXRISE 20.0
#define FIXFALL 3000.0

static t_class* evi_vactrol_class;

typedef struct _evi_vactrol
{
    t_pxobject p_vob;

    double v_s; // state

    long v_mode; // @fix attribute for fixed (simple) / inlets (complex) operation
    double v_shape; // @shape attribute = normalised frequency instead of fixed base
    double v_rise; // samples up
    double v_fall; // samples down
    double v_scalar; // output multiplier

    double v_base; // store base for @fix 0 or cache base for @fix 1
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
void evi_vactrol_coefficients(t_evi_vactrol* x);
t_max_err evi_vactrol_attr_setshape(t_evi_vactrol* x, void* attr, long argc, t_atom* argv);
t_max_err evi_vactrol_attr_setrise(t_evi_vactrol* x, void* attr, long argc, t_atom* argv);
t_max_err evi_vactrol_attr_setfall(t_evi_vactrol* x, void* attr, long argc, t_atom* argv);
t_max_err evi_vactrol_attr_setscalar(t_evi_vactrol* x, void* attr, long argc, t_atom* argv);
void evi_vactrol_clear(t_evi_vactrol* x);
void evi_vactrol_assist(t_evi_vactrol* x, void* b, long m, long a, char* s);
void* evi_vactrol_new(t_symbol* s, long argc, t_atom* argv);
static inline double evi_vactrol_sud(double xi, double ud);
static inline double evi_exp_A(double x0);
static inline double evi_mtof_A(double m, double b);

C74_EXPORT void ext_main(void* r)
{
    t_class* c;

    c = class_new("evi.vactrol~", (method)evi_vactrol_new, (method)dsp_free, sizeof(t_evi_vactrol), 0L, A_GIMME, 0);

    class_addmethod(c, (method)evi_vactrol_dsp64, "dsp64", A_CANT, 0);
    class_addmethod(c, (method)evi_vactrol_assist, "assist", A_CANT, 0);
    class_addmethod(c, (method)evi_vactrol_clear, "clear", 0);
    class_addmethod(c, (method)evi_vactrol_int, "int", A_LONG, 0);
    class_addmethod(c, (method)evi_vactrol_float, "float", A_FLOAT, 0);

    CLASS_ATTR_DOUBLE(c, "shape", 0, t_evi_vactrol, v_shape);
    CLASS_ATTR_BASIC(c, "shape", 0);
    CLASS_ATTR_LABEL(c, "shape", 0, "Curvature of Envelope");
    CLASS_ATTR_ALIAS(c, "shape", "curve");
    CLASS_ATTR_FILTER_CLIP(c, "shape", 0.0, 1.0);
    CLASS_ATTR_ACCESSORS(c, "shape", 0, evi_vactrol_attr_setshape);

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
    CLASS_ATTR_LABEL(c, "scalar", 0, "Envelope Output Multiplier");
    CLASS_ATTR_ALIAS(c, "scalar", "mult");
    CLASS_ATTR_ACCESSORS(c, "scalar", 0, evi_vactrol_attr_setscalar);

    CLASS_ATTR_LONG(c, "fix", 0, t_evi_vactrol, v_mode);
    CLASS_ATTR_BASIC(c, "fix", 0);
    CLASS_ATTR_LABEL(c, "fix", 0, "Mode of Operation");
    CLASS_ATTR_ALIAS(c, "fix", "mode");
    CLASS_ATTR_FILTER_CLIP(c, "fix", 0, 1);
    CLASS_ATTR_INVISIBLE(c, "fix", 0); // only instantiation @ttribute

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

    evi_vactrol_coefficients(x);

    x->v_trigconnect = count[0]; // count[0] must always be a signal

    evi_vactrol_clear(x);

    if (x->v_mode > 0) {
        dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_vactrol_perform_float64, 0, NULL);
    }
    else {
        x->v_riseconnect = count[1]; // signal connected to the rise inlet?
        x->v_fallconnect = count[2]; // signal connected to the fall inlet?

        if (count[1] || count[2]) {
            dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_vactrol_perform64, 0, NULL);
        }
        else {
            dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_vactrol_perform_float64, 0, NULL);
        }
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
    double dcoeff, ucoeff;
    double x0, x1, y0;

	if (x->p_vob.z_disabled)
		return;

    // constrain rise value
    if (rise < 1.0) {
        rise = 1.0;
    }
    // constrain fall value
    if (fall < 1.0) {
        fall = 1.0;
    }

    x->v_rise = rise;
    x->v_fall = fall;
    // scalar = CLAMP(scalar, 0.1, 10000.0); // we do not need this clamp here ?
    // x->v_scalar = scalar;

    // the nature of the rcfilter algo means we have to do most stuff in the while loop ?
    while (vs--) {

        // theoretically we should be able to cache this coefficients section, even with 's' ?
        dcoeff  = 10.0 + fall*(1.0 - 0.9*s);	// fall coefficient
        ucoeff  = 1.0 + rise*(1.0 - 0.999*s);	// rise coefficient
        down    = base/dcoeff;
        up      = base/ucoeff;

        x0		= CLAMP(impulse, -1.0, 1.0) - s;
        x1 		= (x0 < 0.0) ? evi_vactrol_sud(x0, down) : evi_vactrol_sud(x0, up);
        y0		= x1 + s;
        s		= y0 + x1;
        FIX_DENORM_DOUBLE(s);

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
    double dcoeff, ucoeff;
    double x0, x1, y0;

	if (x->p_vob.z_disabled)
		return;

    if (!x->v_mode) { // only needed if inlets
        // constrain rise value
        if (rise < 1.0) {
            rise = 1.0;
        }
        // constrain fall value
        if (fall < 1.0) {
            fall = 1.0;
        }

        x->v_rise = rise;
        x->v_fall = fall;
    }
    // scalar = CLAMP(scalar, 0.1, 10000.0);
    // x->v_scalar = scalar;

    // the nature of the rcfilter algo means we have to do most stuff in the while loop ?
    while (vs--) {

        // theoretically we should be able to cache this coefficients section, even with 's' ?
        dcoeff  = 10.0 + fall*(1.0 - 0.9*s);	// fall coefficient
        ucoeff  = 1.0 + rise*(1.0 - 0.999*s);	// rise coefficient
        down    = base/dcoeff;
        up      = base/ucoeff;

        x0		= CLAMP(impulse, -1.0, 1.0) - s;
        x1 		= (x0 < 0.0) ? evi_vactrol_sud(x0, down) : evi_vactrol_sud(x0, up);
        y0		= x1 + s;
        s		= y0 + x1;
        FIX_DENORM_DOUBLE(s);

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
        if (val < 1.0) {
            val = 1.0;
        }
        x->v_rise = val;
        object_attr_touch((t_object*)x, gensym("rise"));
    }
    else if (inlet == 2) { // far right inlet
        val = f;
        if (val < 1.0) {
            val = 1.0;
        }
        x->v_fall = val;
        object_attr_touch((t_object*)x, gensym("fall"));
    }
}

t_max_err evi_vactrol_attr_setshape(t_evi_vactrol* x, void* attr, long argc, t_atom* argv)
{
    double shape = atom_getfloat(argv);
    if (shape < 0.0) {
        shape = 0.0;
    }
    else if (shape > 1.0) {
        shape = 1.0;
    }
    x->v_shape = shape;
    evi_vactrol_coefficients(x);
    return 0;
}

t_max_err evi_vactrol_attr_setrise(t_evi_vactrol* x, void* attr, long argc, t_atom* argv)
{
    double rise = atom_getfloat(argv);
    // should we also have a maximum ?
    if (rise < 1.0) {
        rise = 1.0;
    }
    x->v_rise = x->v_mode ? FIXRISE : rise;

    return 0;
}

t_max_err evi_vactrol_attr_setfall(t_evi_vactrol* x, void* attr, long argc, t_atom* argv)
{
    double fall = atom_getfloat(argv);
    // should we also have a maximum ?
    if (fall < 1.0) {
        fall = 1.0;
    }
    x->v_fall = x->v_mode ? FIXFALL : fall;

    return 0;
}

t_max_err evi_vactrol_attr_setscalar(t_evi_vactrol* x, void* attr, long argc, t_atom* argv)
{
    double scalar = atom_getfloat(argv);
    if (scalar < 0.1) {
        scalar = 0.1;
    }
    else if (scalar > 10000.0) {
        scalar = 10000.0;
    }
    x->v_scalar = scalar;

    return 0;
}

void evi_vactrol_clear(t_evi_vactrol* x)
{
    x->v_s = 0.0;
}

static inline double evi_vactrol_sud(double xi, double ud)
{
    return xi * ud / (1.0 + ud);
}

// cheap approx exp(x)
static inline double evi_exp_A(double x0)
{
	double x = 0.999996 + (0.031261316 + (0.00048274797 + 0.000006 * x0) * x0) * x0;
	x *= x; x *= x; x *= x; x *= x; x *= x;
	return x;
}

// cheap approx mtof(pitch, base)
static inline double evi_mtof_A(double m, double b)
{
	double mtofA = b * evi_exp_A(0.05776226504666 * (m - 69.0));
	return mtofA + 0.120906; // + offset = 'accurate' for input 48..69
}

// make 'base'
void evi_vactrol_coefficients(t_evi_vactrol* x)
{
    if (x->v_mode > 0) {
        x->v_base = PI1000 / x->v_sr;
    }
    else {
        double frequency = evi_mtof_A(x->v_shape * 81.0 + 43.0, 440.0); // 100..10000 Hz
        x->v_base = frequency * PI / x->v_sr;
    }
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
    long offset;//, fix = 0;
    double rise = FIXRISE, fall = FIXFALL, scalar = 1.0, shape = 0.5;

    if (!x)
        return x;

    offset = attr_args_offset((short)argc, argv);

    if (offset) {
        rise = atom_getfloat(argv);
        if (rise < 1.0) {
            rise = 1.0;
        }
        if (offset > 1) {
            fall = atom_getfloat(argv + 1);
            if (fall < 1.0) {
                fall = 1.0;
            }
            if (offset > 2) {
                scalar = atom_getfloat(argv + 2);
                if (scalar < 0.1) {
                    scalar = 0.1;
                }
                else if (scalar > 10000.0) {
                    scalar = 10000.0;
                }
            }
            if (offset > 3) {
                shape = atom_getfloat(argv + 3);
                if (shape < 0.0) {
                    shape = 0.0;
                }
                else if (shape > 1.0) {
                    shape = 1.0;
                }
            }
            // if (offset > 4) {
            //     fix = atom_getlong(argv + 4);
            //     if (fix < 0) {
            //         fix = 0;
            //     }
            //     else if (fix > 1) {
            //         fix = 1;
            //     }
            // }
        }
    }
    x->v_rise = rise;
    x->v_fall = fall;
    x->v_scalar = scalar;
    x->v_shape = shape; // default 0.5 = 1016.898263 Hz
    // x->v_mode = fix;

    if (sys_getsr() <= 0) {
        x->v_sr = 48000.0;
    }
    else {
        x->v_sr = (double)sys_getsr();
    }

    attr_args_process(x, (short)argc, argv); // @attrs win out over args

    if (x->v_mode > 0) {
        x->v_rise = FIXRISE;
        x->v_fall = FIXFALL;
        dsp_setup((t_pxobject*)x, 1); // @fixed version
    }
    else {
        dsp_setup((t_pxobject*)x, 3); // normal (default) version
    }
    outlet_new((t_object*)x, "signal");

    evi_vactrol_coefficients(x);
    // evi_vactrol_clear(x);

    return x;
}
