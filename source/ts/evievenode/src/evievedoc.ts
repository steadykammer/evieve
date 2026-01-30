
import * as max from 'max-api-or-nah';
import fs from 'fs';
import { homedir } from 'os';
import { posix, sep } from 'path';
import { cwd } from 'process';
import Handlebars from 'handlebars';
import { XMLParser } from 'fast-xml-parser';

import config from '../config/evievedoc.config.json';// with { type: 'json' };
import gendsp from '../config/evievedoc.config.gendsp.json';// with { type: 'json' };
import maxpat from '../config/evievedoc.config.maxpat.json';
import mxo from '../config/evievedoc.config.mxo.json';
//import qabs from '../config/evievedoc.abstractions.qlookup.json';

const evievedocConfig = '../config/evievedoc.config.json';

// --------------------------------------------- //

max.addHandler('callback_from_xml_make', (name: string) => {
    booboo(name);
})

function booboo(name: string)
{
    const choochoo = name;
}

max.addHandler('test_gendsp_make', () => {
    updateConfigFileGendsp();
})

max.addHandler('test_maxpat_make', () => {
    updateConfigFileMaxpat();
})

max.addHandler('test_external_make', () => {
    updateConfigFileExternals();
})

// --------------------------------------------- //

function updateConfigFileGendsp(force = false, writeJson = true) {
	let currentGendsp = gendsp.evi_gendsp;
	const newGendsp: any = {};

	// search for new .gendsp files in the gendsp folders
	const gendsps = getFileNamesFromPathRecursive(`${cwd()}/${config.referenceFiles.genDsp.input}`, 'gendsp');
	for (const gendsp of gendsps) {
        if (!Object.hasOwn(currentGendsp, gendsp)) {
        	newGendsp[gendsp] = JSON.parse(JSON.stringify(gendspDocTemplate)); // add new entry
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
        	newMaxpats[abs] = JSON.parse(JSON.stringify(abstractionsDocTemplate)); // add new entry
		}
	}

	if (Object.keys(newMaxpats).length === 0 && !force) {
		void max.post('No new abstractions found, everything is up to date!');
		return;
	}
	void max.post(`New .maxpat files found in: ${config.referenceFiles.abstractions.input}`, max.POST_LEVELS.WARN);
	void max.post("Updating abstractions listings in 'evievedoc.config.maxpat.json'");

	currentMaxpats = Object.assign(currentMaxpats, newMaxpats);
/*	// i've decided not to sort the abstractions so that they appear for my brain in folder order
	const sortedMaxpats = Object.entries(currentMaxpats).sort((a, b) =>
		a[0].localeCompare(b[0], undefined, { sensitivity: 'base' })
	);

	const assignMaxpats = Object.fromEntries(sortedMaxpats);
	// @ts-expect-error
*/	maxpat.evi_abstractions = currentMaxpats;//assignMaxpats;

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
        	newExternals[externalName] = JSON.parse(JSON.stringify(externalsDocTemplate)); // add new entry
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

function writeConfigJsonToDisk(config: any) {
  fs.writeFileSync(evievedocConfig, JSON.stringify(config, null, 4));
  void max.outlet('config', 'write', 'done');
}

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

const gendspDocTemplate = {
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

const abstractionsDocTemplate = {
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
	"browser": true,
	"auto": true
}

const externalsDocTemplate = {
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
}

// some helpfiles have automatic general tabs covering an 'area'
const areas = [
	"biquad",
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
]
