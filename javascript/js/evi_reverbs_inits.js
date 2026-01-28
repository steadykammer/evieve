
inlets = 1;
outlets = 1;

var reverb = "none";
var modifier = "none";
if (jsarguments.length > 1)
{
    if (jsarguments[1] === "freezeverb" || jsarguments[1] === "sustainverb" || jsarguments[1] === "sustainverblite" || jsarguments[1] === "zitaverb") {
        reverb = jsarguments[1];
    } else {
        reverb = "badname";
    }
    if (jsarguments.length > 2) {
        modifier = jsarguments[2];
    }
}


var this_samplerate		=	48000.0;


// early tap times in seconds
var early_seconds		= [	0.00142763, 
							0.00323873, 
							0.00523450, 
							0.00782312
						];

var earlydiff_seconds	= [	0.075255, 
							0.043534, 
							0.025796, 
							0.019392,
							0.016364,
							0.013645
						];

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
							0.036666666666666670
						];

// allpass tap times
// ref: 556, 441, 341, 225
var allpass_seconds     = [	0.012607709750566893, 
							0.01, 
							0.007732426303854875, 
							0.005102040816326530
						];

// spread tap times		// make these dynamic ?
var spread_seconds		= [	0.0010430839002267573, 		// 0.0005215419501133786 ?
							0.0004988662131519275 ];	// 0.00024943310657596373 ?

// fdn tap times in seconds
var fdn_seconds		    = [	0.0100001, 
                            0.0116356, 
                            0.0134567, 
                            0.0167345, 
                            0.0201862, 
                            0.0257417, 
                            0.0314693, 
                            0.0382944, 
                            0.0466838, 
                            0.0554567, 
                            0.0651755, 
                            0.0768243, 
                            0.0885623, 
                            0.1012780, 
                            0.1153970, 
                            0.1305020 
                        ];

var fdndiff_seconds		= [ 0.058643,
							0.069433,
							0.074523,
							0.086124
						]

var nested_seconds		= [	0.020346, 
							0.024421, 
							0.031604, 
							0.027333, 
							0.022904, 
							0.029291, 
							0.013458, 
							0.019123 
                        ];

var feedback_seconds	= [	0.153129, 
							0.210389, 
							0.127837, 
							0.256891, 
							0.174713, 
							0.192303, 
							0.125000, 
							0.219991 
                        ];


var early_samples		= new Array(early_seconds.length);
var earlydiff_samples	= new Array(earlydiff_seconds.length);

var comb_samples		= new Array(comb_seconds.length);
var allpass_samples     = new Array(allpass_seconds.length);
var spread_samples		= new Array(spread_seconds.length);

var fdn_samples		    = new Array(fdn_seconds.length);
var fdndiff_samples		= new Array(fdndiff_seconds.length);

var nested_samples		= new Array(nested_seconds.length);
var feedback_samples	= new Array(feedback_seconds.length);


// does everything
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
make_early.local = 1;

function make_earlydiff(sr)
{
	for (var i = 0; i < earlydiff_seconds.length; ++i)
	{
		earlydiff_samples[i] = Math.floor(	sr * earlydiff_seconds[i] + 0.5	);
	}
}
make_earlydiff.local = 1;

function make_comb(sr)
{
	for (var i = 0; i < comb_seconds.length; ++i)
	{
		comb_samples[i]		= Math.floor(	sr * comb_seconds[i] + 0.5		);
	}
}
make_comb.local = 1;

function make_allpass(sr)
{
	for (var i = 0; i < nested_seconds.length; ++i)
	{
		allpass_samples[i]	= Math.floor(	sr * allpass_seconds[i] + 0.5	);
	}
}
make_nested.local = 1;

function make_spread(sr)
{
	for (var i = 0; i < spread_seconds.length; ++i)
	{
		spread_samples[i]	= Math.floor(	sr * spread_seconds[i] + 0.5	);
	}
}
make_spread.local = 1;

function make_fdn(sr)
{
	for (var i = 0; i < fdn_seconds.length; ++i)
	{
		fdn_samples[i]		= Math.floor(	sr * fdn_seconds[i] + 0.5		);
	}
}
make_fdn.local = 1;

function make_fdndiff(sr)
{
	for (var i = 0; i < fdndiff_seconds.length; ++i)
	{
		fdndiff_samples[i] = Math.floor(	sr * fdndiff_seconds[i] + 0.5	);
	}
}
make_fdndiff.local = 1;

function make_nested(sr)
{
	for (var i = 0; i < nested_seconds.length; ++i)
	{
		nested_samples[i]	= Math.floor(	sr * nested_seconds[i] + 0.5	);
	}
}
make_nested.local = 1;

function make_feedback(sr)
{
	for (var i = 0; i < feedback_seconds.length; ++i)
	{
		feedback_samples[i]	= Math.floor(	sr * feedback_seconds[i] + 0.5	);
	}
}
make_feedback.local = 1;


function init()
{
    if (reverb === "freezeverb") {
        freezeverb_init();
    } else if (reverb === "sustainverb") {
        sustainverb_init();
    } else if (reverb === "sustainverblite") {
        sustainverblite_init();
    } else if (reverb === "zitaverb") {
        zitaverb_init();
    }
    else if (reverb === "none") {
        post("evi reverbs: You must give the [js evi_reverbs_inits.js] an argument with the name of your reverb");
        post("evi reverbs: Cannot create reverb parameter initialisations !!");
        post();
    } else if (reverb === "badname") {
        post("evi reverbs: Bad argument for [js evi_reverbs_inits.js] !!");
        post("evi reverbs: You must give the [js evi_reverbs_inits.js] an argument with the name of your reverb");
        post("evi reverbs: Cannot create reverb parameter initialisations !!");
        post();
    }
}
init.local = 1;


function freezeverb_init()
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
freezeverb_init.local = 1;

function sustainverb_init()
{
	var i = 0;

    if (modifier == "none") {
        make_early(this_samplerate);

        for (i = 1; i <= early_seconds.length; ++i)
        {
            outlet(0, "earlyTime"+i.toString(),  early_samples[i-1]);
        }
    }

	make_fdn(this_samplerate);

	for (i = 1; i <= fdn_seconds.length; ++i)
	{
		outlet(0, "delayTime"+i.toString(),  fdn_samples[i-1]);
	}

	outlet(0, "done");
}
sustainverb_init.local = 1;

function sustainverblite_init()
{
	var i = 0;

	make_earlydiff(this_samplerate);
	make_fdndiff(this_samplerate);

	for (i = 1; i <= earlydiff_seconds.length; ++i)
	{
		outlet(0, "earlyTime"+i.toString(),  earlydiff_samples[i-1]);
	}

	for (i = 1; i <= fdndiff_seconds.length; ++i)
	{
		outlet(0, "delayTime"+i.toString(),  fdndiff_samples[i-1]);
	}

	outlet(0, "done");
}
sustainverblite_init.local = 1;

function zitaverb_init()
{
	make_nested(this_samplerate);
	make_feedback(this_samplerate);

	for (var i = 1; i <= nested_seconds.length; ++i)
	{
		var a_s_i	= nested_samples[i-1];
		var f_s_i	= feedback_samples[i-1];

		outlet(0, "apTime"+i.toString(),  a_s_i);
		outlet(0, "fbTime"+i.toString(),  f_s_i);
		outlet(0, "dfTime"+i.toString(), (f_s_i - a_s_i));
	}

	outlet(0, "done");
}
zitaverb_init.local = 1;

