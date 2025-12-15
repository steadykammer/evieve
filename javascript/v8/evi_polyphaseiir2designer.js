
//  //  //  TESTING ONLY

const ppiir2 = require("evi_polyphaseiir2coefficients.js");

outlets = 4;

function polyphaseFilterCoeffs(attenuation, transition)
{
    let numCoeffs = 0;
    let coeffsArray = new Array();
//  Computes coefficients for a half-band polyphase IIR filter, function of a
//  given stop-band gain / transition bandwidth specification.
//  Order is automatically calculated.
    numCoeffs = ppiir2.compute_coefs(coeffsArray, attenuation, transition);
    post("Number of coefficients required:", numCoeffs);
    post();
    return coeffsArray;
}
polyphaseFilterCoeffs.local = 1;

function polyphaseFilterAttenuation(numcoefs, transition)
{
//  Compute the attenuation corresponding to a given number of coefficients
//  and the transition bandwidth.
    return ppiir2.compute_atten_from_order_tbw(numcoefs, transition);
}
polyphaseFilterAttenuation.local = 1;

function polyphaseFilterNumCoeffs(attenuation, transition)
{
//  Finds the minimum number of coefficients for a given filter specification
    return ppiir2.compute_nbr_coefs_from_proto(attenuation, transition);
}
polyphaseFilterNumCoeffs.local = 1;

function polyphaseFilterFromCoefs(numcoefs, transition)
{
    let coeffsArray = new Array();
//  Computes coefficients for a half-band polyphase IIR filter, function of a
//  given transition bandwidth and desired filter order. Bandstop attenuation
//  is set to the maximum value for these constraints.
    ppiir2.compute_coefs_spec_order_tbw(coeffsArray, numcoefs, transition);
    return coeffsArray;
}
polyphaseFilterFromCoefs.local = 1;

function filter(transition, attenuation=0, numcoefs=0)
{
    if (attenuation != 0) {
        outlet(0, polyphaseFilterCoeffs(attenuation, transition));   // returns array of coefficients & prints
        outlet(3, polyphaseFilterNumCoeffs(attenuation, transition));// returns number of coefficients required
    }
    if (numcoefs != 0) {
        outlet(1, polyphaseFilterFromCoefs(numcoefs, transition));  // returns array of coefficients
        outlet(2, polyphaseFilterAttenuation(numcoefs, transition));// returns stopband attenuation in dB
    }
}

