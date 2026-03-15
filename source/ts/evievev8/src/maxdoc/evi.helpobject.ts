
/*!
 * this file is automatically transpiled from Typescript - DO NOT EDIT BY HAND
 */

// based on ej original, used in e.g. 'overview' patchers to dump categories of objects to umenus based on qlookup

inlets = 1;
outlets = 2; // outlet 0 is menu, outlet 1 is tabs

// @ts-ignore
let categories = []; // to store every category
// @ts-ignore
let foundQLookupFiles = []; // all the obj-qlookup found (C74 and third party)
// @ts-ignore
let outputObjects = []; // objects in the current category

// search in the interfaces folder of C74 and packages folder
function findQLookupFiles() {
	// @ts-expect-error - secret C74 type
	const p = new Packages();
	const paths = p.getsubpaths('interfaces', 1);

	foundQLookupFiles = []; // clear to start fresh

	if (typeof paths === 'string') {
		// just one file
		lookForQLookup(paths);
	} else {
		// array of files, you do use third party, how cool is that ;-)
		for (let i = 0; i < paths.length; i++) {
			lookForQLookup(paths[i]);
		}
	}
}
findQLookupFiles.local = 1;

function lookForQLookup(path: string) {
	const f = new Folder(path);
	f.typelist = ['JSON']; // obj-qlookup are JSON files
	while (!f.end) {
		if (f.filename.search('obj-qlookup') !== -1) {
			// matches only files which contains obj-qlookup in them
			foundQLookupFiles[foundQLookupFiles.length] = `${path}/${f.filename}`;
		} // store the full path
		f.next();
	}
	f.close();
}
lookForQLookup.local = 1;

function getcategories() {
	findQLookupFiles(); // find all the obj-qlookup files before starting

	// outlet 0 is menu, outlet 1 is tabs
	outlet(0, 'clear');
	outlet(0, 'append', '(Select Category...)');

	categories = []; // clear categories
	for (let i = 0; i < foundQLookupFiles.length; i++) {
		const d = new Dict();
		// @ts-ignore
		d.import_json(foundQLookupFiles[i]);
		addToCategoryArray(d, d.getkeys());
		d.freepeer();
	}

	// sort the array alphabetically
	// @ts-ignore
	const sorted = categories.sort(alphabeticalSort);
	const thinned = thinArray(sorted); // remove duplicate (which turned out to be easier than filtering while filling the array...)
	for (let i = 0; i < thinned.length; i++) {
		// output as umenu format
		outlet(0, 'append', thinned[i]);
	}

	// select the first item (so it's checked properly && it fills the menu with the objects from the first category
	outlet(0, 1); // do we need index 1 ?
}

function addToCategoryArray(d: Dict, objectNames: string[]) {
	// get the categories of every objects
	for (let i = 0; i < objectNames.length; i++) {
		const categoryNames = d.get(`${objectNames[i]}::category`);

		// object with multiple categories
		if (typeof categoryNames === 'object') {
			for (const categoryName in categoryNames) {
				// do not add the Unlisted category
				if (categoryNames[categoryName] !== 'Unlisted') {
					categories[categories.length] = categoryNames[categoryName]
				}
			}
		} else {
			// just one category
			// do not add the Unlisted category
			if (categoryNames !== 'Unlisted') categories[categories.length] = categoryNames;
		}
	}
}
addToCategoryArray.local = 1;

// return an array with no duplicate (inputArray must be sorted!)
function thinArray(inputArray: string[]) {
	const rtn = [];

	rtn[0] = inputArray[0];
	for (let i = 1; i < inputArray.length; i++) {
		if (rtn[rtn.length - 1] !== inputArray[i]) rtn[rtn.length] = inputArray[i];
	}

	return rtn;
}
thinArray.local = 1;

function dumpcategory(categorySearched: string) {
	// output the objects of the categorySearched

	outputObjects = [];

	// outlet 0 is menu, outlet 1 is tabs
	outlet(1, 'clear');
	// outlet(1, "append", "(choose...)");

	for (let i = 0; i < foundQLookupFiles.length; i++) {
		const d = new Dict();
		// @ts-ignore
		d.import_json(foundQLookupFiles[i]);
		findObjectForCategory(d, categorySearched);
		d.freepeer();
	}

	// @ts-ignore
	const sorted = outputObjects.sort(alphabeticalSort);

	for (let i = 0; i < sorted.length; i++) {
		outlet(1, 'append', sorted[i]);
	}
}

// find the objects in the category searched in a specific dictionary
function findObjectForCategory(d: Dict, categorySearched: string) {
	const objectNames = d.getkeys();

	for (let i = 0; i < objectNames.length; i++) {
		const categoryNames = d.get(`${objectNames[i]}::category`);
		if (typeof categoryNames === 'object') {
			for (const cat in categoryNames) {
				if (categoryNames[cat] === categorySearched) {
					outputObjects[outputObjects.length] = objectNames[i];
					break;
				}
			}
		} else if (categoryNames === categorySearched) {
			outputObjects[outputObjects.length] = objectNames[i];
		}
	}
}
findObjectForCategory.local = 1;

// used to sort properly the arrays
function alphabeticalSort(a: string, b: string) {
	const nameA = a.toLowerCase();
	const nameB = b.toLowerCase();
	// sort string ascending
	if (nameA < nameB) return -1;
	if (nameA > nameB) return 1;
	return 0 // default return value (no sorting)
}
alphabeticalSort.local = 1;

const module = {};
export = {};
