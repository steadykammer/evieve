/**
 @file
 evi.quadosc~ - An efficient synchronised quadrature oscillator
 thanks to Martin Vicanek
 */

#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"

static t_class* evi_quadosc_class;

// delta/change struct
// typedef struct _evi_deltachange
// {
//     t_sample d_h; // state
// } t_evi_deltachange;

// the object
typedef struct _evi_quadosc
{
    t_pxobject p_qob;
    // t_evi_deltachange p_delta;
    // t_evi_deltachange p_changeu;
    // t_evi_deltachange p_changev;
    t_sample q_dh;
    t_sample q_chu;
    t_sample q_chv;
    long q_syncout;

    t_sample q_u; // state 1, cos
    t_sample q_v; // state 2, sin

    double q_freq; // stored oscillator frequency in Hz
    double q_k1; // quadosc coefficient 1
    double q_k2; // quadosc coefficient 2

    double q_sr; // cache samplerate
    double q_nyquist; // cache nyquist
    double q_twoeviivsr; // cache TWOPI / samplerate

    short q_freqconnect; // is a signal connected to the frequency inlet
    short q_resetconnect; // is a signal connected to the reset inlet
    short q_isinitial; // is new instantiation
} t_evi_quadosc;

// void evi_quadosc_free(t_evi_quadosc* x);
void evi_quadosc_dsp64(t_evi_quadosc* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags);
void evi_quadosc_perform64(t_evi_quadosc* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_quadosc_perform_sync64(t_evi_quadosc* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_quadosc_perform_float64(t_evi_quadosc* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_quadosc_perform_sync_float64(t_evi_quadosc* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
// void evi_quadosc_perform_unroll64(t_evi_quadosc* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam);
void evi_quadosc_int(t_evi_quadosc* x, long n);
void evi_quadosc_float(t_evi_quadosc* x, double f);
void evi_quadosc_coefficients(t_evi_quadosc* x);
t_max_err evi_quadosc_attr_setfreq(t_evi_quadosc* x, void* attr, long argc, t_atom* argv);
// t_max_err evi_quadosc_attr_setsyncout(t_evi_quadosc* x, void* attr, long argc, t_atom* argv);
void evi_quadosc_clear(t_evi_quadosc* x);
void evi_quadosc_assist(t_evi_quadosc* x, void* b, long m, long a, char* s);
void* evi_quadosc_new(t_symbol* s, long argc, t_atom* argv);
static inline double evi_tan_A3(double x);
static inline double evi_sign(double x);

C74_EXPORT void ext_main(void* r)
{
    t_class* c;

    c = class_new("evi.quadosc~", (method)evi_quadosc_new, (method)dsp_free, sizeof(t_evi_quadosc), 0L, A_GIMME, 0);

    class_addmethod(c, (method)evi_quadosc_dsp64, "dsp64", A_CANT, 0);
    class_addmethod(c, (method)evi_quadosc_assist, "assist", A_CANT, 0);
    class_addmethod(c, (method)evi_quadosc_clear, "clear", 0); // not needed :-)
    class_addmethod(c, (method)evi_quadosc_int, "int", A_LONG, 0);
    class_addmethod(c, (method)evi_quadosc_float, "float", A_FLOAT, 0);

    CLASS_ATTR_DOUBLE(c, "frequency", 0, t_evi_quadosc, q_freq);
    CLASS_ATTR_BASIC(c, "frequency", 0);
    CLASS_ATTR_LABEL(c, "frequency", 0, "Oscillator Frequency in Hz");
    CLASS_ATTR_ALIAS(c, "frequency", "freq");
    CLASS_ATTR_ACCESSORS(c, "frequency", 0, evi_quadosc_attr_setfreq);

    CLASS_ATTR_LONG(c, "syncout", 0, t_evi_quadosc, q_syncout);
    // CLASS_ATTR_ACCESSORS(c, "syncout", 0, evi_quadosc_attr_setsyncout);
    CLASS_ATTR_LABEL(c, "syncout", 0, "Provides Two Extra Sync Outlets"); // not needed ?
    CLASS_ATTR_FILTER_CLIP(c, "syncout", 0, 1);
    CLASS_ATTR_INVISIBLE(c, "syncout", 0); // only instantiation @ttribute

    class_dspinit(c);
    class_register(CLASS_BOX, c);
    evi_quadosc_class = c;
}

// void evi_quadosc_free(t_evi_quadosc* x)
// {
//     dsp_free(&x->p_qob);
//     object_free(&x->p_delta);
//     object_free(&x->p_changeu);
//     object_free(&x->p_changev);
// }

void evi_quadosc_dsp64(t_evi_quadosc* x, t_object* dsp64, short* count, double samplerate, long maxvectorsize, long flags)
{
    if (samplerate <= 0) {
        x->q_sr = 48000.0;
    } else {
        x->q_sr = samplerate;
    }
    x->q_nyquist = x->q_sr * 0.5 - 1.0;
    x->q_twoeviivsr = TWOPI / x->q_sr;
    evi_quadosc_coefficients(x);
    x->q_isinitial = 1;

    x->q_freqconnect = count[0]; // signal connected to the frequency inlet?
    x->q_resetconnect = count[1]; // signal connected to the resonance inlet?

    evi_quadosc_clear(x);

    // if (count[0] || count[1]) {
    //     dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_quadosc_perform64, 0, NULL);
    // }
    // else {
    //     dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_quadosc_perform_float64, 0, NULL);
    // }

    if (count[0] || count[1]) {
        if (x->q_syncout) {
            dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_quadosc_perform_sync64, 0, NULL);
        }
        else {
            dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_quadosc_perform64, 0, NULL);
        }
    }
    else {
        if (x->q_syncout) {
            dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_quadosc_perform_sync_float64, 0, NULL);
        }
        else {
            dsp_add64(dsp64, (t_object*)x, (t_perfroutine64)evi_quadosc_perform_float64, 0, NULL);
        }
    }
}

void evi_quadosc_perform64(t_evi_quadosc* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out1 = outs[0];
    t_double* out2 = outs[1];
    int vs = sampleframes;

    t_double freq = x->q_freqconnect ? *ins[0] : x->q_freq;
    t_double reset = x->q_isinitial ? 1.0 : *ins[1];

    t_double u = x->q_u;
    t_double v = x->q_v;

    t_double omega;

    double k1 = x->q_k1;
    double k2 = x->q_k2;
    double nyquist = x->q_nyquist;

    t_double dh = x->q_dh;

	if (x->p_qob.z_disabled)
		return;

    // constrain freq value
    if (freq > nyquist) {
        freq = nyquist;
    }
    else if (freq < -nyquist) {
        freq = -nyquist;
    }

    // do we need to recompute coefficients?
    if (freq != x->q_freq) {
        x->q_k1 = k1 = evi_tan_A3(0.5 * freq * x->q_twoeviivsr);
        x->q_k2 = k2 = (k1 + k1) / (1.0 + (k1 * k1));

        x->q_freq = freq;
    }
    x->q_isinitial = 0;

    while (vs--) {
        reset   = reset - dh;
        dh      = reset;

        omega	= u - k1*v;
        v		= reset ? 0.0 : v + k2*omega;
        u		= reset ? 1.0 : omega - k1*v;

        *out1++ = u; // cos
        *out2++ = v; // sin
    }

    x->q_u = u;
    x->q_v = v;
    x->q_dh = dh;
}

void evi_quadosc_perform_sync64(t_evi_quadosc* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out1 = outs[0];
    t_double* out2 = outs[1];
    t_double* out3 = outs[2];
    t_double* out4 = outs[3];
    int vs = sampleframes;

    t_double freq = x->q_freqconnect ? *ins[0] : x->q_freq;
    t_double reset = x->q_isinitial ? 1.0 : *ins[1];

    t_double u = x->q_u;
    t_double v = x->q_v;

    t_double omega, ugt, vgt, usync, vsync;

    double k1 = x->q_k1;
    double k2 = x->q_k2;
    double nyquist = x->q_nyquist;

    t_double dh = x->q_dh;
    t_double chu = x->q_chu;
    t_double chv = x->q_chv;

	if (x->p_qob.z_disabled)
		return;

    // constrain freq value
    if (freq > nyquist) {
        freq = nyquist;
    }
    else if (freq < -nyquist) {
        freq = -nyquist;
    }

    // do we need to recompute coefficients?
    if (freq != x->q_freq) {
        x->q_k1 = k1 = evi_tan_A3(0.5 * freq * x->q_twoeviivsr);
        x->q_k2 = k2 = (k1 + k1) / (1.0 + (k1 * k1));

        x->q_freq = freq;
    }
    x->q_isinitial = 0;

    while (vs--) {
        reset   = reset - dh;
        dh      = reset;

        omega	= u - k1*v;
        v		= reset ? 0.0 : v + k2*omega;
        u		= reset ? 1.0 : omega - k1*v;

        vgt     = (v > 0.0);
        vsync   = vgt - chv;
        chv     = vgt;
        vsync   = evi_sign(vsync) > 0.0;

        ugt     = (u > 0.0);
        usync   = ugt - chu;
        chu     = ugt;
        usync   = evi_sign(usync) > 0.0;

        *out1++ = u; // cos
        *out2++ = v; // sin
        *out3++ = usync; // cos sync
        *out4++ = vsync; // sin sync
    }

    x->q_u = u;
    x->q_v = v;
    x->q_dh = dh;
    x->q_chu = chu;
    x->q_chv = chv;
}

void evi_quadosc_perform_float64(t_evi_quadosc* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out1 = outs[0];
    t_double* out2 = outs[1];
    int vs = sampleframes;

    t_double freq = x->q_freq;

    t_double u = x->q_isinitial ? 1.0 : x->q_u;
    t_double v = x->q_isinitial ? 0.0 : x->q_v;

    t_double omega;

    double k1 = x->q_k1;
    double k2 = x->q_k2;
    double nyquist = x->q_nyquist;

	if (x->p_qob.z_disabled)
		return;

    // constrain freq value
    if (freq > nyquist) {
        freq = nyquist;
    }
    else if (freq < -nyquist) {
        freq = -nyquist;
    }

    // do we need to recompute coefficients?
    if (freq != x->q_freq) {
        x->q_k1 = k1 = evi_tan_A3(0.5 * freq * x->q_twoeviivsr);
        x->q_k2 = k2 = (k1 + k1) / (1.0 + (k1 * k1));

        x->q_freq = freq;
    }
    x->q_isinitial = 0;

    while (vs--) {
        omega	= u - k1*v;
        v		= v + k2*omega;
        u		= omega - k1*v;

        *out1++ = u; // cos
        *out2++ = v; // sin
    }

    x->q_u = u;
    x->q_v = v;
}

void evi_quadosc_perform_sync_float64(t_evi_quadosc* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    t_double* out1 = outs[0];
    t_double* out2 = outs[1];
    t_double* out3 = outs[2];
    t_double* out4 = outs[3];
    int vs = sampleframes;

    t_double freq = x->q_freq;

    t_double u = x->q_isinitial ? 1.0 : x->q_u;
    t_double v = x->q_isinitial ? 0.0 : x->q_v;

    t_double omega, ugt, vgt, usync, vsync;

    double k1 = x->q_k1;
    double k2 = x->q_k2;
    double nyquist = x->q_nyquist;

    t_double chu = x->q_chu;
    t_double chv = x->q_chv;

	if (x->p_qob.z_disabled)
		return;

    // constrain freq value
    if (freq > nyquist) {
        freq = nyquist;
    }
    else if (freq < -nyquist) {
        freq = -nyquist;
    }

    // do we need to recompute coefficients?
    if (freq != x->q_freq) {
        x->q_k1 = k1 = evi_tan_A3(0.5 * freq * x->q_twoeviivsr);
        x->q_k2 = k2 = (k1 + k1) / (1.0 + (k1 * k1));

        x->q_freq = freq;
    }
    x->q_isinitial = 0;

    while (vs--) {
        omega	= u - k1*v;
        v		= v + k2*omega;
        u		= omega - k1*v;

        vgt     = (v > 0.0);
        vsync   = vgt - chv;
        chv     = vgt;
        vsync   = evi_sign(vsync) > 0.0;

        ugt     = (u > 0.0);
        usync   = ugt - chu;
        chu     = ugt;
        usync   = evi_sign(usync) > 0.0;

        *out1++ = u; // cos
        *out2++ = v; // sin
        *out3++ = usync; // cos sync
        *out4++ = vsync; // sin sync
    }

    x->q_u = u;
    x->q_v = v;
    x->q_chu = chu;
    x->q_chv = chv;
}

/*
// TODO
void evi_quadosc_perform_unroll64(t_evi_quadosc* x, t_object* dsp64, double** ins, long numins, double** outs, long numouts, long sampleframes, long flags, void* userparam)
{
    ;
}
*/

void evi_quadosc_int(t_evi_quadosc* x, long n)
{
    evi_quadosc_float(x, (double)n);
}

void evi_quadosc_float(t_evi_quadosc* x, double f)
{
    double nyquist = x->q_nyquist;
    long inlet = proxy_getinlet((t_object*)x);

    if (inlet == 0) {
        if (f > nyquist) {
            f = nyquist;
        }
        else if (f < -nyquist) {
            f = -nyquist;
        }
        x->q_freq = f;
        object_attr_touch((t_object*)x, gensym("frequency"));
        evi_quadosc_coefficients(x);
    }
}

t_max_err evi_quadosc_attr_setfreq(t_evi_quadosc* x, void* attr, long argc, t_atom* argv)
{
    double nyquist = x->q_nyquist;
    double freq = atom_getfloat(argv);
    if (freq > nyquist) {
        freq = nyquist;
    }
    else if (freq < -nyquist) {
        freq = -nyquist;
    }
    x->q_freq = freq;
    evi_quadosc_coefficients(x);

    return 0;
}
/*
t_max_err evi_quadosc_attr_setsyncout(t_evi_quadosc* x, void* attr, long argc, t_atom* argv)
{
    long sync = atom_getlong(argv);
    if (sync > 1) {
        sync = 1;
    }
    else if (sync < 0) {
        sync = 0;
    }
    x->q_syncout = sync;

    return 0;
}
*/
void evi_quadosc_clear(t_evi_quadosc* x)
{
    x->q_u = 1.0; // init cos
    x->q_v = 0.0;
}

void evi_quadosc_coefficients(t_evi_quadosc* x)
{
    x->q_k1 = evi_tan_A3(0.5 * x->q_freq * x->q_twoeviivsr);
    x->q_k2 = (x->q_k1 + x->q_k1) / (1.0 + (x->q_k1 * x->q_k1));
}

// approx tan(x), -halfpi..halfpi
static inline double evi_tan_A3(double x)
{
	double x2 = x * x;
	return x * (0.999999492001 + x2 * -0.096524608111) / (1.0 + x2 * (-0.429867256894 + x2 * 0.009981877999));
}

// sorry :-(
static inline double evi_sign(double x)
{
    if (x > 0.0) return 1.0;
    if (x < 0.0) return -1.0;
    return x;
}

void evi_quadosc_assist(t_evi_quadosc* x, void* b, long m, long a, char* s)
{
    if (m == 2) {
        switch (a) {
            case 0: sprintf(s, "(signal) Cosine Output"); break;
            case 1: sprintf(s, "(signal) Sine Output"); break;
            case 2: if (x->q_syncout)
                sprintf(s, "(signal) Cosine Sync"); break;
            case 3: if (x->q_syncout)
                sprintf(s, "(signal) Sine Sync"); break;
        }
    }
    else {
        switch (a) {
            case 0: sprintf(s, "(signal/float) Oscillator Frequency in Hz"); break;
            case 1: sprintf(s, "(signal) Sample Accurate Reset"); break;
        }
    }
}

void* evi_quadosc_new(t_symbol* s, long argc, t_atom* argv)
{
    t_evi_quadosc* x = object_alloc(evi_quadosc_class);
    long offset, syncout = 0;
    double freq = 0.0, nyquist = 0.0;

    if (!x)
        return x;

    offset = attr_args_offset((short)argc, argv);

    if (sys_getsr() <= 0) {
        x->q_sr = 48000.0;
    } else {
        x->q_sr = (double)sys_getsr();
    }
    x->q_nyquist = nyquist = x->q_sr * 0.5 - 1.0;
    x->q_twoeviivsr = TWOPI / x->q_sr;

    if (offset) {
        freq = atom_getfloat(argv);
        if (freq > nyquist) {
            freq = nyquist;
        }
        else if (freq < -nyquist) {
            freq = -nyquist;
        }
        if (offset > 1) {
            syncout = atom_getlong(argv + 1);
            if (syncout > 1) {
                syncout = 1;
            }
            else if (syncout < 0) {
                syncout = 0;
            }
        }
    }

    x->q_freq = freq;
    x->q_syncout = syncout;

    attr_args_process(x, (short)argc, argv); // attr versions win out over args

    dsp_setup((t_pxobject*)x, 2);

    // up to four signal outlets, cos, sin, cossync, sinsync
    if (x->q_syncout) {
        outlet_new((t_object*)x, "signal");
        outlet_new((t_object*)x, "signal");
    }
    outlet_new((t_object*)x, "signal");
    outlet_new((t_object*)x, "signal");

    evi_quadosc_clear(x);
    evi_quadosc_coefficients(x);
    x->q_isinitial = 1; // actually do not need this in "_new" ?

    return x;
}
