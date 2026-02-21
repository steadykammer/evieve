
/*!
 * this file is automatically transpiled from Typescript - DO NOT EDIT BY HAND
 */

// hack:
// we parse our d & q lookup files through Cycling's internal '.getrefdict()'
// function rather than deal with sanitising all that xml crap ourselves

let thisPatcher: Patcher;
let fullPath: string;

let dlookup = new Dict('editDlookupContents');
let qlookup = new Dict('editQlookupContents');

const dlookupname = 'evieve-obj-dlookup.json';
const qlookupname = 'evieve-obj-qlookup.json';

// called from Max
function editjson()
{
    getDlookupFile();
    getQlookupFile();
    // const Dkeys = dlookup.getkeys();
    const Qkeys = qlookup.getkeys();    // if there is a .maxref.xml file it will be here
    for (const object of Qkeys) {
        lookupRefDictLoop(object);
    }

    dlookup.export_json(`${fullPath}/${dlookupname}`);
    qlookup.export_json(`${fullPath}/${qlookupname}`);

    post('Sanitisation of d & q lookup files done!\n');
    post(`dlookup edited here: ${fullPath}/${dlookupname}\n`);
    post(`qlookup edited here: ${fullPath}/${qlookupname}\n`);
    post();
}

function loadbang()
{
    thisPatcher = patcher;
    const thisPath = thisPatcher.filepath;
    // post(`current result of path query is:\n${thisPath}`);
    // post();

    const basePath = thisPath.split('source')[0];
    // post(`current result of path split is:\n${basePath}`);
    // post();
    fullPath = `${basePath}interfaces`; // <<-- already contains the bloody slash at end !
    // post(`current result of full path remade is:\n${fullPath}`);
    // post();
}

function getDlookupFile()
{
    dlookup.import_json(`${fullPath}/${dlookupname}`);
    // post(`current result of full D path is:\n${fullPath}/${dlookupname}`);
    // post();
}
getDlookupFile.local = 1;

function getQlookupFile()
{
    qlookup.import_json(`${fullPath}/${qlookupname}`);
    // post(`current result of full Q path is:\n${fullPath}/${qlookupname}`);
    // post();
}
getQlookupFile.local = 1;

function lookupRefDictLoop(objectNameArgument: string)
{
    let thisDentry: any = {};
    let thisQentry: any = {};
    let shortDesc: string | null = '';
    let longDesc: string | null = '';

    // we must use '.getrefdict()' as it normalises xml tags for us
	// @ts-expect-error - ".getrefdict()" is secret C74 internal function
	let refDict: any = max.getrefdict(objectNameArgument);
	if (typeof refDict === 'object') {
		shortDesc = refDict.get('digest');
		longDesc = refDict.get('description');
		if (longDesc === shortDesc) {
			longDesc = null;
		}
        // evieve does not really need this at the moment
		if (longDesc) {
			// Min may generate refpages where the digest and description differ only by a period at the end
			longDesc = longDesc.trim();
			if (longDesc.substring(0, longDesc.length - 1) === shortDesc && longDesc.substring(longDesc.length - 1) === '.') {
				longDesc = null;
			}
		} else {
            longDesc = '';//'TEXT_HERE';
        }
		refDict.freepeer();

        dlookup.replace(`${objectNameArgument}::digest`, shortDesc);
        dlookup.replace(`${objectNameArgument}::description`, longDesc);
        qlookup.replace(`${objectNameArgument}::digest`, shortDesc);
    }
}
lookupRefDictLoop.local = 1;

const module = {};
export = {};
