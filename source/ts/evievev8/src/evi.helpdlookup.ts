
/*!
 * this file is automatically transpiled from Typescript - DO NOT EDIT BY HAND
 */

// v8 script for showing object details based on lookup of 'qlookup' / 'dlookup' files.
// this (and 'Dlookup') was 'invented' by pete for HISSTools package in 2017, but many people
// have used it since thinking it was a Cyling thing, sorry :-)

let objectName = '';
let refsDict = new Dict();
let objectType = '';
let shortDesc = '';
let longDesc = '';
const evieveDlookup: string = 'evieve-obj-dlookup.json';
const dDict = new Dict();

function loadbang()
{
	dDict.import_json(evieveDlookup);
}

function get(objectNameInput: string)
{
	// <<<--- @ts-expect-error - ".getrefdict()" is secret C74 internal function --->>>
	// refsDict = max.getrefdict(objectNameInput);
	// shortDesc = '';
	// longDesc = '';
	// if (typeof refsDict === 'object') {
	// 	shortDesc = refsDict.get('digest');
	// 	longDesc = refsDict.get('description');
	// 	refsDict.freepeer();
	// }

	objectType = '';
	shortDesc = '';
	longDesc = '';
	if (dDict.contains(objectNameInput)) {
		refsDict = dDict.get(objectNameInput);
		objectType = refsDict.get('type');
		shortDesc = refsDict.get('digest');
		longDesc = refsDict.get('description');
		refsDict.freepeer();
	}

	objectName = objectNameInput;
	// dDict.freepeer();

	outputTheText();
}

function outputTheText()
{
	outlet(0, 'name', objectName);
	outlet(0, 'type', objectType);
	outlet(0, 'digest', shortDesc);
	outlet(0, 'description', longDesc);
}
outputTheText.local = 1;

const module = {}
export = {}
