
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

const attributeXmlPrefix = 'maxattr_';
// import testJsonXml from '../test/pete_testing_2.json';

const genexpr_pegjs = fs.readFileSync('../peg/genexpr.pegjs', 'utf8');
const peg_parse_options = {
	// output: "source",	// output the parser as...
	cache: true,			// avoids pathological slowdowns
	allowedStartRules: [ "start", "translation_unit", "gen" ]
};
const PEGparser = PEGgy.generate(genexpr_pegjs, peg_parse_options);
// void max.post(`look at the peg: ${JSON.stringify(PEGparser)}`);

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
	help: {
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
max.addHandler('make_refpages_rename', () => {
    // externalsRefpagesRename();
})

max.addHandler('make_refpages_contents', () => {
    makeDocRefpagesXmlContents();
})

max.addHandler('make_refpages_gen_contents', () => {
    makeGenRefpagesXmlContents();
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

max.addHandler('make_qlookup_json', () => {
	parseDataForQlookup();
})

max.addHandler('externals_xml_edit', () => {
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

function testGetXml(prefix?: string)
{
	const options = {
		preserveOrder: true, // true = shit for getting values, good for rebuilding xml
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
		preserveOrder: true, // true = shit for the json, but good to have format correct when building
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
		preserveOrder: false, // true = shit for the json, but good to have format correct when building
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
		preserveOrder: false, // true = good for getting values, shit for rebuilding xml
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
			void max.post('have found a misc');
			// TODO:
/*			const discussionData = xmlResult.c74object.misc.filter((el: any) => el.maxattr_name === 'Discussion');
			if (Array.isArray(discussionData)) {
				const keywordData = discussionData[0].entry.filter((el: any) => el.maxattr_name === 'Keywords');
				if (keywordData.length > 0) {
					qlookup[objectName].keywords = keywordData[0].description.split(',');
				}
				qlookup[objectName].keywords = qlookup[objectName].keywords.map((item: string) => item.trim());
			}
*/		}

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

// --------------------------------------------- //

function createHelpFilesBasic(force = false)
{
	const eviHelpStarter = 'evi.helpstarter.js';
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
						evioption: 0
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
	const eviHelpStarter = 'evi.helpstarter.js';
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
	const eviHelpStarter = 'evi.helpstarter.js';
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
	const eviHelpStarter = 'evi.helpstarter.js';
	const writeDir = config.helpFiles.defines.output;
	const definesConfig = gendsp.evi_gendsp;
	const forHelpfilesArray = Object.keys(definesConfig);
	for (const object of forHelpfilesArray) {
		// @ts-expect-error
		const thisObject = definesConfig[object];
		if (thisObject.define.object) {
			if (thisObject.help.msp) {
				const thisObjectName = thisObject.define.msp;
				const writePath = `${writeDir}/${thisObjectName}.maxhelp`;

				const eviOption1: number = (thisObject.define.mcwrapper) ? 1 : 0;
				const eviOption2: number = 0;
				const eviOption3: number = (thisObject.help.gentab) ? 1 : 0;
				const eviOption4: number = (thisObject.help.genexprtab) ? 1 : 0;
				let eviOption5: string = thisObject.help.areas[0];
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
// during 'parseGendspsLoop()', (because i cannot get pegjs system working)
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
							if (!requireDecl.endsWith('.genexpr')) {
								requireDecl = `${requireDecl}.genexpr`; // because pete has forgotten sometimes
							}

							thisConfigObject.includes.push(requireDecl);

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
				if (thisConfigObject.includes.length) {
					const includesString = thisConfigObject.includes.join(', ');
					thisConfigObject.object.description = `[${thisConfigObject.object.name}.gendsp] requires: [${includesString}]`;
				}

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
// during 'parseDefinesGendspsLoop()', (because i cannot get pegjs system working)
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
		const chichiForPrinting = refJson.replace('_ref.json', '.gendsp');
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

// not using at the moment, see above
/*
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

	const collectRequires: string[] = [];
	const collectHistories: string[][] = [];
	const collectParams: string[][] = [];

	for await (const refJson of fullRefsNames) {
		const chichiForPrinting = refJson.replace('_ref.json', '.gendsp');
		const derivedCodeboxName = refJson.replace('_ref.json', '_codebox.genexpr');
		if (fullCodeboxesNames.includes(derivedCodeboxName)) {
			const thisConfigJson = fs.readFileSync(`${definesRefsPath}/${refJson}`, 'utf8');
			const thisConfigObject = JSON.parse(thisConfigJson);
			// const thisConfigGenExpr = fs.readFileSync(`${codeboxesRefsPath}/${derivedCodeboxName}`, 'utf8');
			// const pre_ast = PEGparser.parse(thisConfigGenExpr);
			// void max.post(`parser test for ${refJson}: ${JSON.stringify(pre_ast)}`);

			collectRequires.length = 0;
			collectHistories.length = 0;
			collectParams.length = 0;

			const rlInterface = readline.createInterface({
				input: fs.createReadStream(`${codeboxesRefsPath}/${derivedCodeboxName}`),
				crlfDelay: Infinity
			});
			// this will only work for Pete's pedantic style of GenExpr coding :-(
			rlInterface.on('line', (line) => {
				if (!(/^\s/.test(line))) {
					if (!(line.startsWith('//')) && !(line.startsWith('/*'))) {
						// void max.post(`i am reading this line: ${line}`);
						const line_trim = line.trim();
						let line_candidate = line_trim;
						if (line_trim.includes('//')) {
							line_candidate = line_trim.split('//')[0];
						}
						if (line_trim.includes('/*')) {
							line_candidate = line_trim.split('/*')[0];
						}
						// void max.post(`line candidate is now: ${line_candidate}`);
						if (line_candidate.startsWith('require')) {
							const line_tokens = line_candidate.split('\"');
							let requireDecl = line_tokens[1];
							if (!requireDecl.endsWith('.genexpr')) {
								requireDecl = `${requireDecl}.genexpr`; // because pete has forgotten sometimes
							}
							collectRequires.push(requireDecl);
							void max.post(`found a require in ${chichiForPrinting}: ${requireDecl}`);
						} else if (line_candidate.startsWith('History')) {
							const line_sliced = line_candidate.replace('History', '').trimStart();
							const line_tokens = line_sliced.split(',');
							// void max.post(`History line tokens are: ${line_tokens}`);
							for (let i = 0; i < line_tokens.length; i++) {
								const historyDecl = line_tokens[i];
								// void max.post(`History token to work on is: ${historyDecl}`);
								const history_split = historyDecl.split('(');
								const histName = history_split[0].trim();
								const hist_token_val = history_split[1].trim();
								// void max.post(`hist_token_val cleaned is: ${hist_token_val}`);
								let histVal = "";
								if (hist_token_val.includes(')')) {
									histVal = hist_token_val.split(')')[0].replace(',', '').replace(';', '').trim();
								} else {
									histVal = hist_token_val.replace(')', '').replaceAll(',', '').replaceAll(';', '').trim();
								}
								// void max.post(`parsed history value is: ${histVal}`);
								const histArray = [histName, histVal];
								collectHistories.push(histArray);
								void max.post(`found a history in ${chichiForPrinting}: ${histArray}`);
							}
						} else if (line_candidate.startsWith('Param')) {
							const line_tokens = line_candidate.split('(');
							// void max.post(`Param line tokens are: ${line_tokens}`);
							// void max.post(`Param name token pre-split is: ${line_tokens[0]}`);
							const paramName = line_tokens[0].replace('Param', '').trimStart();
							// void max.post(`Param name token post-split is: ${paramName}`);
							const paramData = line_tokens[1].split(',');
							// void max.post(`Param data array is: ${paramData}`);
							const paramDefault = paramData[0].replace(')', '').replaceAll(',', '').replaceAll(';', '');
							let paramMin = "0";
							let paramMax = "0";
							for (let i = 0; i < paramData.length; i++) {
								const testParamData = paramData[i].trim();
								if (testParamData.startsWith("min")) {
									// void max.post(`if min test is true: ${testParamData}`);
									paramMin = paramData[i].split('=')[1].split(')')[0].replaceAll(',', '').replaceAll(';', '');
								} else if (testParamData.startsWith("max")) {
									// void max.post(`if max test is true: ${testParamData}`);
									paramMax = paramData[i].split('=')[1].split(')')[0].replaceAll(',', '').replaceAll(';', '');
								}
							}
							const paramArray = [paramName, paramDefault, paramMin, paramMax];
							collectParams.push(paramArray);
							void max.post(`found a param in ${chichiForPrinting}: ${paramArray}`);
						}
					}
				}
			});

			rlInterface.on('close', () => {

				if (collectHistories.length) {
					// if new template
					thisConfigObject.messages = thisConfigObject.messages.filter((entry: { name: string; }) => entry.name !== "");
					let objIndex: number = 0;
					let thisMessage: any;
					const isHistory = Object.values(thisConfigObject.messages).includes('history');

					if (isHistory) {
						// is edit of already present 'history' entry
						thisMessage = thisConfigObject.messages.find((obj: { name: string; }) => obj.name === 'history');
						objIndex = thisConfigObject.messages.indexOf(thisMessage);

						for (let i = 0; i < collectHistories.length; i++) {
							const histDecl: string[] = collectHistories[i];
							let thisArg: any = JSON.parse(JSON.stringify(msgArgsConfig));
							thisArg.name = histDecl[0];
							const type = inferTypeFromString(histDecl[1]);
							thisArg.type = type;
							let units: string | number = "";
							if (type === "int") {
								units = parseInt(histDecl[1]);
							} else if (type === "float") {
								units = parseFloat(histDecl[1]);
							} else {
								units = histDecl[1];
							}
							thisArg.units = `default: ${units}`;
							thisMessage.arg.push(thisArg);
						}
						thisMessage.arg = thinUniqueArrayByKey(thisMessage.arg, "name");
						thisMessage.arg.sort((a: { name: string; }, b: { name: string; }) => {
							return a.name >= b.name ? 1 : -1;
						});

						thisConfigObject.messages.fill(thisMessage, objIndex, objIndex);

					} else {
						// is new 'history' message type entry
						thisMessage = JSON.parse(JSON.stringify(messagesConfig));
						thisMessage.name = "history";
						// if new args template
						thisMessage.arg = thisMessage.arg.filter((entry: { name: string; }) => entry.name !== "");
						for (let i = 0; i < collectHistories.length; i++) {
							const histDecl: string[] = collectHistories[i];
							let thisArg: any = JSON.parse(JSON.stringify(msgArgsConfig));
							thisArg.name = histDecl[0];
							const type = inferTypeFromString(histDecl[1]);
							thisArg.type = type;
							let units: string | number = "";
							if (type === "int") {
								units = parseInt(histDecl[1]);
							} else if (type === "float") {
								units = parseFloat(histDecl[1]);
							} else {
								units = histDecl[1];
							}
							thisArg.units = `default: ${units}`;
							thisMessage.arg.push(thisArg);
						}
						thisMessage.arg = thinUniqueArrayByKey(thisMessage.arg, "name");
						thisMessage.arg.sort((a: { name: string; }, b: { name: string; }) => {
							return a.name >= b.name ? 1 : -1;
						});

						thisConfigObject.messages.push(thisMessage);

					}

					thisConfigObject.messages = thinUniqueArrayByKey(thisConfigObject.messages, "name");
					thisConfigObject.messages.sort((a: { name: string; }, b: { name: string; }) => {
						return a.name >= b.name ? 1 : -1;
					});
				}

				if (collectParams.length) {
					thisConfigObject.attributes = thisConfigObject.attributes.filter((entry: { name: string; }) => entry.name !== "");
					for (let j = 0; j < collectParams.length; j++) {
						let thisAttr: any = JSON.parse(JSON.stringify(attributesConfig));
						const paramDecl: string[] = collectParams[j];
						thisAttr.name = paramDecl[0];
						thisAttr.type = inferTypeFromString(paramDecl[1]);
						thisAttr.default.value = paramDecl[1];
						thisAttr.default.min = paramDecl[2];
						thisAttr.default.max = paramDecl[3];
						thisConfigObject.attributes.push(thisAttr);
					}
					thisConfigObject.attributes = thinUniqueArrayByKey(thisConfigObject.attributes, "name");
					thisConfigObject.attributes.sort((a: { name: string; }, b: { name: string; }) => {
						return a.name >= b.name ? 1 : -1;
					});
				}

				if (collectRequires.length) {
					for (let k = 0; k < collectRequires.length; k++) {
						thisConfigObject.includes.push(collectRequires[k]);
					}
					thisConfigObject.includes = [...new Set(thisConfigObject.includes)];
				}

				fs.writeFileSync(`${definesRefsPath}/${refJson}`, JSON.stringify(thisConfigObject, null, 4));

			});
		}
	}
}
*/

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

	// const isNumericFromString = (string: string) => /^[+-]?\d+(\.\d+)?$/.test(string);
	// const isNumericFinite = (input: string | number) => Number.isFinite(+input);
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

	fs.writeFileSync(thisConfigFullPath, JSON.stringify(thisConfigObject, null, 4));
}

// really dumb and does not do lists of attrs
function inferTypeFromString(thisValue: string)
{
	// const isNumericFromString = (string: string) => /^[+-]?\d+(\.\d+)?$/.test(string);
	const isNumericFinite = (input: string | number) => Number.isFinite(+input);
	
	const floatsArray: string[] = ["degtorad", "radtodeg", "pi", "twopi", "halfpi", "invpi", "sqrt2", "sqrt1_2", "ln2", "ln10", "log10e", "log2e", "phi", "e"];
	const intsArray: string[] = ["samplerate", "vectorsize"];

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

async function createDefineRefJson(extractCodebox = false)
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
        if (!refConfigs.includes(jsonFileName)) {	// maybe create if does not yet exist
			if (thisDefineConfig.define.object) {	// outer double check, might as well
				if (thisDefineConfig.ref.msp) { // if msp ref page is requested in config
					const newTemplate = JSON.parse(JSON.stringify(templateObject));
					newTemplate.object.name = newDefineName;
					newTemplate.object.parent = defineName;
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
		const newGendspName = gendspName.replace('.gendsp', '');;
		const jsonFileName = `${newGendspName}_ref.json`;
        if (!refConfigs.includes(jsonFileName)) {	// maybe create if does not yet exist
			if (thisGendspConfig.ref.gen) { // if gen ref page is requested in config
				const newTemplate = JSON.parse(JSON.stringify(templateObject));
				newTemplate.object.name = newGendspName;

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

function makeGenRefpagesXmlContents() {
	let refDir = `${cwd()}/${config.referenceFiles.genDsp.output}`;
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
		const writePath = `${outDir}/gen_dsp_${writeName}`;
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
