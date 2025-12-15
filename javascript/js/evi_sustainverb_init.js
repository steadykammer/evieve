
inlets = 1;
outlets = 1;


var this_samplerate	=	48000.0;


// early tap times in seconds
var early_seconds	= [	0.00142763, 
						0.00323873, 
						0.00523450, 
						0.00782312 ];

// fdn tap times in seconds
var fdn_seconds		= [	0.0100001, 
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
						0.1305020 ];

var early_samples	= new Array(early_seconds.length);
var fdn_samples		= new Array(fdn_seconds.length);


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

function make_fdn(sr)
{
	for (var i = 0; i < fdn_seconds.length; ++i)
	{
		fdn_samples[i]		= Math.floor(	sr * fdn_seconds[i] + 0.5		);
	}
}
make_fdn.local	= 1;


function init()
{
	var i = 0;

	make_early(this_samplerate);
	make_fdn(this_samplerate);

	for (i = 1; i <= early_seconds.length; ++i)
	{
		outlet(0, "earlyTime"+i.toString(),  early_samples[i-1]);
	}

	for (i = 1; i <= fdn_seconds.length; ++i)
	{
		outlet(0, "delayTime"+i.toString(),  fdn_samples[i-1]);
	}

	outlet(0, "done");
}

