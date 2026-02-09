"use strict";
export const eviUtil = {
  clamp: (value, min, max) => {
    return Math.min(max, Math.max(min, value));
  },
  roundNearest: (number, nearest) => {
    return Math.round(number / nearest) * nearest;
  },
  cheapRandomInt: (minInt, maxInt) => {
    return Math.floor(Math.random() * (maxInt - minInt + 1)) + minInt;
  },
  /*
      insideRect: (coordinateXY: Position, region: Rect) => {
        // Checks if a coordinateXY is inside a specific region
        const x = coordinateXY[0]
        const y = coordinateXY[1]
        const InsideYRange = !!(y >= region[1] && y <= region[3])
        const insideXRange = !!(x >= region[0] && x <= region[2])
        return insideXRange && InsideYRange
      },
  */
  dbtoa: (db) => {
    return Math.exp(eviConst.LOGTENDIVTWENTY * db);
  },
  // dbtorms(), dbtopow(), rmstodb(), powtodb(), are strange Pd
  // way of doing things (100 dB unity), here for completeness
  dbtorms: (db) => {
    db = db > 485 ? 485 : db;
    return db <= 0 ? 0 : Math.exp(eviConst.LOGTENDIVTWENTY * (db - 100));
  },
  dbtopow: (db) => {
    db = db > 870 ? 870 : db;
    return db <= 0 ? 0 : Math.exp(eviConst.LOGTENDIVTEN * (db - 100));
  },
  rmstodb: (r) => {
    let db = 0;
    if (r <= 0) {
      db = 0;
    } else {
      db = 100 + eviConst.TWENTYDIVLOGTEN * Math.log(r);
      db = db < 0 ? 0 : db;
    }
    return db;
  },
  powtodb: (p) => {
    let db = 0;
    if (p <= 0) {
      db = 0;
    } else {
      db = 100 + eviConst.TENDIVLOGTEN * Math.log(p);
      db = db < 0 ? 0 : db;
    }
    return db;
  },
  atodb: (amplitude) => {
    return eviConst.TWENTYDIVLOGTEN * Math.log(Math.abs(amplitude));
  },
  // db to amp with floor, like [evi.dbtoa_floor]
  // (for using gain to explicitly mute poly~ voices, for example)
  dbtoaFloor: (db, floor = -70) => {
    return db > floor ? Math.exp(eviConst.LOGTENDIVTWENTY * db) : 0;
  },
  // amp to db with db floor, like [evi.atodb_floor]
  // (for avoiding -inf's & nan's in array transposing, for example)
  atodbFloor: (amplitude, floor = -120, mode = 0) => {
    const aClamped = mode > 0 ? Math.max(amplitude, 0) : Math.abs(amplitude);
    const db = eviUtil.atodb(aClamped);
    return eviUtil.clamp(db, floor, Math.abs(floor));
  },
  // transpose semitones input (0=none), like [transratio] & [evi.transratio]
  transratio: (pitch) => {
    return Math.exp(eviConst.LOGTWODIVTWELVE * pitch);
  },
  // transpose ratio input (1=none), like [evi.transratio]
  ratiotrans: (ratio) => {
    return eviConst.TWELVEDIVLOGTWO * Math.log(ratio);
  },
  // midi to hz like [mtof]
  mtof: (pitch, base = 440) => {
    return base * Math.exp(eviConst.LOGTWODIVTWELVE * (pitch - 69));
  },
  mtofBaseless: (pitch) => {
    return Math.exp(eviConst.LOGTWODIVTWELVE * pitch + eviConst.PITCHFREQ);
  },
  // hz to midi like [ftom] (actually slightly cheaper)
  ftom: (frequency, base = 440) => {
    return 69 + eviConst.TWELVEDIVLOGTWO * Math.log(frequency / base);
  },
  ftomBaseless: (frequency) => {
    return Math.log(frequency) * eviConst.TWELVEDIVLOGTWO + eviConst.FREQPITCH;
  },
  // basic linear scaling like linear part of [scale] (non-clamping & respects high/low, i.e. not exactly like [zmap] but similar)
  // TODO: all input values (apart from "valueIn") should be optional and with defaults?
  map: (valueIn, inLow, inHigh, outLow, outHigh) => {
    const multiplier = (outLow - outHigh) / (inLow - inHigh);
    return (valueIn - inLow) * multiplier + outLow;
  },
  // almost like [zmap]
  // TODO: all input values (apart from "valueIn") should be optional and with defaults?
  zmap: (valueIn, inLow, inHigh, outLow, outHigh) => {
    const value = eviUtil.clamp(valueIn, inLow, inHigh);
    const multiplier = (outLow - outHigh) / (inLow - inHigh);
    return (value - inLow) * multiplier + outLow;
  },
  // scaling like Max [scale @classic 0] (or MSP/RNBO [scale~] or Gen/RNBO [scale])
  // TODO: all input values (apart from "valueIn") should be optional and with defaults?
  scale: (valueIn, inLow, inHigh, outLow, outHigh, exponent = 1) => {
    let valueOut = valueIn;
    if (exponent !== 1) {
      const condition = (valueIn - inLow) / (inHigh - inLow);
      const offset = outLow + (outHigh - outLow);
      if (condition > 0) {
        valueOut = offset * condition ** exponent;
      } else if (condition < 0) {
        valueOut = offset * (-1 * ((-valueIn + inLow) / (inHigh - inLow)) ** exponent);
      } else {
        valueOut = outLow;
      }
    } else {
      valueOut = eviUtil.map(valueIn, inLow, inHigh, outLow, outHigh);
    }
    return valueOut;
  },
  // degtorad
  toRadians: (degrees) => {
    return degrees * Math.PI / 180;
  },
  // radtodeg
  toDegrees: (radians) => {
    return radians * 180 / Math.PI;
  },
  // cartesian to polar
  cartopol: (real, imag) => {
    const al = Math.sqrt(real * real + imag * imag);
    const th = Math.atan2(imag, real);
    return {
      alpha: al,
      theta: th
    };
  },
  // often we only need the alpha, so this is cheaper
  alpha: (real, imag) => {
    return Math.sqrt(real * real + imag * imag);
  },
  // polar to cartesian
  poltocar: (alpha, theta) => {
    const re = alpha * Math.cos(theta);
    const im = alpha * Math.sin(theta);
    return {
      real: re,
      imag: im
    };
  },
  // UI widget drawing routines
  // index is 0-based (e.g. from [funnel n 0])
  indexToMatrix: (index, columns) => {
    let matrix;
    if (index <= -1) {
      matrix = [-1, -1];
    } else {
      matrix = [Math.floor(index % columns), Math.floor(index / columns)];
    }
    return {
      X: matrix[0],
      Y: matrix[1]
      // return matrix[] address
    };
  },
  // matrix is 2-atom array (i.e., matrix[x, y])
  matrixToIndex: (matrix, columns) => {
    return Math.floor(matrix[0] + matrix[1] * columns);
  },
  // JKC
  dialValToAngle: (val, valrange, degrees) => {
    return val * (degrees - 1) / valrange;
  },
  // JKC
  dialPointFromAngleAmp: (widthHalf, heightHalf, angle, amp, degrees) => {
    const half = (degrees - 1) * 0.5;
    const location = { x: 0, y: 0 };
    const point = { x: 0, y: 0 };
    let angleLess = angle;
    let angleMore = angle;
    angleLess = angleLess += 360 - half;
    angleMore = angleMore -= half;
    const angledegrees = (angle < half ? angleLess : angleMore) / eviConst.RADTODEG;
    location.x = amp * Math.sin(angledegrees);
    location.y = amp * Math.cos(angledegrees);
    point.x = widthHalf + location.x;
    point.y = heightHalf - location.y;
    return point;
  },
  // file utils etc
  // add trailing slashes between elements if not there already, EXCEPT the final item
  // TODO: this is stupid, but born of Max8 / ES3, adapted from ej, thanks to Tom W
  makePath: (...args) => {
    let output = "";
    if (args.length === 0) {
      return output;
    }
    const last = args.pop();
    for (let i = 0; i < args.length; ++i) {
      output += args[i].charAt(args[i].length - 1) !== "/" ? `${args[i]}/` : args[i];
    }
    output += last;
    return output;
  }
};
export const eviApprox = {
  // for first quarter only, optimized so that never lets sqrt(sinapprox(x)^2+cosapprox(x)^2)
  // exceed 1, always gives exact results at phase 0, 0.5, 1 (0/1, sqrt1_2, 1/0)
  cosSinQuart: (phase) => {
    const x0 = phase - 0.5;
    const quart = eviConst.QUARTPAR * x0 * x0 + Math.SQRT1_2;
    const sinq1 = quart + x0;
    const cosq1 = quart - x0;
    return {
      cosq: cosq1,
      sinq: sinq1
    };
  },
  // eviApprox.cosSinQuart() is excellent for tasks such as crossfading and panning etc
  // cos/sin approxes to 7.3 digits of precision
  // (useful for coefficients calculators in UI etc)
  cosQ73: (x) => {
    const c = [0.999999953464, -0.499999053455, 0.0416635846769, -0.0013853704264, 2315393167e-14];
    const x2 = x * x;
    return c[0] + x2 * (c[1] + x2 * (c[2] + x2 * (c[3] + c[4] * x2)));
  },
  cos73: (value) => {
    let x = value;
    x = x % eviConst.TWOPI;
    if (x < 0) {
      x = -x;
    }
    const quad = Math.floor(x * eviConst.TWOOVERPI);
    let cosreturn = 0;
    if (quad === 0) {
      cosreturn = eviApprox.cosQ73(x);
    } else if (quad === 1) {
      cosreturn = -eviApprox.cosQ73(Math.PI - x);
    } else if (quad === 2) {
      cosreturn = -eviApprox.cosQ73(x - Math.PI);
    } else {
      cosreturn = eviApprox.cosQ73(eviConst.TWOPI - x);
    }
    return cosreturn;
  },
  sin73: (value) => {
    return eviApprox.cos73(eviConst.HALFPI - value);
  },
  // 'expA()' is cheaper than library 'Math.exp()'
  // it outperforms Gen 'fastexp()' and is more accurate than that piecewise linear approx
  expA: (x0) => {
    let x = 0.999996 + (0.031261316 + (48274797e-11 + 6e-6 * x0) * x0) * x0;
    x *= x;
    x *= x;
    x *= x;
    x *= x;
    x *= x;
    return x;
  },
  // excellent accuracy to about +36 dB, after which you are on your own
  dbtoa: (db) => {
    return eviApprox.expA(eviConst.LOGTENDIVTWENTY * db) + 128e-6;
  },
  // transpose semitones input (0=none)
  transratio: (pitch) => {
    return eviApprox.expA(eviConst.LOGTWODIVTWELVE * pitch) + 0.120906;
  },
  mtof: (pitch, base = 440) => {
    return base * eviApprox.expA(eviConst.LOGTWODIVTWELVE * (pitch - 69)) + 0.120906;
  },
  // tanh approximations
  // 'high quality' Lambert approx, excellent mathematical (and sonic) closeness to 'real' tanh
  // NOTE: amplitude of 'x' must be clamped ± 120 dB otherwise numerical innacuracy
  // i.e. - always use this one for audio
  tanhL: (x) => {
    const x2 = x * x;
    const a = (((x2 + 378) * x2 + 17325) * x2 + 135135) * x;
    const b = ((28 * x2 + 3150) * x2 + 62370) * x2 + 135135;
    return eviUtil.clamp(a / b, -1, 1);
  },
  // Pete: this is the cheapest, we use it for paint() routines
  tanhD: (x) => {
    const x1 = eviUtil.clamp(x, -3, 3);
    const x2 = x1 * x1;
    return x1 * ((27 + x2) / (27 + 9 * x2));
  },
  // cheap tan approximations
  // fast & cheap
  tanA: (x) => {
    const x2 = x * x;
    const x3 = x2 * x;
    const x5 = x2 * x3;
    return x5 * 0.133333333333 + x3 * 0.333333333333 + x;
  },
  // 'eviApprox.tanA2()' is much more accurate across full (Hz) 'range' than 'eviApprox.tanA()',
  //  but very slightly less accurate in very bottom of range.
  // 'eviApprox.tanA()' is fine if frequency input will be no higher than approx midi pitch 120,
  //  but for greater ranges (e.g. an eq filter up to 18000 or 20000 Hz) use 'eviApprox.tanA2()'
  tanA2: (x) => {
    const a = ((x * -0.0896638 + 0.0388452) * x + 1.00005) * x;
    const b = (x * -0.430871 + 0.0404318) * x + 1;
    return a / b;
  },
  // polynomial (for SVF coefficients)
  tanA3: (x) => {
    const x2 = x * x;
    return x * (0.999999492001 + x2 * -0.096524608111) / (1 + x2 * (-0.429867256894 + x2 * 0.009981877999));
  },
  // arctan approximations
  // this is cheap and fast, numerically quite accurate, sonically (harmonic spectrum) very similar to Math.atan()
  atanA: (x) => {
    const o = 8 * x;
    const q = (o + o) * eviConst.INVPI;
    const s = 25 + q * q;
    const u = 3 + Math.sqrt(s);
    return o / u;
  },
  // numerically very accurate, sonically identical to Math.atan(), but not as cheap as eviApprox.atanA()
  atanPade: (x) => {
    const x2 = x * x;
    const x3 = x2 * x;
    const x4 = x2 * x2;
    const x5 = x3 * x2;
    const o = x + 0.777777777777778 * x3 + 0.067724867724868 * x5;
    const u = 1 + 1.111111111111111 * x2 + 0.238095238095238 * x4;
    return o / u;
  },
  // arctan2 approximation
  atan2: (y, x) => {
    let r;
    let angle;
    let at2a;
    const absY = Math.abs(y) + eviConst.EPSILON;
    if (x < 0) {
      r = (x + absY) / (absY - x);
      angle = eviConst.THREEQUARTERPI;
    } else {
      r = (x - absY) / (x + absY);
      angle = eviConst.QUARTERPI;
    }
    angle += (0.1963 * r * r - 0.9817) * r;
    if (y < 0) {
      at2a = -angle;
    } else {
      at2a = angle;
    }
    if (x === 0 && y === 0) {
      at2a = 0;
    }
    return at2a;
  },
  // cartesian to polar approx
  cartopol: (real, imag) => {
    const al = Math.sqrt(real * real + imag * imag);
    const th = eviApprox.atan2(imag, real);
    return {
      alpha: al,
      theta: th
    };
  },
  // polar to cartesian approx
  poltocar: (alpha, theta) => {
    const re = alpha * eviApprox.cos73(theta);
    const im = alpha * eviApprox.sin73(theta);
    return {
      real: re,
      imag: im
    };
  }
};
export const eviConst = {
  // const
  E: Math.E,
  // 2.718281828459045
  PI: Math.PI,
  // 3.141592653589793
  PHI: 1.618033988749895,
  SQRT2: Math.SQRT2,
  // 1.414213562373095
  SQRT1_2: Math.SQRT1_2,
  // 0.707106781186548
  LOGTWO: Math.LN2,
  // 0.6931471805599453
  LOGTEN: Math.LN10,
  // 2.302585092994046
  LOGTENTWO: 0.3010299956639811,
  // log10(2.)
  LOGTEN2: 0.3010299956639811,
  // LOGTENTWO
  LOGTWOE: Math.LOG2E,
  // 1.4426950408889634
  LOGTENE: Math.LOG10E,
  // 0.43429448190325176
  EPSILON: 1e-10,
  EPSILON10: 1e-10,
  // EPSILON
  EPSILON09: 1e-9,
  EPSILON06: 1e-6,
  // sqrt
  SQRTE: 1.648721270700128,
  SQRTPI: 1.772453850905516,
  SQRTPHI: 1.272019649514069,
  // log
  LOG2: Math.LN2,
  // LOGTWO
  LOG10: Math.LN10,
  // LOGTEN
  LOGTENDIVTEN: 0.230258509299405,
  LOGTENDIV10: 0.230258509299405,
  // LOGTENDIVTEN
  LOGTENDIVTWENTY: 0.11512925464970228,
  LOGTENDIV20: 0.11512925464970228,
  // LOGTENDIVTWENTY
  LOG2E: Math.LOG2E,
  // LOGTWOE
  LOG10E: Math.LOG10E,
  // LOGTENE
  ONEDIVLOGTEN: Math.LOG10E,
  ONEDIVLOG10: Math.LOG10E,
  TENDIVLOGTEN: 4.3429448190325175,
  TENDIVLOG10: 4.3429448190325175,
  // TENDIVLOGTEN
  TWENTYDIVLOGTEN: 8.685889638065037,
  TWENTYDIVLOG10: 8.685889638065037,
  // TWENTYDIVLOGTEN
  // pi
  TWOPI: 6.283185307179586,
  THREEQUARTERPI: 2.356194490192345,
  HALFPI: 1.570796326794897,
  QUARTERPI: 0.785398163397448,
  INVPI: 0.3183098861837907,
  ONEOVERPI: 0.3183098861837907,
  // INVPI
  TWOOVERPI: 0.636619772367581,
  INVTWOPI: 0.15915494309189535,
  ONEOVERTWOPI: 0.15915494309189535,
  // INVTWOPI
  TWOOVERSQRTPI: 1.128379167095513,
  FOURPI: 12.566370614359172,
  SIXPI: 18.84955592153876,
  EIGHTPI: 25.132741228718345,
  // trig
  RADTODEG: 57.29577951308232,
  // 180.0 / PI
  DEGTORAD: 0.017453292519943295,
  // PI / 180.0
  RADTOHZ: 0.15915494309189535,
  // INVTWOPI
  RADPERSEC: 0.15915494309189535,
  EPOWTWO: 7.389056098930649,
  // e^2.
  EPOW2: 7.389056098930649,
  // EPOWTWO
  EPOWTWODIVFOUR: 1.84726402473396,
  // EPOWTWO / 4.
  EPOW2DIV4: 1.84726402473396,
  // EPOWTWODIVFOUR
  INVPHI: 0.618033988749895,
  SQRT05: Math.SQRT1_2,
  // SQRT1_2
  ALPHA: 0.6403882032022076,
  // (1. + sqrt(17.)) / 8.
  QUARTPAR: -0.8284271247461903,
  // 2. - (4. * SQRT1_2)
  // music
  LOG0001: -6.907755278982137,
  // ln(0.0001)
  LINDB: 8.685889638065037,
  // TWENTYDIVLOGTEN
  DBLIN: 0.11512925464970228,
  // LOGTENDIVTWENTY  // 1. / TWENTYDIVLOGTEN
  TWOPOWTWELFTH: 1.0594630943592953,
  // 12th root of 2
  LAURA: 1.0594630943592953,
  // love laura
  LOGTWODIVTWELVE: 0.057762265046662105,
  // (log(2.) / 12.)	
  TWELVEDIVLOGTWO: 17.312340490667562,
  // (12. * log2) : (1. / LOGTWODIVTWELVE)
  PITCHFREQ: 2.10117843869262,
  // log(440.) - (log(2.) * 69. / 12.)
  FREQPITCH: -36.37631656229591
};
