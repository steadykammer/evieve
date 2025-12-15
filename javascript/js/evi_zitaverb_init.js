
inlets = 1;
outlets = 1;


var this_samplerate		=	48000.0;


var allpass_seconds		= [	0.020346, 
							0.024421, 
							0.031604, 
							0.027333, 
							0.022904, 
							0.029291, 
							0.013458, 
							0.019123 ];

var feedback_seconds	= [	0.153129, 
							0.210389, 
							0.127837, 
							0.256891, 
							0.174713, 
							0.192303, 
							0.125000, 
							0.219991 ];

var allpass_samples		=	new Array(allpass_seconds.length);
var feedback_samples	=	new Array(feedback_seconds.length);


function samplerate(sr)
{
	this_samplerate = sr;
	init();
}


function make_allpass(sr)
{
	for (var i = 0; i < allpass_seconds.length; ++i)
	{
		allpass_samples[i]	= Math.floor(	sr * allpass_seconds[i] + 0.5	);
	}
}
make_allpass.local	= 1;

function make_feedback(sr)
{
	for (var i = 0; i < feedback_seconds.length; ++i)
	{
		feedback_samples[i]	= Math.floor(	sr * feedback_seconds[i] + 0.5	);
	}
}
make_feedback.local	= 1;


function init()
{
	make_allpass(this_samplerate);
	make_feedback(this_samplerate);

	for (var i = 1; i <= allpass_seconds.length; ++i)
	{
		var a_s_i	= allpass_samples[i-1];
		var f_s_i	= feedback_samples[i-1];

		outlet(0, "apTime"+i.toString(),  a_s_i);
		outlet(0, "fbTime"+i.toString(),  f_s_i);
		outlet(0, "dfTime"+i.toString(), (f_s_i - a_s_i));
	}

	outlet(0, "done");
}

