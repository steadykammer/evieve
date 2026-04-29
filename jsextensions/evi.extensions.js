/*!
    This file is part of the 'evieve' Package for Max.
    evieve is a library of GenExpr audio code by Pete Dowling.

    evieve is released under the GPLv3 license, copyright © Peter Dowling 2026.
    This means that it is licensed for non-commercial use only.
    For license details @see: 'license.txt' in the root of the Package, or access it via
    the Max 'Package Manager'. Otherwise see <https://www.gnu.org/licenses/>.

    evieve is free software: you can redistribute it and/or modify it under the terms
    of the GNU General Public License as published by the Free Software Foundation,
    either version 3 of the License, or (at your option) any later version.

    evieve is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
    without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
    See the GNU General Public License for more details.
*/

/*
	js extensions for evieve, 2021
	shared library used by the evieve JavaScripts ( [js] / [jsui] / [jspainter] )

	NOTE: for shared code for [v8] / [v8ui] 'require' @see: "evi.library.js"
*/


var eviConst = new EviConstants();
var eviUtil = new EviUtilities();
var eviApprox = new EviApproximations();
var eviTanh = new EviTanh();


function EviUtilities()
{
	// generic clipping
	this.clamp = function(v, mn, mx)
	{
	    return Math.min(mx, Math.max(mn, v));
	}

	this.clip = function(v, mn, mx)						// just in case
	{
		return this.clamp(v, mn, mx);
	}

	this.roundNearest = function(num, near)				// (integer) num, constrain to multiples of near
	{
		return Math.round(num / near) * near;
	}

	this.cheapRandomInt = function(min, max)
	{
		return Math.floor(Math.random() * (max - min + 1)) + min;
	}

	// db to amp like [dbtoa] (but cheaper because no pow())
	this.dbtoa = function(db)
	{
	    return Math.exp(eviConst.DBLIN * db);			// should clamp ?
	}

	this.dbtolin = function(db)							// just in case
	{
		return this.dbtoa(db);
	}

	// db to amp with floor, like [evi.dbtoa]
	// (for using gain to explicitly mute poly~ voices, for example)
	this.dbtoaFloor = function(db, floor)				// "floor" = lowest dB value to report zero amplitude
	{
	    return (db > floor) ? this.dbtoa(db) : 0.0;		// amplitude clipped
	}

	// dbtorms(), dbtopow(), rmstodb(), powtodb(), are strange Pd
	// way of doing things (100 dB unity), here for completeness

	this.dbtorms = function(db)
	{
		db = (db > 485.0) ? 485.0 : db;
		return (db <= 0.0) ? 0.0 : Math.exp(eviConst.LOGTENDIVTWENTY * (db - 100.0));
	}

	this.dbtopow = function(db)
	{
		db = (db > 870.0) ? 870.0 : db;
		return (db <= 0.0) ? 0.0 : Math.exp(eviConst.LOGTENDIVTEN * (db - 100.0));
	}

	this.rmstodb = function(r)
	{
		var db = 0.0;
		if (r <= 0.0)
		{
			db = 0.0;
		}
		else
		{
			db = 100.0 + eviConst.TWENTYDIVLOGTEN * Math.log(r);
			db = (db < 0.0) ? 0.0 : db;
		}
		return db;
	}

	this.powtodb = function(p)
	{
		var db = 0.0;
		if (p <= 0.0)
		{
			db = 0.0;
		}
		else
		{
			db = 100.0 + eviConst.TENDIVLOGTEN * Math.log(p);
			db = (db < 0.0) ? 0.0 : db;
		}		
		return db;
	}

	// amp to db like [atodb]
	this.atodb = function(a)							// should clamp ?
	{
	    return eviConst.LINDB * Math.log(Math.abs(a));	// must improve, still not convinced we need the abs()
	}

	this.lintodb = function(a)							// just in case
	{
		return this.atodb(a);
	}

	// amp to db with db floor, like [evi.atodb]
	// (for avoiding -inf's & nan's in array transposing, for example)
	this.atodbFloor = function(a, floor, mode)			// "floor" = largest dB value to use, "mode" 0/1 = take amplitude input as abs() or max()
	{
		a = (mode > 0) ? Math.max(a, 0.0) : Math.abs(a);
		var db = this.atodb(a);
	    return this.clamp(db, floor, Math.abs(floor));	// dB clipped
	}

	// transpose semitones input (0=none), like [transratio] & [evi.transratio]
	this.transratio = function(pitch)			// pitch default = 0
	{
		return Math.exp(eviConst.LOGTWODIVTWELVE * pitch);	// transposed ratio output (e.g. speed to [groove~])
	}

	// transpose ratio input (1=none), like [evi.transratio]
	this.ratiotrans = function(ratio)			// ratio default = 1
	{
		return eviConst.TWELVEDIVLOGTWO * Math.log(ratio);	// transposed semitones output
	}
/*
	this.mtof = function(pitch, base)			// "base" should be 440 (hz) default
	{
		return base * Math.exp(eviConst.LOGTWODIVTWELVE * (pitch - 69.0));
	}
*/
	// midi to hz like [mtof]
	this.mtof = function(pitch, base)			// "base" should be 440 (hz) default
	{
		return base * this.transratio(pitch - 69.0);	// should clamp ?
	}

	// perfect for any input, actually more accurate that library mtof() for input > 81 !!
	this.mtofBaseless = function(pitch)			// by Alex Harker, no "base"
	{
		return	Math.exp((eviConst.LOGTWODIVTWELVE * pitch) + eviConst.PITCHFREQ);
	}
/*
	this.ftom = function(frequency, base)		// "base" should be 440 (hz) default
	{
		return 69.0 + (eviConst.TWELVEDIVLOGTWO * Math.log(frequency / base));
	}
*/
	// hz to midi like [ftom] (actually slightly different, do we need a clamp ?? <<-- yes)
	this.ftom = function(frequency, base)		// "base" should be 440 (hz) default
	{
		return 69.0 + this.ratiotrans(frequency / base);
	}

	// perfect for any input, cheaper than native
	this.ftomBaseless = function(freq)			// by Alex Harker, no "base"
	{
		return	Math.log(freq) * eviConst.TWELVEDIVLOGTWO + eviConst.FREQPITCH;
	}

	// basic linear scaling like linear part of [scale] (non-clamping & respects high/low, i.e. not exactly like [zmap] but similar)
	this.map = function(valueIn, inLow, inHigh, outLow, outHigh)
	{
		var multiplier = (outLow - outHigh) / (inLow - inHigh);
		return (valueIn - inLow) * multiplier + outLow;
	}

	// almost like [zmap]
	this.zmap = function(valueIn, inLow, inHigh, outLow, outHigh)
	{
		var value = this.clamp(valueIn, inLow, inHigh);
		var multiplier = (outLow - outHigh) / (inLow - inHigh);
		return (value - inLow) * multiplier + outLow;
	}

	// scaling like Max [scale @classic 0] (or MSP/RNBO [scale~] or Gen/RNBO [scale])
	this.scale = function(valueIn, inLow, inHigh, outLow, outHigh, exponent)	// "exponent" must default to 1.0
	{
	    var valueOut = valueIn;
		if (exponent != 1.0)
		{
			var condition = (valueIn - inLow) / (inHigh - inLow);
			var offset = outLow + (outHigh - outLow);
			if (condition > 0.0)	// >= ??
				valueOut = offset * Math.pow(condition, exponent);
			else if (condition < 0.0)
				valueOut = offset * -(Math.pow(((-valueIn + inLow) / (inHigh - inLow)), exponent));
			else
				valueOut = outLow;	// condition == 0.0 ??
		}
		else
		{
			valueOut = this.map(valueIn, inLow, inHigh, outLow, outHigh);
		}
		return valueOut;
	}

	// cartesian to polar
	this.cartopol = function(real, imag)
	{
	    var al = Math.sqrt((real * real) + (imag * imag));
	    var th = Math.atan2(imag, real);
	    return [ al, th ];
	}

	// often we only need the alpha so this is cheaper
	this.alpha = function(real, imag)
	{
		var al = Math.sqrt((real * real) + (imag * imag));
	    return al;
	}

	// polar to cartesian
	this.poltocar = function(alpha, theta)
	{
	    var re = alpha * Math.cos(theta);
	    var im = alpha * Math.sin(theta);
	    return [ re, im ];
	}

	// index is 0-based (e.g. from [funnel n 0])
	this.indextomatrix = function(index, columns)
	{
		var matrix;
		if (index <= -1) {
			matrix = [ -1, -1 ];
		} else {
			matrix = [ Math.floor(index % columns), Math.floor(index / columns) ];
		}
	    return {
	        X: matrix[0],
	        Y: matrix[1]										// return matrix[] address
	    };
	}

	// matrix is 2-atom array (i.e., matrix[])
	this.matrixtoindex = function(matrix, columns)
	{
		return Math.floor(matrix[0] + (matrix[1] * columns));	// return 0-based index
	}

	return this;
}

//

function EviApproximations()
{
	// for first quarter only, optimized so that never lets sqrt(sinapprox(x)^2+cosapprox(x)^2)
	// exceed 1, always gives exact results at modphase 0, 0.5, 1 (0/1, sqrt1_2, 1/0)
	this.quartOneParApprox = function(modphase)						// 'modphase' must be clamped 0..1
	{
		var x0		=  modphase - 0.5;								// 1 sub
		// first quarter											// angle = 0 .. halfpi
		var quart	=  eviConst.QUARTPAR * x0 * x0 + Math.SQRT1_2;	// 2 mul, 1 add, (QUARTPAR = 2 - 4*SQRT1_2)
		var sinq1	=  quart + x0;									// 1 add
		var cosq1	=  quart - x0;									// 1 sub
		return	{
			cosq: cosq1, 
			sinq: sinq1
		};
	}	// quartOneParApprox() is excellent for tasks such as crossfading and panning etc

	// cos/sin approxes to 7.3 digits of precision		// just about ok for audio
														// (useful for coefficients calculators etc)
	this.cosQ73 = function(x) {
		var c  = new Array(	 0.999999953464,
				   			-0.499999053455,
							 0.0416635846769,
				   			-0.0013853704264,
							 0.00002315393167 );

		var x2 = x * x;
		return (c[0] + x2 * (c[1] + x2 * (c[2] + x2 * (c[3] + c[4] * x2))));
	}

	this.cos73 = function(x) {
		x = x % eviConst.TWOPI;							// get rid of values > TWOPI
		if (x < 0.0) {
			x = -x;										// cos(-x) = cos(x)
		}			// this should be int() not floor() ?
		var quad = Math.floor(x * eviConst.TWOOVERPI);	// get quadrant # (0 to 3) we're in
		var cosreturn = 0;
		if 				(quad == 0) {
			cosreturn =  this.cosQ73(x);
		} else if 		(quad == 1) {
			cosreturn = -this.cosQ73(Math.PI - x);
		} else if 		(quad == 2) {
			cosreturn = -this.cosQ73(x - Math.PI);
		} else {	//	(quad == 3)
			cosreturn =  this.cosQ73(eviConst.TWOPI - x);
		}
		return cosreturn;
	}

	this.sin73 = function(x) {
		return this.cos73(eviConst.HALFPI - x);
	}

	// 'expA()' is cheaper than library 'Math.exp()', not amazing, but worth it
	// it outperforms Gen 'fastexp()' and is more accurate than that piecewise linear approx
	this.expA = function(x0)							// approx exp(x)
	{
		var x = 0.999996 + (0.031261316 + (0.00048274797 + 0.000006 * x0) * x0) * x0;
		x *= x; x *= x; x *= x; x *= x; x *= x;
		return x;
	}

	// excellent accuracy to about +36 dB, after which you are on your own
	this.dbtoa = function(db)
	{									   // + offset = 0 dB == 1 amplitude
		return this.expA(eviConst.DBLIN * db) + 0.000128;
	}

	// transpose semitones input (0=none)
	this.transratio = function(pitch)					// pitch default = 0
	{
		return this.expA(eviConst.LOGTWODIVTWELVE * pitch) + 0.120906;					// ratio (e.g. speed to [groove~])
	}
/*
	this.mtof = function(pitch, base)					// "base" should be 440 (hz) for default operation
	{
		return base * this.expA(eviConst.LOGTWODIVTWELVE * (pitch - 69.0)) + 0.120906;	// + offset = accurate for input 48..69
	}
*/
	this.mtof = function(pitch, base)					// "base" should be 440 (hz) for default operation
	{
		return base * this.transratio(pitch - 69.0);
	}

	this.mtofBaseless = function(pitch)					// no "base"
	{
		return	this.expA((eviConst.LOGTWODIVTWELVE * pitch) + eviConst.PITCHFREQ);
	}	// we use 'this.expA()' here, but the innaccuracy across the range is bad
		// (better just to use 'eviApprox.mtof()' if you want something cheaper)

	// cheap tan approximations

	// fast & cheap
	this.tanA = function(x)		// valid for 0..1 input
	{
		var x2 = (x * x);
		var x3 = (x2 * x);
		var x5 = (x2 * x3);
		return ((x5 * 0.133333333333) + (x3 * 0.333333333333)) + x;
	}

	// 'tanA2()' is much more accurate across full (Hz) 'range' than 'tanA()',
	//  but very slightly less accurate in very bottom of range.
	// 'tanA()' is fine if frequency input will be no higher than approx midi pitch 120,
	//  but for greater ranges (e.g. an eq filter up to 18000 or 20000 Hz) use 'tanA2()'
	this.tanA2 = function(x)	// approx tan(0..halfpi)
	{
		var a	= ((((x * -0.0896638) + 0.0388452) * x) + 1.00005) * x;
		var b	= (((x * -0.430871) + 0.0404318) * x) + 1.0;
		return	a / b;
	}

	// Padé approximation, quite accurate, positive output
	this.tanPade1 = function(x)	// valid for 0..1 input
	{
		var x2	=  x  * x;
		var x3	=  x2 * x;
		var A	= -15.0 * x + x3;
		var B	=  3.0  * (-5.0 + (x2 + x2));
		return	A / B;
	}

	// Padé approximation, very accurate, produces the negative output
	this.tanPade2 = function(x)	// valid for 0..1 input
	{
		var x2	= x   * x;
		var x3	= x2  * x;
		var x4	= x2  * x2;
		var A	= 5.0 * (-21.0 * x  + (x3 + x3));
		var B	= 105.0 - 45.0 * x2 + x4;	
		return	A / B;
	}

	// polynomial
	this.tanA3 = function(x)	// valid for -halfpi < x < +halfpi
	{
		var x2	= x * x;
		return	x * (0.999999492001 + x2 * -0.096524608111) / (1 + x2 * (-0.429867256894 + x2 * 0.009981877999));
	}

	// arctan approximations

	// cheap and fast, numerically quite accurate, sonically (harmonic spectrum) near-identical to Math.atan()
	this.atanA = function(x)
	{
		var o = 8.0 * x;
		var q = (o + o) * eviConst.INVPI;
		var s = 25.0 + (q * q);
		var u = 3.0 + Math.sqrt(s);
		return o / u;
	}

	// a bit shit
	this.atanF = function(x)	// Rajan, S. Sichun Wang Inkol, R. Joyal, A. - valid for x = -pi..pi
	{
	    return (eviConst.QUARTERPI * x) - (x * (Math.abs(x) - 1.0)) * (0.2447 + (0.0663 * Math.abs(x)));
	}

	// for eviApprox.atanS()
	this.atanIS = function(x)	// for 2nd order x = 0..infinity, maximum approximation error 0.1620º
	{
		var bx	=  0.596227 * x;
		var x2	=  x * x;
		return eviConst.HALFPI * (bx + x2) / (1.0 + (bx + bx) + x2);
	}

	// for eviApprox.atanT()
	this.atanIT = function(x)	// for 3rd order x = 0..infinity, maximum approximation error 0.00811º
	{
		// var c0	= eviConst.ALPHA;		// (1 + sqrt(17)) / 8 	( or: "alpha" :-) )
		var c1	= 1.0 + eviConst.ALPHA;	// + 1
		var x2	= x * x;
		var x3	= x2 * x;
		return	eviConst.HALFPI * ((eviConst.ALPHA * x) + x2 + x3) / (1.0 + (c1 * x) + (c1 * x2) + x3);
	}

	// quite shit
	this.atanS = function(x)	// second order using eviApprox.atanIS()
	{
		var y = 0.0;
		if (x >= 0.0) {
			y = this.atanIS(x);
		} else {
			y = -this.atanIS(-x);
		}
		return y;
	}

	// numerically very accurate, sonically very bad
	this.atanT = function(x)	// third order using eviApprox.atanIT()
	{
		var y = 0.0;
		if (x >= 0.0) {
			y = this.atanIT(x);
		} else {
			y = -this.atanIT(-x);
		}
		return y;
	}

	// numerically very accurate, sonically identical to Math.atan(), but not as cheap as eviApprox.atanA()
	this.atanP = function(x)	// Padé approximation
	{
		var x2 = x * x;
		var x3 = x2 * x;
		var x4 = x2 * x2;
		var x5 = x3 * x2;
		//			 (7.0 / 9.0)				 (64.0 / 945.0)
		var o = (x + (0.777777777777778 * x3)) + (0.067724867724868 * x5);
		//			   (10.0 / 9.0)				   (5.0 / 21.0)
		var u = (1.0 + (1.111111111111111 * x2)) + (0.238095238095238 * x4);

		return o / u;
	}

	// arctan2 approximation

	this.atan2 = function(y, x)
	{
		var r, angle, at2a;				// epsilon kludge to prevent 0 div 0
		var abs_y = Math.abs(y) + eviConst.EPSILON;
		if (x < 0.0) {
			r = (x + abs_y) / (abs_y - x);
			angle = eviConst.THREEQUARTERPI;
		} else {
			r = (x - abs_y) / (x + abs_y);
			angle = eviConst.QUARTERPI;
		}
		angle += (0.1963 * r * r - 0.9817) * r;
		if (y < 0.0) {
			at2a = (-angle);			// negate if in quad 3 or 4
		} else {
			at2a = (angle);
		}
		if ((x == 0.0) && (y == 0.0)) {	// another kludge
			at2a = 0.0;
		}
		return at2a;
	}

	// these pol/car approxes are pretty accurate individually
	// but if you use them together inaccuracy increases (of course)

	// cartopol approx
	this.cartopol = function(real, imag)
	{
		var al = Math.sqrt((real * real) + (imag * imag));
		var th = this.atan2(imag, real);
	    return [ al, th ];
	}

	// poltocar approx
	this.poltocar = function(alpha, theta)
	{
		var re = alpha * this.cos73(theta);
		var im = alpha * this.sin73(theta);
	    return [ re, im ];
	}

	return this;
}

//

function EviTanh()
{
	// 'high quality' Lambert approx, excellent mathematical (and sonic) closeness to 'real' tanh
	// !! amplitude of 'x' must be clamped ± 120 dB otherwise numerical innacuracy !!
	// i.e. - always use this one for audio :-)
	this.tanhL = function(x)
	{
		var x2 = x * x;
		var a = (((x2 + 378) * x2 + 17325) * x2 + 135135) * x;
		var b = ((28 * x2 + 3150) * x2 + 62370) * x2 + 135135;
		return eviUtil.clamp((a / b), -1.0, 1.0);
	}

	// 'fire'
	this.tanhO = function(x)
	{
		var xa		= Math.abs(x);
		var x2		= xa * xa;
		var x3		= xa * x2;
		var x4		= x2 * x2;
		var x7		= x3 * x4;
		var res		= 1.0 - (1.0 / (1.0 + xa + x2 + 0.58576695 * x3 + 0.55442112 * x4 + 0.057481508 * x7));
		return	(x > 0.0) ? res : -res;
	}

	// 'bright'
	this.tanhA = function(x)
	{
		x = 0.999996 + (0.031261316 + (0.00048274797 + 0.000006 * x) * x) * x;
		x *= x; x *= x; x *= x; x *= x; x *= x;		// eviApprox.expA()
		var y = -1.0 / (x + 1.0);
		return (y + y) + 1.0;						// tanh
	}

	// 'dark'	// this is the cheapest, use it for paint() routines
	this.tanhD = function(x0)
	{
		x1		= eviUtil.clamp(x0, -3.0, 3.0);
		x2		= x1 * x1;
		return	x1 * ((27 + x2) / (27 + (9 * x2)));
	}

	// 'dull'
	this.tanhQ = function(x)
	{
		var w = x * x;
		var y = 0.0;
		if (w <= 6.25) {
			y = (0.913415 + (-0.18436 + (0.024184 - 0.00127468 * w) * w) * w) * x;
		} else {
			w = 1.0 + 0.125 * Math.abs(x) + 0.0078125 * w;
			w *= w; w *= w; w *= w; w *= w;
			y = (x < 0.0) ? (1.86033 / w - 1.0) : (1.0 - 1.86033 / w);
		}
		return y;
	}

	// 'crap'
	this.tanhR = function(x0)
	{
		var x1	= (x0 * eviConst.EPOWTWODIVFOUR);
		var ex	= 0.999996 + (0.031261316 + (0.00048274797 + 0.000006 * x1) * x1) * x1;	// eviApprox.expA()
		ex *= ex; ex *= ex; ex *= ex; ex *= ex; ex *= ex;	// ex = Math.pow(eviConst.EPOWTWO, x1);
		return ((ex - 1.0) / (ex + 1.0));
	}

	return this;
}

//

// this is stupid
function EviConstants()
{	// const
	this.E 				= Math.E;						// 2.718281828459045
	this.PI 			= Math.PI;						// 3.141592653589793
	this.PHI 			= 1.618033988749895;
	this.SQRT2 			= Math.SQRT2;					// 1.414213562373095
	this.SQRT1_2		= Math.SQRT1_2;					// 0.707106781186548
	this.LOGTWO			= Math.LN2;						// 0.6931471805599453
	this.LOGTEN			= Math.LN10;					// 2.302585092994046
	this.LOGTENTWO		= 0.3010299956639811;			// log10(2.) ( or Benford's #1 :-) )
	this.LOGTEN2		= this.LOGTENTWO;
	this.LOGTWOE		= Math.LOG2E;					// 1.4426950408889634
	this.LOGTENE		= Math.LOG10E;					// 0.43429448190325176
	this.EPSILON		= 1e-10;
	this.EPSILON10		= this.EPSILON;
	this.EPSILON09		= 1e-09;
	// sqrt
	this.SQRTE			= 1.648721270700128;
	this.SQRTPI			= 1.772453850905516;
	this.SQRTPHI		= 1.272019649514069;
	// log
	this.LOG2			= this.LOGTWO;
	this.LOG10			= this.LOGTEN;
	this.LOGTENDIVTEN	= 0.230258509299405;
	this.LOGTENDIV10	= this.LOGTENDIVTEN;
	this.LOGTENDIVTWENTY = 0.11512925464970228;
	this.LOGTENDIV20	= this.LOGTENDIVTWENTY;
	this.LOG2E			= this.LOGTWOE;
	this.LOG10E			= this.LOGTENE;
	this.ONEDIVLOGTEN	= this.LOGTENE;
	this.ONEDIVLOG10	= this.LOGTENE;
	this.TENDIVLOGTEN	= 4.3429448190325175;
	this.TENDIVLOG10	= this.TENDIVLOGTEN;
	this.TWENTYDIVLOGTEN = 8.685889638065036553;
	this.TWENTYDIVLOG10	= this.TWENTYDIVLOGTEN;
	// pi
	this.TWOPI 			= 6.283185307179586;
	this.THREEQUARTERPI	= 2.356194490192345;
	this.HALFPI			= 1.570796326794897;
	this.QUARTERPI 		= 0.785398163397448;
	this.INVPI 			= 0.3183098861837907;
	this.ONEOVERPI		= this.INVPI;
	this.TWOOVERPI		= 0.636619772367581;
	this.INVTWOPI 		= 0.15915494309189535;
	this.ONEOVERTWOPI	= this.INVTWOPI;
	this.TWOOVERSQRTPI	= 1.128379167095513;
	this.FOURPI			= 12.566370614359173;
	this.SIXPI			= 18.849555921538759;
	this.EIGHTPI		= 25.132741228718346;
	// trig
	this.RADTODEG		= 57.29577951308232;			// 180.0 / PI
	this.DEGTORAD		= 0.017453292519943295;			// PI / 180.0
	this.RADTOHZ		= this.INVTWOPI;				// 1.0 / TWOPI
	this.RADPERSEC		= this.RADTOHZ;
	this.EPOWTWO		= 7.389056098930649;			// e^2.
	this.EPOW2			= this.EPOWTWO;
	this.EPOWTWODIVFOUR = 1.84726402473396;				// EPOWTWO / 4.
	this.EPOW2DIV4		= this.EPOWTWODIVFOUR;
	this.INVPHI			= 0.618033988749895;
	this.SQRT05			= this.SQRT1_2;
	this.ALPHA			= 0.6403882032022076;			// (1. + sqrt(17.)) / 8.
	this.QUARTPAR 		= -0.8284271247461903;			// 2. - (4. * SQRT1_2)
	// music
	this.LOG0001		= -6.907755278982137;			// ln(0.0001)
	this.LINDB			= this.TWENTYDIVLOGTEN;
	this.DBLIN			= this.LOGTENDIVTWENTY;			// 1. / TWENTYDIVLOGTEN;
	this.TWOPOWTWELFTH	= 1.059463094359295264561825;	// 12th root of 2
	this.ZHU			= this.TWOPOWTWELFTH;
	this.MERSENNE		= this.ZHU;
	this.LAURA			= this.MERSENNE;				// love laura
	this.LOGTWODIVTWELVE = 0.057762265046662105;		// (log(2.) / 12.)	
	this.TWELVEDIVLOGTWO = 17.3123404906675609;			// (12. * log2) = (1. / LOGTWODIVTWELVE)
	this.PITCHFREQ		= 2.10117843869262;				// log(440.) - (log(2.) * 69. / 12.)
	this.FREQPITCH		= -36.3763165622959152;

	return this;
}

