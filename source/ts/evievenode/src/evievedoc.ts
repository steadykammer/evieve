
import * as max from 'max-api-or-nah';
import fs from 'fs';
import { homedir } from 'os';
import { resolve, posix, sep } from 'path';
import path from 'path';
import { cwd } from 'process';
import Handlebars from 'handlebars';
import { XMLParser, XMLBuilder } from 'fast-xml-parser';

import config from '../config/evievedoc.config.json';// with { type: 'json' };
import gendsp from '../config/evievedoc.config.gendsp.json';// with { type: 'json' };
import maxpat from '../config/evievedoc.config.maxpat.json';
import mxo from '../config/evievedoc.config.mxo.json';

const attributeXmlPrefix = 'maxattr_';

// import testJsonXml from '../test/pete_testing_2.json';

// --------------------------------------------- //

max.addHandler('test_gendsp_make', () => {
    updateConfigFileGendsp();
})

max.addHandler('test_maxpat_make', () => {
    updateConfigFileMaxpat();
})

max.addHandler('test_external_make', () => {
    updateConfigFileExternals();
})

max.addHandler('make_externals_refpages', (force = false) => {
  void max.outlet('array', 'clear');
  createExternalsRefpages(force);
  void max.outlet('array', 'bang');
  void max.outlet('process', 'bang');
})

// not needed anymore
max.addHandler('make_refpages_rename', () => {
    externalsRefpagesRename();
})

max.addHandler('make_refpages_contents', () => {
    makeDocRefpagesXmlContents();
})

max.addHandler('make_gendsp_defines', () => {
    // createGendspDefines();
	manuallyCreateGendspDefines();
})

max.addHandler('make_externals_mappings', () => {
	// createMxoObjectmappings();
	manuallyCreateMxoObjectmappings();
})

max.addHandler('make_abs_ref_jsons', () => {
	createMaxpatRefJson();
})

max.addHandler('make_defs_ref_jsons', () => {
	createDefineRefJson();
})

max.addHandler('make_gens_ref_jsons', () => {
	createGendspRefJson();
})

max.addHandler('make_abs_ref_xml_configs', () => {
	parseAbstractionsData();
})

// --------------------------------------------- //
// testing

max.addHandler('pete_test_xml_object', (type: string) => {
	if (type === "get") {
		testGetXml();
	}
	else if (type === "build") {
		testBuildXml();
	}
})

max.addHandler('pete_test_externals_xml_edit', () => {
	testEditAutoXml();
})

function testGetXml(prefix?: string)
{
	const options = {
		preserveOrder: false, // shit for getting values, good for rebuilding xml
		ignoreAttributes: false,
		// attributeNamePrefix: `${prefix}`,
		attributeNamePrefix: attributeXmlPrefix,
		alwaysCreateTextNode: true,
		processEntities: false
	};
	const parser = new XMLParser(options);

	const xmlData = fs.readFileSync('../test/msp_delay~.maxref.xml', 'utf8');
	const result = parser.parse(xmlData);
	fs.writeFileSync('../test/pete_testing_3.json', JSON.stringify(result, null, 4));
}

function testBuildXml(/*jsonData: any, */prefix?: string)
{
	const options = {
		format: true,
		preserveOrder: false, // shit for the json, but only to have format correct when building
		ignoreAttributes: false,
		// attributeNamePrefix: `${prefix}`,
		attributeNamePrefix: attributeXmlPrefix,
		processEntities: false
	};
	const builder = new XMLBuilder(options);

	const jsonData = fs.readFileSync('../test/pete_testing_3.json', 'utf8');
	const result = builder.build(jsonData);
	fs.writeFileSync('../test/testing_pete_3.xml', result);
}

async function testEditAutoXml()
{
	let refDir = `${cwd()}/${config.referenceFiles.externals.config}`;
	let outDir = `${cwd()}/${config.referenceFiles.externals.output}`;
	let refFiles = getFileNamesFromPath(refDir, 'xml');
	const parseOptions = {
		preserveOrder: false, // shit for getting values, good for rebuilding xml
		ignoreAttributes: false,
		attributeNamePrefix: attributeXmlPrefix,
		alwaysCreateTextNode: true,
		processEntities: false
	};
	const buildOptions = {
		format: true,
		preserveOrder: false, // shit for the json, but only to have format correct when building
		ignoreAttributes: false,
		attributeNamePrefix: attributeXmlPrefix,
		processEntities: false
	};
	const parser = new XMLParser(parseOptions);
	const builder = new XMLBuilder(buildOptions);

	for await (const file of refFiles) {
		const xmlData = fs.readFileSync(`${refDir}/${file}`, 'utf8');
		const jsonData = parser.parse(xmlData);
		const outName = file.replace('_ref.xml', '.maxref.xml');
		jsonData.c74object.metadatalist.metadata = externalsXmlMetadata;
		jsonData.c74object.maxattr_module = 'evieve';
		jsonData.c74object.maxattr_category = 'evieve';
		const editedData = builder.build(jsonData);
		fs.writeFileSync(`${outDir}/${outName}`, editedData);
	}
}

// --------------------------------------------- //

async function parseAbstractionsData()
{
	const patchersFolder = `${cwd()}/${config.referenceFiles.abstractions.input}`
	const fullPatcherPaths = getFilePathsFromPathRecursive(patchersFolder, 'maxpat');
	for await (const patchPath of fullPatcherPaths) {
		const dirName = path.dirname(patchPath);
		const patcherName = path.basename(patchPath);
		await parseAbstractionMaxpatLoop(dirName, patcherName);
	}
}

async function parseAbstractionMaxpatLoop(parentPath: string, patcherName: string) {
	const fullPath = `${parentPath}/${patcherName}`;
    const maxpatRaw = fs.readFileSync(fullPath, 'utf8');
    const maxpatJson = JSON.parse(maxpatRaw);

	const maxpatRefsPath = `${cwd()}/${config.referenceFiles.abstractions.config}`;
	// IF !!!
	const refConfigName = patcherName.replace('.maxpat', '_ref.json');
	const thisConfigFullPath = `${maxpatRefsPath}/${refConfigName}`;
	const thisConfigJson = fs.readFileSync(thisConfigFullPath, 'utf8');
    const thisConfigObject = JSON.parse(thisConfigJson);

	const NEW_OBJ = "newobj";
	const PATCHER_ARGS = "patcherargs";
	let BOX_TEXT: string;
	let MATCH_ARGS = false;

	const isNumericFromString = (string: string) => /^[+-]?\d+(\.\d+)?$/.test(string);
	const isNumericFinite = (input: string | number) => Number.isFinite(+input);
	const argumentsConfig: any = {
		"name": "",
		"type": "",
		"default": "",
		"optional": 1,
		"digest": "",
		"description": ""
	};
	const attributesConfig: any = {
		"name": "",
		"get": 0,
		"type": "",
		"digest": "",
		"description": "",
		"default": {
			"get": 0,
			"value": 0
		}
	};

	if (thisConfigObject.arguments.length === 1) {
		thisConfigObject.arguments.length = 0;
	}
	if (thisConfigObject.attributes.length === 1) {
		thisConfigObject.attributes.length = 0;
	}

	// we only need to look at top level for the [patcherargs] we are interested in
    for await (const object of maxpatJson.patcher.boxes) {
		if (object.box.maxclass === NEW_OBJ) {
			BOX_TEXT = object.box.text;
			if (BOX_TEXT.startsWith(PATCHER_ARGS)) {
				// parse it
				let AT_PARSED: boolean = false;
				const BOX_tokens = BOX_TEXT.replace(PATCHER_ARGS, '').split(' ');
				for (let i = 0; i < BOX_tokens.length; i++) {
					if (BOX_tokens[i].startsWith('@')) {
						AT_PARSED = true;
						let thisAttr: any = JSON.parse(JSON.stringify(attributesConfig));
						thisAttr.name = BOX_tokens[i].replace('@', '');
						const thisValue = BOX_tokens[i + 1];
						thisAttr.default.value = thisValue;
						thisAttr.type = inferTypeFromString(thisValue);
						thisConfigObject.attributes.push(thisAttr);
					} else {
						if (AT_PARSED) {
							continue;
						} else {
							let thisArgs: any = JSON.parse(JSON.stringify(argumentsConfig));
							thisArgs.type = inferTypeFromString(BOX_tokens[i]);
							thisArgs.default = BOX_tokens[i];
							thisConfigObject.arguments.push(thisArgs);
						}
					}
				}
				MATCH_ARGS = true;
			}
		}
		if (MATCH_ARGS) {
			break;	// only once for [patcherargs]
		}
    }

	if (!MATCH_ARGS) { // do something if [patcherargs] not found?
		void max.post(`No [patcherargs] object found in ${patcherName}`);
	}

	const IN_LET = "inlet";
	const OUT_LET = "outlet";
	let IO_ASSIST: string;
	const inoutletsConfig: any = {
		"id": 0,
		"type": "",
		"digest": "",
		"description": ""
	}

	// if we are editing a brand new template, clear the template code
	// i know, this is very weak code, but .maxpat will never have an id/index = 0
	thisConfigObject.inlets.filter((entry: { id: number; }) => entry.id != 0);
	thisConfigObject.outlets.filter((entry: { id: number; }) => entry.id != 0);

	// we only want to look at top level for the [inlet] & [outlet]s
    for await (const object of maxpatJson.patcher.boxes) {
		if (object.box.maxclass === IN_LET || object.box.maxclass === OUT_LET) {
			let thisIO: any = JSON.parse(JSON.stringify(inoutletsConfig));
			IO_ASSIST = object.box.comment;
			// parse it
			thisIO.id = object.box.index;
			const IO_tokens = IO_ASSIST.split(' ');
			if (IO_tokens[0].startsWith('(') && IO_tokens[0].endsWith(')')) {
				thisIO.type = IO_tokens[0].replace('(', '').replace(')', '');
				thisIO.digest = IO_ASSIST.replace(IO_tokens[0], '').trim();
			} else {
				thisIO.digest = IO_ASSIST;
			}
			// push it
			if (object.box.maxclass === IN_LET) {
				thisConfigObject.inlets.push(thisIO);
			} else if (object.box.maxclass === OUT_LET) {
				thisConfigObject.outlets.push(thisIO);
			}
		}
    }

	fs.writeFileSync(thisConfigFullPath, JSON.stringify(thisConfigObject, null, 4));
}

// really dumb and does not do lists of attrs
function inferTypeFromString(thisValue: string)
{
	const isNumericFromString = (string: string) => /^[+-]?\d+(\.\d+)?$/.test(string);
	const isNumericFinite = (input: string | number) => Number.isFinite(+input);

	let thisValueMaxType: string;
	if (isNumericFinite(thisValue)) {
		if (thisValue.includes('.')) {
			thisValueMaxType = "float";
		} else {
			thisValueMaxType = "int";
		}
	} else {
		thisValueMaxType = "symbol";
	}
	return thisValueMaxType;
}
/*
function parsePatcherArgs(boxText: string, objectConfig: any)
{

}
*/
/*
function pushIOdata(ioAssist: string, type: string, objectConfig: any, boxNum: number)
{

}
*/
// --------------------------------------------- //

async function createMaxpatRefJson()
{
	const maxpatRefsPath = `${cwd()}/${config.referenceFiles.abstractions.config}`;
	const templateJson = fs.readFileSync(`${maxpatRefsPath}/_xml_abstraction_template.json`, 'utf8');
    const templateObject = JSON.parse(templateJson);

	let refConfigs = getFileNamesFromPath(maxpatRefsPath, 'json');
	const IGNORE = /_xml_abstraction_template.json/;
	// const IGNORE = /_xml_*.json/;
	refConfigs = refConfigs.filter((str) => !IGNORE.test(str));

	let parsedMaxpats = maxpat.evi_abstractions;
	const maxpatsArray = Object.keys(parsedMaxpats);
	for await (const maxpatName of maxpatsArray) {
		const jsonFileName = maxpatName.replace('.maxpat', '_ref.json')
        if (!refConfigs.includes(jsonFileName)) {	// maybe create if does not yet exist
			// @ts-expect-error
			const thisMaxpatConfig = parsedMaxpats[maxpatName];
			if (thisMaxpatConfig.ref) { // if ref page is requested in config
				const newTemplate = JSON.parse(JSON.stringify(templateObject));
				newTemplate.object.name = maxpatName.replace('.maxpat', '');
				newTemplate.metadata.author = "Pete Dowling"; // fatPete

				fs.writeFileSync(`${maxpatRefsPath}/${jsonFileName}`, JSON.stringify(newTemplate, null, 4));
				void max.post(`Creation of ${jsonFileName} success!`)
			}
		}
		else {
			void max.post(`Skipping ${jsonFileName} because it already exists!`);
		}
	}
}

async function createDefineRefJson()
{
	const defineRefsPath = `${cwd()}/${config.referenceFiles.defines.config}`;
	const templateJson = fs.readFileSync(`${defineRefsPath}/_xml_define_template.json`, 'utf8');
    const templateObject = JSON.parse(templateJson);

	let refConfigs = getFileNamesFromPath(defineRefsPath, 'json');
	const IGNORE = /_xml_define_template.json/;
	refConfigs = refConfigs.filter((str) => !IGNORE.test(str));

	let parsedDefines = gendsp.evi_gendsp;
	const definesArray = Object.keys(parsedDefines);
	for await (const defineName of definesArray) {
		// @ts-expect-error
		const thisDefineConfig = parsedDefines[defineName];
		const newDefineName = thisDefineConfig.define.msp;
		const jsonFileName = `${newDefineName}_ref.json`;
        if (!refConfigs.includes(jsonFileName)) {	// maybe create if does not yet exist
			if (thisDefineConfig.define.object) {	// outer double check, might as well
				if (thisDefineConfig.ref.msp) { // if msp ref page is requested in config
					const newTemplate = JSON.parse(JSON.stringify(templateObject));
					newTemplate.object.name = newDefineName;
					newTemplate.object.parent = defineName;
					newTemplate.metadata.author = "Pete Dowling"; // fatPete

					fs.writeFileSync(`${defineRefsPath}/${jsonFileName}`, JSON.stringify(newTemplate, null, 4));
					void max.post(`Creation of ${jsonFileName} success!`)
				}
			}
		}
		else {
			void max.post(`Skipping ${jsonFileName} because it already exists!`);
		}
	}
}

async function createGendspRefJson()
{
	const gendspRefsPath = `${cwd()}/${config.referenceFiles.genDsp.config}`;
	const templateJson = fs.readFileSync(`${gendspRefsPath}/_xml_gendsp_template.json`, 'utf8');
    const templateObject = JSON.parse(templateJson);

	let refConfigs = getFileNamesFromPath(gendspRefsPath, 'json');
	const IGNORE = /_xml_gendsp_template.json/;
	refConfigs = refConfigs.filter((str) => !IGNORE.test(str));

	let parsedGendsps = gendsp.evi_gendsp;
	const gendspsArray = Object.keys(parsedGendsps);
	for await (const gendspName of gendspsArray) {
		// @ts-expect-error
		const thisGendspConfig = parsedGendsps[gendspName];
		const newGendspName = gendspName.replace('.gendsp', '');;
		const jsonFileName = `${newGendspName}_ref.json`;
        if (!refConfigs.includes(jsonFileName)) {	// maybe create if does not yet exist
			if (thisGendspConfig.ref.gen) { // if gen ref page is requested in config
				const newTemplate = JSON.parse(JSON.stringify(templateObject));
				newTemplate.object.name = newGendspName;

				fs.writeFileSync(`${gendspRefsPath}/${jsonFileName}`, JSON.stringify(newTemplate, null, 4));
				void max.post(`Creation of ${jsonFileName} success!`)
			}
		}
		else {
			void max.post(`Skipping ${jsonFileName} because it already exists!`);
		}
	}
}

// --------------------------------------------- //

function updateConfigFileGendsp(force = false, writeJson = true) {
	let currentGendsp = gendsp.evi_gendsp;
	const newGendsp: any = {};

	// search for new .gendsp files in the gendsp folders
	const gendsps = getFileNamesFromPathRecursive(`${cwd()}/${config.referenceFiles.genDsp.input}`, 'gendsp');
	for (const gendsp of gendsps) {
        if (!Object.hasOwn(currentGendsp, gendsp)) {
        	newGendsp[gendsp] = JSON.parse(JSON.stringify(gendspConfigTemplate)); // add new entry
        	newGendsp[gendsp].define.msp = gendsp.replaceAll('_', '.').replace('.gendsp', '~');
		}
	}

	if (Object.keys(newGendsp).length === 0 && !force) {
		void max.post('No new gendsp files found, everything is up to date!');
		return;
	}
	void max.post(`New .gendsp files found in: ${config.referenceFiles.genDsp.input}`, max.POST_LEVELS.WARN);
	void max.post("Updating gendsp listings in 'evievedoc.config.gendsp.json'");

	currentGendsp = Object.assign(currentGendsp, newGendsp);

	const sortedGendsp = Object.entries(currentGendsp).sort((a, b) =>
		a[0].localeCompare(b[0], undefined, { sensitivity: 'base' })
	);

	const assignGendsp = Object.fromEntries(sortedGendsp);
	// @ts-expect-error
	gendsp.evi_gendsp = assignGendsp;

	// write json
	if (writeJson) {
		fs.writeFileSync('../config/evievedoc.config.gendsp.json', JSON.stringify(gendsp, null, 4));
		void max.post("Update of gendsp listings complete!")
		void max.outlet('config', 'gendsp', 'done');
	}
}

function updateConfigFileMaxpat(force = false, writeJson = true) {
	let currentMaxpats = maxpat.evi_abstractions;
	const newMaxpats: any = {};

	// search for new .maxpat files in the patchers folder
	const abstractions = getFileNamesFromPathRecursive(`${cwd()}/${config.referenceFiles.abstractions.input}`, 'maxpat');
	for (const abs of abstractions) {
        if (!Object.hasOwn(currentMaxpats, abs)) {
        	newMaxpats[abs] = JSON.parse(JSON.stringify(abstractionsConfigTemplate)); // add new entry
		}
	}

	if (Object.keys(newMaxpats).length === 0 && !force) {
		void max.post('No new abstractions found, everything is up to date!');
		return;
	}
	void max.post(`New .maxpat files found in: ${config.referenceFiles.abstractions.input}`, max.POST_LEVELS.WARN);
	void max.post("Updating abstractions listings in 'evievedoc.config.maxpat.json'");

	currentMaxpats = Object.assign(currentMaxpats, newMaxpats);

	const sortedMaxpats = Object.entries(currentMaxpats).sort((a, b) =>
		a[0].localeCompare(b[0], undefined, { sensitivity: 'base' })
	);

	const assignMaxpats = Object.fromEntries(sortedMaxpats);
	// @ts-expect-error
	maxpat.evi_abstractions = assignMaxpats;

	// write json
	if (writeJson) {
		fs.writeFileSync('../config/evievedoc.config.maxpat.json', JSON.stringify(maxpat, null, 4));
		void max.post("Update of abstractions listings complete!")
		void max.outlet('config', 'maxpat', 'done');
	}
}

function updateConfigFileExternals(force = false, writeJson = true) {
	let currentExternals = mxo.evi_externals;
	const newExternals: any = {};

	// search for new .mxo files in the externals folder
	const externals = getExternalsNames(`${cwd()}/${config.referenceFiles.externals.input}`);
	for (const external of externals) {
		const externalName = external.replace('.mxo', '');
        if (!Object.hasOwn(currentExternals, externalName)) {
        	newExternals[externalName] = JSON.parse(JSON.stringify(externalsConfigTemplate)); // add new entry
		}
	}

	if (Object.keys(newExternals).length === 0 && !force) {
		void max.post('No new .mxo files found, everything is up to date!');
		return;
	}
	void max.post(`New .mxo files found in: ${config.referenceFiles.externals.input}`, max.POST_LEVELS.WARN);
	void max.post("Updating externals listings in 'evievedoc.config.mxo.json'");

	currentExternals = Object.assign(currentExternals, newExternals);

	const sortedExternals = Object.entries(currentExternals).sort((a, b) =>
		a[0].localeCompare(b[0], undefined, { sensitivity: 'base' })
	);

	const assignExternals = Object.fromEntries(sortedExternals);
	// @ts-expect-error
	mxo.evi_externals = assignExternals;

	// write json
	if (writeJson) {
		fs.writeFileSync('../config/evievedoc.config.mxo.json', JSON.stringify(mxo, null, 4));
		void max.post("Update of externals listings complete!")
		void max.outlet('config', 'external', 'done');
	}
}

// --------------------------------------------- //

function createGendspDefines() {
	let refDir = `${cwd()}/${config.initFiles.defines.output}`;
	let refEntries = gendsp;

	renderFromTemplate('../templates/defines.handlebars', { ref: refEntries }, `${refDir}/evieve-defines.txt`);
}

// because pete is shit at handlebars
function manuallyCreateGendspDefines() {
	let refDir = `${cwd()}/${config.initFiles.defines.output}`;
	let writer = fs.createWriteStream(`${refDir}/evieve-defines.txt`, { flags: 'a' });
	const genAbstractions = Object.keys(gendsp.evi_gendsp);
	for (const thisGen of genAbstractions) {
		// @ts-expect-error
		const thisAbstraction = gendsp.evi_gendsp[thisGen];
		const create = thisAbstraction.define.object;
		const mc = thisAbstraction.define.mcwrapper;
		const mspName = thisAbstraction.define.msp;
		if (create) {
			writer.write(`\nmax define ${mspName} gen~ @gen ${thisGen};`);
			if (mc) {
				writer.write(`\nmax define mc.${mspName} mc.gen~ @gen ${thisGen} @chans 2;`);
			}
			writer.write('\n');
		}
	}
	writer.end();
}

function createMxoObjectmappings() {
	let refDir = `${cwd()}/${config.initFiles.defines.output}`;
	let refEntries = mxo;

	renderFromTemplate('../templates/objectmappings.handlebars', { ref: refEntries }, `${refDir}/evieve-objectmappings.txt`);
}

// because pete is shit at handlebars
function manuallyCreateMxoObjectmappings() {
	let refDir = `${cwd()}/${config.initFiles.defines.output}`;
	let writer = fs.createWriteStream(`${refDir}/evieve-objectmappings.txt`, { flags: 'a' });
	const eviExternals = Object.keys(mxo.evi_externals);
	for (const thisMxo of eviExternals) {
		// @ts-expect-error
		const thisExternal = mxo.evi_externals[thisMxo];
		const create = thisExternal.object;
		const mc = thisExternal.mc;
		if (create) {
			if (mc) {
				writer.write(`\nmax objectfile mc.${thisMxo} mc.wrapper~ ${thisMxo};`);
			}
			// writer.write('\n');
		}
	}
	writer.end();
}

// --------------------------------------------- //

function createExternalsRefpages(force: boolean) {
	// search for .mxo files in the externals folder
	const externals = getExternalsNames(`${cwd()}/${config.referenceFiles.externals.input}`);
	let outDir = `${cwd()}/${config.referenceFiles.externals.config}`;
	void max.outlet('array', 'append', `setrefgendestinationpath \"${outDir}\"`)
	for (const external of externals) {
		createExternalsRefpagesLoop(external, force)
	}
}

// pump out two part lists per external to Max [array] object for shifting
function createExternalsRefpagesLoop(external: string, force: boolean) {
	let CREATE: boolean;
	// write name is the name that max will write the output file to (eventually)
	const writeNameIn = external.replace('.mxo', '_ref.xml');
	const writeNameOut = external.replace('.mxo', '.maxref.xml');
	const refpageName = external.replace('.mxo', '');

	let outDir = `${cwd()}/${config.referenceFiles.externals.config}`;

	const pathNameIn = `${outDir}/${writeNameIn}`;
	const pathNameOut = `${outDir}/${writeNameOut}`;
	if (!fs.existsSync(pathNameIn) || !fs.existsSync(pathNameOut) || force) {
		void max.outlet('array', 'append', `setrefgendestinationpath \"${outDir}\"`);
		void max.outlet('array', 'append', `refgen ${refpageName}`);

		// and check that the folder exists
		fs.mkdirSync(outDir, { recursive: true });

		CREATE = true;
	} else {
		void max.post(`Skipping ${external} as reference page already exists!`, max.POST_LEVELS.WARN);
		CREATE = false
	}
	return CREATE
}

// not used anymore
function externalsRefpagesRename() {
	let refDir = `${cwd()}/${config.referenceFiles.externals.output}`;
	let refFiles = getFileNamesFromPath(refDir, 'xml');
	const IGNORE = /_c74_contents.xml/;
	refFiles = refFiles.filter((str) => !IGNORE.test(str));

	for (const file of refFiles) {
		const newName = file.replace('_ref.xml', '.maxref.xml');
		fs.renameSync(`${refDir}/${file}`, `${refDir}/${newName}`);
		void max.post(`Renamed ${file} to ${newName}`, max.POST_LEVELS.INFO);
	}
}

function makeDocRefpagesXmlContents() {
	let refDir = `${cwd()}/${config.referenceFiles.externals.output}`;
	let refFiles = getFileNamesFromPath(refDir, 'xml');
	const IGNORE = /_c74_contents.xml/;
	refFiles = refFiles.filter((str) => !IGNORE.test(str));

	renderFromTemplate('../templates/xmlcontents.handlebars', { ref: refFiles }, `${refDir}/_c74_contents.xml`);
}

// --------------------------------------------- //

function getExternalsNames(path: string) {
	const externalsnames = getFileNamesFromPath(path, 'mxo');
	return externalsnames;
}

function getGendspsNames(path: string) {
	const gendspsnames = getFileNamesFromPath(path, 'gendsp');
	return gendspsnames;
}

function getAbstractionsNames(path: string) {
	const abstractionsnames = getFileNamesFromPath(path, 'maxpat');
	return abstractionsnames;
}

function getFileNamesFromPath(path: string, extension: string) {
	const filenames = fs.readdirSync(path);
	return filenames.filter((file) => file.match(new RegExp(`.*\.(${extension})$`, 'ig')));
}

function getFileNamesFromPathRecursive(path: string, extension?: string) {
	let filetypes: string[];
	const filenames = fs.readdirSync(path, { withFileTypes: true, recursive: true });
	const filelisting = filenames
    .filter((file) => file.isFile() && !file.isDirectory())
    .map((file) => file.name);
	if (extension && typeof(extension) === "string") {
		filetypes = filelisting
		.filter((file) =>file.match(new RegExp(`.*\.(${extension})$`, 'ig')));
	} else {
		filetypes = filelisting;
	}
	return filetypes;
}

function getFilePathsFromPathRecursive(path: string, extension?: string) {
	let filetypes: string[];
	const filenames = fs.readdirSync(path, { withFileTypes: true, recursive: true });
	const filelisting = filenames
    .filter((file) => file.isFile() && !file.isDirectory())
    .map((file) => resolve(path, file.parentPath, file.name)); // jayzus
	if (extension && typeof(extension) === "string") {
		filetypes = filelisting
		.filter((file) =>file.match(new RegExp(`.*\.(${extension})$`, 'ig')));
	} else {
		filetypes = filelisting;
	}
	// void max.post(`${filetypes}`);
	return filetypes;
}

function renderFromTemplate(templatePath: string, dataToRender: object, writePath: string) {
	const template = Handlebars.compile(fs.readFileSync(templatePath as any, 'utf8'));
	const writeData = template(dataToRender);
	fs.writeFileSync(writePath, writeData);
	void max.post('done writing', writePath, max.POST_LEVELS.INFO);
}
/*
function writeConfigJsonToDisk(config: any) {
  fs.writeFileSync(evievedocConfig, JSON.stringify(config, null, 4));
  void max.outlet('config', 'write', 'done');
}
*/
// --------------------------------------------- //

function resolveTilde(path: string) {
    if (!path || typeof(path) !== 'string') {
        return '';
    }

    if (path.startsWith('~/') || path === '~') {
        return path.replace('~', homedir());
    }

	return path;
}

function posixPath(path: string) {
	return path.split(sep).join(posix.sep);
}

// --------------------------------------------- //

const gendspConfigTemplate = {
	"define": {
		"object": true,
		"msp": "",
		"mcwrapper": true
	},
	"ref": {
		"gen": true,
		"msp": true
	},
	"help": {
		"msp": true,
		"gentab": true,
		"genexprtab": true,
		"areaonly": false,
		"areas": [ ]
	},
	"db": {
		"browser": true,
		"auto": true
	}
};

const abstractionsConfigTemplate = {
	"object": true,
	"ref": true,
	"qlookup": true,
	"helpfile": {
		"generate": true,
		"mctab": false,
		"mcstab": false,
		"mcparent": "",
		"mcchild": "",
		"gentab": false,
		"genexprtab": false,
		"areas": []
	},
	"db": {
		"browser": true,
		"auto": true
	}
};

const externalsConfigTemplate = {
	"object": true,
	"mc": true,
	"ref": true,
	"helpfile": {
		"generate": true,
		"mctab": true,
		"mcstab": false,
		"mcseparate": false,
		"gentab": false,
		"genexprtab": false,
		"areas": []
	},
	"db": {
		"browser": true,
		"auto": true
	}
};

// must be in sync with 'attributeXmlPrefix' const
const externalsXmlMetadata = [
	{
		"#text": "Pete Dowling",
		"maxattr_name": "author"
	},
	{
		"#text": "evieve",
		"maxattr_name": "tag"
	}
];

// some helpfiles have automatic general tabs covering an 'area'
const areas = [
	"biquad",
	"pd",
	"crossover",
	"msp",
	"korg",
	"ladder",
	"svf",
	"filter",
	"oscillator",
	"reverb",
	"overdrive",
	"smooth"
];
