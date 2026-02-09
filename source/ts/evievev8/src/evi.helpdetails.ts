
/**
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
// const thisPath = thisPatcher.filepath;

thisBox.message('border', 0);
thisBox.message('ignoreclick', 1);

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

// const iconInstance = new MGraphics(80.0, 80.0);
let peter = new Image();

// const alpha = 1.0;
let refDict;
let absDict;
let aliasName: string[];
let aliasRender = '';
let renderAlias = false;
let shortDesc = '';
let longDesc: string | null = '';
let sw: number;
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
	// let isNotObject = false;
	const qDict = new Dict();
	qDict.import_json(qInit()); // & image
	if (qDict.contains(`${objectNameArgument}::alias`)) {
		renderAlias = true;
		aliasName = qDict.get(`${objectNameArgument}::alias`);
		if (aliasName.length > 1) {
			aliasRender = aliasName.join('  |  '); // ?
		} else {
			aliasRender = aliasName[0];
		}
	}

	// @ts-expect-error - ".getrefdict()" is secret C74 internal function
	refDict = max.getrefdict(objectNameArgument);
	if (typeof refDict === 'object') {
		shortDesc = refDict.get('digest');
		longDesc = refDict.get('description');
		if (longDesc === shortDesc) {
			longDesc = null;
		}
		if (longDesc) {
			// Min may generate refpages where the digest and description differ only by a period at the end
			longDesc = longDesc.trim();
			if (longDesc.substring(0, longDesc.length - 1) === shortDesc && longDesc.substring(longDesc.length - 1) === '.') {
				longDesc = null;
			}
		}

		refDict.freepeer();
	}

	// @ts-expect-error - secret C74 internal function for Japanese translation
	isJa = max.getattr('translation').indexOf('(ja)') !== -1;

	qDict.freepeer();
}

init();

function qInit() {
	let qLookup: string = 'evieve-obj-qlookup.json';
	let qImage: string = 'peter_icon.png';

	peter = new Image(qImage); // global
	return qLookup;
}
qInit.local = 1

function paint() {
	updateSw();
	let textLocation: number;
	bottom = Math.round(15 * wrapText.length + 80);
	// disabling autofit
	// if (bottomPrev < bottom && bottomPrev > 60) fitHeight();
	if (objectNameArgument) {
		const renderAliasOffset = 45; // renderAlias ? 45 : 0;
		const bgColor: Color = thisPatcher.getattr('locked_bgcolor') as Color;
		const textColor: Color = thisPatcher.getattr('textcolor') as Color;
		const descColor: Color = [textColor[0], textColor[1], textColor[2], textColor[3] * 0.555];
		mgraphics.set_source_rgba(bgColor);
		// @ts-expect-error - ".paint()" is a secret internal Cycling '74 call on mgraphics (not a recursive call)
		mgraphics.paint();
		if (renderAlias) {
			// main
			mgraphics.move_to(104, 40);
			mgraphics.select_font_face('Lato');
			mgraphics.set_source_rgba(textColor);
			mgraphics.set_font_size(48);
			mgraphics.show_text(objectNameArgument);
			// alias(es)
			mgraphics.move_to(105, 85);
			mgraphics.set_font_size(30);
			mgraphics.set_source_rgba(descColor);
			mgraphics.show_text(aliasRender);
		} else {
			// just main, moved down, match icon to the left
			mgraphics.move_to(104, 63);
			mgraphics.select_font_face('Lato');
			mgraphics.set_source_rgba(textColor);
			mgraphics.set_font_size(48);
			mgraphics.show_text(objectNameArgument);
		}
		// digest
		mgraphics.move_to(4, 78 + renderAliasOffset);
		mgraphics.set_font_size(13);
		mgraphics.set_source_rgba(textColor);
		if (shortDesc) mgraphics.show_text(shortDesc);	// doWordWrap(shortDesc) ?
			// description
			mgraphics.move_to(4, 88 + renderAliasOffset);
		if (longDesc != null) {
			mgraphics.set_source_rgba(descColor);
			doWordWrap(longDesc);
		}
		for (let i = 0; i < wrapText.length; i++) {
			textLocation = 88 + renderAliasOffset + textHeight * (i + 1);
			mgraphics.move_to(4, textLocation + 0.5);
			// @ts-ignore
			mgraphics.text_path(wrapText[i]);
		}
		mgraphics.fill()
	}

	// peter icon top left
	mgraphics.set_source_rgba(1.0, 1.0, 1.0, 1.0); // just so png alpha is full
	mgraphics.identity_matrix();
	mgraphics.transform(0.105, 0.105, 0.0, 0.0, 4.0, 4.0);
	mgraphics.image_surface_draw(peter);
}

// modified from Darwin Grosse's VerySpecialMessage.js and Arvid Tomayko's atp.popupmessage.js posted to the Max forums:
// https://cycling74.com/forums/jsui-mgraphics-patch-a-day

function doWordWrap(theText: string) {
	let tmpText: string | string[];
	let tmpString: string;

	wrapText = [];

	let tm: number[] = mgraphics.text_measure(theText);
	textHeight = tm[1]; // set the text height.

	linesOfText = theText.split('\n'); // split by newlines

	// const k;
	for (let k = 0; k < linesOfText.length; k++) {
		// support newlines in text input
		tm = mgraphics.text_measure(linesOfText[k]); // need to measure again
		if (tm[0] <= sw) {
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

				if (tm[0] > sw - 8) {
					// using a margin variable instead of hard coding it
					if (en === -1) {
						// the original max code has "=="
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
	swPrev = sw;
	thisBox.message('patching_rect', thisBox.rect[0], thisBox.rect[1], edgeR, bottom);
}
fitHeight.local = 1;

function updateSw() {
	edgeR = thisBox.rect[2] - thisBox.rect[0];
	sw = edgeR;
}
updateSw.local = 1;

const module = {};
export = {};
