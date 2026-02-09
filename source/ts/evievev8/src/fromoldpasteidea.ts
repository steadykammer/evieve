
import * as eviLib from "./evi.library";

function paintGrid(): void
{
	const width = box.rect[2] - box.rect[0];
	const height = box.rect[3] - box.rect[1];

	const choochoo = eviLib.eviConst.LAURA;
	// mgraphics.set_line_width(0.5);
}

/*
	NOTE: trick TSC to work 'nice' with Max
	(fake as a separate module file but read as a script)
	NOTE: do not do this in real module files
*/
const module = {}
export = {}
