
import * as max from 'max-api-or-nah';
import fs from 'fs';
import { homedir } from 'os';
import { resolve, posix, sep } from 'path';
import path from 'path';
import { cwd } from 'process';
import readline from 'readline';
import Handlebars from 'handlebars';
import { XMLParser, XMLBuilder } from 'fast-xml-parser';
import PEGgy from 'peggy';

import config from '../config/evievedoc.config.json';// with { type: 'json' };
import gendsp from '../config/evievedoc.config.gendsp.json';
import maxpat from '../config/evievedoc.config.maxpat.json';
import mxo from '../config/evievedoc.config.mxo.json';

const genexpr_pegjs = fs.readFileSync('../peg/genexpr.pegjs', 'utf8');
const peg_parse_options = {
	// output: "source",	// output the parser as... i cannot get this working with peggy
	cache: true,			// avoids pathological slowdowns
	allowedStartRules: [ "start", "translation_unit", "gen" ]
};
const PEGparser = PEGgy.generate(genexpr_pegjs, peg_parse_options);

const attributeXmlPrefix = 'maxattr_';

// --------------------------------------------- //

interface inoutletsConfig {
	id: number,
	name?: string,
	type: string,
	optional?: number,
	digest: string,
	description?: string
}

interface attributesConfig {
	name: string,
	get?: number,
	type: string,
	digest: string,
	description: string,
	default: {
		type?: string,
		get?: number,
		min?: number,
		max?: number,
		value: number
	}
}

interface messagesConfig {
	name: string,
	arg: [
		{
			name: string,
			type: string,
			units: string,
			optional: number
		}
	],
	digest: string,
	description: string
}

interface msgArgsConfig {
	name: string,
	type: string,
	units: string,
	optional: number
}

interface argumentsConfig {
	name: string,
	type: string,
	default: string,
	optional: number,
	digest: string,
	description: string
}

interface gendspConfigTemplate {
	define: {
		object: boolean,
		msp: string,
		mcwrapper: boolean
	},
	ref: {
		gen: boolean,
		msp: boolean
	},
	helpfile: {
		msp: boolean,
		gentab: boolean,
		genexprtab: boolean,
		areaonly: boolean,
		areas: string[]
	},
	db: {
		browser: boolean,
		auto: boolean
	}
}

interface abstractionsConfigTemplate {
	object: boolean,
	ref: boolean,
	qlookup: boolean,
	helpfile: {
		generate: boolean,
		mctab: boolean,
		mcstab: boolean,
		mcparent: string,
		mcchild: string,
		gentab: boolean,
		genexprtab: boolean,
		areas: string[]
	},
	db: {
		browser: boolean,
		auto: boolean
	}
}

interface externalsConfigTemplate {
	object: boolean,
	mc: boolean,
	ref: boolean,
	helpfile: {
		generate: boolean,
		mctab: boolean,
		mcstab: boolean,
		mcseparate: boolean,
		gentab: boolean,
		genexprtab: boolean,
		areas: string[]
	},
	db: {
		browser: boolean,
		auto: boolean
	}
}

// --------------------------------------------- //

max.addHandler('config_gendsp_make', () => {
    updateConfigFileGendsp();
})

max.addHandler('config_maxpat_make', () => {
    updateConfigFileMaxpat();
})

max.addHandler('config_external_make', () => {
    updateConfigFileExternals();
})

max.addHandler('make_externals_refpages', (force = false) => {
  void max.outlet('array', 'clear');
  createExternalsRefpages(force);
  void max.outlet('array', 'bang');
  void max.outlet('process', 'bang');
})

// not needed anymore
max.addHandler('make_externals_refpages_rename', () => {
    // externalsRefpagesRename();
})

max.addHandler('make_refpages_contents', () => {
    makeDocRefpagesXmlContents();
})

// NO ?
max.addHandler('make_refpages_gen_contents', () => {
    makeGenRefpagesXmlContents();
})

// NO ?
max.addHandler('make_refpages_expr_contents', () => {
    makeGenExprRefpagesXmlContents();
})

max.addHandler('make_gendsp_defines', () => {
    createGendspDefines();
	// manuallyCreateGendspDefines();
})

max.addHandler('make_object_mappings', () => {
	createMxoObjectmappings();
	// manuallyCreateMxoObjectmappings();
})

max.addHandler('make_object_list', () => {
	createMaxObjectList();
})

max.addHandler('make_key_commands', () => {
	createMaxKeyCommands();
})

max.addHandler('make_help_config', () => {
	createHelpconfigFile();
})

max.addHandler('make_abs_ref_jsons', () => {
	createMaxpatRefJson();
})

max.addHandler('make_defs_ref_jsons', (extract = false) => {
	createDefineRefJson(extract);
})

max.addHandler('make_gens_ref_jsons', () => {
	createGendspRefJson();
})

max.addHandler('make_abs_ref_xml_configs', () => {
	parseAbstractionsData();
})

max.addHandler('make_defs_ref_xml_configs', () => {
	parseDefinesData();
})

max.addHandler('make_defs_genexpr_xml_configs', () => {
	parseDefinesCodeboxes();
})

max.addHandler('make_gens_ref_xml_configs', () => {
	parseGendspsData();
})

max.addHandler('make_gens_genexpr_xml_configs', () => {
	parseGendspsCodeboxes();
})

max.addHandler('make_abstractions_ref_xml', () => {
	makeDocRefpagesAbstractions();
})

max.addHandler('make_defines_ref_xml', () => {
	makeDocRefpagesDefines();
})

max.addHandler('make_gendsps_ref_xml', () => {
	makeDocRefpagesGendsps();
})

max.addHandler('make_genexprs_ref_xml', () => {
	makeGenExprRefpages();
})

max.addHandler('make_qlookup_json', () => {
	parseDataForQlookup();
})

max.addHandler('make_maxdb_json', () => {
	createMaxDbFle();
})

max.addHandler('make_externals_ref_xml', () => {
	autoCreateExternalsXml();
})
/*
max.addHandler('create_helpfiles_basic', () => {
	createHelpFilesBasic();
})
*/
max.addHandler('create_helpfiles_externals', () => {
	createHelpFilesExternals();
})

max.addHandler('create_helpfiles_abstractions', () => {
	createHelpFilesAbstractions();
})

max.addHandler('create_helpfiles_defines', () => {
	createHelpFilesDefines();
})

max.addHandler('extract_genexpr_asts', () => {
	extractGenExprASTs();
})

max.addHandler('build_genexpr_data_sources', () => {
	parseGenExprAstsForDoc();
})

// --------------------------------------------- //
// testing

max.addHandler('test_peggy_look', () => {
	testPeggyCrap();
})

max.addHandler('test_peggy_dsp', () => {
	testPeggyGendsp();
})

max.addHandler('test_peggy_sidebar', (fullPath: string) => {
	testPeggySideBar(fullPath);
})

max.addHandler('pete_test_xml_object', (type: string) => {
	if (type === "get") {
		testGetXml();
	}
	else if (type === "build") {
		testBuildXml();
	}
})

function testGetXml(prefix?: string)
{
	const options = {
		preserveOrder: false, // true = shit for getting values, good for rebuilding xml
		ignoreAttributes: false,
		// attributeNamePrefix: `${prefix}`,
		attributeNamePrefix: attributeXmlPrefix,
		// alwaysCreateTextNode: true,
		processEntities: false
	};
	const parser = new XMLParser(options);

	// const xmlData = fs.readFileSync('../test/msp_delay~.maxref.xml', 'utf8');
	const xmlData = fs.readFileSync('../test/evi.cfsmooth~.maxref.xml', 'utf8');
	// const xmlData = fs.readFileSync('../test/irsweeps~.maxref.xml', 'utf8');
	const result = parser.parse(xmlData);
	fs.writeFileSync('../test/pete_testing_3.json', JSON.stringify(result, null, 4));
}

function testBuildXml(/*jsonData: any, */prefix?: string)
{
	const options = {
		format: true,
		preserveOrder: false, // true = shit for the json, but good to have format correct when building
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

// --------------------------------------------- //

async function autoCreateExternalsXml()
{
	let refDir = `${cwd()}/${config.referenceFiles.externals.config}`;
	let outDir = `${cwd()}/${config.referenceFiles.externals.output}`;
	let refFiles = getFileNamesFromPath(refDir, 'xml');
	const parseOptions = {
		preserveOrder: false, // true = shit for getting values, good for rebuilding xml
		ignoreAttributes: false,
		attributeNamePrefix: attributeXmlPrefix,
		alwaysCreateTextNode: true,
		processEntities: false
	};
	const buildOptions = {
		format: true,
		preserveOrder: false, // true = shit for the json, but good to have format correct when (re)building
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
		jsonData.c74object.maxattr_module = 'evieve-ref';
		jsonData.c74object.maxattr_category = 'evieve';
		jsonData.c74object.misc = externalsXmlMisc;
		const editedData = builder.build(jsonData);
		fs.writeFileSync(`${outDir}/${outName}`, editedData);
	}
}

function parseDataForQlookup() {
	const parseOptions = {
		preserveOrder: false, // false = good for getting values, shit for rebuilding xml
		ignoreAttributes: false,
		attributeNamePrefix: attributeXmlPrefix,
		alwaysCreateTextNode: true,
		processEntities: false
	};
	const parser = new XMLParser(parseOptions);

	let readDir = `${cwd()}/${config.interfaceFiles.qlookup.input}`;
	let refPages = getFileNamesFromPath(readDir, 'xml');
	const IGNORE = /_c74_contents.xml/;
	refPages = refPages.filter((contents) => !IGNORE.test(contents));
	let qlookup: any = {};

	for (const page of refPages) {
		const xmlData = fs.readFileSync(`${readDir}/${page}`, 'utf8');
		const xmlResult = parser.parse(xmlData);
		const objectName = page.replace('.maxref.xml', '');

		qlookup[objectName] = {};
		if (Object.hasOwn(xmlResult.c74object, 'digest')) {
			const maybeDigest: any = xmlResult.c74object.digest;
			if (typeof maybeDigest === 'string') {
				qlookup[objectName].digest = xmlResult.c74object.digest;
			} else {
				qlookup[objectName].digest = xmlResult.c74object.digest['#text'];
			}
		} else {
			qlookup[objectName].digest = 'TEXT_HERE';
		}
		qlookup[objectName].module = xmlResult.c74object.maxattr_module;

		let tagsArray = [];
		if (Object.hasOwn(xmlResult.c74object, 'metadatalist')) {
			for (const tag of xmlResult.c74object.metadatalist.metadata) {
				if (tag.maxattr_name === 'tag') {
					tagsArray.push(tag['#text']);
				}
			}
			qlookup[objectName].category = tagsArray;
		}

		qlookup[objectName].keywords = [];
		if (Object.hasOwn(xmlResult.c74object, 'misc')) {
			// const discussionData = xmlResult.c74object.misc.filter((el: any) => el.maxattr_name === 'Discussion');
			// if (Array.isArray(discussionData)) {
			// 	const keywordData = discussionData[0].entry.filter((el: any) => el.maxattr_name === 'Keywords');
			// 	if (keywordData.length > 0) {
			// 		qlookup[objectName].keywords = keywordData[0].description.split(',');
			// 	}
			// 	qlookup[objectName].keywords = qlookup[objectName].keywords.map((item: string) => item.trim());
			// }
			let keywordData = '';
			if (Object.hasOwn(xmlResult.c74object.misc, 'entry')) {
				if (xmlResult.c74object.misc.entry.maxattr_name === 'Keywords') {
					keywordData = xmlResult.c74object.misc.entry.description['#text'];
				}
				if (keywordData.length > 0) {
					qlookup[objectName].keywords = keywordData.split(',');
				}
				qlookup[objectName].keywords = qlookup[objectName].keywords.map((item: string) => item.trim());
			}
		}

		const seeAlsoArray = [];
		if (Object.hasOwn(xmlResult.c74object, 'seealsolist')) {
			if (Array.isArray(xmlResult.c74object.seealsolist.seealso)) {
				for (const see of xmlResult.c74object.seealsolist.seealso) {
					seeAlsoArray.push(see.maxattr_name);
				}
			} else {
				if (xmlResult.c74object.seealsolist.seealso != null) {
					seeAlsoArray.push(xmlResult.c74object.seealsolist.seealso.maxattr_name);
				}
			}

			qlookup[objectName].seealso = seeAlsoArray;
		}
	}

	const writeDir = `${cwd()}/${config.interfaceFiles.qlookup.output}`;
	// fs.mkdirSync(writeDir, { recursive: true });
	fs.writeFileSync(`${writeDir}/evieve-obj-qlookup.json`, JSON.stringify(qlookup, null, 4));
	void max.post('Wrote qlookup for evieve', max.POST_LEVELS.INFO);
}

function createMaxDbFle()
{
	const autoFixed: string[] = ['/docs/refpages/evieve-genexpr/genexpr-data', '/examples/evi_doc', '/javascript/node', '/misc/peter'];
	let evi_maxdb: any = {};

	const absRef = maxpat.evi_abstractions;
	const defsRef = gendsp.evi_gendsp;
	const extsRef = mxo.evi_externals;
	const maxdbDir = `${cwd()}/${config.interfaceFiles.maxdb.output}`;

	const absNames = Object.keys(absRef);
	const defsNames = Object.keys(defsRef);
	const extsNames = Object.keys(extsRef);
	let browserArray: string[] = [];
	let autoArray: string[] = [];
	let genObjArray: string[] = [];

	for (const abs of absNames) {
		// @ts-expect-error
		const absDict = absRef[abs];
		if (!absDict.db.browser && abs !== "_dummy") {
			browserArray.push(abs);
		}
		if (!absDict.db.auto && abs !== "_dummy") {
			autoArray.push(abs);
		}
	}

	for (const def of defsNames) {
		// @ts-expect-error
		const defDict = defsRef[def];
		if (!defDict.db.browser && def !== "_dummy") {
			browserArray.push(def);
		}
		if (!defDict.db.auto && def !== "_dummy") {
			autoArray.push(def);
		}
		if (defDict.ref.gen) {
			const defName = def.replace('.gendsp', '');
			genObjArray.push(defName);
		}
	}

	for (const ext of extsNames) {
		// @ts-expect-error
		const extDict = extsRef[ext];
		if (!extDict.db.browser && ext !== "_dummy") {
			browserArray.push(ext);
		}
		if (!extDict.db.auto && ext !== "_dummy") {
			autoArray.push(ext);
		}
	}

	evi_maxdb.auto = autoFixed;
	evi_maxdb.browser = browserArray;
	evi_maxdb.gen = genObjArray;
	renderFromTemplate('../templates/maxdb.handlebars', evi_maxdb, `${maxdbDir}/max.db.json`);
	// let evi_maxdb_autos: any = {};
	// evi_maxdb_autos.browser = browserArray;
	// evi_maxdb_autos.auto = autoArray;
	// evi_maxdb_autos.gen = genObjArray;
	// fs.writeFileSync(`${maxdbDir}/pete.check.json`, JSON.stringify(evi_maxdb_autos, null, 4));
}

// --------------------------------------------- //

// NOT USED
function createHelpFilesBasic(force = false)
{
	const eviHelpStarter = 'evi.helpstarter';
	const writeDir = config.helpFiles.externals.output;
	const externalsConfig = mxo.evi_externals;
	const abstractionsConfig = maxpat.evi_abstractions;
	const configInputMerge = Object.assign(externalsConfig, abstractionsConfig);
	const forHelpfilesArray = Object.keys(externalsConfig);
	for (const object of forHelpfilesArray) {
		// @ts-expect-error
		const thisObject = configInputMerge[object];
		if (thisObject.object) {
			if (thisObject.helpfile.generate) {
				const writePath = `${writeDir}/${object}.maxhelp`;

				if (!fs.existsSync(writePath) || force) {
					renderFromTemplate(
					'../templates/evi.maxhelp.handlebars',
					{
						evihelpstarter: eviHelpStarter,
						eviobject: object,
						opt0: -1,
						opt1: 0,
						opt2: 0,
						opt3: 0,
						opt4: 0,
						opt5: 'none'
					},
					writePath
					);
				} else {
					void max.post(`not overwriting as ${object}.maxhelp already exists!`);
				}

			} else {
				void max.post(`not creating helpfile for ${object} as no generation requested!`);
			}
		}

	}
}

function createHelpFilesExternals(force = false)
{
	const eviType: number = 0;	// 0 = external, 1 = gen, 2 = abstraction
	const eviHelpStarter = 'evi.helpstarter';
	const writeDir = config.helpFiles.externals.output;
	const externalsConfig = mxo.evi_externals;
	const forHelpfilesArray = Object.keys(externalsConfig);
	for (const object of forHelpfilesArray) {
		// @ts-expect-error
		const thisObject = externalsConfig[object];
		if (thisObject.object) {
			if (thisObject.helpfile.generate) {
				const writePath = `${writeDir}/${object}.maxhelp`;

				const eviOption1: number = (thisObject.helpfile.mctab) ? 1 : 0;
				const eviOption2: number = (thisObject.helpfile.mcstab) ? 1 : 0;
				const eviOption3: number = (thisObject.helpfile.gentab) ? 1 : 0;
				const eviOption4: number = (thisObject.helpfile.genexprtab) ? 1 : 0;
				let eviOption5: string = thisObject.helpfile.areas[0];
				if (eviOption5 == undefined || eviOption5 == null) {
					eviOption5 = 'none';
				}

				if (!fs.existsSync(writePath) || force) {
					renderFromTemplate(
					'../templates/evi.maxhelp.handlebars',
					{
						evihelpstarter: eviHelpStarter,
						eviobject: object,
						opt0: eviType,
						opt1: eviOption1,
						opt2: eviOption2,
						opt3: eviOption3,
						opt4: eviOption4,
						opt5: eviOption5
					},
					writePath
					);
				} else {
					void max.post(`not overwriting as ${object}.maxhelp already exists!`);
				}

			} else {
				void max.post(`not creating helpfile for ${object} as no generation requested!`);
			}
		}

	}
}

function createHelpFilesAbstractions(force = false)
{
	const eviType: number = 2;	// 0 = external, 1 = gen, 2 = abstraction
	const eviHelpStarter = 'evi.helpstarter';
	const writeDir = config.helpFiles.abstractions.output;
	const abstractionsConfig = maxpat.evi_abstractions;
	const forHelpfilesArray = Object.keys(abstractionsConfig);
	for (const object of forHelpfilesArray) {
		// @ts-expect-error
		const thisObject = abstractionsConfig[object];
		if (thisObject.object) {
			if (thisObject.helpfile.generate) {
				const writePath = `${writeDir}/${object}.maxhelp`;

				const eviOption1: number = (thisObject.helpfile.mctab) ? 1 : 0;
				const eviOption2: number = (thisObject.helpfile.mcstab) ? 1 : 0;
				const eviOption3: number = (thisObject.helpfile.gentab) ? 1 : 0;
				const eviOption4: number = (thisObject.helpfile.genexprtab) ? 1 : 0;
				let eviOption5: string = thisObject.helpfile.areas[0];
				if (eviOption5 == undefined || eviOption5 == null) {
					eviOption5 = 'none';
				}

				if (!fs.existsSync(writePath) || force) {
					renderFromTemplate(
					'../templates/evi.maxhelp.handlebars',
					{
						evihelpstarter: eviHelpStarter,
						eviobject: object,
						opt0: eviType,
						opt1: eviOption1,
						opt2: eviOption2,
						opt3: eviOption3,
						opt4: eviOption4,
						opt5: eviOption5
					},
					writePath
					);
				} else {
					void max.post(`not overwriting as ${object}.maxhelp already exists!`);
				}

			} else {
				void max.post(`not creating helpfile for ${object} as no generation requested!`);
			}
		}

	}
}

function createHelpFilesDefines(force = false)
{
	const eviType: number = 1;	// 0 = external, 1 = gen, 2 = abstraction
	const eviHelpStarter = 'evi.helpstarter';
	const writeDir = config.helpFiles.defines.output;
	const definesConfig = gendsp.evi_gendsp;
	const forHelpfilesArray = Object.keys(definesConfig);
	for (const object of forHelpfilesArray) {
		// @ts-expect-error
		const thisObject = definesConfig[object];
		if (thisObject.define.object) {
			if (thisObject.helpfile.msp) {
				const thisObjectName = thisObject.define.msp;
				const writePath = `${writeDir}/${thisObjectName}.maxhelp`;

				const eviOption1: number = (thisObject.define.mcwrapper) ? 1 : 0;
				const eviOption2: number = 0;
				const eviOption3: number = (thisObject.helpfile.gentab) ? 1 : 0;
				const eviOption4: number = (thisObject.helpfile.genexprtab) ? 1 : 0;
				let eviOption5: string = thisObject.helpfile.areas[0];
				if (eviOption5 == undefined || eviOption5 == null) {
					eviOption5 = 'none';
				}

				if (!fs.existsSync(writePath) || force) {
					renderFromTemplate(
					'../templates/evi.maxhelp.handlebars',
					{
						evihelpstarter: eviHelpStarter,
						eviobject: thisObjectName,
						opt0: eviType,
						opt1: eviOption1,
						opt2: eviOption2,
						opt3: eviOption3,
						opt4: eviOption4,
						opt5: eviOption5
					},
					writePath
					);
				} else {
					void max.post(`not overwriting as ${thisObjectName}.maxhelp already exists!`);
				}

			} else {
				void max.post(`not creating helpfile for ${object} as no generation requested!`);
			}
		}

	}
}

// --------------------------------------------- //

// 'codeboxesRefsPath' contains code extracted from .gendsp abstraction embedded codeboxes
// during 'parseGendspsLoop()'
// called from Max {make_gens_genexpr_xml_configs}
async function parseGendspsCodeboxes()
{
	const gendspsRefsPath = `${cwd()}/${config.referenceFiles.genDsp.config}`; // !!
	let fullRefsNames = getFileNamesFromPath(gendspsRefsPath, 'json');
	const IGNORE = /_xml_gendsp_template.json/;
	fullRefsNames = fullRefsNames.filter((str) => !IGNORE.test(str));
	const codeboxesRefsPath = `${gendspsRefsPath}/codeboxes`;
	const fullCodeboxesNames = getFileNamesFromPath(codeboxesRefsPath, 'genexpr');

	const attributesConfig: any = {
		"name": "",
		"type": "",
		"digest": "",
		"description": "",
		"default": {
			"type": "float",
			"value": 0
		}
	};

	for await (const refJson of fullRefsNames) {
		const refJsonFullRWpath = `${gendspsRefsPath}/${refJson}`;
		const chichiForPrinting = refJson.replace('_ref.json', '.gendsp');
		const derivedCodeboxName = refJson.replace('_ref.json', '_codebox.genexpr');
		if (fullCodeboxesNames.includes(derivedCodeboxName)) {
			const thisConfigJson = fs.readFileSync(refJsonFullRWpath, 'utf8');
			const thisConfigObject = JSON.parse(thisConfigJson);
			// const thisConfigGenExpr = fs.readFileSync(`${codeboxesRefsPath}/${derivedCodeboxName}`, 'utf8');
			// const pre_ast = PEGparser.parse(thisConfigGenExpr);
			// void max.post(`parser test for ${refJson}: ${JSON.stringify(pre_ast)}`);

			let FOUND_PARAM: boolean = false;

			const rlInterface = readline.createInterface({
				input: fs.createReadStream(`${codeboxesRefsPath}/${derivedCodeboxName}`),
				crlfDelay: Infinity
			});
			// this will only work for Pete's pedantic style of GenExpr coding :-(
			rlInterface.on('line', (line) => {
				if (!(/^\s/.test(line))) {
					if (!(line.startsWith('//')) && !(line.startsWith('/*'))) {
						const line_trim = line.trim();
						let line_candidate = line_trim;
						if (line_trim.includes('//')) {
							line_candidate = line_trim.split('//')[0];
						}
						if (line_trim.includes('/*')) {
							line_candidate = line_trim.split('/*')[0];
						}

						if (line_candidate.startsWith('require')) {
							const line_tokens = line_candidate.split('\"');
							let requireDecl = line_tokens[1];
							// if (!requireDecl.endsWith('.genexpr')) {
							// 	requireDecl = `${requireDecl}.genexpr`; // because pete has forgotten sometimes
							// }
							// no, bloody xml rendering requires no extension :-(
							const requNoExt = requireDecl.replace('.genexpr', '');

							thisConfigObject.includes.push(requNoExt);

							// void max.post(`found a require in ${chichiForPrinting}: ${requireDecl}`);

						// } else if (line_candidate.startsWith('History')) {
						} else if (line_candidate.startsWith('Param')) {
							if (!FOUND_PARAM) {
								thisConfigObject.attributes = thisConfigObject.attributes.filter((entry: { name: string; }) => entry.name !== "");
							}
							const line_tokens = line_candidate.split('(');
							const paramName = line_tokens[0].replace('Param', '').trimStart();
							const paramData = line_tokens[1].split(',');
							const paramDefault = paramData[0].replace(')', '').replaceAll(',', '').replaceAll(';', '');
							let paramMin = "0";
							let HAS_MIN = false;
							let paramMax = "0";
							let HAS_MAX = false;
							for (let i = 0; i < paramData.length; i++) {
								const testParamData = paramData[i].trim();
								if (testParamData.startsWith("min")) {
									paramMin = paramData[i].split('=')[1].split(')')[0].replaceAll(',', '').replaceAll(';', '');
									HAS_MIN = true;
								} else if (testParamData.startsWith("max")) {
									paramMax = paramData[i].split('=')[1].split(')')[0].replaceAll(',', '').replaceAll(';', '');
									HAS_MAX = true;
								}
							}

							let thisAttr: any = JSON.parse(JSON.stringify(attributesConfig));
							thisAttr.name = paramName;
							const type = inferTypeFromString(paramDefault);
							thisAttr.type = type;
							thisAttr.default.type = type;
							thisAttr.default.value = paramDefault;
							if (HAS_MIN && !HAS_MAX) {
								thisAttr.digest = `@min ${paramMin}`;
							} else if (!HAS_MIN && HAS_MAX) {
								thisAttr.digest = `@max ${paramMax}`;
							} else if (HAS_MIN && HAS_MAX) {
								thisAttr.digest = `@min ${paramMin}, @max ${paramMax}`;
							}
							thisConfigObject.attributes.push(thisAttr);

							FOUND_PARAM = true;
							// void max.post(`found a param in ${chichiForPrinting}: ${JSON.stringify(thisAttr)}`);
						}
					}
				}
			});

			rlInterface.on('close', () => {

				// void max.post(`this END config object is: ${JSON.stringify(thisConfigObject)}`);

				thisConfigObject.attributes = thinUniqueArrayByKey(thisConfigObject.attributes, "name");
				thisConfigObject.attributes.sort((a: { name: string; }, b: { name: string; }) => {
					return a.name >= b.name ? 1 : -1;
				});

				thisConfigObject.includes = [...new Set(thisConfigObject.includes)];
				// if (thisConfigObject.includes.length) {
				// 	const includesString = thisConfigObject.includes.join(', ');
				// 	thisConfigObject.object.description = `[${thisConfigObject.object.name}.gendsp] requires: "${includesString}"`;
				// }

				fs.writeFileSync(refJsonFullRWpath, JSON.stringify(thisConfigObject, null, 4));

			});
		}
	}
}

async function parseGendspsData()
{
	const gendspsFolder = `${cwd()}/${config.referenceFiles.genDsp.input}`;
	const fullGendspsPaths = getFilePathsFromPathRecursive(gendspsFolder, 'gendsp');
	const gendspsRefsPath = `${cwd()}/${config.referenceFiles.genDsp.config}`; // !! ('genDsp')
	const fullRefsNames = getFileNamesFromPath(gendspsRefsPath, 'json');

	for await (const gendspPath of fullGendspsPaths) {
		const gendspName = path.basename(gendspPath, '.gendsp');
		const potentialRefName = `${gendspName}_ref.json`;
		if (fullRefsNames.includes(potentialRefName)) {
			const gendspDirName = path.dirname(gendspPath);
			const thisConfigFullPath = `${gendspsRefsPath}/${potentialRefName}`;
			await parseGendspsLoop(gendspDirName, gendspName, thisConfigFullPath);
		} else {
			void max.post(`Skipping ${gendspName}.gendsp because it has been configured with no ref page generation!`);
		}
	}
}

async function parseGendspsLoop(gendspPath: string, gendspName: string, thisConfigFullPath: string)
{
	const fullGendspPath = `${gendspPath}/${gendspName}.gendsp`;
    const gendspRaw = fs.readFileSync(fullGendspPath, 'utf8'); // .gendsp is read only in this logic
    const gendspJson = JSON.parse(gendspRaw);

	const thisConfigJson = fs.readFileSync(thisConfigFullPath, 'utf8');
    const thisConfigObject = JSON.parse(thisConfigJson);

	const NEW_OBJ = "newobj";
	const GEN_INLET = "in "; // note extra space...
	const GEN_OUTLET = "out ";
	const inoutletsConfig: any = {
		"id": 0,
		"name": "",
		"type": "float",
		"optional": 1,
		"digest": ""
	}
	const GEN_PARAM = "param";
	const GEN_CODE = "codebox";
	const attributesConfig: any = {
		"name": "",
		"type": "",
		"digest": "",
		"description": "",
		"default": {
			"type": "float",
			"value": 0
		}
	};

	// if we are editing a brand new template, clear the template json
	// i know, this is very weak code, but .gendsp will never have an id/in/out = 0 or name ""
	thisConfigObject.inlets = thisConfigObject.inlets.filter((entry: { id: number; }) => entry.id !== 0);
	thisConfigObject.outlets = thisConfigObject.outlets.filter((entry: { id: number; }) => entry.id !== 0);
	thisConfigObject.attributes = thisConfigObject.attributes.filter((entry: { name: string; }) => entry.name !== "");

	for await (const object of gendspJson.patcher.boxes) {
		if (object.box.maxclass === NEW_OBJ) {
			let BOX_TEXT = object.box.text;
			const isInlet: boolean = BOX_TEXT.startsWith(GEN_INLET);
			const isOutlet: boolean = BOX_TEXT.startsWith(GEN_OUTLET);
			const isParam: boolean = BOX_TEXT.startsWith(GEN_PARAM);
			if (isInlet || isOutlet) {
				// parse it
				let thisIO: any = JSON.parse(JSON.stringify(inoutletsConfig));
				const IO_tokens = BOX_TEXT.split(' ');
				thisIO.id = parseInt(IO_tokens[1]);
				if (IO_tokens.length > 2) {
					if (IO_tokens[2].startsWith('(') && IO_tokens[2].endsWith(')')) {
						const type = IO_tokens[2].replace('(', '').replace(')', '');
						thisIO.type = type.includes("signal") ? "float" : type; // for gen~
						if (IO_tokens.length > 3) {
							thisIO.name = IO_tokens[3].toLowerCase().trim(); // weak
							if (IO_tokens.length > 4) {
								thisIO.digest = IO_tokens.slice(4).join(' ').trim();
							}
						}
					} else {
						thisIO.name = IO_tokens[2].toLowerCase().trim(); // weak
						if (IO_tokens.length > 3) {
							thisIO.digest = IO_tokens.slice(3).join(' ').trim();
						}
					}
				}
				// push it
				if (isInlet) {
					thisConfigObject.inlets.push(thisIO);
				} else if (isOutlet) {
					thisConfigObject.outlets.push(thisIO);
				}
			} else if (isParam) {
				// this run is only for patched gen~ objects, we do parsing of GenExpr code later
				let thisAttr: any = JSON.parse(JSON.stringify(attributesConfig));
				const ATTR_tokens = BOX_TEXT.split(' ');
				thisAttr.name = ATTR_tokens[1];
				let remainder: string[] = [];
				let NO_TYPE: boolean = false;
				if (!ATTR_tokens[2].startsWith('@')) {
					thisAttr.default.value = ATTR_tokens[2];
					thisAttr.type = inferTypeFromString(ATTR_tokens[2]);
					remainder = ATTR_tokens.slice(3);
					NO_TYPE = false;
				} else {
					NO_TYPE = true;
					remainder = ATTR_tokens.slice(2);
				}
				if (remainder.length) {
					for (let i = 0; i < remainder.length; i++) {
						if (remainder[i].startsWith('@')) {
							const defKey = remainder[i].replace('@', '');
							const defValS = remainder[i + 1];
							const defType = inferTypeFromString(defValS);
							if (NO_TYPE) {
								thisAttr.type = defType;
							}
							const defVal = (defType === "int") ? parseInt(defValS) : parseFloat(defValS);
							if (defKey === "default") {
								thisAttr.default.value = defVal;
							} else {
								thisAttr.default[defKey] = defVal;
							}
						}
					}
				}
				thisConfigObject.attributes.push(thisAttr);
			}
		}
	}

	// keeps most recent
	thisConfigObject.inlets = thinUniqueArrayByKey(thisConfigObject.inlets, "id");
	thisConfigObject.outlets = thinUniqueArrayByKey(thisConfigObject.outlets, "id");

	thisConfigObject.inlets.sort((a: { id: number; }, b: { id: number; }) => {
		return a.id >= b.id ? 1 : -1;
	});
	thisConfigObject.outlets.sort((a: { id: number; }, b: { id: number; }) => {
		return a.id >= b.id ? 1 : -1;
	});

	const inletsArray: string[] = [];
	for (const inlet of thisConfigObject.inlets) {
		inletsArray.push(inlet.name);
	}
	thisConfigObject.constructor.inlets = inletsArray.join(', '); // cop out, but easier

	// const Require: RegExp = /(?:^|\W)require(?:$|\W)/;
	// const History: RegExp = /(?:^|\W)history(?:$|\W)/;
	// const Param: RegExp = /(?:^|\W)param(?:$|\W)/;
	// TODO (& use pegjs ?)
	for await (const object of gendspJson.patcher.boxes) {
		if (object.box.maxclass === GEN_CODE) {
			let GenExprCode = object.box.code;
			// void max.post(GenExprCode);
			const pathForGE = path.dirname(thisConfigFullPath);
			const nameForGE = `${gendspName}_codebox.genexpr`;
			fs.writeFileSync(`${pathForGE}/codeboxes/${nameForGE}`, GenExprCode);
			// const pre_ast = PEGparser.parse(GenExprCode);
			// void max.post(`parser test for ${gendspName}: ${JSON.stringify(pre_ast)}`);
		}
	}

	// keeps most recent
	thisConfigObject.attributes = thinUniqueArrayByKey(thisConfigObject.attributes, "name");

	thisConfigObject.attributes.sort((a: { name: string; }, b: { name: string; }) => {
		return a.name >= b.name ? 1 : -1;
	});

	fs.writeFileSync(thisConfigFullPath, JSON.stringify(thisConfigObject, null, 4));
}

// --------------------------------------------- //

// 'codeboxesRefsPath' contains code extracted from gen~ patcher embedded codeboxes
// during 'parseDefinesGendspsLoop()'
// called from Max by: {make_defs_genexpr_xml_configs}
async function parseDefinesCodeboxes()
{
	const definesRefsPath = `${cwd()}/${config.referenceFiles.defines.config}`;
	let fullRefsNames = getFileNamesFromPath(definesRefsPath, 'json');
	const IGNORE = /_xml_define_template.json/;
	fullRefsNames = fullRefsNames.filter((str) => !IGNORE.test(str));
	const codeboxesRefsPath = `${definesRefsPath}/codeboxes`;
	const fullCodeboxesNames = getFileNamesFromPath(codeboxesRefsPath, 'genexpr');

	const attributesConfig: any = {
		"name": "",
		"get": 1,
		"type": "",
		"digest": "",
		"description": "",
		"default": {
			"min": 0,
			"max": 1,
			"value": 0
		}
	};
	// this is bad to have this data here
	const messageHistoryDigest = "Top level gen~ [history] / History() declarations can be reset by messages to the object";
	const messagesConfig: any = {
		"name": "",
		"arg": [
			{
				"name": "",
				"type": "",
				"units": "",
				"optional": 1
			}
		],
		"digest": "",
		"description": ""
	};
	const msgArgsConfig: any = {
		"name": "",
		"type": "",
		"units": "",
		"optional": 1
	}

	for await (const refJson of fullRefsNames) {
		const refJsonFullRWpath = `${definesRefsPath}/${refJson}`;
		// const chichiForPrinting = refJson.replace('_ref.json', '.gendsp');
		const derivedCodeboxName = refJson.replace('_ref.json', '_codebox.genexpr');
		if (fullCodeboxesNames.includes(derivedCodeboxName)) {
			const thisConfigJson = fs.readFileSync(refJsonFullRWpath, 'utf8');
			const thisConfigObject = JSON.parse(thisConfigJson);
			// const thisConfigGenExpr = fs.readFileSync(`${codeboxesRefsPath}/${derivedCodeboxName}`, 'utf8');
			// const pre_ast = PEGparser.parse(thisConfigGenExpr);
			// void max.post(`parser test for ${refJson}: ${JSON.stringify(pre_ast)}`);

			let FOUND_HIST: boolean = false;
			let FOUND_PARAM: boolean = false;

			const rlInterface = readline.createInterface({
				input: fs.createReadStream(`${codeboxesRefsPath}/${derivedCodeboxName}`),
				crlfDelay: Infinity
			});
			// this will only work for Pete's pedantic style of GenExpr coding :-(
			rlInterface.on('line', (line) => {
				if (!(/^\s/.test(line))) {
					if (!(line.startsWith('//')) && !(line.startsWith('/*'))) {
						const line_trim = line.trim();
						let line_candidate = line_trim;
						if (line_trim.includes('//')) {
							line_candidate = line_trim.split('//')[0];
						}
						if (line_trim.includes('/*')) {
							line_candidate = line_trim.split('/*')[0];
						}

						if (line_candidate.startsWith('require')) {
							const line_tokens = line_candidate.split('\"');
							let requireDecl = line_tokens[1];
							if (!requireDecl.endsWith('.genexpr')) {
								requireDecl = `${requireDecl}.genexpr`; // because pete has forgotten sometimes
							}

							thisConfigObject.includes.push(requireDecl);

							// void max.post(`found a require in ${chichiForPrinting}: ${requireDecl}`);

						} else if (line_candidate.startsWith('History')) {
							if (!FOUND_HIST) {
								// if new template
								thisConfigObject.messages = thisConfigObject.messages.filter((entry: { name: string; }) => entry.name !== "");
							}
							let objIndex: number = 0;
							let thisMessage: any;
							const isHistory = Object.values(thisConfigObject.messages).includes('history');

							if (isHistory) {
								// is edit of already present 'history' entry
								thisMessage = thisConfigObject.messages.find((obj: { name: string; }) => obj.name === 'history');
								objIndex = thisConfigObject.messages.indexOf(thisMessage);

								const line_sliced = line_candidate.replace('History', '').trimStart();
								const line_tokens = line_sliced.split(',');
								for (let i = 0; i < line_tokens.length; i++) {
									let thisArg: any = JSON.parse(JSON.stringify(msgArgsConfig));

									const historyDecl = line_tokens[i];
									const history_split = historyDecl.split('(');
									const histName = history_split[0].trim();
									const hist_token_val = history_split[1].trim();
									let histVal = "";
									if (hist_token_val.includes(')')) {
										histVal = hist_token_val.split(')')[0].replace(',', '').replace(';', '').trim();
									} else {
										histVal = hist_token_val.replace(')', '').replaceAll(',', '').replaceAll(';', '').trim();
									}
									thisArg.name = histName;
									const type = inferTypeFromString(histVal);
									thisArg.type = type;
									let units: string | number = "";
									if (type === "int") {
										units = parseInt(histVal);
									} else if (type === "float") {
										units = parseFloat(histVal);
									} else {
										units = histVal;
									}
									thisArg.units = `default: ${units}`;
									thisMessage.arg.push(thisArg);

									thisMessage.arg = thinUniqueArrayByKey(thisMessage.arg, "name");
									thisMessage.arg.sort((a: { name: string; }, b: { name: string; }) => {
										return a.name >= b.name ? 1 : -1;
									});
									// void max.post(`found a PRE history in ${chichiForPrinting}: ${JSON.stringify(thisArg)}`);
								}
								thisConfigObject.messages.fill(thisMessage, objIndex, objIndex);

							} else {
								// is new 'history' message type entry
								thisMessage = JSON.parse(JSON.stringify(messagesConfig));
								thisMessage.name = "history";
								// if new args template
								thisMessage.arg = thisMessage.arg.filter((entry: { name: string; }) => entry.name !== "");

								const line_sliced = line_candidate.replace('History', '').trimStart();
								const line_tokens = line_sliced.split(',');
								for (let i = 0; i < line_tokens.length; i++) {
									let thisArg: any = JSON.parse(JSON.stringify(msgArgsConfig));

									const historyDecl = line_tokens[i];
									const history_split = historyDecl.split('(');
									const histName = history_split[0].trim();
									const hist_token_val = history_split[1].trim();
									let histVal = "";
									if (hist_token_val.includes(')')) {
										histVal = hist_token_val.split(')')[0].replace(',', '').replace(';', '').trim();
									} else {
										histVal = hist_token_val.replace(')', '').replaceAll(',', '').replaceAll(';', '').trim();
									}
									thisArg.name = histName;
									const type = inferTypeFromString(histVal);
									thisArg.type = type;
									let units: string | number = "";
									if (type === "int") {
										units = parseInt(histVal);
									} else if (type === "float") {
										units = parseFloat(histVal);
									} else {
										units = histVal;
									}
									thisArg.units = `default: ${units}`;
									thisMessage.arg.push(thisArg);

									thisMessage.arg = thinUniqueArrayByKey(thisMessage.arg, "name");
									thisMessage.arg.sort((a: { name: string; }, b: { name: string; }) => {
										return a.name >= b.name ? 1 : -1;
									});
									// void max.post(`found a NEW history in ${chichiForPrinting}: ${JSON.stringify(thisArg)}`);
								}

								thisMessage.digest = messageHistoryDigest;
								thisConfigObject.messages.push(thisMessage);

							}
							FOUND_HIST = true;
							// void max.post(`filled a message in ${chichiForPrinting}: ${JSON.stringify(thisMessage)}`);

						} else if (line_candidate.startsWith('Param')) {
							if (!FOUND_PARAM) {
								thisConfigObject.attributes = thisConfigObject.attributes.filter((entry: { name: string; }) => entry.name !== "");
							}
							const line_tokens = line_candidate.split('(');
							const paramName = line_tokens[0].replace('Param', '').trimStart();
							const paramData = line_tokens[1].split(',');
							const paramDefault = paramData[0].replace(')', '').replaceAll(',', '').replaceAll(';', '');
							let paramMin = "0";
							let paramMax = "0";
							for (let i = 0; i < paramData.length; i++) {
								const testParamData = paramData[i].trim();
								if (testParamData.startsWith("min")) {
									paramMin = paramData[i].split('=')[1].split(')')[0].replaceAll(',', '').replaceAll(';', '');
								} else if (testParamData.startsWith("max")) {
									paramMax = paramData[i].split('=')[1].split(')')[0].replaceAll(',', '').replaceAll(';', '');
								}
							}

							let thisAttr: any = JSON.parse(JSON.stringify(attributesConfig));
							thisAttr.name = paramName;
							thisAttr.type = inferTypeFromString(paramDefault);
							thisAttr.default.value = paramDefault;
							thisAttr.default.min = paramMin;
							thisAttr.default.max = paramMax;
							thisConfigObject.attributes.push(thisAttr);

							FOUND_PARAM = true;
							// void max.post(`found a param in ${chichiForPrinting}: ${JSON.stringify(thisAttr)}`);
						}
					}
				}
			});

			rlInterface.on('close', () => {

				// void max.post(`this END config object is: ${JSON.stringify(thisConfigObject)}`);

				thisConfigObject.messages = thinUniqueArrayByKey(thisConfigObject.messages, "name");
				thisConfigObject.messages.sort((a: { name: string; }, b: { name: string; }) => {
					return a.name >= b.name ? 1 : -1;
				});

				thisConfigObject.attributes = thinUniqueArrayByKey(thisConfigObject.attributes, "name");
				thisConfigObject.attributes.sort((a: { name: string; }, b: { name: string; }) => {
					return a.name >= b.name ? 1 : -1;
				});

				thisConfigObject.includes = [...new Set(thisConfigObject.includes)];

				fs.writeFileSync(refJsonFullRWpath, JSON.stringify(thisConfigObject, null, 4));

			});
		}
	}
}

async function parseDefinesData()
{
	const gendspsFolder = `${cwd()}/${config.referenceFiles.genDsp.input}`;
	const fullGendspsPaths = getFilePathsFromPathRecursive(gendspsFolder, 'gendsp');
	const definesRefsPath = `${cwd()}/${config.referenceFiles.defines.config}`;
	const fullRefsNames = getFileNamesFromPath(definesRefsPath, 'json');

	for await (const gendspPath of fullGendspsPaths) {
		const gendspName = path.basename(gendspPath, '.gendsp');
		const potentialRefName = `${gendspName}_ref.json`;
		if (fullRefsNames.includes(potentialRefName)) {
			const gendspDirName = path.dirname(gendspPath);
			const thisConfigFullPath = `${definesRefsPath}/${potentialRefName}`;
			await parseDefinesGendspsLoop(gendspDirName, gendspName, thisConfigFullPath);
		// } else {
		// 	void max.post(`Skipping ${gendspName}.gendsp because it has been configured with no ref page generation!`);
		}
	}
}

async function parseDefinesGendspsLoop(gendspPath: string, gendspName: string, thisConfigFullPath: string)
{
	const fullGendspPath = `${gendspPath}/${gendspName}.gendsp`;
    const gendspRaw = fs.readFileSync(fullGendspPath, 'utf8'); // .gendsp is read only in this logic
    const gendspJson = JSON.parse(gendspRaw);

	const thisConfigJson = fs.readFileSync(thisConfigFullPath, 'utf8');
    const thisConfigObject = JSON.parse(thisConfigJson);

	const NEW_OBJ = "newobj";
	const GEN_INLET = "in "; // note extra space...
	const GEN_OUTLET = "out ";
	const inoutletsConfig: any = {
		"id": 0,
		"type": "",
		"digest": "",
		"description": ""
	}
	const GEN_PARAM = "param";
	const GEN_HIST = "history";
	const GEN_CODE = "codebox";
	const attributesConfig: any = {
		"name": "",
		"get": 1,
		"type": "",
		"digest": "",
		"description": "",
		"default": {
			"min": 0,
			"max": 1,
			"value": 0
		}
	};
	const messageHistoryDigest = "Top level gen~ [history] / History() declarations can be reset by messages to the object";
	const messagesConfig: any = {
		"name": "",
		"arg": [
			{
				"name": "",
				"type": "",
				"units": "",
				"optional": 1
			}
		],
		"digest": "",
		"description": ""
	};
	const msgArgsConfig: any = {
		"name": "",
		"type": "",
		"units": "",
		"optional": 1
	}
/*	const GEN_PARAM_GE = "Param";
	const GEN_HIST_GE = "History";
	const GEN_REQUIRE_GE = "require";
*/
	// if we are editing a brand new template, clear the template json
	// i know, this is very weak code, but .gendsp will never have an id/in/out = 0 or name ""
	thisConfigObject.inlets = thisConfigObject.inlets.filter((entry: { id: number; }) => entry.id !== 0);
	thisConfigObject.outlets = thisConfigObject.outlets.filter((entry: { id: number; }) => entry.id !== 0);
	thisConfigObject.attributes = thisConfigObject.attributes.filter((entry: { name: string; }) => entry.name !== "");
	thisConfigObject.messages = thisConfigObject.messages.filter((entry: { name: string; }) => entry.name !== "");

	const currentMessagesNames: string[] = [];
	for (const entry of thisConfigObject.messages) {
		currentMessagesNames.push(entry.name);
	}

	for await (const object of gendspJson.patcher.boxes) {
		if (object.box.maxclass === NEW_OBJ) {
			let BOX_TEXT = object.box.text;
			const isInlet: boolean = BOX_TEXT.startsWith(GEN_INLET);
			const isOutlet: boolean = BOX_TEXT.startsWith(GEN_OUTLET);
			const isParam: boolean = BOX_TEXT.startsWith(GEN_PARAM);
			const isHistory: boolean = BOX_TEXT.startsWith(GEN_HIST);
			if (isInlet || isOutlet) {
				// parse it
				let thisIO: any = JSON.parse(JSON.stringify(inoutletsConfig));
				const IO_tokens = BOX_TEXT.split(' ');
				thisIO.id = parseInt(IO_tokens[1]);
				if (IO_tokens.length > 2) {
					if (IO_tokens[2].startsWith('(') && IO_tokens[2].endsWith(')')) {
						thisIO.type = IO_tokens[2].replace('(', '').replace(')', '');
						if (IO_tokens.length > 3) {
							thisIO.digest = IO_tokens.slice(3).join(' ').trim();
						}
					} else {
						thisIO.digest = IO_tokens.slice(2).join(' ').trim();
					}
				}
				// push it
				if (isInlet) {
					thisConfigObject.inlets.push(thisIO);
				} else if (isOutlet) {
					thisConfigObject.outlets.push(thisIO);
				}
			} else if (isParam) {
				let thisAttr: any = JSON.parse(JSON.stringify(attributesConfig));
				const ATTR_tokens = BOX_TEXT.split(' ');
				thisAttr.name = ATTR_tokens[1];
				let remainder: string[] = [];
				let NO_TYPE: boolean = false;
				if (!ATTR_tokens[2].startsWith('@')) {
					thisAttr.default.value = ATTR_tokens[2];
					thisAttr.type = inferTypeFromString(ATTR_tokens[2]);
					remainder = ATTR_tokens.slice(3);
					NO_TYPE = false;
				} else {
					NO_TYPE = true;
					remainder = ATTR_tokens.slice(2);
				}
				if (remainder.length) {
					for (let i = 0; i < remainder.length; i++) {
						if (remainder[i].startsWith('@')) {
							const defKey = remainder[i].replace('@', '');
							const defValS = remainder[i + 1];
							const defType = inferTypeFromString(defValS);
							if (NO_TYPE) {
								thisAttr.type = defType;
							}
							const defVal = (defType === "int") ? parseInt(defValS) : parseFloat(defValS);
							if (defKey === "default") {
								thisAttr.default.value = defVal;
							} else {
								thisAttr.default[defKey] = defVal;
							}
						}
					}
				}
				thisConfigObject.attributes.push(thisAttr);
			} else if (isHistory) {
				let objIndex: number = 0;
				let thisMessage: any;
				// we morph named history operators into "messages" entries (so long as they are top level)
				const MSG_tokens = BOX_TEXT.split(' ');
				// only if it is a human named history operator, parse it
				if (MSG_tokens.length > 1) {
					if (currentMessagesNames.includes('history')) {
						// is edit of already present 'history' entry
						thisMessage = thisConfigObject.messages.find((obj: { name: string; }) => obj.name === 'history');
						objIndex = thisConfigObject.messages.indexOf(thisMessage);

						let thisArg: any = JSON.parse(JSON.stringify(msgArgsConfig));
						thisArg.name = MSG_tokens[1];
						if (MSG_tokens.length > 2) {
							const type = inferTypeFromString(MSG_tokens[2]);
							thisArg.type = type;
							let units: string | number = "";
							if (type === "int") {
								units = parseInt(MSG_tokens[2]);
							} else if (type === "float") {
								units = parseFloat(MSG_tokens[2]);
							} else {
								units = MSG_tokens[2];
							}
							thisArg.units = `default: ${units}`;
						}
						thisMessage.arg.push(thisArg);
						thisConfigObject.messages.fill(thisMessage, objIndex, objIndex);

					} else {
						// is new 'history' message type entry
						thisMessage = JSON.parse(JSON.stringify(messagesConfig));
						thisMessage.name = "history";
						thisMessage.arg = thisMessage.arg.filter((entry: { name: string; }) => entry.name !== "");

						let thisArg: any = JSON.parse(JSON.stringify(msgArgsConfig));
						thisArg.name = MSG_tokens[1];
						if (MSG_tokens.length > 2) {
							const type = inferTypeFromString(MSG_tokens[2]);
							thisArg.type = type;
							let units: string | number = "";
							if (type === "int") {
								units = parseInt(MSG_tokens[2]);
							} else if (type === "float") {
								units = parseFloat(MSG_tokens[2]);
							} else {
								units = MSG_tokens[2];
							}
							thisArg.units = `default: ${units}`;
						}
						thisMessage.arg.push(thisArg);
						thisMessage.digest = messageHistoryDigest;
						thisConfigObject.messages.push(thisMessage);
					}
				}
			}
		}
	}

	// keeps most recent
	thisConfigObject.inlets = thinUniqueArrayByKey(thisConfigObject.inlets, "id");
	thisConfigObject.outlets = thinUniqueArrayByKey(thisConfigObject.outlets, "id");

	thisConfigObject.inlets.sort((a: { id: number; }, b: { id: number; }) => {
		return a.id >= b.id ? 1 : -1;
	});
	thisConfigObject.outlets.sort((a: { id: number; }, b: { id: number; }) => {
		return a.id >= b.id ? 1 : -1;
	});

	// const Require: RegExp = /(?:^|\W)require(?:$|\W)/;
	// const History: RegExp = /(?:^|\W)history(?:$|\W)/;
	// const Param: RegExp = /(?:^|\W)param(?:$|\W)/;
	// TODO (& use pegjs ?)
	for await (const object of gendspJson.patcher.boxes) {
		if (object.box.maxclass === GEN_CODE) {
			let GenExprCode = object.box.code;
			// void max.post(GenExprCode);
			const pathForGE = path.dirname(thisConfigFullPath);
			const nameForGE = `${gendspName}_codebox.genexpr`;
			fs.writeFileSync(`${pathForGE}/codeboxes/${nameForGE}`, GenExprCode);
			// const pre_ast = PEGparser.parse(GenExprCode);
			// void max.post(`parser test for ${gendspName}: ${JSON.stringify(pre_ast)}`);
		}
	}

	// keeps most recent
	thisConfigObject.attributes = thinUniqueArrayByKey(thisConfigObject.attributes, "name");
	thisConfigObject.messages = thinUniqueArrayByKey(thisConfigObject.messages, "name");

	thisConfigObject.attributes.sort((a: { name: string; }, b: { name: string; }) => {
		return a.name >= b.name ? 1 : -1;
	});
	// thisConfigObject.messages.sort((a: { name: string; }, b: { name: string; }) => {
	// 	return a.name >= b.name ? 1 : -1;
	// });

	fs.writeFileSync(thisConfigFullPath, JSON.stringify(thisConfigObject, null, 4));
}

function thinUniqueArrayByKey(array: any, key: string) {
    return [...new Map(array.map((item: { [x: string]: any; }) => [item[key], item])).values()];
}

// --------------------------------------------- //

async function parseAbstractionsData()
{
	const patchersFolder = `${cwd()}/${config.referenceFiles.abstractions.input}`
	const fullPatcherPaths = getFilePathsFromPathRecursive(patchersFolder, 'maxpat');
	const maxpatRefsPath = `${cwd()}/${config.referenceFiles.abstractions.config}`;
	const fullRefsNames = getFileNamesFromPath(maxpatRefsPath, 'json');

	for await (const patchPath of fullPatcherPaths) {
		const patcherName = path.basename(patchPath, '.maxpat');
		const potentialRefName = `${patcherName}_ref.json`;
		if (fullRefsNames.includes(potentialRefName)) {
			const patcherDirName = path.dirname(patchPath);
			const thisConfigFullPath = `${maxpatRefsPath}/${potentialRefName}`;
			await parseAbstractionMaxpatLoop(patcherDirName, patcherName, thisConfigFullPath);
		// } else {
		// 	void max.post(`Skipping ${patcherName} because it has been configured with no ref page generation!`);
		}
	}
}

async function parseAbstractionMaxpatLoop(patcherPath: string, patcherName: string, thisConfigFullPath: string) {
	const fullPatcherPath = `${patcherPath}/${patcherName}.maxpat`;
    const maxpatRaw = fs.readFileSync(fullPatcherPath, 'utf8'); // patcher is read only in this logic
    const maxpatJson = JSON.parse(maxpatRaw);

	const thisConfigJson = fs.readFileSync(thisConfigFullPath, 'utf8');
    const thisConfigObject = JSON.parse(thisConfigJson);

	const NEW_OBJ = "newobj";
	const PATCHER_ARGS = "patcherargs";
	let MATCH_ARGS = false;
	const EVI_DOC = "evievedoc";
	const EVI_COMMENT = "comment";
	let MATCH_EVI = false;
	let argNum = 0;

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

	// if we are editing a brand new template, clear the template json
	// i know, this is very weak code, but default/name will never be empty if already parsed
	thisConfigObject.arguments = thisConfigObject.arguments.filter((entry: { default: string; }) => entry.default !== "");
	thisConfigObject.attributes = thisConfigObject.attributes.filter((entry: { name: string; }) => entry.name !== "");

	// we only need to look at top level for the [patcherargs] we are interested in
    for await (const object of maxpatJson.patcher.boxes) {
		if (object.box.maxclass === NEW_OBJ) {
			let BOX_TEXT = object.box.text;
			if (BOX_TEXT.startsWith(PATCHER_ARGS)) {
				// parse it
				let AT_PARSED: boolean = false;
				const BOX_tokens = BOX_TEXT.replace(PATCHER_ARGS, '').split(' ');
				for (let i = 0; i < BOX_tokens.length; i++) {
					// i know, this does not do attributes with multiple args
					if (BOX_tokens[i].startsWith('@')) {
						AT_PARSED = true;
						let thisAttr: any = JSON.parse(JSON.stringify(attributesConfig));
						thisAttr.name = BOX_tokens[i].replace('@', '');
						const thisValue = (BOX_tokens[i + 1].startsWith('@')) ? "" : BOX_tokens[i + 1];
						thisAttr.default.value = thisValue;
						thisAttr.type = inferTypeFromString(thisValue);
						thisConfigObject.attributes.push(thisAttr);
					} else {
						if ((AT_PARSED) || (i === BOX_tokens.length - 1)) {
							continue;
						} else {
							argNum += 1;
							let thisArgs: any = JSON.parse(JSON.stringify(argumentsConfig));
							thisArgs.type = inferTypeFromString(BOX_tokens[i]);
							thisArgs.default = BOX_tokens[i];
							// pete bug
							if (thisArgs.default === "") {
								argNum -= 1;
								thisArgs = {};
								continue;
							} else {
								thisArgs.digest = `arg#${argNum}: `;
								thisConfigObject.arguments.push(thisArgs);
							}
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

	// we only need to look at top level for the [comment]@varname"evievedoc" we are interested in
    for await (const object of maxpatJson.patcher.boxes) {
		if (object.box.varname === EVI_DOC && object.box.maxclass == EVI_COMMENT) {
			let BOX_TEXT = object.box.text;
			if (BOX_TEXT.startsWith(EVI_DOC)) {
				// parse it
				let ED_PARSED: boolean = false;
				const BOX_tokens = BOX_TEXT.replace(EVI_DOC, '').split(' ');
				for (let i = 0; i < BOX_tokens.length; i++) {
					// the [comment]@varname"evievedoc" feature support is very specific
					if (BOX_tokens[i].startsWith('@')) {
						ED_PARSED = true;
						let thisAttr: any = JSON.parse(JSON.stringify(attributesConfig));
						thisAttr.name = BOX_tokens[i].replace('@', '');
						const thisValue = (BOX_tokens[i + 1].startsWith('@')) ? "" : BOX_tokens[i + 1];
						thisAttr.default.value = thisValue;
						thisAttr.type = inferTypeFromString(thisValue);
						thisConfigObject.attributes.push(thisAttr);
					} else {
						if ((ED_PARSED) || (i === BOX_tokens.length - 1)) {
							continue;
						// actually we shouldn't support this as part of 'evievedoc'?
						} else {
							argNum += 1;
							let thisArgs: any = JSON.parse(JSON.stringify(argumentsConfig));
							thisArgs.type = inferTypeFromString(BOX_tokens[i]);
							thisArgs.default = BOX_tokens[i];
							// pete bug
							if (thisArgs.default === "") {
								argNum -= 1;
								thisArgs = {};
								continue;
							} else {
								thisArgs.digest = `arg#${argNum}: `;
								thisConfigObject.arguments.push(thisArgs);
							}
						}
					}
				}
				MATCH_EVI = true;
			}
		}
		if (MATCH_EVI) {
			break;	// only support once for [evievedoc] feature
		}
    }

	if (!MATCH_ARGS) { // do something if [patcherargs] not found?
		void max.post(`No [patcherargs] object found in ${patcherName}`);
	}
	if (MATCH_EVI) {
		void max.post(`Additional eveivedoc features have been parsed for ${patcherName}`);
	}
	if (MATCH_ARGS || MATCH_EVI) {
		thisConfigObject.attributes.sort((a: { name: string; }, b: { name: string; }) => {
			return a.name >= b.name ? 1 : -1;
		});
		thisConfigObject.arguments.sort((a: { digest: string; }, b: { digest: string; }) => {
			return a.digest >= b.digest ? 1 : -1;
		});
		// keeps most recent
		thisConfigObject.attributes = thinUniqueArrayByKey(thisConfigObject.attributes, "name");
		thisConfigObject.arguments = thinUniqueArrayByKey(thisConfigObject.arguments, "digest"); // !! "name" will not work !!
	}

	const IN_LET = "inlet";
	const OUT_LET = "outlet";
	const inoutletsConfig: any = {
		"id": 0,
		"type": "",
		"digest": "",
		"description": ""
	}

	// if we are editing a brand new template, clear the template json
	// i know, this is very weak code, but .maxpat will never have an id/index = 0
	thisConfigObject.inlets = thisConfigObject.inlets.filter((entry: { id: number; }) => entry.id !== 0);
	thisConfigObject.outlets = thisConfigObject.outlets.filter((entry: { id: number; }) => entry.id !== 0);

	// we only want to look at top level for the [inlet] & [outlet]s
    for await (const object of maxpatJson.patcher.boxes) {
		if (object.box.maxclass === IN_LET || object.box.maxclass === OUT_LET) {
			let thisIO: any = JSON.parse(JSON.stringify(inoutletsConfig));
			let IO_ASSIST = object.box.comment;
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

	thisConfigObject.inlets.sort((a: { id: number; }, b: { id: number; }) => {
		return a.id >= b.id ? 1 : -1;
	});
	thisConfigObject.outlets.sort((a: { id: number; }, b: { id: number; }) => {
		return a.id >= b.id ? 1 : -1;
	});

	// keeps most recent
	thisConfigObject.inlets = thinUniqueArrayByKey(thisConfigObject.inlets, "id");
	thisConfigObject.outlets = thinUniqueArrayByKey(thisConfigObject.outlets, "id");

	fs.writeFileSync(thisConfigFullPath, JSON.stringify(thisConfigObject, null, 4));
}

// really dumb and does not do lists of attrs
function inferTypeFromString(thisValue: string)
{
	// const isNumericFromString = (string: string) => /^[+-]?\d+(\.\d+)?$/.test(string);
	const isNumericFinite = (input: string | number) => Number.isFinite(+input);
	
	const floatsArray: string[] = ["degtorad", "radtodeg", "pi", "twopi", "halfpi", "invpi", "sqrt2", "sqrt1_2", "ln2", "ln10", "log10e", "log2e", "phi", "e"];
	const intsArray: string[] = ["samplerate", "vectorsize", "fftfullspect", "ffthop", "fftoffset", "fftsize", "voice", "elapsed"];

	let thisValueMaxType: string;
	if (isNumericFinite(thisValue)) {
		if (thisValue.includes('.')) {
			thisValueMaxType = "float";
		} else {
			thisValueMaxType = "int";
		}
	} else {
		if (floatsArray.includes(thisValue.toLowerCase())) {
			thisValueMaxType = "float";
		} else if (intsArray.includes(thisValue.toLowerCase())) {
			thisValueMaxType = "int";
		} else {
			thisValueMaxType = "symbol";
		}
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
		// const jsonFileName = maxpatName.replace('.maxpat', '_ref.json')
		const jsonFileName = `${maxpatName}_ref.json`;
        if (!refConfigs.includes(jsonFileName)) {	// maybe create if does not yet exist
			// @ts-expect-error
			const thisMaxpatConfig = parsedMaxpats[maxpatName];
			if (thisMaxpatConfig.ref) { // if ref page is requested in config
				const newTemplate = JSON.parse(JSON.stringify(templateObject));
				// newTemplate.object.name = maxpatName.replace('.maxpat', '');
				newTemplate.object.name = maxpatName;
				newTemplate.metadata.author = "Pete Dowling"; // fatPete

				fs.writeFileSync(`${maxpatRefsPath}/${jsonFileName}`, JSON.stringify(newTemplate, null, 4));
				// void max.post(`Creation of ${jsonFileName} success!`)
			}
		}
		else {
			void max.post(`Skipping ${jsonFileName} because it already exists!`);
		}
	}
}

async function createDefineRefJson(force = false, extractCodebox = false)
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
		// const jsonFileName = `${newDefineName}_ref.json`;
		// easier parsing _ref files later if named as gendsp, not as define :-(
		const jsonFileName = defineName.replace('.gendsp', '_ref.json');
        if (!refConfigs.includes(jsonFileName) || force) {	// maybe create if does not yet exist
			if (thisDefineConfig.define.object) {	// outer double check, might as well
				if (thisDefineConfig.ref.msp) { // if msp ref page is requested in config
					const newTemplate = JSON.parse(JSON.stringify(templateObject));
					newTemplate.object.name = newDefineName;
					// bloody xml shenanigans requires no ext :-(
					newTemplate.object.parent = defineName.replace('.gendsp', '');
					newTemplate.metadata.author = "Pete Dowling"; // fatPete

					fs.writeFileSync(`${defineRefsPath}/${jsonFileName}`, JSON.stringify(newTemplate, null, 4));
					// void max.post(`Creation of ${jsonFileName} success!`)
				}
			}
		}
		else {
			void max.post(`Skipping ${jsonFileName} because it already exists!`);
		}

		if (extractCodebox) {
			// pete is too stupid
			; // @see: 'parseDefinesGendspsLoop()'
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
		const newGendspName = gendspName.replace('.gendsp', '');
		const jsonFileName = `${newGendspName}_ref.json`;
        if (!refConfigs.includes(jsonFileName)) {	// maybe create if does not yet exist
			if (thisGendspConfig.ref.gen) { // if gen ref page is requested in config
				const newTemplate = JSON.parse(JSON.stringify(templateObject));
				newTemplate.object.name = newGendspName;
				if (thisGendspConfig.define.object) {
					newTemplate.object.child = thisGendspConfig.define.msp;
				}
				fs.writeFileSync(`${gendspRefsPath}/${jsonFileName}`, JSON.stringify(newTemplate, null, 4));
				// void max.post(`Creation of ${jsonFileName} success!`)
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
		const absName = abs.replace('.maxpat', '');
        if (!Object.hasOwn(currentMaxpats, absName)) {
        	newMaxpats[absName] = JSON.parse(JSON.stringify(abstractionsConfigTemplate)); // add new entry
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
	// let refEntries = gendsp;

	renderFromTemplate('../templates/defines.handlebars', gendsp, `${refDir}/evieve-defines.txt`);
}
/*
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
*/
function createMxoObjectmappings() {
	let refDir = `${cwd()}/${config.initFiles.defines.output}`;
	// let refEntries = mxo;

	renderFromTemplate('../templates/objectmappings.handlebars', mxo, `${refDir}/evieve-objectmappings.txt`);
}
/*
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
*/
function createMaxObjectList()
{
	const initDir = `${cwd()}/${config.initFiles.defines.output}`;
	const oblistInputMerge = Object.assign(mxo, gendsp, maxpat);

	renderFromTemplate('../templates/objectlist.handlebars', oblistInputMerge, `${initDir}/evieve-objectlist.txt`);
}

function createMaxKeyCommands()
{
	// i am lazy
	const keyCommandsConfig: any = {
		"commands": {
			"genTilde": {
				"letterKey": "g",
				"insertText": "\"newobj @text \"gen~ ", // + space
				"instructText": "\"gen~ object...\""
			},
			"genCodebox": {
				"letterKey": "G",
				"insertText": "gen.codebox~",
				"instructText": "\"gen~ codebox object\""
			},
			"eviObject": {
				"letterKey": "v",
				"insertText": "evi.",
				"instructText": "\"evieve object\/abstraction\""
			}
		}
	};

	const initDir = `${cwd()}/${config.initFiles.defines.output}`;
	renderFromTemplate('../templates/keycommands.handlebars', keyCommandsConfig, `${initDir}/evieve-keycommands.txt`);
}
/*
function createHelpconfigFile()
{
	const helpConfig: any = {};
	const biquadsArray: string[] = [];
	const definesConfig = gendsp.evi_gendsp;
	const definesListing = Object.keys(definesConfig);
	for (const config of definesListing) {
		// @ts-expect-error
		const entry = definesConfig[config];
		if (entry.define.object) {
			if (entry.helpfile.areas.includes('biquad')) {
				biquadsArray.push(entry.define.msp);
			}
		}
	}
	helpConfig.objects = biquadsArray;
	helpConfig.class = 'evibiquad';
	helpConfig.classPatcher = 'areas_help_biquad';
	helpConfig.classString = `\"Biquad Filters in evieve\"`;
	renderFromTemplate('../templates/helpconfig.handlebars', helpConfig, `${config.initFiles.defines.output}/evieve-helpconfig.txt`);
}
*/
function createHelpconfigFile()
{
	let helpConfig: any = {};
	const helpConfigArray: string[] = [];
	const definesConfig = gendsp.evi_gendsp;
	const maxpatConfig = maxpat.evi_abstractions;
	const mxoConfig = mxo.evi_externals;
	const definesListing = Object.keys(definesConfig);
	const maxpatListing = Object.keys(maxpatConfig);
	const mxoListing = Object.keys(mxoConfig);

	for (const area of areas) {
		const areaConfig: any = {};
		const areaArray: string[] = [];
		for (const config of definesListing) {
			// @ts-expect-error
			const entry = definesConfig[config];
			if (entry.define.object) {
				if (entry.helpfile.areas.includes(area[0])) {
					areaArray.push(entry.define.msp);
				}
			}
		}
		for (const config of maxpatListing) {
			if (!config.startsWith('mc')) {
				// @ts-expect-error
				const entry = maxpatConfig[config];
				if (entry.object) {
					if (entry.helpfile.areas.includes(area[0])) {
						areaArray.push(config);
					}
				}
			}
		}
		for (const config of mxoListing) {
			if (!config.startsWith('mc')) {
				// @ts-expect-error
				const entry = mxoConfig[config];
				if (entry.object) {
					if (entry.helpfile.areas.includes(area[0])) {
						areaArray.push(config);
					}
				}
			}
		}
		areaConfig.objects = areaArray;
		areaConfig.class = `evi${area[0]}`;
		areaConfig.classPatcher = `areas_help_${area[0]}`;
		areaConfig.classString = area[1];

		helpConfigArray.push(areaConfig);
	}
	helpConfig.areaConfigs = helpConfigArray;
	renderFromTemplate('../templates/helpconfig.handlebars', helpConfig, `${config.initFiles.defines.output}/evieve-helpconfig.txt`);
	// fs.writeFileSync(`${config.initFiles.defines.output}/_helpconfig_petetest.json`, JSON.stringify(helpConfig, null, 4));
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

// should not use ?
function makeGenRefpagesXmlContents() {
	let refDir = `${cwd()}/${config.referenceFiles.genDsp.output}`;
	let refFiles = getFileNamesFromPath(refDir, 'xml');
	const IGNORE = /_c74_contents.xml/;
	refFiles = refFiles.filter((str) => !IGNORE.test(str));

	renderFromTemplate('../templates/xmlcontents.handlebars', { ref: refFiles }, `${refDir}/_c74_contents.xml`);
}

// should not use ?
function makeGenExprRefpagesXmlContents()
{
	let refDir = `${cwd()}/${config.referenceFiles.genExpr.output}`;
	let refFiles = getFileNamesFromPath(refDir, 'xml');
	const IGNORE = /_c74_contents.xml/;
	refFiles = refFiles.filter((str) => !IGNORE.test(str));

	renderFromTemplate('../templates/xmlcontents.handlebars', { ref: refFiles }, `${refDir}/_c74_contents.xml`);
}

// --------------------------------------------- //

async function makeDocRefpagesAbstractions() {
	let refDir = `${cwd()}/${config.referenceFiles.abstractions.config}`;
	const outDir = `${cwd()}/${config.referenceFiles.abstractions.output}`
	let refFiles = getFileNamesFromPath(refDir, 'json');
	const IGNORE = /_xml_abstraction_template.json/;
	refFiles = refFiles.filter((str) => !IGNORE.test(str));

	for await (const refFile of refFiles) {
		const thisConfigJson = fs.readFileSync(`${refDir}/${refFile}`, 'utf8');
		const thisConfigObject = JSON.parse(thisConfigJson);
		const writeName = refFile.replace('_ref.json', '.maxref.xml');
		const writePath = `${outDir}/${writeName}`
		renderFromTemplate('../templates/refpage_abstraction.handlebars', thisConfigObject, writePath);
	}
}

async function makeDocRefpagesDefines() {
	let refDir = `${cwd()}/${config.referenceFiles.defines.config}`;
	const outDir = `${cwd()}/${config.referenceFiles.defines.output}`
	let refFiles = getFileNamesFromPath(refDir, 'json');
	const IGNORE = /_xml_define_template.json/;
	refFiles = refFiles.filter((str) => !IGNORE.test(str));

	for await (const refFile of refFiles) {
		const thisConfigJson = fs.readFileSync(`${refDir}/${refFile}`, 'utf8');
		const thisConfigObject = JSON.parse(thisConfigJson);
		const writeName = (`${thisConfigObject.object.name}.maxref.xml`);
		const writePath = `${outDir}/${writeName}`
		renderFromTemplate('../templates/refpage_define.handlebars', thisConfigObject, writePath);
	}
}

async function makeDocRefpagesGendsps() {
	let refDir = `${cwd()}/${config.referenceFiles.genDsp.config}`;
	const outDir = `${cwd()}/${config.referenceFiles.genDsp.output}`
	let refFiles = getFileNamesFromPath(refDir, 'json');
	const IGNORE = /_xml_gendsp_template.json/;
	refFiles = refFiles.filter((str) => !IGNORE.test(str));

	for await (const refFile of refFiles) {
		const thisConfigJson = fs.readFileSync(`${refDir}/${refFile}`, 'utf8');
		const thisConfigObject = JSON.parse(thisConfigJson);
		const writeName = refFile.replace('_ref.json', '.maxref.xml');
		// const writePath = `${outDir}/gen_dsp_${writeName}`; // is this correct? (taken from native gen refs)
		const writePath = `${outDir}/${writeName}`; // experiment without for links
		renderFromTemplate('../templates/refpage_gendsp.handlebars', thisConfigObject, writePath);
	}
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
	"helpfile": {
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
	},
	{
		"#text": "evieve Objects",
		"maxattr_name": "tag"
	}
];

const externalsXmlMisc = [
	{
		"entry": [
			{
				"description": "TEXT_HERE",
				"maxattr_name": "Keywords"
			}
		],
		"maxattr_name": "Discussion"
	}
];
/*
const externalsXmlMisc = [
	{
		"entry": [
			{
				"description": "TEXT_HERE",
				"maxattr_name": "More Details"
			},
			{
				"description": "TEXT_HERE",
				"maxattr_name": "Keywords"
			}
		],
		"maxattr_name": "Discussion"
	}
];
*/
// some helpfiles have automatic general tabs covering an 'area'
const areas = [
	["biquad", `\"Biquad Filters in evieve\"`],
	["pd", `\"Pd objects in evieve\"`],
	["crossover", `\"Crossover Filters in evieve\"`],
	["msp", `\"MSP Filter Substitutions in evieve\"`],
	["korg", `\"Nonlinear Korg MS Filters in evieve\"`],
	["ladder", `\"Nonlinear Ladder Filters in evieve\"`],
	["svf", `\"Nonlinear SVF Filters in evieve\"`],
	["filter", `\"Linear TPT Filters in evieve\"`],
	["oscillator", `\"Oscillators in evieve\"`],
	["noise", `\"Noise Sources in evieve\"`],
	["reverb", `\"Reverbs in evieve\"`],
	["overdrive", `\"Nonlinear Overdrive in evieve\"`],
	["smooth", `\"Signal Smoothers in evieve\"`]
];

// --------------------------------------------- //

// called from Max {extract_genexpr_asts}
async function extractGenExprASTs()
{
	// cannot work out PEG parsing syntax errors on only these four files (they compile in gen~ fine)
	const tempIgnore: string[] = ['evi_counting.genexpr', 'evi_rcfilters.genexpr', 'evi_reverb_library.genexpr', 'evi_sources.genexpr'];

	const genexprsFolder = `${cwd()}/${config.referenceFiles.genExpr.input}`;
	const fullGenexprsPaths = getFilePathsFromPathRecursive(genexprsFolder, 'genexpr');
	const genexprsAstsPath = `${cwd()}/${config.referenceFiles.genExpr.config}`;
	let genExprCategories: any = {};

	for await (const genexprPath of fullGenexprsPaths) {
		const genexprName = path.basename(genexprPath);
		getGenExprCategory(genExprCategories, genexprPath, genexprName);
		if (!tempIgnore.includes(genexprName)) {
			const genAstName = genexprName.replace('.genexpr', '_ast.json');
			const thisRawGenExpr = fs.readFileSync(`${genexprPath}`, 'utf8');
			// void max.post(`.genexpr file about to be parsed: ${genexprName}`);
			const genExprAst = PEGparser.parse(thisRawGenExpr);
			fs.writeFileSync(`${genexprsAstsPath}/${genAstName}`, JSON.stringify(genExprAst, null, 4));
			// void max.post(`.genexpr file just written: ${genAstName}`);
		}
	}
	fs.writeFileSync(`${genexprsAstsPath}/_expr_data_categories.json`, JSON.stringify(genExprCategories, null, 4));
}

// horrid, sorry
function getGenExprCategory(categories: any, fullPath: string, fullName: string)
{
	if (fullPath.includes('evi_cores')) {
		categories[fullName] = 'Core';
	} else if (fullPath.includes('evi_libraries')) {
		categories[fullName] = 'Library';
	} else if (fullPath.includes('evi_objects')) {
		categories[fullName] = 'Object';
	} else {
		categories[fullName] = 'Include';
	}
}

// top level ast keys: 'type': string, 'commands[]', 'functions[]' 'decls[]', 'body[]'
// 'commands' = array of require() declarations, functions = array of function() declarations

// called from Max {build_genexpr_data_sources}
function parseGenExprAstsForDoc()
{
	const genexprsJsonsPath = `${cwd()}/${config.referenceFiles.genExpr.json}`;
	const genexprsAstsPath = `${cwd()}/${config.referenceFiles.genExpr.config}`;
	let fullAstNames = getFileNamesFromPath(genexprsAstsPath, 'json');
	const IGNORE1 = /_expr_data_format.json/;
	const IGNORE2 = /_expr_data_categories.json/;
	fullAstNames = fullAstNames.filter((str) => !IGNORE1.test(str) && !IGNORE2.test(str));

	const genExprFileTemplate: any = {
		"description": "",
		"requires": [],
		"functions": [],
		"seealso": []
	};

	const functionsTemplate: any = {
		"document": true,
		"digest": "",
		"name": "",
		"inputs": [],
		"returns": []
	};

	const inputsInputTemplate: any = {
		"id": 0,
		"kind": "",
		"name": "",
		"digest": ""
	};

	const inputsParamTemplate: any = {
		"id": 0,
		"kind": "",
		"name": "",
		"default": 0,
		"type": "",
		"digest": ""
	};

	const returnsTemplate: any = {
		"id": 0,
		"name": "",
		"digest": ""
	};

	for (const genexprAst of fullAstNames) {
		// void max.post(`reading this ast: ${genexprAst}`);
		// cache previous data if it is there
		let thisGenExprData: any = {};
		let currentFunctionNames: string[] = [];
		const parsedName = genexprAst.replace('_ast.json', '_data.json');
		const isEdit: boolean = fs.existsSync(`${genexprsJsonsPath}/${parsedName}`) ? true : false;
		if (isEdit) {
			const thisGenExprFile = fs.readFileSync(`${genexprsJsonsPath}/${parsedName}`, 'utf8');
			thisGenExprData = JSON.parse(thisGenExprFile);
			for (const entry of thisGenExprData.functions) {
				currentFunctionNames.push(entry.name);
			}
		} else {
			thisGenExprData = JSON.parse(JSON.stringify(genExprFileTemplate));
		}
		// get this AST data from file
		const thisAstFile = fs.readFileSync(`${genexprsAstsPath}/${genexprAst}`, 'utf8');
		const thisAstObject = JSON.parse(thisAstFile);
		// we just throw new data into local arrays
		let requiresArray: string[] = []; // extract array of strings
		let functionsArray: {}[] = []; // extract array of objects
		// always grab all data and fill local arrays, even if previous data present
		// requires[]
		if (thisAstObject.commands.length) {
			for (const command of thisAstObject.commands) {
				if (command.expression.callee.name === 'require') {
					let thisRequire: string = '';
					for (const arg of command.expression.arguments) {
						thisRequire = arg.value;
						if (!thisRequire.endsWith('.genexpr')) {
							thisRequire = `${thisRequire}.genexpr`;	// pete sometimes forgets
						}
						requiresArray.push(thisRequire);
					}
				}
			}
		}
		// functions[]
		if (thisAstObject.functions.length) {
			for (const func of thisAstObject.functions) {
				if (func.type === 'FunctionDeclaration') {
					let isNewFunc: boolean = currentFunctionNames.includes(func.id.name) ? false : true;
					let thisFunc = JSON.parse(JSON.stringify(functionsTemplate));
					thisFunc.name = func.id.name;
					// inputs - can be 'input' or 'param'
					for (let i = 0; i < func.params.length; i++) {
						if (func.defaults[i] != null) {
							let thisParam = JSON.parse(JSON.stringify(inputsParamTemplate));
							thisParam.id = i+1; // controversial, ins/outs indexing from '1', bad decision?
							thisParam.kind = 'param';
							thisParam.name = func.params[i].name;
							thisParam.default = func.defaults[i].value;
							thisParam.type = func.defaults[i].gen_kind;
							thisFunc.inputs.push(thisParam);
						} else {
							let thisInput = JSON.parse(JSON.stringify(inputsInputTemplate));
							thisInput.id = i+1; // controversial...
							thisInput.kind = 'input';
							thisInput.name = func.params[i].name;
							thisFunc.inputs.push(thisInput);
						}
					}
					// returns - this is all total bullshit
					// todo: look into reappropriating 'visitReturnStatement()' from 'genbo.js'
					for (const ret of func.body.body) {
						if (ret.type === 'ReturnStatement') {
							let rets = 0;
							if (ret.argument.type === 'ArrayExpression') {
								rets = ret.argument.elements.length;
							} else { // for now, will be wrong sometimes
								rets = 1;
							}
							for (let j = 0; j < rets; j++) {
								let thisReturn = JSON.parse(JSON.stringify(returnsTemplate));
								thisReturn.id = j+1; // controversial...
								thisFunc.returns.push(thisReturn);
							}
						}
					}
					functionsArray.push(thisFunc);
				}
			}
		}

		if (isEdit) {
			thisGenExprData.requires = requiresArray;
			//	//	//	functions here
			mergeFunctionsArrayFromAst(functionsArray, thisGenExprData.functions);
			// thisGenExprData.functions = thinUniqueArrayByKey(thisGenExprData.functions, "name");
		} else {
			thisGenExprData.requires = requiresArray;
			thisGenExprData.functions = functionsArray;
		}
		// void max.post(`about to write this ast: ${parsedName}`);
		fs.writeFileSync(`${genexprsJsonsPath}/${parsedName}`, JSON.stringify(thisGenExprData, null, 4));
	}
}

// place hand edited data back into newly aquired data
function mergeFunctionsArrayFromAst(newData: any, currentData: any)
{
	// for (const func of newData) {
	// 	// @ts-expect-error
	// 	if (func[name]) {

	// 	}
	// }

	newData.forEach((func: { name: any; }) => {
		const name = func.name;
	})
}

/*
// top level ast keys: 'type': string, 'commands[]', 'functions[]' 'decls[]', 'body[]'
// 'commands' = array of require() declarations, functions = array of function() declarations

// called from Max {build_genexpr_data_sources}
function parseGenExprAstsForDoc()
{
	const genexprsJsonsPath = `${cwd()}/${config.referenceFiles.genExpr.json}`;
	const genexprsAstsPath = `${cwd()}/${config.referenceFiles.genExpr.config}`;
	let fullAstNames = getFileNamesFromPath(genexprsAstsPath, 'json');
	const IGNORE1 = /_expr_data_format.json/;
	const IGNORE2 = /_expr_data_categories.json/;
	fullAstNames = fullAstNames.filter((str) => !IGNORE1.test(str) && !IGNORE2.test(str));

	const genExprFileTemplate: any = {
		"description": "",
		"requires": [],
		"functions": [],
		"seealso": []
	};

	const functionsTemplate: any = {
		"document": true,
		"digest": "",
		"name": "",
		"inputs": [],
		"returns": []
	};

	const inputsInputTemplate: any = {
		"id": 0,
		"kind": "",
		"name": "",
		"digest": ""
	};

	const inputsParamTemplate: any = {
		"id": 0,
		"kind": "",
		"name": "",
		"default": 0,
		"type": "",
		"digest": ""
	};

	const returnsTemplate: any = {
		"id": 0,
		"name": "",
		"digest": ""
	};

	for (const genexprAst of fullAstNames) {
		// void max.post(`reading this ast: ${genexprAst}`);
		let thisGenExprData: any = {};
		let currentFunctionNames: string[] = [];
		let functionsArray: {}[] = []; // extract array of objects
		const parsedName = genexprAst.replace('_ast.json', '_data.json');
		const isEdit: boolean = fs.existsSync(`${genexprsJsonsPath}/${parsedName}`) ? true : false;
		if (isEdit) {
			const thisGenExprFile = fs.readFileSync(`${genexprsJsonsPath}/${parsedName}`, 'utf8');
			thisGenExprData = JSON.parse(thisGenExprFile);
			functionsArray = thisGenExprData.functions;
			for (const entry of thisGenExprData.functions) {
				currentFunctionNames.push(entry.name);
			}
		} else {
			thisGenExprData = JSON.parse(JSON.stringify(genExprFileTemplate));
			functionsArray = [];
			currentFunctionNames = [];
		}

		const thisAstFile = fs.readFileSync(`${genexprsAstsPath}/${genexprAst}`, 'utf8');
		const thisAstObject = JSON.parse(thisAstFile);
		let requiresArray: string[] = []; // extract array of strings

		// 'requires' can always overwrite
		if (thisAstObject.commands.length) {
			for (const command of thisAstObject.commands) {
				if (command.expression.callee.name === 'require') {
					let thisRequire: string = '';
					for (const arg of command.expression.arguments) {
						thisRequire = arg.value;
						if (!thisRequire.endsWith('.genexpr')) {
							thisRequire = `${thisRequire}.genexpr`;	// pete sometimes forgets
						}
						requiresArray.push(thisRequire);
					}
				}
			}
		}

		// this is complex
		if (thisAstObject.functions.length) {
			for (const func of thisAstObject.functions) {
				if (func.type === 'FunctionDeclaration') {
					let thisFunc: any = {};
					let objIndex = -1;
					const isNew: boolean = currentFunctionNames.includes(func.id.name) ? false : true;
					if (!isNew && isEdit) {
						// is edit of already present function entry
						thisFunc = thisGenExprData.functions.find((obj: { name: string; }) => obj.name === func.id.name);
						objIndex = thisGenExprData.functions.indexOf(thisFunc);
					} else {
						thisFunc = JSON.parse(JSON.stringify(functionsTemplate));
						thisFunc.name = func.id.name;
					}






					for (let i = 0; i < func.params.length; i++) {
						if (func.defaults[i] != null) {
							let thisParam: any = {};
							if (isNew) {
								thisParam = JSON.parse(JSON.stringify(inputsParamTemplate));
								thisParam.id = i+1; // controversial, ins/outs indexing from '1', bad decision?
								thisParam.kind = 'param';
								thisParam.name = func.params[i].name;
								thisParam.default = func.defaults[i].value;
								thisParam.type = func.defaults[i].gen_kind;
								thisFunc.inputs.push(thisParam);
							} else {
								thisFunc.inputs[i].kind = 'param';
								thisFunc.inputs[i].name = func.params[i].name;
								thisFunc.inputs[i].default = func.defaults[i].value;
								thisFunc.inputs[i].type = func.defaults[i].gen_kind;
							}
						} else {
							let thisInput: any = {};
							if (isNew) {
								thisInput = JSON.parse(JSON.stringify(inputsInputTemplate));
								thisInput.id = i+1; // controversial...
								thisInput.kind = 'input';
								thisInput.name = func.params[i].name;
								thisFunc.inputs.push(thisInput);
							} else {
								thisFunc.inputs[i].kind = 'input';
								thisFunc.inputs[i].name = func.params[i].name;

							}
						}
					}
					thisFunc.inputs = thinUniqueArrayByKey(thisFunc.inputs, "id");
					// this is all total bullshit
					// todo: look into reappropriating 'visitReturnStatement()' from 'genbo.js'
					for (const ret of func.body.body) {
						if (ret.type === 'ReturnStatement') {
							let rets = 0;
							if (ret.argument.type === 'ArrayExpression') {
								rets = ret.argument.elements.length;
							} else { // for now, will be wrong sometimes
								rets = 1;
							}
							for (let j = 0; j < rets; j++) {
								let thisReturn = JSON.parse(JSON.stringify(returnsTemplate));
								thisReturn.id = j+1; // controversial...
								thisFunc.returns.push(thisReturn);
							}
						}
					}
					if (isEdit) {
						thisGenExprData.functions.fill(thisFunc, objIndex, objIndex);
					} else {
						functionsArray.push(thisFunc);
					}
				}
			}
		}

//		const parsedName = genexprAst.replace('_ast.json', '_data.json');
		if (isEdit) {
			thisGenExprData.requires = requiresArray;
			// mergeFunctionsArrayFromAst(functionsArray, thisGenExprData.functions);
			for (const newfunc of functionsArray) {
				// @ts-expect-error
				if (!currentFunctionNames.includes(newfunc.name)) {
					thisGenExprData.functions.push(newfunc);
				}
			}
			thisGenExprData.functions = thinUniqueArrayByKey(thisGenExprData.functions, "name");
		} else {
			thisGenExprData.requires = requiresArray;
			thisGenExprData.functions = functionsArray;
		}
		// void max.post(`about to write this ast: ${parsedName}`);
		fs.writeFileSync(`${genexprsJsonsPath}/${parsedName}`, JSON.stringify(thisGenExprData, null, 4));
	}
}
*/
/*
function mergeFunctionsArrayFromAst(funcsArray: any, currentData: any)
{
	// for (const func of funcsArray) {
	// 	// @ts-expect-error
	// 	if (func[name]) {

	// 	}
	// }

	funcsArray.forEach((func: { name: any; }) => {
		const name = func.name;
	})
}
*/

async function makeGenExprRefpages()
{
	let dataDir = `${cwd()}/${config.referenceFiles.genExpr.json}`;
	const outDir = `${cwd()}/${config.referenceFiles.genExpr.output}`
	const catDir = `${cwd()}/${config.referenceFiles.genExpr.config}`
	const dataFiles = getFileNamesFromPath(dataDir, 'json');
	// const IGNORE = //;
	// refFiles = refFiles.filter((str) => !IGNORE.test(str));
	const categories = fs.readFileSync(`${catDir}/_expr_data_categories.json`, 'utf8');
	const catObj = JSON.parse(categories);

	for await (const dataFile of dataFiles) {
		const thisConfigJson = fs.readFileSync(`${dataDir}/${dataFile}`, 'utf8');
		const thisConfigObject = JSON.parse(thisConfigJson);
		const fileName = dataFile.replace('_data.json', '');//'.genexpr');
		// const file = dataFile.replace('_data.json', ''); // needed for xml crap
		const cat = catObj[`${fileName}.genexpr`];
		// const shouldRequire: boolean = (thisConfigObject.requires.length > 0);
		const writeName = dataFile.replace('_data.json', '.maxref.xml');
		const writePath = `${outDir}/${writeName}`;
		// totally stupid
		renderFromTemplate('../templates/refpage_genexpr.handlebars',
			{
				// name: file,
				name: fileName,
				category: cat,
				description: thisConfigObject.description,
				// require: shouldRequire,
				requires: thisConfigObject.requires,
				functions: thisConfigObject.functions,
				seealso: thisConfigObject.seealso
			},
			writePath);
	}
}

// --------------------------------------------- //
// testing

async function testPeggyCrap()
{
	const gendspsRefsPath = `${cwd()}/${config.referenceFiles.genDsp.config}`;
	let fullRefsNames = getFileNamesFromPath(gendspsRefsPath, 'json');
	const IGNORE = /_xml_gendsp_template.json/;
	fullRefsNames = fullRefsNames.filter((str) => !IGNORE.test(str));
	const codeboxesRefsPath = `${gendspsRefsPath}/codeboxes`;
	const fullCodeboxesNames = getFileNamesFromPath(codeboxesRefsPath, 'genexpr');

	for await (const refJson of fullRefsNames) {
		const refJsonFullRWpath = `${gendspsRefsPath}/${refJson}`;
		const chichiForPrinting = refJson.replace('_ref.json', '.gendsp');
		const derivedCodeboxName = refJson.replace('_ref.json', '_codebox.genexpr');
		if (fullCodeboxesNames.includes(derivedCodeboxName)) {
			// const thisConfigJson = fs.readFileSync(refJsonFullRWpath, 'utf8');
			// const thisConfigObject = JSON.parse(thisConfigJson);
			const thisConfigGenExpr = fs.readFileSync(`${codeboxesRefsPath}/${derivedCodeboxName}`, 'utf8');
			// const pre_ast = PEGparser.parse(thisConfigGenExpr, {startRule: 'translation_unit'});
			const pre_ast = PEGparser.parse(thisConfigGenExpr);
			void max.post(`parser test for ${refJson}: ${JSON.stringify(pre_ast)}`);
		}
	}
}

async function testPeggyGendsp()
{
	const gendspsFolder = `${cwd()}/${config.referenceFiles.genDsp.input}`;
	const fullGendspsPaths = getFilePathsFromPathRecursive(gendspsFolder, 'gendsp');

	for await (const gendspPath of fullGendspsPaths) {
		const gendspName = path.basename(gendspPath);
		const thisConfigGenDsp = fs.readFileSync(`${gendspPath}`, 'utf8');
		// const pre_ast = PEGparser.parse(thisConfigGenExpr, {startRule: 'translation_unit'});
		const pre_ast = PEGparser.parse(thisConfigGenDsp);
		void max.post(`parser test for ${gendspName}: ${JSON.stringify(pre_ast)}`);
	}
}

async function testPeggySideBar(fullPathToTest: string)
{
	const gendspsRefsPath = `${cwd()}/${config.referenceFiles.genDsp.config}`;
	const parsedPegsRefsPath = `${gendspsRefsPath}/parsedpegs`;

	const genName = path.basename(fullPathToTest);
	const thisDir = path.dirname(fullPathToTest);
	const pegWriteName = genName.replace('.genexpr', '.json');

	const thisConfigGen = fs.readFileSync(`${fullPathToTest}`, 'utf8');
	// const pre_ast = PEGparser.parse(thisConfigGenExpr, {startRule: 'translation_unit'});
	const pre_ast = PEGparser.parse(thisConfigGen);
	// void max.post(`parser test for ${genName}: ${JSON.stringify(pre_ast)}`);
	fs.writeFileSync(`${thisDir}/${pegWriteName}`, JSON.stringify(pre_ast, null, 4));
}

