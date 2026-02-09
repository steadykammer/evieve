
/**
 * this file is automatically transpiled from Typescript - DO NOT EDIT BY HAND
 */

// v8 script for showing object details based on lookup of 'qlookup' / 'dlookup' files
// this (and 'Dlookup') was invented by pete for HISSTools package in 2017, but many people
// have used it since thinking it was a Cyling thing :-)

let objectName = '';
let aliasName: string[];
let aliasRender = '';
let renderAlias = false;
let refDict: Dict;
let absDict: Dict;
let shortDesc = '';
let longDesc = '';
const evieveQlookup: string = 'evieve-obj-qlookup.json';

function get(objectNameArgument: string) {
	let isNotObject = false;
	const qDict = new Dict();
	qDict.import_json(evieveQlookup);
	if (qDict.contains(`${objectNameArgument}::alias`)) {
		renderAlias = true;
		aliasName = qDict.get(`${objectNameArgument}::alias`);
		if (aliasName.length > 1) {
			aliasRender = `  |  aliases:  ${aliasName.join('  |  ')}`;
		} else {
			aliasRender = `  |  alias:  ${aliasName[0]}`;
		}
	} else {
		aliasRender = '';
	}
/*
	for (let i = 0; i < isAbstraction.length; i++) {
		if (isAbstraction[i] === objectNameArgument) {
			isNotObject = true;
			break;
		}
	}
*/
	// if (isAbstraction.includes(objectNameArgument)) { // es5 :-(
	if (isNotObject) {
		absDict = qDict.get(objectNameArgument);
		shortDesc = '';
		if (absDict.contains('digest')) {
			shortDesc = absDict.get('digest');
		}
		longDesc = '';
		if (absDict.contains('description')) {
			longDesc = absDict.get('description');
		}
		absDict.freepeer();
	} else {
		// @ts-expect-error - ".getrefdict()" is secret C74 internal function
		refDict = max.getrefdict(objectNameArgument);
		shortDesc = '';
		longDesc = '';
		if (typeof refDict === 'object') {
			shortDesc = refDict.get('digest');
			longDesc = refDict.get('description');
			refDict.freepeer();
		}
	}

	objectName = objectNameArgument;
	qDict.freepeer();

	outputTheText();
}

function outputTheText() {
	outlet(0, 'names', `${objectName} ${aliasRender}`);
	outlet(0, 'description', longDesc);
	outlet(0, 'digest', shortDesc);
}
outputTheText.local = 1;

const module = {}
export = {}
