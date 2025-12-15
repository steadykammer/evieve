
inlets = 1;
outlets = 1;


var this_samplerate		=	48000.0;


// early tap times
var early_seconds		= [	0.00142763, 
							0.00323873, 
							0.00523450, 
							0.00782312 ];

// comb tap times
// jezar's original constants in integer samples @ current samplerate
// jezar's original constants were in samples @44.1kHz samplerate
// ref: 1116, 1188, 1277, 1356, 1422, 1491, 1557, 1617
var comb_seconds		= [	0.025306122448979593, 
							0.026938775510204082, 
							0.028956916099773240, 
							0.030748299319727890, 
							0.032244897959183670, 
							0.033809523809523810, 
							0.035306122448979590, 
							0.036666666666666670 ];

// allpass tap times
// ref: 556, 441, 341, 225
var allpass_seconds		= [	0.012607709750566893, 
							0.01, 
							0.007732426303854875, 
							0.005102040816326530 ];

// spread tap times		// make these dynamic ?
var spread_seconds		= [	0.0010430839002267573, 		// 0.0005215419501133786 ?
							0.0004988662131519275 ];	// 0.00024943310657596373 ?

var early_samples		= new Array(early_seconds.length);
var comb_samples		= new Array(comb_seconds.length);
var allpass_samples		= new Array(allpass_seconds.length);
var spread_samples		= new Array(spread_seconds.length);


function samplerate(sr)
{
	this_samplerate = sr;
	init();
}


function make_early(sr)
{
	for (var i = 0; i < early_seconds.length; ++i)
	{
		early_samples[i]	= Math.floor(	sr * early_seconds[i] + 0.5		);
	}
}
make_early.local	= 1;

function make_comb(sr)
{
	for (var i = 0; i < comb_seconds.length; ++i)
	{
		comb_samples[i]		= Math.floor(	sr * comb_seconds[i] + 0.5		);
	}
}
make_comb.local	= 1;

function make_allpass(sr)
{
	for (var i = 0; i < allpass_seconds.length; ++i)
	{
		allpass_samples[i]	= Math.floor(	sr * allpass_seconds[i] + 0.5	);
	}
}
make_allpass.local	= 1;

function make_spread(sr)
{
	for (var i = 0; i < spread_seconds.length; ++i)
	{
		spread_samples[i]	= Math.floor(	sr * spread_seconds[i] + 0.5	);
	}
}
make_spread.local	= 1;


function init()
{
	var i = 0;

	make_early(this_samplerate);
	make_comb(this_samplerate);
	make_allpass(this_samplerate);
	make_spread(this_samplerate);

	for (i = 1; i <= early_seconds.length; ++i)
	{
		outlet(0, "etap"+i+"samps".toString(),  early_samples[i-1]);
	}

	for (i = 1; i <= comb_seconds.length; ++i)
	{
		outlet(0, "comb"+i+"samps".toString(),  comb_samples[i-1]);
	}

	for (i = 1; i <= allpass_seconds.length; ++i)
	{
		outlet(0, "ap"+i+"samps".toString(),  allpass_samples[i-1]);
	}

	for (i = 0; i < spread_seconds.length; ++i)
	{
		var spread = "";
		spread = i ? "a" : "c";
		outlet(0, spread+"SprSamps",  spread_samples[i]);
	}

	outlet(0, "done");
}

