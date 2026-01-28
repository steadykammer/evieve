
//import max = require('max-api-or-nah');
//import max from 'max-api-or-nah';
import * as max from 'max-api-or-nah';
import fs from 'fs';
import { cwd } from 'process';
import Handlebars from 'handlebars';
import { XMLParser } from 'fast-xml-parser';

import cfg from '../config/evievedoc.config.json';
import gendsp from '../config/evievedoc.config.gendsp.json';
import maxpat from '../config/evievedoc.config.maxpat.json';
import mxo from '../config/evievedoc.config.mxo.json';
import qabs from '../config/evievedoc.abstractions.qlookup.json';


max.addHandler('callback_from_xml_make', (name: string) => {
    booboo(name);
})

function booboo(name: string)
{
    const choochoo = name;
}

function writeConfigJsonToDisk(cfg: any) {
  fs.writeFileSync('../config/evievedoc.config.json', JSON.stringify(cfg, null, 4));
  void max.outlet('config', 'write', 'done');
}

