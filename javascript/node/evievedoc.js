"use strict";
import * as max from "max-api-or-nah";
import fs from "fs";
import { homedir } from "os";
import { posix, sep } from "path";
import { cwd } from "process";
import Handlebars from "handlebars";
import config from "../config/evievedoc.config.json";
import gendsp from "../config/evievedoc.config.gendsp.json";
import maxpat from "../config/evievedoc.config.maxpat.json";
import mxo from "../config/evievedoc.config.mxo.json";
const evievedocConfig = "../config/evievedoc.config.json";
max.addHandler("callback_from_xml_make", (name) => {
  booboo(name);
});
function booboo(name) {
  const choochoo = name;
}
max.addHandler("test_gendsp_make", () => {
  updateConfigFileGendsp();
});
max.addHandler("test_maxpat_make", () => {
  updateConfigFileMaxpat();
});
max.addHandler("test_external_make", () => {
  updateConfigFileExternals();
});
max.addHandler("make_externals_refpages", (force = false) => {
  void max.outlet("array", "clear");
  createExternalsRefpages(force);
  void max.outlet("array", "bang");
  void max.outlet("process", "bang");
});
max.addHandler("make_refpages_rename", () => {
  externalsRefpagesRename();
});
max.addHandler("make_refpages_contents", () => {
  makeRefpagesXmlContents();
});
function updateConfigFileGendsp(force = false, writeJson = true) {
  let currentGendsp = gendsp.evi_gendsp;
  const newGendsp = {};
  const gendsps = getFileNamesFromPathRecursive(`${cwd()}/${config.referenceFiles.genDsp.input}`, "gendsp");
  for (const gendsp2 of gendsps) {
    if (!Object.hasOwn(currentGendsp, gendsp2)) {
      newGendsp[gendsp2] = JSON.parse(JSON.stringify(gendspDocTemplate));
      newGendsp[gendsp2].define.msp = gendsp2.replaceAll("_", ".").replace(".gendsp", "~");
    }
  }
  if (Object.keys(newGendsp).length === 0 && !force) {
    void max.post("No new gendsp files found, everything is up to date!");
    return;
  }
  void max.post(`New .gendsp files found in: ${config.referenceFiles.genDsp.input}`, max.POST_LEVELS.WARN);
  void max.post("Updating gendsp listings in 'evievedoc.config.gendsp.json'");
  currentGendsp = Object.assign(currentGendsp, newGendsp);
  const sortedGendsp = Object.entries(currentGendsp).sort(
    (a, b) => a[0].localeCompare(b[0], void 0, { sensitivity: "base" })
  );
  const assignGendsp = Object.fromEntries(sortedGendsp);
  gendsp.evi_gendsp = assignGendsp;
  if (writeJson) {
    fs.writeFileSync("../config/evievedoc.config.gendsp.json", JSON.stringify(gendsp, null, 4));
    void max.post("Update of gendsp listings complete!");
    void max.outlet("config", "gendsp", "done");
  }
}
function updateConfigFileMaxpat(force = false, writeJson = true) {
  let currentMaxpats = maxpat.evi_abstractions;
  const newMaxpats = {};
  const abstractions = getFileNamesFromPathRecursive(`${cwd()}/${config.referenceFiles.abstractions.input}`, "maxpat");
  for (const abs of abstractions) {
    if (!Object.hasOwn(currentMaxpats, abs)) {
      newMaxpats[abs] = JSON.parse(JSON.stringify(abstractionsDocTemplate));
    }
  }
  if (Object.keys(newMaxpats).length === 0 && !force) {
    void max.post("No new abstractions found, everything is up to date!");
    return;
  }
  void max.post(`New .maxpat files found in: ${config.referenceFiles.abstractions.input}`, max.POST_LEVELS.WARN);
  void max.post("Updating abstractions listings in 'evievedoc.config.maxpat.json'");
  currentMaxpats = Object.assign(currentMaxpats, newMaxpats);
  maxpat.evi_abstractions = currentMaxpats;
  if (writeJson) {
    fs.writeFileSync("../config/evievedoc.config.maxpat.json", JSON.stringify(maxpat, null, 4));
    void max.post("Update of abstractions listings complete!");
    void max.outlet("config", "maxpat", "done");
  }
}
function updateConfigFileExternals(force = false, writeJson = true) {
  let currentExternals = mxo.evi_externals;
  const newExternals = {};
  const externals = getExternalsNames(`${cwd()}/${config.referenceFiles.externals.input}`);
  for (const external of externals) {
    const externalName = external.replace(".mxo", "");
    if (!Object.hasOwn(currentExternals, externalName)) {
      newExternals[externalName] = JSON.parse(JSON.stringify(externalsDocTemplate));
    }
  }
  if (Object.keys(newExternals).length === 0 && !force) {
    void max.post("No new .mxo files found, everything is up to date!");
    return;
  }
  void max.post(`New .mxo files found in: ${config.referenceFiles.externals.input}`, max.POST_LEVELS.WARN);
  void max.post("Updating externals listings in 'evievedoc.config.mxo.json'");
  currentExternals = Object.assign(currentExternals, newExternals);
  const sortedExternals = Object.entries(currentExternals).sort(
    (a, b) => a[0].localeCompare(b[0], void 0, { sensitivity: "base" })
  );
  const assignExternals = Object.fromEntries(sortedExternals);
  mxo.evi_externals = assignExternals;
  if (writeJson) {
    fs.writeFileSync("../config/evievedoc.config.mxo.json", JSON.stringify(mxo, null, 4));
    void max.post("Update of externals listings complete!");
    void max.outlet("config", "external", "done");
  }
}
function createExternalsRefpages(force) {
  const externals = getExternalsNames(`${cwd()}/${config.referenceFiles.externals.input}`);
  let outDir = `${cwd()}/${config.referenceFiles.externals.output}`;
  void max.outlet("array", "append", `setrefgendestinationpath "${outDir}"`);
  for (const external of externals) {
    createExternalsRefpagesLoop(external, force);
  }
}
function createExternalsRefpagesLoop(external, force) {
  let CREATE;
  const writeNameIn = external.replace(".mxo", "_ref.xml");
  const writeNameOut = external.replace(".mxo", ".maxref.xml");
  const refpageName = external.replace(".mxo", "");
  let outDir = `${cwd()}/${config.referenceFiles.externals.output}`;
  const pathNameIn = `${outDir}/${writeNameIn}`;
  const pathNameOut = `${outDir}/${writeNameOut}`;
  if (!fs.existsSync(pathNameIn) || !fs.existsSync(pathNameOut) || force) {
    void max.outlet("array", "append", `setrefgendestinationpath "${outDir}"`);
    void max.outlet("array", "append", `refgen ${refpageName}`);
    fs.mkdirSync(outDir, { recursive: true });
    CREATE = true;
  } else {
    void max.post(`Skipping ${external} as reference page already exists!`, max.POST_LEVELS.WARN);
    CREATE = false;
  }
  return CREATE;
}
function externalsRefpagesRename() {
  let refDir = `${cwd()}/${config.referenceFiles.externals.output}`;
  let refFiles = getFileNamesFromPath(refDir, "xml");
  const PATTERN = /_c74_contents.xml/;
  refFiles = refFiles.filter((str) => !PATTERN.test(str));
  for (const file of refFiles) {
    const newName = file.replace("_ref.xml", ".maxref.xml");
    fs.renameSync(`${refDir}/${file}`, `${refDir}/${newName}`);
    void max.post(`Renamed ${file} to ${newName}`, max.POST_LEVELS.INFO);
  }
}
function makeRefpagesXmlContents() {
  let refDir = `${cwd()}/${config.referenceFiles.externals.output}`;
  let refFiles = getFileNamesFromPath(refDir, "xml");
  const PATTERN = /_c74_contents.xml/;
  refFiles = refFiles.filter((str) => !PATTERN.test(str));
  renderFromTemplate("../templates/xmlcontents.handlebars", { ref: refFiles }, `${refDir}/_c74_contents.xml`);
}
function getExternalsNames(path) {
  const externalsnames = getFileNamesFromPath(path, "mxo");
  return externalsnames;
}
function getGendspsNames(path) {
  const gendspsnames = getFileNamesFromPath(path, "gendsp");
  return gendspsnames;
}
function getAbstractionsNames(path) {
  const abstractionsnames = getFileNamesFromPath(path, "maxpat");
  return abstractionsnames;
}
function getFileNamesFromPath(path, extension) {
  const filenames = fs.readdirSync(path);
  return filenames.filter((file) => file.match(new RegExp(`.*.(${extension})$`, "ig")));
}
function getFileNamesFromPathRecursive(path, extension) {
  let filetypes;
  const filenames = fs.readdirSync(path, { withFileTypes: true, recursive: true });
  const filelisting = filenames.filter((file) => file.isFile() && !file.isDirectory()).map((file) => file.name);
  if (extension && typeof extension === "string") {
    filetypes = filelisting.filter((file) => file.match(new RegExp(`.*.(${extension})$`, "ig")));
  } else {
    filetypes = filelisting;
  }
  return filetypes;
}
function renderFromTemplate(templatePath, dataToRender, writePath) {
  const template = Handlebars.compile(fs.readFileSync(templatePath, "utf8"));
  const writeData = template(dataToRender);
  fs.writeFileSync(writePath, writeData);
  void max.post("done writing", writePath, max.POST_LEVELS.INFO);
}
function writeConfigJsonToDisk(config2) {
  fs.writeFileSync(evievedocConfig, JSON.stringify(config2, null, 4));
  void max.outlet("config", "write", "done");
}
function resolveTilde(path) {
  if (!path || typeof path !== "string") {
    return "";
  }
  if (path.startsWith("~/") || path === "~") {
    return path.replace("~", homedir());
  }
  return path;
}
function posixPath(path) {
  return path.split(sep).join(posix.sep);
}
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
    "areas": []
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
};
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
};
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
