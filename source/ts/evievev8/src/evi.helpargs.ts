
/**
 * this file is automatically transpiled from Typescript - DO NOT EDIT BY HAND
 */

// the v8ui that auto places an arrow next to the object to show object args in a helpfile.
// this is just a slightly modified evieve version of the Cycling '74 code.

let objectNameArgument: string;
if (jsarguments.length > 1) {
	objectNameArgument = jsarguments[1] as string;
}
let offsetArg = 2;
if (jsarguments.length > 2) {
	offsetArg = jsarguments[2] as number;
}

const thisPatcher: Patcher = patcher;
const thisBox: Maxobj = box;

thisBox.message('border', 0);
thisBox.message('ignoreclick', 1);
// thisBox.message('sendtoback');

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

// const alpha = 1.0;
const edge = [0, 0];
let value: any | any[] = [];
let executed = false;

function init() {
	let opt: string | never[] = [];
	// @ts-expect-error - ".getrefdict()" is secret C74 internal function
	const dict: Dict = max.getrefdict(objectNameArgument);
	const args = dict.get('objargs');
	const argsKeys = args.getkeys();
	if (args) {
		post(`${JSON.stringify(args)}`);
		// if (Array.isArray(argsKeys)) {
		// 	for (let i = 0; i < argsKeys.length; i++) {
		// 		if (args.get(argsKeys[i]).get('optional') === 1) {
		// 			opt = ' (optional)'; // !! space
		// 		}
		// 		value[i] = `${args.get(argsKeys[i]).get('fullname')} (${args.get(argsKeys[i]).get('type')})${opt}`;
		// 	}
		// } else {
		// 	if (args.get(argsKeys).get('optional') === 1) {
		// 		opt = ' (optional)'; // !! space
		// 	}
		// 	value = `${args.get(argsKeys).get('fullname')} (${args.get(argsKeys).get('type')})${opt}`;
		// }
	}
	dict.freepeer();
	if (args) {
		args.freepeer();
	}
}

init();

function clip(v: number, lo: number, hi: number) {
	return v < lo ? lo : v > hi ? hi : v;
}

function adjustColor(color: Color, amount: number) {
	const newcolor: Color = [0, 0, 0, 1];
	let newamount = 0.5;

	if (color[0] + color[1] + color[2] < 0.6) {
		// always force lighten
		newamount = Math.abs(amount);
	} else if (color[0] + color[1] + color[2] > 2.4) {
		// always force darken
		newamount = -Math.abs(amount);
	}

	newcolor[0] = clip(color[0] + newamount, 0, 1);
	newcolor[1] = clip(color[1] + newamount, 0, 1);
	newcolor[2] = clip(color[2] + newamount, 0, 1);
	newcolor[3] = color[3];

	return newcolor;
}

function paint() {
	if (objectNameArgument) {
		// set our font first, used in argEdgeCalc()
		mgraphics.select_font_face('Lato');
		mgraphics.set_font_size(13);

		// calculate our maximum rectangle
		argEdgeCalc(objectNameArgument);

		// draw our rectangle and arrow
		const panelcolor = thisPatcher.getattr('accentcolor') as Color;
		mgraphics.set_source_rgba(panelcolor);
		mgraphics.rectangle_rounded(20, 0, edge[0] + 10, edge[1] + 23, 8, 8);
		mgraphics.fill();
		mgraphics.move_to(2, offsetArg + 8);
		mgraphics.line_to(10, offsetArg + 1);
		mgraphics.line_to(10, offsetArg + 15);
		mgraphics.close_path();
		mgraphics.fill();
		mgraphics.move_to(9, offsetArg + 8);
		mgraphics.set_line_width(3);
		mgraphics.line_to(20, offsetArg + 8);
		mgraphics.stroke();
		mgraphics.move_to(25, 15);

		// draw our text
		const textcolor = adjustColor(panelcolor, -0.4);
		mgraphics.set_source_rgba(textcolor);
		mgraphics.show_text('Arguments:');
		const inverttextcolor = adjustColor(panelcolor, 0.4);
		inverttextcolor.push(1);
		mgraphics.set_source_rgba(inverttextcolor);
		mgraphics.move_to(25, 30);
		argDraw(objectNameArgument);
		mgraphics.fill();
	}
}

function argDraw(_name: string) {
	if (value) {
		if (Array.isArray(value)) {
			for (let i = 0; i < value.length; i++) {
				mgraphics.show_text(value[i]);
				mgraphics.move_to(25, 45 + i * 15);
			}
		} else {
			mgraphics.show_text(value);
			mgraphics.move_to(25, 60);
		}
	}
}

function argEdgeCalc(_name?: string) {
	if (Array.isArray(value)) {
		edge[0] = 68;
		for (let i = 0; i < value.length; i++) {
			const measure = mgraphics.text_measure(value[i]);
			edge[0] = Math.max(edge[0], measure[0]);
			edge[1] = value.length * 15;
		}
		theBox()
	} else {
		edge[0] = mgraphics.text_measure(value)[0];
		edge[0] = Math.max(edge[0], 68);
		edge[1] = 15;
		theBox();
	}
}

function theBox() {
	if (!executed) {
		executed = true;
		thisBox.message('rect', thisBox.rect[0], thisBox.rect[1], edge[0] + 32, edge[1] + 24);
	}
}

const module = {};
export = {};
