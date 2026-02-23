
/*!
 * this file is automatically transpiled from Typescript - DO NOT EDIT BY HAND
*/

inlets = 1;
outlets = 3;

let uniqueId = '#0';
let dataFolderName = 'genexpr-data';	// in Package search path
if (jsarguments.length > 1) {
	dataFolderName = jsarguments[1];
	if (jsarguments.length > 2) {
		uniqueId = jsarguments[2];
	}
}

const thisPatcher: Patcher = patcher;
// const thisPath = thisPatcher.filepath;

const funcShowBrackets = ' ( )';
const exprDataDict = new Dict(`${uniqueId}_genExprIndexDict`);

// fill files menu on load
init(dataFolderName);

function adjustUiBoxes(ins: number, rets: number)
{
	const inNum = Math.max(ins, 1);
	const retNum = Math.max(rets, 1);

	const inputsBox = thisPatcher.getnamed(`${uniqueId}_inputs`);
	const returnsBox = thisPatcher.getnamed(`${uniqueId}_returns`);
	const seealsoBox = thisPatcher.getnamed(`${uniqueId}_seealso`);

	const inBoxPos = inputsBox.getattr('presentation_rect') as Rect;
	const retBoxPos = returnsBox.getattr('presentation_rect') as Rect;
	const seeBoxPos = seealsoBox.getattr('presentation_rect') as Rect;

	const insOffset3 = (inNum * 25) + 25;
	const retsOffset1 = inBoxPos[1] + insOffset3 + 2;
	const retsOffset3 = (retNum * 25) + 25;
	const seesOffset1 = retsOffset1 + retsOffset3 + 25 + 2;

	inputsBox.setattr('presentation_rect', inBoxPos[0], inBoxPos[1], inBoxPos[2], insOffset3);
	returnsBox.setattr('presentation_rect', retBoxPos[0], retsOffset1, retBoxPos[2], retsOffset3);
	seealsoBox.setattr('presentation_rect', seeBoxPos[0], seesOffset1, seeBoxPos[2], seeBoxPos[3]);
}
adjustUiBoxes.local = 1;

// called from Max
function selectfunction(genExprFunction: string)
{
	const selectedFunction = genExprFunction.replace(funcShowBrackets, '');
	// we disband with Max dict() logic here, it is easier
	const exprDictObj = JSON.parse(JSON.stringify(exprDataDict));
	const thisFunc = exprDictObj.functions.find((obj: { name: string; }) => obj.name === selectedFunction);

	const numInputs = thisFunc.inputs.length;
	const numReturns = thisFunc.returns.length;

	// outlet 2 connected to [route]/[textedit]s
	outlet(2, 'about', 'clear');
	outlet(2, 'about', 'set', thisFunc.digest);
	let i = 0;
	outlet(2, 'inputs', 'clear');
	for (const input of thisFunc.inputs) {
		if (input.kind === 'input') {
			outlet(2, 'inputs', i, 'set', `in=${input.id}\, type=${input.kind}\, name=${input.name}\, ${input.digest}`);
		} else if (input.kind === 'param') {
			outlet(2, 'inputs', i, 'set', `in=${input.id}\, type=${input.kind} (optional)\, name=${input.name}\, default=(${input.type}) ${input.default}\, ${input.digest}`);
		}
		i++;
	}
	let j = 0;
	outlet(2, 'returns', 'clear');
	for (const ret of thisFunc.returns) {
		outlet(2, 'returns', j, 'set', `out=${ret.id} (${ret.name})\, ${ret.digest}`);
		j++;
	}

	adjustUiBoxes(numInputs, numReturns);

	outlet(2, 'done');
}

// called from Max
function selectgenexpr(genExprFile: string)
{
	let funcNamesArray = new Array();

	const selectedDataName = genExprFile.replace('.genexpr', '_data.json');
	exprDataDict.import_json(selectedDataName);
	const functions = exprDataDict.get('functions');
	for (const func of functions) {
		if (func.get('document')) {
			let funcName = func.get('name');
			funcNamesArray.push(funcName);
		}
	}

	const fileDescription = exprDataDict.get('description');
	const requiresArray = exprDataDict.get('requires');
	const fileRequires = requiresArray.join(', ');
	let seealsoArray = exprDataDict.get('seealso');
	// const fileSeealso = seealsoArray.join('.genexpr ');
	let fileSeealso: string = '';
	if (seealsoArray) {
		for (let i = 0; i < seealsoArray.length; i++) {
			fileSeealso += `${seealsoArray[i]}.genexpr `; // space
		}
		fileSeealso = fileSeealso.trim();
	}

	outlet(0, 'about', 'clear');
	outlet(0, 'about', 'set', fileDescription); // textedit
	outlet(0, 'require', 'clear');
	outlet(0, 'require', 'set', fileRequires); // textedit
	if (seealsoArray.length) {
		outlet(0, 'seealso', `tabs ${fileSeealso}`); // tabs
	} else {
		outlet(0, 'seealso', 'bang'); // sets to one empty
	}

	outlet(2, 'clear'); // out 2 clears function data
	outlet(1, 'clear'); // out 1 clears functions menuu
	// outlet 1 connected to [umenu]
	outlet(1, 'append', `(Select a GenExpr Function from the \'${genExprFile}\' File)`);
	outlet(1, 'append', '<separator>');
	for (let i = 0; i < funcNamesArray.length; i++) {
		outlet(1, 'append', `${funcNamesArray[i]}${funcShowBrackets}`);
	}
	outlet(1, 'set', 0);
	adjustUiBoxes(0, 0);
	outlet(1, 'done');
}

function init(folder: string)
{
	let genExprFileListing = new Array();

	const selectedFolder = new Folder(folder); // 'genexpr-data'
	selectedFolder.reset();
	while (!selectedFolder.end) {
		if (selectedFolder.extension === '.json') {
			const fileForListing = selectedFolder.filename.replace('_data.json', '.genexpr');
			genExprFileListing.push(fileForListing);
		}
		selectedFolder.next();
	}
	selectedFolder.close();

	outlet(2, 'clear'); // out 2 clears function data
	outlet(1, 'clear'); // out 1 clears functions menu
	outlet(0, 'clear'); // out 0 clears files menu
	// outlet 0 connected to [umenu]
	outlet(0, 'append', '(Select GenExpr File)');
	outlet(0, 'append', '<separator>');
	for (let i = 0; i < genExprFileListing.length; i++) {
		outlet(0, 'append', genExprFileListing[i]);
	}
	outlet(0, 'set', 0);
	adjustUiBoxes(0, 0);
	outlet(0, 'done');
}
init.local = 1;

// bang reinitialises files menu
function bang()
{
	init(dataFolderName);
}

