/*

        PolyphaseIIR2Designer
        Copyright (c) 2005 Laurent de Soras

Compute coefficients for 2-path polyphase IIR filter, half-band filter or
Pi/2 phaser.

                        -2
               a     + z
         N/2-1  2k+1
A0 (z) = Prod  ------------
         k = 0           -2
               1 + a    z
                    2k+1

                             -2
                      a   + z
          -1 (N-1)/2   2k
A1 (z) = z  . Prod   ----------
              k = 0           -2
                      1 + a  z
                           2k

        1
H (z) = - (A0 (z) + A1 (z))
        2

Sum of A0 and A1 gives a low-pass filter.
Difference of A0 and A1 gives the complementary high-pass filter.

For the Pi/2 phaser, product form is (a - z^-2) / (1 - az^-2)
Sum and difference of A0 and A1 have a Pi/2 phase difference.

References:

* Polyphase Two-Path Filter Designer in Java
  Artur Krukowski
  ( http://www.cmsa.wmin.ac.uk/~artur/Poly.html )
  https://www2.spsc.tugraz.at/people/franklyn/ICASSP97/pdf/author/ic972213.pdf
  
* Digital Signal Processing Schemes for Efficient Interpolation and Decimation
  Valenzuela and Constantinides
  IEE Proceedings, Dec 1983
  https://www.researchgate.net/publication/224336631_Digital_signal_processing_schemes_for_efficient_interpolation_and_decimation

* A Hilbert-Transformer Frequency Shifter for Audio
  Scott Wardle
  ( http://www.iua.upf.es/dafx98/papers/WAR19.PS )
   https://www.researchgate.net/publication/2600006_A_Hilbert-Transformer_Frequency_Shifter_for_Audio

  --- Legal stuff ---

This program is free software. It comes without any warranty, to
the extent permitted by applicable law. You can redistribute it
and/or modify it under the terms of the Do What The Fuck You Want
To Public License, Version 2, as published by Sam Hocevar. See
http://sam.zoy.org/wtfpl/COPYING for more details.

-------

ported to javascript (sorry) by pete for evieve, 2013, updated 2024

*/

module.exports = {
    compute_nbr_coefs_from_proto: compute_nbr_coefs_from_proto,
    compute_atten_from_order_tbw: compute_atten_from_order_tbw,
    compute_coefs: compute_coefs,
    compute_coefs_spec_order_tbw: compute_coefs_spec_order_tbw
};

/* ==============================================================================
Name: compute_nbr_coefs_from_proto
Description:
    Finds the minimum number of coefficients for a given filter specification
Input parameters:
    - attenuation: stop-band attenuation, dB. > 0.
    - transition: normalized transition bandwidth. Range ]0 ; 1/2[
Returns: Number of coefficients, > 0
============================================================================== */
function compute_nbr_coefs_from_proto (attenuation, transition)
{
/*  (attenuation > 0);
    (transition > 0);
    (transition < 0.5);
*/
    let kq = [0, 0];
	kq = compute_transition_param(transition); // compute k & q
    let order = compute_order(attenuation, kq[1]);
    let nbr_coefs = (order - 1) / 2;

    return nbr_coefs;
}

/* ==============================================================================
Name: compute_atten_from_order_tbw
Description:
    Compute the attenuation corresponding to a given number of coefficients
    and the transition bandwidth.
Input parameters:
    - nbr_coefs: Number of desired coefficients. > 0.
    - transition: normalized transition bandwidth. Range ]0 ; 1/2[
Returns: stop-band attenuation, dB. > 0.
============================================================================== */
function compute_atten_from_order_tbw (nbr_coefs, transition)
{
/*  (nbr_coefs > 0);
    (transition > 0);
    (transition < 0.5);
*/

    let kq = [0, 0];
	kq = compute_transition_param(transition); // compute k & q

    let order = nbr_coefs + nbr_coefs + 1;
    let attenuation = compute_atten(kq[1], order);

    return attenuation;
}

/* ==============================================================================
Name: compute_coefs
Description:
    Computes coefficients for a half-band polyphase IIR filter, function of a
    given stop-band gain / transition bandwidth specification.
    Order is automatically calculated.
Input parameters:
    - coef_arr: JS Array to fill
    - attenuation: stop-band attenuation, dB. > 0.
    - transition: normalized transition bandwidth. Range ]0 ; 1/2[
Output parameters:
    - coef_arr: Coefficient list, must be large enough to store all the
        coefficients. Filter order = nbr_coefs * 2 + 1
Returns: number of coefficients
============================================================================== */
function compute_coefs (coef_arr, attenuation, transition)
{
/*  (&coef_arr != 0);
    (attenuation > 0);
    (transition > 0);
    (transition < 0.5);
*/
    let kq = [0, 0];
	kq = compute_transition_param(transition); // compute k & q

    // Computes number of required coefficients
    let order = compute_order(attenuation, kq[1]);
    let nbr_coefs = (order - 1) / 2;

    // Coefficient calculation
    for (let index = 0; index < nbr_coefs; ++index)
    {
        coef_arr[index] = compute_coef(index, kq[0], kq[1], order);
    }

    return nbr_coefs;
}

/* ==============================================================================
Name: compute_coefs_spec_order_tbw
Description:
	Computes coefficients for a half-band polyphase IIR filter, function of a
	given transition bandwidth and desired filter order. Bandstop attenuation
	is set to the maximum value for these constraints.
Input parameters:
    - coef_arr: JS Array to fill
	- num_coefs: Number of desired coefficients. > 0
	- transition: normalized transition bandwith. Range [0 ; 1/2]
Output parameters:
	- coef_arr: Coefficient list, must be large enough to store all the
		coefficients.
Throws: Nothing
============================================================================== */
function compute_coefs_spec_order_tbw (coef_arr, num_coefs, transition)
{
/*	(num_coefs > 0);
	(transition > 0);
	(transition < 0.5);
*/
    let kq = [0, 0];
	kq = compute_transition_param(transition); // compute k & q
	let	order = num_coefs + num_coefs + 1;

	// Coefficient calculation
	for (let index = 0; index < num_coefs; ++index)
	{
		coef_arr[index] = compute_coef(index, kq[0], kq[1], order);
	}
}

//  //  //

// Compute k & q
function compute_transition_param (transition)
{
/*	(transition > 0);
	(transition < 0.5);
*/
	let k  = Math.tan((1.0 - (transition + transition)) * Math.PI * 0.25);
	    k *= k;
/*	(k < 1);
	(k > 0);
*/
//  let     kk      = 1.0 - k * k;
//	let		kksqrt	= Math.sqrt(Math.sqrt(kk));
    let     kksqrt  = Math.pow(1.0 - k*k, 0.25);
	let		ee 		= 0.5 * (1.0 - kksqrt) / (1.0 + kksqrt);
	let		ee2 	= ee * ee;
	let		ee4 	= ee2 * ee2;
	let q           = ee * (1.0 + ee4 * (2.0 + ee4 * (15.0 + 150.0 * ee4)));
//	(q > 0);

    return [k, q];
}
compute_transition_param.local = 1;

function compute_order (attenuation, q)
{
/*  (attenuation > 0);
    (q > 0);
*/

    let attn_p2 = Math.pow(10.0, -attenuation / 10);
    let a = attn_p2 / (1 - attn_p2);
    let order = Math.ceil(Math.log(a * a / 16) / Math.log(q));
    if ((order & 1) == 0)
    {
        ++ order;
    }
    if (order == 1)
    {
        order = 3;
    }

    return order;
}
compute_order.local = 1;

function compute_atten (q, order)
{
/*  (q > 0);
    (order > 0);
    ((order & 1) == 1);
*/

    let a = 4 * Math.exp(order * 0.5 * Math.log(q));
//  (a != -1.0);
    let attn_p2 = a / (1 + a);
    let attenuation = -10 * Math.log10(attn_p2);
//  (attenuation > 0);

    return attenuation;
}
compute_atten.local = 1;

function compute_coef (index, k, q, order)
{
/*	(index >= 0);
	(index * 2 < order);
*/
	let		c    = index + 1;
	let		num  = compute_acc_num(q, order, c) * Math.pow(q, 0.25);//Math.sqrt(Math.sqrt(q));
	let		den  = compute_acc_den(q, order, c) + 0.5;
	let		ww   = num / den;
	let		wwsq = ww * ww;

	let		x    = Math.sqrt((1.0 - wwsq * k) * (1.0 - wwsq / k)) / (1.0 + wwsq);
	let		coef = (1.0 - x) / (1.0 + x);

	return	coef;
}
compute_coef.local = 1;

//  //  //

function compute_acc_num (q, order, c)
{
/*	(c >= 1);
	(c < order * 2);
*/
	let		i   = 0;
	let		j   = 1;
	let		acc = 0.0;
	let		q_ii1;

	do
	{
		q_ii1	= ipowp(q, i * (i + 1));
		q_ii1  *= Math.sin((i + i + 1) * c * Math.PI / order) * j;
		acc    += q_ii1;

		j = -j;
		++i;
	}
	while (Math.abs(q_ii1) > 1e-100);   // ??

	return	acc;
}
compute_acc_num.local = 1;

function compute_acc_den (q, order, c)
{
/*	(c >= 1);
	(c < order * 2);
*/
	let		i   = 0;
	let		j   = -1;
	let		acc = 0.0;
	let		q_i2;

	do
	{
		q_i2  = ipowp(q, i * i);
		q_i2 *= Math.cos((i + i) * c * Math.PI / order) * j;
		acc  += q_i2;

		j = -j;
		++i;
	}
	while (Math.abs(q_i2) > 1e-100);    // ??

	return acc;
}
compute_acc_den.local = 1;

function ipowp (xx, nn)
{
//	(nn >= 0)
	let z = 1.0;
	let x = xx;
	let n = nn;

	while (n != 0)
	{
		if ((n & 1) != 0)
		{
			z *= x;
		}
		n >>= 1;
		x *= x;
	}

	return z;
}
ipowp.local = 1;

/*
function round_int (x)
{
    return Math.floor(x + 0.5);
}
round_int.local = 1;

function ceil_int (x)
{
    return Math.ceil(x);
}
ceil_int.local = 1;
*/

