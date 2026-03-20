
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
const defineSplit = 'it also accepts all messages and attributes that a gen~ object does. \n\n';
const dDict = new Dict();

function loadbang()
{
	dDict.import_json(evieveDlookup);
}

function get(objectNameInput: string)
{
	// (we do not need ".getrefdict()" as we already parsed through it during package build)
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

	if (objectType === 'define') {
		if (longDesc.includes(defineSplit)) {
			longDesc = longDesc.split(defineSplit)[1];
		}
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
