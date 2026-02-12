
/*!
 * this file is automatically transpiled from Typescript - DO NOT EDIT BY HAND
 */

// the v8ui object that displays just the name, often only in the root patch of a help file
// this is just a slightly modified evieve version of the Cycling '74 code

let objectNameArgument: string;
if (jsarguments.length > 1) {
	objectNameArgument = jsarguments[1] as string;
}
let overideWidthInit: number = 0;
if (jsarguments.length > 2) {
	overideWidthInit = jsarguments[2] as number;
}

const thisPatcher: Patcher = patcher;
const thisBox: Maxobj = box;

thisBox.message('border', 0);
thisBox.message('ignoreclick', 1);

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

let isFirstTime = true;

function paint() {
	if (objectNameArgument) {
		const bgcolor: Color = thisPatcher.getattr('locked_bgcolor') as Color;
		mgraphics.set_source_rgba(bgcolor);
		// @ts-expect-error
		mgraphics.paint(); // secret internal Cycling '74 call on mgraphics? (not a recursive call)
		mgraphics.move_to(4, 40);
		mgraphics.select_font_face('Lato');
		const textcolor: Color = thisPatcher.getattr('textcolor') as Color;
		mgraphics.set_source_rgba(textcolor);
		mgraphics.set_font_size(48);
		mgraphics.show_text(objectNameArgument);
		mgraphics.fill();

		// auto fit the size the first time it (re)draws
		if (isFirstTime) {
			const widthHeight: Size = mgraphics.text_measure(objectNameArgument);
			if (overideWidthInit > 0) {
				thisBox.message('patching_rect', 10, 10, overideWidthInit, widthHeight[1]);
			} else {
				thisBox.message('patching_rect', 10, 10, widthHeight[0] + 10, widthHeight[1]);
			}
			isFirstTime = false;
		}
	}
}

const module = {};
export = {};
