
// Coefficients for evi.hilbert etc, by pete for evieve, 2013, 2021

// Coefficients calculations for specific use case of Polyphase IIR Allpass Cascade
// Bastardised from the original code by Laurent de Soras (sorry)
// @see: http://ldesoras.free.fr/prod.html#src_hiir
const ppiir2 = require("evi_polyphaseiir2coefficients.js");

inlets = 1;
outlets = 1;

let sampleRate = 48000.0;			// Hz
let numCoefs = 8;					// Number of coefficients, must be even (8 for Hilbert)
let bandwidth = 40.0;				// Hz
let transition = 0.000833333333333;	// bandwidth / sampleRate (default 40Hz / 48kHz)

// why is this global ?
let coefs = new Array;				// coefs[numCoefs]

let localName = "0_polyphaseiir";   // [buffer~] & [dict]
if (jsarguments.length > 1)
{
    localName = jsarguments[1];
}
const hilbertBuffer = new Buffer(localName);
const hilbertDict = new Dict(localName);// must name Dict in "name" function on load
hilbertDict.quiet = true;

let outputtype = 1;                 // 0 = list (Max), 1 = iterated ([gen~])
if (jsarguments.length > 2)
{
    outputtype = clamp(jsarguments[2], 0, 1);
}

//	//	//	FILTER DESIGNER

function polyphaseIir2HilbertDesigner ()	// thanks to Olli Niemitalo, @see: http://yehar.com/blog/?p=368
{	// and @see: https://dsp.stackexchange.com/questions/37411/iir-hilbert-transformer/59157#59157
	const coefsPhase = new Array;
	const coefs90deg = new Array;
	const coefsSqrt = new Array;
	const coefsHilbert = new Array;

	ppiir2.compute_coefs_spec_order_tbw(coefs, numCoefs, transition);	// compute coefficients (fill array)

	// Phase reference path c coefficients:
	for (let i = 1; i < numCoefs; i += 2) {
		coefsPhase[(i - 1) / 2] = coefs[i];
	}
	// +90 deg path c coefficients:
	for (let j = 0; j < numCoefs; j += 2) {
		coefs90deg[j / 2] = coefs[j];
	}
	// interleave for hilbert output
	for (let m = 0; m < (numCoefs / 2); ++m) {
		coefsHilbert[m] = coefsPhase[m];
		coefsHilbert[m + 4] = coefs90deg[m];
	}
	for (let n = 0; n < numCoefs; ++n) {
		hilbertBuffer.poke(0, n, coefsHilbert[n]);				// fill coefficients to [buffer~]
		if (outputtype)
		{
			outlet(0, `coef${n+1}`, coefsHilbert[n]);			// and as 64-bit params direct to [gen~] Params
		}
	}															// and store 64-bit in a dict
	if (!outputtype)
	{
		outlet(0, "coefs", coefsHilbert);						// option: output list, not iterated
	}
	// sqrt gives pole locations, interleaved
	for (let s = 0; s < numCoefs; ++s) {
		coefsSqrt[s] = Math.sqrt(coefs[s]);
	}
	hilbertDict.replace("Phase reference path c coefficients", coefsPhase);
	hilbertDict.replace("+90 degrees path c coefficients", coefs90deg);
	hilbertDict.replace("Interleaved sqrt(c) coefficients (pole locations)", coefsSqrt);
}
polyphaseIir2HilbertDesigner.local = 1;

//	//	//	UPDATES

// if samplerate changes, trigger recomputation, otherwise require a bang to retrigger

function update_transition (bw)	// bw = bandwidth in Hz
{
	bandwidth = clamp(bw, 1.0, 1000.0);
	transition = bandwidth / sampleRate;
}
update_transition.local = 1;

function samplerate (sr)		// Hz
{
    if (sr > 0) {
        sampleRate = sr;
    } else {
        sampleRate = 48000.0;
    }
	update_transition(bandwidth);// recompute transition
	update_coefficients();		// if samplerate changes, trigger recomputation (use [change] externally)
}

function name (rename)
{
	localName = rename;
	hilbertBuffer.send("name", localName);
	hilbertDict.name = localName;
}

function msg_int (i)			// default 8 (for Hilbert)
{
	numCoefs = clamp(i, 2, 64);// (use [mousefilter] externally)
}

function msg_float (f)			// f = bandwidth in Hz
{
	let b = clamp(f, 4.0, (sampleRate * 0.25))
	update_transition(b);		// (use [mousefilter] externally)
}

function iterate (it)
{
	outputtype = clamp(it, 0, 1);
}

function bang ()
{
	update_coefficients();
}

function update_coefficients ()
{
	hilbertBuffer.send("clear");
	hilbertDict.clear();
	hilbertBuffer.send("sizeinsamps", numCoefs);
	hilbertDict.replace("Current samplerate", sampleRate);
	polyphaseIir2HilbertDesigner();
}
update_coefficients.local = 1;


//	//	//	UTILITIES

// generic clipping
function clamp(v, mn, mx)
{
    return Math.min(mx, Math.max(mn, v));
}
clamp.local = 1;

// basic linear scaling like linear part of [scale]
// (non-clamping & respects high/low, i.e. not exactly like [zmap] but similar)
function map(valueIn, inLow, inHigh, outLow, outHigh)
{
    const multiplier = (outLow - outHigh) / (inLow - inHigh);
    return (valueIn - inLow) * multiplier + outLow;
}
map.local = 1;

