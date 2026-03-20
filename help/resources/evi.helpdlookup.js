"use strict";
/*!
 * this file is automatically transpiled from Typescript - DO NOT EDIT BY HAND
 */
let objectName = "";
let refsDict = new Dict();
let objectType = "";
let shortDesc = "";
let longDesc = "";
const evieveDlookup = "evieve-obj-dlookup.json";
const defineSplit = "it also accepts all messages and attributes that a gen~ object does. \n\n";
const dDict = new Dict();
function loadbang() {
  dDict.import_json(evieveDlookup);
}
function get(objectNameInput) {
  objectType = "";
  shortDesc = "";
  longDesc = "";
  if (dDict.contains(objectNameInput)) {
    refsDict = dDict.get(objectNameInput);
    objectType = refsDict.get("type");
    shortDesc = refsDict.get("digest");
    longDesc = refsDict.get("description");
    refsDict.freepeer();
  }
  if (objectType === "define") {
    if (longDesc.includes(defineSplit)) {
      longDesc = longDesc.split(defineSplit)[1];
    }
  }
  objectName = objectNameInput;
  outputTheText();
}
function outputTheText() {
  outlet(0, "name", objectName);
  outlet(0, "type", objectType);
  outlet(0, "digest", shortDesc);
  outlet(0, "description", longDesc);
}
outputTheText.local = 1;
const module = {};
module.exports = {};
