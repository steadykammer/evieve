/**
 @file
 evi.pan~ - mono & dual/stereo approx equal power panning for audio signals
 */

#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include <math.h>

#define TM4SQRT12 -0.8284271247461903 // = 2 - 4 * sqrt1_2

static t_class* evi_pan_class;

typedef struct _evi_pan
{
    t_pxobject p_xob;

    double p_xp1; // stored pan 1 amount (0..1)
    double p_sinq1; // cache ..1
    double p_cosq1; // cache 0..
    double p_xp2; // stored pan 2 amount (0..1)
    double p_sinq2; // cache ..1
    double p_cosq2; // cache 0..

    long p_mode; // mono or dual/stereo (changes ins)
    short p_panconnect1; // are signals connected to the pan inlets
    short p_panconnect2;
} t_evi_pan;

void evi_pan_dsp64(t_evi_pan* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags);
void evi_pan_perform_mono64(t_evi_pan* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_pan_perform_dual64(t_evi_pan* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
// void evi_pan_perform_unroll64(t_evi_pan* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
// void evi_pan_int(t_evi_pan* x, long n);
void evi_pan_float(t_evi_pan* x, double f);
void evi_pan_coefficients(t_evi_pan* x);
t_max_err evi_pan_attr_setpan1(t_evi_pan* x, void* attr, long argc, t_atom* argv);
t_max_err evi_pan_attr_setpan2(t_evi_pan* x, void* attr, long argc, t_atom* argv);
// t_max_err evi_pan_attr_setmode(t_evi_pan* x, void* attr, long argc, t_atom* argv);
void evi_pan_assist(t_evi_pan* x, void* b, long m, long a, char* s);
void* evi_pan_new(t_symbol* s, long argc, t_atom* argv);
static inline double evi_pan_calc(double x0);

C74_EXPORT void ext_main(void* r)
{
    t_class* c;

    c = class_new("evi.pan~", (method)evi_pan_new, (method)dsp_free, sizeof(t_evi_pan), 0L, A_GIMME, 0);

    class_addmethod(c, (method)evi_pan_dsp64, "dsp64", A_CANT, 0);
    class_addmethod(c, (method)evi_pan_assist, "assist", A_CANT, 0);
    // class_addmethod(c, (method)evi_pan_int, "int", A_LONG, 0);
    class_addmethod(c, (method)evi_pan_float, "float", A_FLOAT, 0);

    CLASS_ATTR_DOUBLE(c, "pan1", 0, t_evi_pan, p_xp1);
    CLASS_ATTR_BASIC(c, "pan1", 0);
    CLASS_ATTR_LABEL(c, "pan1", 0, "Panning (Mono/Left) 0..1"); // :-(
    CLASS_ATTR_ALIAS(c, "pan1", "pan");
    CLASS_ATTR_ALIAS(c, "pan1", "panning1");
    CLASS_ATTR_ACCESSORS(c, "pan1", 0, evi_pan_attr_setpan1);
    CLASS_ATTR_FILTER_CLIP(c, "pan1", 0.0, 1.0);

    CLASS_ATTR_DOUBLE(c, "pan2", 0, t_evi_pan, p_xp2);
    CLASS_ATTR_BASIC(c, "pan2", 0);
    CLASS_ATTR_LABEL(c, "pan2", 0, "Panning (Right) 0..1");
    CLASS_ATTR_ALIAS(c, "pan2", "panning2");
    CLASS_ATTR_ACCESSORS(c, "pan2", 0, evi_pan_attr_setpan2);
    CLASS_ATTR_FILTER_CLIP(c, "pan2", 0.0, 1.0);

    CLASS_ATTR_LONG(c, "mode", 0, t_evi_pan, p_mode);
    // CLASS_ATTR_ACCESSORS(c, "mode", 0, evi_pan_attr_setmode);
    CLASS_ATTR_LABEL(c, "mode", 0, "Mono or Dual/Stereo"); // not needed ?
    CLASS_ATTR_FILTER_CLIP(c, "mode", 0, 1);
    CLASS_ATTR_INVISIBLE(c, "mode", 0); // only instantiation @ttribute

    class_dspinit(c);
    class_register(CLASS_BOX, c);
    evi_pan_class = c;
}

void evi_pan_dsp64(t_evi_pan* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags)
{
    evi_pan_coefficients(x);

    if (x->p_mode == 0) {
        x->p_panconnect1 = count[1]; // signal connected to the pan inlet?
        dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_pan_perform_mono64, 0, NULL);
    }
    else if (x->p_mode == 1) {
        x->p_panconnect1 = count[2]; // signals connected to the pan inlets?
        x->p_panconnect2 = count[3];
        dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_pan_perform_dual64, 0, NULL);
    }
}

void evi_pan_perform_mono64(t_evi_pan* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* in = ins[0];
    t_double* out1 = outs[0];
    t_double* out2 = outs[1];
    int vs = sampleframes;

    t_double pan = x->p_panconnect1 ? *ins[1] : x->p_xp1;
    double x0, quart;
    double sinq = x->p_sinq1;
    double cosq = x->p_cosq1;
    t_double xin;

	if (x->p_xob.z_disabled)
		return;

    // constrain pan value
    if (pan > 1.0) {
        pan = 1.0;
    }
    else if (pan < 0.0) {
        pan = 0.0;
    }

    // do we need to recalc?
    if (pan != x->p_xp1) {
        x0 = pan - 0.5;
        quart = evi_pan_calc(x0);
        x->p_sinq1 = sinq = quart + x0;
	    x->p_cosq1 = cosq = quart - x0;
        x->p_xp1 = pan;
    }

    while (vs--) {
        xin = (*in++);
        *out1++ = xin * cosq;
        *out2++ = xin * sinq;
    }
}

void evi_pan_perform_dual64(t_evi_pan* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* in1 = ins[0];
    t_double* in2 = ins[1];
    t_double* out1 = outs[0];
    t_double* out2 = outs[1];
    int vs = sampleframes;

    t_double pan1 = x->p_panconnect1 ? *ins[2] : x->p_xp1;
    t_double pan2 = x->p_panconnect2 ? *ins[3] : x->p_xp2;
    double x01, x02, quart1, quart2;
    double sinq1 = x->p_sinq1;
    double cosq1 = x->p_cosq1;
    double sinq2 = x->p_sinq2;
    double cosq2 = x->p_cosq2;
    t_double xinL, xinR;
    t_double a, b, c, d;

	if (x->p_xob.z_disabled)
		return;

    // constrain pan values
    if (pan1 > 1.0) {
        pan1 = 1.0;
    }
    else if (pan1 < 0.0) {
        pan1 = 0.0;
    }
    if (pan2 > 1.0) {
        pan2 = 1.0;
    }
    else if (pan2 < 0.0) {
        pan2 = 0.0;
    }

    // do we need to recalc?
    if (pan1 != x->p_xp1) {
        x01 = pan1 - 0.5;
        quart1 = evi_pan_calc(x01);
        x->p_sinq1 = sinq1 = quart1 + x01;
        x->p_cosq1 = cosq1 = quart1 - x01;
        x->p_xp1 = pan1;
    }
    if (pan2 != x->p_xp2) {
        x02 = pan2 - 0.5;
        quart2 = evi_pan_calc(x02);
        x->p_sinq2 = sinq2 = quart2 + x02;
        x->p_cosq2 = cosq2 = quart2 - x02;
        x->p_xp2 = pan2;
    }

    while (vs--) {
        xinL = (*in1++);
        xinR = (*in2++);

        a = xinL * cosq1;
        b = xinL * sinq1;
        c = xinR * cosq2;
        d = xinR * sinq2;

        *out1++ = (a + c);
        *out2++ = (b + d);
    }
}

// void evi_pan_int(t_evi_pan* x, long n)
// {
//     evi_pan_float(x, (double)n);
// }

void evi_pan_float(t_evi_pan* x, double f)
{
    long inlet = proxy_getinlet((t_object*)x);

    if (x->p_mode == 0 && inlet == 1) {
        if (f > 1.0) {
            f = 1.0;
        }
        else if (f < 0.0) {
            f = 0.0;
        }
        x->p_xp1 = f;
        object_attr_touch((t_object*)x, gensym("pan1"));
        evi_pan_coefficients(x);
    }
    else if (x->p_mode == 1 && inlet == 2) {
        if (f > 1.0) {
            f = 1.0;
        }
        else if (f < 0.0) {
            f = 0.0;
        }
        x->p_xp1 = f;
        object_attr_touch((t_object*)x, gensym("pan1"));
        evi_pan_coefficients(x);
    }
    else if (x->p_mode == 1 && inlet == 3) {
        if (f > 1.0) {
            f = 1.0;
        }
        else if (f < 0.0) {
            f = 0.0;
        }
        x->p_xp2 = f;
        object_attr_touch((t_object*)x, gensym("pan2"));
        evi_pan_coefficients(x);
    }
}

t_max_err evi_pan_attr_setpan1(t_evi_pan* x, void* attr, long argc, t_atom* argv)
{
    double pan = atom_getfloat(argv);
    if (pan > 1.0) {
        pan = 1.0;
    }
    else if (pan < 0.0) {
        pan = 0.0;
    }
    x->p_xp1 = pan;
    evi_pan_coefficients(x);

    return 0;
}

t_max_err evi_pan_attr_setpan2(t_evi_pan* x, void* attr, long argc, t_atom* argv)
{
    double pan = atom_getfloat(argv);
    if (pan > 1.0) {
        pan = 1.0;
    }
    else if (pan < 0.0) {
        pan = 0.0;
    }
    x->p_xp2 = pan;
    evi_pan_coefficients(x);

    return 0;
}
/*
t_max_err evi_pan_attr_setmode(t_evi_pan* x, void* attr, long argc, t_atom* argv)
{
    long mode = atom_getlong(argv);
    if (mode > 1) {
        mode = 1;
    }
    else if (mode < 0) {
        mode = 0;
    }
    x->p_mode = mode;
}
*/
// 2/4 muls
void evi_pan_coefficients(t_evi_pan* x)
{
    double x01, x02, quart1, quart2;

    x01 = x->p_xp1 - 0.5;
	// angle = 0 .. HALFPI
	quart1 = TM4SQRT12 * x01 * x01 + M_SQRT1_2;
	x->p_sinq1 = quart1 + x01;
	x->p_cosq1 = quart1 - x01;

    if (x->p_mode == 1) {
        x02 = x->p_xp2 - 0.5;
        quart2 = TM4SQRT12 * x02 * x02 + M_SQRT1_2;
        x->p_sinq2 = quart2 + x02;
        x->p_cosq2 = quart2 - x02;
    }
}

static inline double evi_pan_calc(double x0) // x0 must be clamped -0.5..0.5
{
    return TM4SQRT12 * x0 * x0 + M_SQRT1_2;
}

void evi_pan_assist(t_evi_pan* x, void* b, long m, long a, char* s)
{
    long mode = x->p_mode;
    if (m == 2) {
        switch (a) {
            case 0:
                sprintf(s, "(signal) Output Left"); break;
            case 1:
                sprintf(s, "(signal) Output Right"); break;
        }
    }
    else {
        switch (a) {
            case 0: 
                if (mode == 1) {
                    sprintf(s, "(signal) Input Left"); break;
                }
                else {
                    sprintf(s, "(signal) Input"); break;
                }
            case 1:
                if (mode == 1) {
                    sprintf(s, "(signal) Input Right"); break;
                }
                else {
                    sprintf(s, "(signal/float) Pan Amount 0..1"); break;
                }
            case 2:
                if (mode == 1) {
                    sprintf(s, "(signal/float) Pan Left 0..1"); break;
                }
            case 3:
                if (mode == 1) {
                    sprintf(s, "(signal/float) Pan Right 0..1"); break;
                }
        }
    }
}

void* evi_pan_new(t_symbol* s, long argc, t_atom* argv)
{
    t_evi_pan* x = object_alloc(evi_pan_class);
    long offset, gotmode;
    long mode = 0;
    double pan1 = 0.0, pan2 = 0.0;

    if (!x)
        return x;

    offset = attr_args_offset((short)argc, argv);
    if (offset) {
        pan1 = atom_getfloat(argv);
        if (pan1 > 1.0) {
            pan1 = 1.0;
        }
        else if (pan1 < 0.0) {
            pan1 = 0.0;
        }
        if (offset > 1) {
            if (atom_gettype(argv + 1) == A_FLOAT) {
                pan2 = atom_getfloat(argv + 1);
                if (pan2 > 1.0) {
                    pan2 = 1.0;
                }
                else if (pan2 < 0.0) {
                    pan2 = 0.0;
                }
                gotmode = 0;
            }
            else if (atom_gettype(argv + 1) == A_LONG) {
                mode = atom_getlong(argv + 1);
                gotmode = 1;
            }
            if (offset > 2) {
                if (atom_gettype(argv + 2) == A_LONG && !gotmode) {
                    mode = atom_getlong(argv + 2);
                    gotmode = 1;
                }
            }
        }
    }
    if (mode > 1) {
        mode = 1;
    }
    else if (mode < 0) {
        mode = 0;
    }
    x->p_xp1 = pan1;
    x->p_xp2 = pan2;
    x->p_mode = mode;

    attr_args_process(x, (short)argc, argv); // attr versions win out over args

    if (x->p_mode == 0) {
        dsp_setup((t_pxobject*)x, 2); // mono
    }
    else if (x->p_mode == 1) {
        dsp_setup((t_pxobject*)x, 4); // dual/stereo
    }

    outlet_new((t_object*)x, "signal");
    outlet_new((t_object*)x, "signal");

    evi_pan_coefficients(x);

    return x;
}
