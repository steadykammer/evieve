
/*!
 * this file is automatically transpiled from Typescript - DO NOT EDIT BY HAND
 */

// the v8ui object that displays name and digest and description in top left of helpfiles.
// this is just a slightly modified evieve version of the Cycling '74 code

let objectNameArgument: string;
if (jsarguments.length > 1) {
	objectNameArgument = jsarguments[1] as string;
}
let thisPath = '';
if (jsarguments.length > 2) {
	for (let i = 2; i < jsarguments.length; i++) {
		const getArg = jsarguments[i] as string;
		thisPath += `${getArg} `; // keep space
	}
}

const thisPatcher: Patcher = patcher;
const thisBox: Maxobj = box;

thisBox.message('border', 0);
thisBox.message('ignoreclick', 1);

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

// const iconInstance = new MGraphics(80.0, 80.0);
let peter = new Image();

// const alpha = 1.0;
let refDict;
// let absDict;
let renderAlias = false;
let imageMargin = 100;
let shortDesc = '';
let longDesc: string | null = '';
let swL: number;
let swS: number;
let swPrev = 0;
// const sh = thisBox.rect[3] - thisBox.rect[1];
// const shPrev = 0;
let edgeR = 0;
let bottom: number;
let bottomPrev = thisBox.rect[3] - thisBox.rect[1];
let linesOfText: string[];
let textHeight = 0;
// @ts-ignore
let wrapText = []; // string[]; // must be Max style declaration because of transpilation
let isJa = false;

function init() {
	const dDict = new Dict();
	dDict.import_json(dInit()); // & image

	// (we do not need ".getrefdict()" as we already parsed through it during package build)
	// refDict = max.getrefdict(objectNameArgument);
	refDict = dDict.get(objectNameArgument);
	if (typeof refDict === 'object') {
		shortDesc = refDict.get('digest');
		longDesc = refDict.get('description');
		if (longDesc === shortDesc) {
			longDesc = null;
		}

		refDict.freepeer();
	}

	// @ts-expect-error - secret C74 internal process for Japanese translation
	isJa = max.getattr('translation').indexOf('(ja)') !== -1;

	dDict.freepeer();
}

init();

function dInit() {
	let dLookup: string = 'evieve-obj-dLookup.json';
	let dImage: string = 'peter_icon.png';

	peter = new Image(dImage); // global
	return dLookup;
}
dInit.local = 1

function paint() {
	updateSw();
	let textLocation: number;
	let tlS: number = 0;
	let mtO: number = 0;
	bottom = Math.round(15 * wrapText.length + 80);
	// disabling autofit
	// if (bottomPrev < bottom && bottomPrev > 60) fitHeight();
	if (objectNameArgument) {
		const renderAliasOffset = renderAlias ? 45 : 25;
		const bgColor: Color = thisPatcher.getattr('locked_bgcolor') as Color;
		const textColor: Color = thisPatcher.getattr('textcolor') as Color;
		const descColor: Color = [textColor[0], textColor[1], textColor[2], textColor[3] * 0.666];
		mgraphics.set_source_rgba(bgColor);
		// @ts-expect-error - ".paint()" seems like a secret internal Cycling '74 call on mgraphics (not a recursive call)
		mgraphics.paint();
		// digest
		mgraphics.move_to(111, 70 + renderAliasOffset);
		mgraphics.set_font_size(13);
		mgraphics.set_source_rgba(textColor);
		if (shortDesc) {
			let tm: number[] = mgraphics.text_measure(shortDesc);
			if (tm[0] > swS) {
				tlS = 40;
				mtO = 44;
			} else {
				tlS = 48;
				mtO = 50;
			}
			doWordWrap(shortDesc, imageMargin);
			for (let i = 0; i < wrapText.length; i++) {
				textLocation = tlS + renderAliasOffset + textHeight * (i + 1);
				mgraphics.move_to(111, textLocation + 0.5);
				// @ts-ignore
				mgraphics.show_text(wrapText[i]);
			}
		}
		// main, match icon to the left
		mgraphics.move_to(110, mtO);//63);
		mgraphics.select_font_face('Lato');
		mgraphics.set_source_rgba(textColor);
		mgraphics.set_font_size(48);
		mgraphics.show_text(objectNameArgument);
		// description
		mgraphics.move_to(11, 64 + renderAliasOffset); // mgraphics.move_to(11, 74 + renderAliasOffset);
		mgraphics.set_font_size(13);
		mgraphics.set_source_rgba(descColor);
		if (longDesc != null) {
			// updateSw();
			doWordWrap(longDesc);
			for (let i = 0; i < wrapText.length; i++) {
				textLocation = 84 + renderAliasOffset + textHeight * (i + 1);
				mgraphics.move_to(10, textLocation + 0.5);
				// @ts-ignore
				mgraphics.text_path(wrapText[i]);
			}
		}
		mgraphics.fill()
	}

	// peter icon top left
	mgraphics.set_source_rgba(1.0, 1.0, 1.0, 1.0); // just so png alpha is full
	mgraphics.identity_matrix();
	mgraphics.transform(0.185, 0.185, 0.0, 0.0, 4.0, 4.0);
	mgraphics.image_surface_draw(peter);
}

// modified from Darwin Grosse's VerySpecialMessage.js and Arvid Tomayko's atp.popupmessage.js posted to the Max forums:
// https://cycling74.com/forums/jsui-mgraphics-patch-a-day

function doWordWrap(theText: string, theMargin = 0) {
	let tmpText: string | string[];
	let tmpString: string;

	wrapText = [];

	let tm: number[] = mgraphics.text_measure(theText);
	textHeight = tm[1]; // set the text height.

	linesOfText = theText.split('\n'); // split by newlines

	for (let k = 0; k < linesOfText.length; k++) {
		// support newlines in text input
		tm = mgraphics.text_measure(linesOfText[k]); // need to measure again
		if (tm[0] <= (swL - theMargin)) {
			// good enough to print
			wrapText.push(linesOfText[k]);
		} else {
			// have to wrap
			if (isJa) tmpText = linesOfText[k];
			else tmpText = linesOfText[k].split(' '); // C74 style... (& space)
			tmpString = '';
			let st = 0;
			let en = -1;
			let i = 0; // change: init i

			while (i < tmpText.length) {
				// changed to a while loop
				if (isJa) tmpString += tmpText[i];
				else tmpString += `${tmpText[i]} `; // !! space
				tm = mgraphics.text_measure(tmpString);

				if (tm[0] > swL - 10 - theMargin) {
					// using a margin variable instead of hard coding it
					if (en === -1) {
						// a really big word - just print it
						wrapText.push(tmpString);
						st = ++i; // change: pre-increment i, was st = i+1;
						en = -1;
						tmpString = '';
					} else {
						tmpString = '';
						for (let j = st; j <= en; j++) {
							if (isJa) tmpString += tmpText[j];
							else tmpString += `${tmpText[j]} `; // !! space
						}
						wrapText.push(tmpString);
						tmpString = ''; // changed to clear string
						// was tmpString = tmpText[i] + " ";
						st = i;
						en = -1;
					}
				} else {
					en = i++; // change: increment i here
				}
			}
			// pick up the last line
			wrapText.push(tmpString);
		}
	}
	// gc(); // leave a clean campsite... // v8 does this for us...
}
doWordWrap.local = 1;

function fitHeight() {
	bottomPrev = bottom;
	swPrev = swL;
	thisBox.message('patching_rect', thisBox.rect[0], thisBox.rect[1], edgeR, bottom);
}
fitHeight.local = 1;

function updateSw() {
	edgeR = thisBox.rect[2] - thisBox.rect[0];
	swL = edgeR;
	swS = edgeR - imageMargin;
}
updateSw.local = 1;

const module = {};
export = {};
