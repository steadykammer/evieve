
/**
 * this file is automatically transpiled from Typescript - DO NOT EDIT BY HAND
 */

// the v8 script that sits in the root of a helpfile to control everything
// this is just a slightly modified evieve version of the Cycling '74 code

/*
const textColor: Color = thisPatcher.getattr('textcolor') as Color;
const descColor: Color = [textColor[0], textColor[1], textColor[2], textColor[3] * 0.555];
*/
let objectNameArgument = '';
let createDacForHelpfile = false;
if (jsarguments.length > 1) {
	objectNameArgument = jsarguments[1] as string;
	if (objectNameArgument.charAt(objectNameArgument.length - 1) === '~') {
		createDacForHelpfile = true;
	}
}
let eviOption1: number = 0;
let eviOption2: number = 0;
let eviOption3: number = 0;
let eviOption4: number = 0;
let eviOption5: string = 'none';
if (jsarguments.length > 2) {
	eviOption1 = jsarguments[2] as number;
	eviOption2 = jsarguments[3] as number;
	eviOption3 = jsarguments[4] as number;
	eviOption4 = jsarguments[5] as number;
	eviOption5 = jsarguments[6] as string;
}

const task = new Task(init, this);
task.schedule(333);

const thisPatcher: Patcher = patcher;
const thisPath = thisPatcher.filepath;
const thisHelpObjectName = 'thisEvieveObject';

const textColor: Color = thisPatcher.getattr('textcolor') as Color;
const descColor: Color = [textColor[0], textColor[1], textColor[2], textColor[3] * 0.555];

function init() {
	const a = thisPatcher.getnamed('basic_tab');
	const testBasicTab: boolean = a?.valid; // != null && is valid
	if (!testBasicTab) {
	// if (a == null) {
		thisPatcher.message(
			'script',
			'newobject',
			'newobj',
			'@text',
			'p basic',
			'@varname',
			'basic_tab',
			'@patching_rect', 34, 336, 50, 23);

		// resize();
		thisPatcher.wind.size = [1277, 796];//[837, 796];

		thisPatcher.message(
			'script',
			'newobject',
			'newobj',
			'@text',
			`v8ui @filename evi.helpname.js @jsarguments ${objectNameArgument} @patching_rect 10. 10. 500. 50. @background 1 @embed 0`);

		const basic = thisPatcher.getnamed('basic_tab');
		basic.subpatcher().setattr('bglocked', 1);
		basic.subpatcher().message('wclose');
		basic.message('showontab', 1);
		basic.message('gridonopen', 1);
		basic.message('gridsize', 15, 15);
		basic.message('fontsize', 13);
		basic.message('fontname', 'Arial');
		basic.message('locked', 1);

		basic.subpatcher().message(
			'script',
			'newobject',
			'newobj',
			'@text',
			`v8ui @filename evi.helpdetails.js @jsarguments ${objectNameArgument} ${thisPath} @patching_rect 10. 10. 660. 220. @background 1 @embed 0`);

		const ubuttonObj = basic.subpatcher().newdefault(11.0, 11.0, 'ubutton');
		ubuttonObj.varname = 'basic_ubutton';
		const ubutton = basic.subpatcher().getnamed('basic_ubutton');
		ubutton.message('hltcolor', 1.0, 1.0, 1.0, 0.5);
		ubutton.message('patching_rect', 11.0, 11.0, 98.0, 98.0);
		basic.subpatcher().bringtofront('basic_ubutton');

		basic.subpatcher().message(
			'script',
			'newobject',
			'newobj',
			'@text',
			`${objectNameArgument}`,
			'@varname',
			`${thisHelpObjectName}`,
			'@patching_position', 64.0, 336.0);

		if (createDacForHelpfile) {
			const ezdacObj = basic.subpatcher().newdefault(64.0, 537.0, 'ezdac~');
			ezdacObj.varname = 'basic_dac';
			const ezdac = basic.subpatcher().getnamed('basic_dac');
			ezdac.message('local', 1);
			ezdac.message('patching_rect', 64.0, 537.0, 45.0, 45.0);

			const ezdacComment = basic.subpatcher().newdefault(111.0, 547.0, 'comment');
			ezdacComment.varname = 'comment_dac';
			const comment = basic.subpatcher().getnamed('comment_dac');
			comment.message('set', 'Audio On');
			comment.message('bubble', 1);
			comment.message('bubbleside', 1);
			comment.message('textjustification', 1);
			comment.message('fontsize', 13);
			comment.message('fontname', 'Arial');
			comment.message('patching_rect', 111.0, 547.0, 86.0, 25.0);
			comment.message('background', 1);
		}

		const helpObject = basic.subpatcher().getnamed(thisHelpObjectName);
		const objectRect: Rect = helpObject.getattr('patching_rect') as Rect;
		const argsPos: Position = [objectRect[0] + objectRect[2] + 2, objectRect[1] + 1];
		basic.subpatcher().message(
			'script',
			'newobject',
			'newobj',
			'@text',
			// cannot get [v8ui] working for now, use Cyling '74 code instead...
			// `v8ui @filename evi.helpargs.js @jsarguments ${objectNameArgument} @patching_position ${argsPos[0]} ${argsPos[1]} @background 1 @embed 0`);
			`jsui @filename helpargs.js @jsarguments ${objectNameArgument} @patching_position ${argsPos[0]} ${argsPos[1]} @background 1 @embed 0`);

		basic.subpatcher().bringtofront(thisHelpObjectName);
		outlet(0, "setactivetab", "basic");
		outlet(0, "bang");
	}

	if (eviOption1 > 0) {
		const mc = thisPatcher.getnamed('mc_tab');
		const testMcTab: boolean = mc?.valid; // != null && is valid
		if (!testMcTab) {
			thisPatcher.message(
				'script',
				'newobject',
				'newobj',
				'@text',
				'p mc',
				'@varname',
				'mc_tab',
				'@patching_rect', 229, 336, 37, 23);
			}
		const mctab = thisPatcher.getnamed('mc_tab');
		mctab.subpatcher().setattr('bglocked', 1);
		mctab.subpatcher().message('wclose');
		mctab.message('showontab', 1);
		mctab.message('gridonopen', 1);
		mctab.message('gridsize', 15, 15);
		mctab.message('fontsize', 13);
		mctab.message('fontname', 'Arial');
		mctab.message('locked', 1);

		mctab.subpatcher().message(
			'script',
			'newobject',
			'newobj',
			'@text',
			`v8ui @filename evi.helpname.js @jsarguments mc.${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`);

		const mcDigestComment = mctab.subpatcher().newdefault(10.0, 70.0, 'comment');
		mcDigestComment.varname = 'digest_comment';
		const mcComment = mctab.subpatcher().getnamed('digest_comment');
		mcComment.message('set', `${objectNameArgument} is also available as an 'mc' Object`);
		mcComment.message('fontsize', 13);
		mcComment.message('fontname', 'Lato');
		mcComment.message('textcolor', textColor);
		mcComment.message('patching_rect', 10.0, 70.0, 660.0, 22.0);
		// mctab.subpatcher().bringtofront('digest_comment');

		mctab.subpatcher().message(
			'script',
			'newobject',
			'newobj',
			'@text',
			`mc.${objectNameArgument}`,
			'@varname',
			`${thisHelpObjectName}Mc`,
			'@patching_position', 64.0, 336.0);

		if (createDacForHelpfile) {
			const ezdacObj = mctab.subpatcher().newdefault(64.0, 537.0, 'ezdac~');
			ezdacObj.varname = 'mc_dac';
			const ezdac = mctab.subpatcher().getnamed('mc_dac');
			ezdac.message('local', 1);
			ezdac.message('patching_rect', 64.0, 537.0, 45.0, 45.0);

			const ezdacComment = mctab.subpatcher().newdefault(111.0, 547.0, 'comment');
			ezdacComment.varname = 'comment_dac';
			const comment = mctab.subpatcher().getnamed('comment_dac');
			comment.message('set', 'Audio On');
			comment.message('bubble', 1);
			comment.message('bubbleside', 1);
			comment.message('textjustification', 1);
			comment.message('fontsize', 13);
			comment.message('fontname', 'Arial');
			comment.message('patching_rect', 111.0, 547.0, 86.0, 25.0);
			comment.message('background', 1);
		}
	}

	if (eviOption2 > 0) {
		const mcs = thisPatcher.getnamed('mcs_tab');
		const testMcsTab: boolean = mcs?.valid; // != null && is valid
		if (!testMcsTab) {
			thisPatcher.message(
				'script',
				'newobject',
				'newobj',
				'@text',
				'p mcs',
				'@varname',
				'mcs_tab',
				'@patching_rect', 298, 336, 43, 23);
			}
		const mcstab = thisPatcher.getnamed('mcs_tab');
		mcstab.subpatcher().setattr('bglocked', 1);
		mcstab.subpatcher().message('wclose');
		mcstab.message('showontab', 1);
		mcstab.message('gridonopen', 1);
		mcstab.message('gridsize', 15, 15);
		mcstab.message('fontsize', 13);
		mcstab.message('fontname', 'Arial');
		mcstab.message('locked', 1);

		mcstab.subpatcher().message(
			'script',
			'newobject',
			'newobj',
			'@text',
			`v8ui @filename evi.helpname.js @jsarguments mc.${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`);

		const mcsDigestComment = mcstab.subpatcher().newdefault(10.0, 70.0, 'comment');
		mcsDigestComment.varname = 'digest_comment';
		const mcComment = mcstab.subpatcher().getnamed('digest_comment');
		mcComment.message('set', `${objectNameArgument} is also available as an 'mcs' Object`);
		mcComment.message('fontsize', 13);
		mcComment.message('fontname', 'Lato');
		mcComment.message('textcolor', textColor);
		mcComment.message('patching_rect', 10.0, 70.0, 660.0, 22.0);
		// mcstab.subpatcher().bringtofront('digest_comment');

		mcstab.subpatcher().message(
			'script',
			'newobject',
			'newobj',
			'@text',
			`mcs.${objectNameArgument}`,
			'@varname',
			`${thisHelpObjectName}Mcs`,
			'@patching_position', 64.0, 336.0);

		if (createDacForHelpfile) {
			const ezdacObj = mcstab.subpatcher().newdefault(64.0, 537.0, 'ezdac~');
			ezdacObj.varname = 'mcs_dac';
			const ezdac = mcstab.subpatcher().getnamed('mcs_dac');
			ezdac.message('local', 1);
			ezdac.message('patching_rect', 64.0, 537.0, 45.0, 45.0);

			const ezdacComment = mcstab.subpatcher().newdefault(111.0, 547.0, 'comment');
			ezdacComment.varname = 'comment_dac';
			const comment = mcstab.subpatcher().getnamed('comment_dac');
			comment.message('set', 'Audio On');
			comment.message('bubble', 1);
			comment.message('bubbleside', 1);
			comment.message('textjustification', 1);
			comment.message('fontsize', 13);
			comment.message('fontname', 'Arial');
			comment.message('patching_rect', 111.0, 547.0, 86.0, 25.0);
			comment.message('background', 1);
		}
	}

	if (eviOption3 > 0) {
		;
	}

	if (eviOption4 > 0) {
		;
	}

	if (eviOption5 !== 'none') {
		;
	}

	const b = thisPatcher.getnamed('q_tab');
	if (b == null) {
		thisPatcher.message(
			'script',
			'newobject',
			'newobj',
			'@text',
			'p ?',
			'@varname',
			'q_tab',
			'@patching_rect', 697, 336, 50, 23, '@background', 1);
		const q = thisPatcher.getnamed('q_tab');
		q.subpatcher().message('wclose');
		q.message('showontab', 1);
	}

}

function resize(x?: number | null, y = 796) {
	if (x == null) {
		thisPatcher.wind.size = [1277, 796]; // 1277 includes 440 for sidebar, really annoying
	} else {
		thisPatcher.wind.size = [x, y];
	}
}

const module = {};
export = {};
