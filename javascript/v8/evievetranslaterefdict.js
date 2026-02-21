"use strict";
/*!
 * this file is automatically transpiled from Typescript - DO NOT EDIT BY HAND
 */
let thisPatcher;
let fullPath;
let dlookup = new Dict("editDlookupContents");
let qlookup = new Dict("editQlookupContents");
const dlookupname = "evieve-obj-dlookup.json";
const qlookupname = "evieve-obj-qlookup.json";
function editjson() {
  getDlookupFile();
  getQlookupFile();
  const Qkeys = qlookup.getkeys();
  for (const object of Qkeys) {
    lookupRefDictLoop(object);
  }
  dlookup.export_json(`${fullPath}/${dlookupname}`);
  qlookup.export_json(`${fullPath}/${qlookupname}`);
  post("Sanitisation of d & q lookup files done!\n");
  post(`dlookup edited here: ${fullPath}/${dlookupname}
`);
  post(`qlookup edited here: ${fullPath}/${qlookupname}
`);
  post();
}
function loadbang() {
  thisPatcher = patcher;
  const thisPath = thisPatcher.filepath;
  const basePath = thisPath.split("source")[0];
  fullPath = `${basePath}interfaces`;
}
function getDlookupFile() {
  dlookup.import_json(`${fullPath}/${dlookupname}`);
}
getDlookupFile.local = 1;
function getQlookupFile() {
  qlookup.import_json(`${fullPath}/${qlookupname}`);
}
getQlookupFile.local = 1;
function lookupRefDictLoop(objectNameArgument) {
  let thisDentry = {};
  let thisQentry = {};
  let shortDesc = "";
  let longDesc = "";
  let refDict = max.getrefdict(objectNameArgument);
  if (typeof refDict === "object") {
    shortDesc = refDict.get("digest");
    longDesc = refDict.get("description");
    if (longDesc === shortDesc) {
      longDesc = null;
    }
    if (longDesc) {
      longDesc = longDesc.trim();
      if (longDesc.substring(0, longDesc.length - 1) === shortDesc && longDesc.substring(longDesc.length - 1) === ".") {
        longDesc = null;
      }
    } else {
      longDesc = "";
    }
    refDict.freepeer();
    dlookup.replace(`${objectNameArgument}::digest`, shortDesc);
    dlookup.replace(`${objectNameArgument}::description`, longDesc);
    qlookup.replace(`${objectNameArgument}::digest`, shortDesc);
  }
}
lookupRefDictLoop.local = 1;
const module = {};
module.exports = {};
