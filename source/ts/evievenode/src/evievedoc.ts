
import * as max from 'max-api-or-nah';
import fs from 'fs';
import { homedir } from 'os';
import { posix, sep } from 'path';
import { cwd } from 'process';
import Handlebars from 'handlebars';
import { XMLParser } from 'fast-xml-parser';

import config from '../config/evievedoc.config.json';
import gendsp from '../config/evievedoc.config.gendsp.json';
import maxpat from '../config/evievedoc.config.maxpat.json';
import mxo from '../config/evievedoc.config.mxo.json';
import qabs from '../config/evievedoc.abstractions.qlookup.json';

const evievedocConfig = '../config/evievedoc.config.json';

// --------------------------------------------- //

max.addHandler('callback_from_xml_make', (name: string) => {
    booboo(name);
})

function booboo(name: string)
{
    const choochoo = name;
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

function writeConfigJsonToDisk(config: any) {
  fs.writeFileSync('../config/evievedoc.config.json', JSON.stringify(config, null, 4));
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
