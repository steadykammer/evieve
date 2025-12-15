
inlets = 1;
outlets = 1;


var this_samplerate		=	48000.0;


// Hz
var mod_hz				= [	0.666, 
							0.625, 
							0.555, 
							0.476, 
							0.435, 
							0.303, 
							0.181, 
							0.122
						];

// seconds
var delay_seconds		= [	0.0479, 
							0.1201, 
							0.1361, 
							0.1459, 
							0.1589, 
							0.1693, 
							0.1801, 
							0.1901,
							0.2003,
							0.2099,
							0.2179,
							0.2251,
							0.2339,
							0.2399,
							0.2441,
							0.2477
						];

// seconds
var sum_seconds			= [	0.0607, 
							0.0773, 
							0.1373, 
							0.1123, 
							0.1753, 
							0.1601, 
							0.1901, 
							0.2129 
						];


var delay_samples		= new Array(delay_seconds.length);
var sum_samples			= new Array(sum_seconds.length);


function samplerate(sr)
{
	this_samplerate = sr;
	init();
}


function make_delay(sr)
{
	for (var i = 0; i < delay_seconds.length; ++i)
	{
		delay_samples[i]	= sr * delay_seconds[i];
	}
}
make_delay.local = 1;

function make_sum(sr)
{
	for (var i = 0; i < sum_seconds.length; ++i)
	{
		sum_samples[i]		= Math.floor(sr * sum_seconds[i] + 0.5);
	}
}
make_sum.local = 1;


function init()
{
	var i = 0;

	make_delay(this_samplerate);
	make_sum(this_samplerate);

	for (i = 1; i <= delay_seconds.length; ++i)
	{
		outlet(0, "delay"+i.toString(),  delay_samples[i-1]);
	}

	for (i = 1; i <= sum_seconds.length; ++i)
	{
		outlet(0, "sum"+i.toString(),  sum_samples[i-1]);
	}

	outlet(0, "done");
}
init.local = 1;

