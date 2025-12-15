
//autowatch = 1;
inlets = 1;
outlets = 1;

var q = new Array	(
						1.0,
						2.0,
						3.0,
						1.0,
						4.0,
						2.0,
						5.0,
						3.0,
						1.0,
						6.0,
						4.0,
						2.0,
						7.0,
						5.0,
						3.0,
						1.0
					);

var z = new Array	(
						4.0,
						6.0,
						8.0,
						8.0,
						10.0,
						10.0,
						12.0,
						12.0,
						12.0,
						14.0,
						14.0,
						14.0,
						16.0,
						16.0,
						16.0,
						16.0
					);

var c = new Array(q.length);

// coefficient calculator
function calculate()
{
	for (var i = 0; i < c.length; i++) {
		c[i] = 2.0 * Math.cos(q[i] * (Math.PI / z[i]));
	}
}
calculate.local = 1;

function coefficients()
{
	calculate();

	for (var j = 0; j < c.length; j++) {
		var jp1 = j + 1;
		outlet(0, "gen", "butt_coeff_"+jp1.toString(), c[j]);
	}
}

function bang()
{
	coefficients();
	outlet(0, "done");
}

