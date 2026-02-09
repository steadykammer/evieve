"use strict";
let objectName = "";
let aliasName;
let aliasRender = "";
let renderAlias = false;
let refDict;
let absDict;
let shortDesc = "";
let longDesc = "";
const evieveQlookup = "evieve-obj-qlookup.json";
function get(objectNameArgument) {
  let isNotObject = false;
  const qDict = new Dict();
  qDict.import_json(evieveQlookup);
  if (qDict.contains(`${objectNameArgument}::alias`)) {
    renderAlias = true;
    aliasName = qDict.get(`${objectNameArgument}::alias`);
    if (aliasName.length > 1) {
      aliasRender = `  |  aliases:  ${aliasName.join("  |  ")}`;
    } else {
      aliasRender = `  |  alias:  ${aliasName[0]}`;
    }
  } else {
    aliasRender = "";
  }
  if (isNotObject) {
    absDict = qDict.get(objectNameArgument);
    shortDesc = "";
    if (absDict.contains("digest")) {
      shortDesc = absDict.get("digest");
    }
    longDesc = "";
    if (absDict.contains("description")) {
      longDesc = absDict.get("description");
    }
    absDict.freepeer();
  } else {
    refDict = max.getrefdict(objectNameArgument);
    shortDesc = "";
    longDesc = "";
    if (typeof refDict === "object") {
      shortDesc = refDict.get("digest");
      longDesc = refDict.get("description");
      refDict.freepeer();
    }
  }
  objectName = objectNameArgument;
  qDict.freepeer();
  outputTheText();
}
function outputTheText() {
  outlet(0, "names", `${objectName} ${aliasRender}`);
  outlet(0, "description", longDesc);
  outlet(0, "digest", shortDesc);
}
outputTheText.local = 1;
const module = {};
module.exports = {};
