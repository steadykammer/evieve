/**
 @file
 evi.xfade~ - mono, swap & stereo approx equal power crossfading of audio signals
 */

#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include <math.h>

#define TM4SQRT12 -0.8284271247461903 // = 2 - 4 * sqrt1_2

static t_class* evi_xfade_class;

typedef struct _evi_xfade
{
    t_pxobject p_xob;

    double x_xf; // stored xfade amount (0..1)
    double x_sinq; // cache ..1
    double x_cosq; // cache 0..

    long x_mode; // mono or swap or stereo (changes ins & outs)
    short x_xfconnect; // is a signal connected to the xfade inlet
} t_evi_xfade;

void evi_xfade_dsp64(t_evi_xfade* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags);
void evi_xfade_perform_mono64(t_evi_xfade* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_xfade_perform_swap64(t_evi_xfade* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_xfade_perform_stereo64(t_evi_xfade* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
// void evi_xfade_perform_unroll64(t_evi_xfade* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
// void evi_xfade_int(t_evi_xfade* x, long n);
void evi_xfade_float(t_evi_xfade* x, double f);
void evi_xfade_coefficients(t_evi_xfade* x);
double evi_xfade_calc(double x0);
t_max_err evi_xfade_attr_setxfade(t_evi_xfade* x, void* attr, long argc, t_atom* argv);
// t_max_err evi_xfade_attr_setmode(t_evi_xfade* x, void* attr, long argc, t_atom* argv);
void evi_xfade_assist(t_evi_xfade* x, void* b, long m, long a, char* s);
void* evi_xfade_new(t_symbol* s, long argc, t_atom* argv);

C74_EXPORT void ext_main(void* r)
{
    t_class* c;

    c = class_new("evi.xfade~", (method)evi_xfade_new, (method)dsp_free, sizeof(t_evi_xfade), 0L, A_GIMME, 0);

    class_addmethod(c, (method)evi_xfade_dsp64, "dsp64", A_CANT, 0);
    class_addmethod(c, (method)evi_xfade_assist, "assist", A_CANT, 0);
    // class_addmethod(c, (method)evi_xfade_int, "int", A_LONG, 0);
    class_addmethod(c, (method)evi_xfade_float, "float", A_FLOAT, 0);

    CLASS_ATTR_DOUBLE(c, "xfade", 0, t_evi_xfade, x_xf);
    CLASS_ATTR_BASIC(c, "xfade", 0);
    CLASS_ATTR_LABEL(c, "xfade", 0, "Crossfade Amount 0..1");
    CLASS_ATTR_ALIAS(c, "xfade", "crossfade");
    CLASS_ATTR_ACCESSORS(c, "xfade", 0, evi_xfade_attr_setxfade);
    CLASS_ATTR_FILTER_CLIP(c, "xfade", 0.0, 1.0);

    CLASS_ATTR_LONG(c, "mode", 0, t_evi_xfade, x_mode);
    // CLASS_ATTR_ACCESSORS(c, "mode", 0, evi_xfade_attr_setmode);
    CLASS_ATTR_LABEL(c, "mode", 0, "Mono, Swap or Stereo"); // not needed ?
    CLASS_ATTR_FILTER_CLIP(c, "mode", 0, 2);
    CLASS_ATTR_INVISIBLE(c, "mode", 0); // only instantiation @ttribute

    class_dspinit(c);
    class_register(CLASS_BOX, c);
    evi_xfade_class = c;
}

void evi_xfade_dsp64(t_evi_xfade* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags)
{
    evi_xfade_coefficients(x);

    if (x->x_mode == 0) {
        x->x_xfconnect = count[2]; // signal connected to the xfade inlet?
        dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_xfade_perform_mono64, 0, NULL);
    }
    else if (x->x_mode == 1) {
        x->x_xfconnect = count[2]; // signal connected to the xfade inlet?
        dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_xfade_perform_swap64, 0, NULL);
    }
    else if (x->x_mode == 2) {
        x->x_xfconnect = count[4]; // signal connected to the xfade inlet?
        dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_xfade_perform_stereo64, 0, NULL);
    }
}

void evi_xfade_perform_mono64(t_evi_xfade* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* in1 = ins[0];
    t_double* in2 = ins[1];
    t_double* out = outs[0];
    int vs = sampleframes;

    t_double xfade = x->x_xfconnect ? *ins[2] : x->x_xf;
    double x0, quart;
    double sinq = x->x_sinq;
    double cosq = x->x_cosq;

	if (x->p_xob.z_disabled)
		return;

    // constrain xfade value
    if (xfade > 1.0) {
        xfade = 1.0;
    }
    else if (xfade < 0.0) {
        xfade = 0.0;
    }

    // do we need to recalc?
    if (xfade != x->x_xf) {
        x0 = xfade - 0.5;
        quart = evi_xfade_calc(x0);
        x->x_sinq = sinq = quart + x0;
	    x->x_cosq = cosq = quart - x0;
        x->x_xf = xfade;
    }

    while (vs--) {
        *out++ = (((*in1++) * cosq) + ((*in2++) * sinq));
    }
}

void evi_xfade_perform_swap64(t_evi_xfade* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* in1 = ins[0];
    t_double* in2 = ins[1];
    t_double* out1 = outs[0];
    t_double* out2 = outs[1];
    int vs = sampleframes;

    t_double xfade = x->x_xfconnect ? *ins[2] : x->x_xf;
    double x0, quart;
    double sinq = x->x_sinq;
    double cosq = x->x_cosq;
    t_double sL, sR, a, b, c, d;

	if (x->p_xob.z_disabled)
		return;

    // constrain xfade value
    if (xfade > 1.0) {
        xfade = 1.0;
    }
    else if (xfade < 0.0) {
        xfade = 0.0;
    }

    // do we need to recalc?
    if (xfade != x->x_xf) {
        x0 = xfade - 0.5;
        quart = evi_xfade_calc(x0);
        x->x_sinq = sinq = quart + x0;
	    x->x_cosq = cosq = quart - x0;
        x->x_xf = xfade;
    }

    while (vs--) {
        sL = (*in1++);
        sR = (*in2++);
        a = (sL * cosq);
        d = (sL * sinq);
        c = (sR * cosq);
        b = (sR * sinq);
        *out1++ = (a + b);
        *out2++ = (c + d);
    }
}

void evi_xfade_perform_stereo64(t_evi_xfade* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* in1 = ins[0];
    t_double* in2 = ins[1];
    t_double* in3 = ins[2];
    t_double* in4 = ins[3];
    t_double* out1 = outs[0];
    t_double* out2 = outs[1];
    int vs = sampleframes;

    t_double xfade = x->x_xfconnect ? *ins[4] : x->x_xf;
    double x0, quart;
    double sinq = x->x_sinq;
    double cosq = x->x_cosq;
    t_double a, b, c, d;

	if (x->p_xob.z_disabled)
		return;

    // constrain xfade value
    if (xfade > 1.0) {
        xfade = 1.0;
    }
    else if (xfade < 0.0) {
        xfade = 0.0;
    }

    // do we need to recalc?
    if (xfade != x->x_xf) {
        x0 = xfade - 0.5;
        quart = evi_xfade_calc(x0);
        x->x_sinq = sinq = quart + x0;
	    x->x_cosq = cosq = quart - x0;
        x->x_xf = xfade;
    }

    while (vs--) {
        a = ((*in1++) * cosq);
        c = ((*in2++) * cosq);
        b = ((*in3++) * sinq);
        d = ((*in4++) * sinq);
        *out1++ = (a + b);
        *out2++ = (c + d);
    }
}

// void evi_xfade_int(t_evi_xfade* x, long n)
// {
//     evi_xfade_float(x, (double)n);
// }

void evi_xfade_float(t_evi_xfade* x, double f)
{
    long inlet = proxy_getinlet((t_object*)x);

    if (x->x_mode != 2 && inlet == 2) {
        if (f > 1.0) {
            f = 1.0;
        }
        else if (f < 0.0) {
            f = 0.0;
        }
        x->x_xf = f;
        object_attr_touch((t_object*)x, gensym("xfade"));
        evi_xfade_coefficients(x);
    }
    else if (x->x_mode == 2 && inlet == 4) {
        if (f > 1.0) {
            f = 1.0;
        }
        else if (f < 0.0) {
            f = 0.0;
        }
        x->x_xf = f;
        object_attr_touch((t_object*)x, gensym("xfade"));
        evi_xfade_coefficients(x);
    }
}

t_max_err evi_xfade_attr_setxfade(t_evi_xfade* x, void* attr, long argc, t_atom* argv)
{
    double xfade = atom_getfloat(argv);
    if (xfade > 1.0) {
        xfade = 1.0;
    }
    else if (xfade < 0.0) {
        xfade = 0.0;
    }
    x->x_xf = xfade;
    evi_xfade_coefficients(x);

    return 0;
}
/*
t_max_err evi_xfade_attr_setmode(t_evi_xfade* x, void* attr, long argc, t_atom* argv)
{
    long mode = atom_getlong(argv);
    if (mode > 2) {
        mode = 2;
    }
    else if (mode < 0) {
        mode = 0;
    }
    x->x_mode = mode;
}
*/
// 2 muls
void evi_xfade_coefficients(t_evi_xfade* x)
{
	double x0 = x->x_xf - 0.5;
	// angle = 0 .. HALFPI
	double quart = TM4SQRT12 * x0 * x0 + M_SQRT1_2;
	x->x_sinq = quart + x0;
	x->x_cosq = quart - x0;
}

double evi_xfade_calc(double x0) // x0 must be clamped -0.5..0.5
{
    return TM4SQRT12 * x0 * x0 + M_SQRT1_2;
}

void evi_xfade_assist(t_evi_xfade* x, void* b, long m, long a, char* s)
{
    long mode = x->x_mode;
    if (m == 2) {
        switch (a) {
            case 0:
                if (mode == 0) {
                    sprintf(s, "(signal) Xfaded Output"); break;
                }
                else if (mode == 1) {
                    sprintf(s, "(signal) Output 1"); break;
                }
                else {
                    sprintf(s, "(signal) Output Left"); break;
                }
            case 1:
                if (mode == 1) {
                    sprintf(s, "(signal) Output 2"); break;
                }
                else {
                    sprintf(s, "(signal) Output Right"); break;
                }
        }
    }
    else {
        switch (a) {
            case 0: 
                if (mode == 2) {
                    sprintf(s, "(signal) Input 1 Left"); break;
                }
                else {
                    sprintf(s, "(signal) Input 1"); break;
                }
            case 1:
                if (mode == 2) {
                    sprintf(s, "(signal) Input 1 Right"); break;
                }
                else {
                    sprintf(s, "(signal) Input 2"); break;
                }
            case 2:
                if (mode == 2) {
                    sprintf(s, "(signal) Input 2 Left"); break;
                }
                else {
                    sprintf(s, "(signal/float) Xfade Amount 0..1"); break;
                }
            case 3:
                if (mode == 2) {
                    sprintf(s, "(signal) Input 2 Right"); break;
                }
            case 4:
                if (mode == 2) {
                    sprintf(s, "(signal/float) Xfade Amount 0..1"); break;
                }
        }
    }
}

void* evi_xfade_new(t_symbol* s, long argc, t_atom* argv)
{
    t_evi_xfade* x = object_alloc(evi_xfade_class);
    long offset;
    long mode = 0;
    // t_symbol *mode_sym;
    double xfade = 0.0;

    if (!x)
        return x;

    offset = attr_args_offset((short)argc, argv);
    if (offset) {
        xfade = atom_getfloat(argv);
        if (xfade > 1.0) {
            xfade = 1.0;
        }
        else if (xfade < 0.0) {
            xfade = 0.0;
        }
        if (offset > 1) {
            // if (atom_gettype(argv + 1) == A_SYM && atom_getsym(argv + 1) != gensym("@mode")) {
            //     mode_sym = argv + 1;
            //     if (mode_sym == gensym("mono")) {
            //         mode = 0;
            //     }
            //     else if (mode_sym == gensym("swap")) {
            //         mode = 1;
            //     }
            //     else if (mode_sym == gensym("stereo")) {
            //         mode = 2;
            //     }
            //     else {
            //         mode = 0;
            //         object_error((t_object *) x, "unknown mode: %s", mode_sym->s_name);
            //     }
            // }
            // else if (atom_gettype(argv + 1) == A_LONG) {
                mode = atom_getlong(argv + 1);
            // }
            if (mode > 2) {
                mode = 2;
            }
            else if (mode < 0) {
                mode = 0;
            }
        }
    }
    x->x_xf = xfade;
    x->x_mode = mode;

    attr_args_process(x, (short)argc, argv); // attr versions win out over args

    if (x->x_mode == 0 || x->x_mode == 1) {
        dsp_setup((t_pxobject*)x, 3); // mono & swap
        outlet_new((t_object*)x, "signal");
        if (x->x_mode == 1) {
            outlet_new((t_object*)x, "signal"); // swap
        }
    }
    else if (x->x_mode == 2) {
        dsp_setup((t_pxobject*)x, 5); // stereo
        outlet_new((t_object*)x, "signal");
        outlet_new((t_object*)x, "signal");
    }

    evi_xfade_coefficients(x);

    return x;
}
