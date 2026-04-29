"use strict";
/*!
    This file is part of the 'evieve' Package for Max.
    evieve is a library of GenExpr audio code by Pete Dowling.

    evieve is released under the GPLv3 license, copyright © Peter Dowling 2026.
    This means that it is licensed for non-commercial use only.
    For license details @see: 'license.txt' in the root of the Package, or access it via
    the Max 'Package Manager'. Otherwise see <https://www.gnu.org/licenses/>.

    evieve is free software: you can redistribute it and/or modify it under the terms
    of the GNU General Public License as published by the Free Software Foundation,
    either version 3 of the License, or (at your option) any later version.

    evieve is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
    without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
    See the GNU General Public License for more details.
*/
/*!
 * this file is automatically transpiled from Typescript - DO NOT EDIT BY HAND
*/
inlets = 1;
outlets = 3;
let uniqueId = "#0";
let dataFolderName = "genexpr-data";
if (jsarguments.length > 1) {
  dataFolderName = jsarguments[1];
  if (jsarguments.length > 2) {
    uniqueId = jsarguments[2];
  }
}
const thisPatcher = patcher;
const funcShowBrackets = " ( )";
const exprDataDict = new Dict(`${uniqueId}_genExprIndexDict`);
init(dataFolderName);
function adjustUiBoxes(ins, rets) {
  const inNum = Math.max(ins, 1);
  const retNum = Math.max(rets, 1);
  const inputsBox = thisPatcher.getnamed(`${uniqueId}_inputs`);
  const returnsBox = thisPatcher.getnamed(`${uniqueId}_returns`);
  const seealsoBox = thisPatcher.getnamed(`${uniqueId}_seealso`);
  const inBoxPos = inputsBox.getattr("presentation_rect");
  const retBoxPos = returnsBox.getattr("presentation_rect");
  const seeBoxPos = seealsoBox.getattr("presentation_rect");
  const insOffset3 = inNum * 25 + 25;
  const retsOffset1 = inBoxPos[1] + insOffset3 + 2;
  const retsOffset3 = retNum * 25 + 25;
  const seesOffset1 = retsOffset1 + retsOffset3 + 25 + 2;
  inputsBox.setattr("presentation_rect", inBoxPos[0], inBoxPos[1], inBoxPos[2], insOffset3);
  returnsBox.setattr("presentation_rect", retBoxPos[0], retsOffset1, retBoxPos[2], retsOffset3);
  seealsoBox.setattr("presentation_rect", seeBoxPos[0], seesOffset1, seeBoxPos[2], seeBoxPos[3]);
}
adjustUiBoxes.local = 1;
function selectfunction(genExprFunction) {
  const selectedFunction = genExprFunction.replace(funcShowBrackets, "");
  const exprDictObj = JSON.parse(JSON.stringify(exprDataDict));
  const thisFunc = exprDictObj.functions.find((obj) => obj.name === selectedFunction);
  const numInputs = thisFunc.inputs.length;
  const numReturns = thisFunc.returns.length;
  outlet(2, "about", "clear");
  outlet(2, "about", "set", thisFunc.digest);
  let i = 0;
  outlet(2, "inputs", "clear");
  for (const input of thisFunc.inputs) {
    if (input.kind === "input") {
      outlet(2, "inputs", i, "fontsize", 14);
      outlet(2, "inputs", i, "presentation_size", 660, 23);
      outlet(2, "inputs", i, "set", `in=${input.id}, type=${input.kind}, name=${input.name}, ${input.digest}`);
    } else if (input.kind === "param") {
      outlet(2, "inputs", i, "fontsize", 11);
      outlet(2, "inputs", i, "presentation_size", 660, 23);
      outlet(2, "inputs", i, "set", `in=${input.id}, type=${input.kind} (optional), name=${input.name}, default=(${input.type}) ${input.default}, ${input.digest}`);
    } else if (input.kind === "Param") {
      outlet(2, "inputs", i, "fontsize", 11);
      outlet(2, "inputs", i, "presentation_size", 660, 23);
      outlet(2, "inputs", i, "set", `in=${input.id}, type=${input.kind} (optional), name=${input.name}, default=(${input.type}) ${input.default}, min=${input.min}, max=${input.max}, ${input.digest}`);
    }
    i++;
  }
  let j = 0;
  outlet(2, "returns", "clear");
  for (const ret of thisFunc.returns) {
    outlet(2, "returns", j, "set", `out=${ret.id} (${ret.name}), ${ret.digest}`);
    j++;
  }
  adjustUiBoxes(numInputs, numReturns);
  outlet(2, "done");
}
function selectgenexpr(genExprFile) {
  let funcNamesArray = new Array();
  const selectedDataName = genExprFile.replace(".genexpr", "_data.json");
  exprDataDict.import_json(selectedDataName);
  const functions = exprDataDict.get("functions");
  for (const func of functions) {
    if (func.get("document")) {
      let funcName = func.get("name");
      funcNamesArray.push(funcName);
    }
  }
  const fileDescription = exprDataDict.get("description");
  const requiresArray = exprDataDict.get("requires");
  const fileRequires = requiresArray.join(", ");
  let seealsoArray = exprDataDict.get("seealso");
  let fileSeealso = "";
  if (seealsoArray) {
    for (let i = 0; i < seealsoArray.length; i++) {
      fileSeealso += `${seealsoArray[i]}.genexpr `;
    }
    fileSeealso = fileSeealso.trim();
  }
  outlet(0, "about", "clear");
  outlet(0, "about", "set", fileDescription);
  outlet(0, "require", "clear");
  outlet(0, "require", "set", fileRequires);
  if (seealsoArray.length) {
    outlet(0, "seealso", `tabs ${fileSeealso}`);
  } else {
    outlet(0, "seealso", "bang");
  }
  outlet(2, "clear");
  outlet(1, "clear");
  outlet(1, "append", `(Select a GenExpr Function from the '${genExprFile}' File)`);
  outlet(1, "append", "<separator>");
  for (let i = 0; i < funcNamesArray.length; i++) {
    outlet(1, "append", `${funcNamesArray[i]}${funcShowBrackets}`);
  }
  outlet(1, "set", 0);
  adjustUiBoxes(0, 0);
  outlet(1, "done");
}
function init(folder) {
  let genExprFileListing = new Array();
  const selectedFolder = new Folder(folder);
  selectedFolder.reset();
  while (!selectedFolder.end) {
    if (selectedFolder.extension === ".json") {
      const fileForListing = selectedFolder.filename.replace("_data.json", ".genexpr");
      genExprFileListing.push(fileForListing);
    }
    selectedFolder.next();
  }
  selectedFolder.close();
  outlet(2, "clear");
  outlet(1, "clear");
  outlet(0, "clear");
  outlet(0, "append", "(Select GenExpr File)");
  outlet(0, "append", "<separator>");
  for (let i = 0; i < genExprFileListing.length; i++) {
    outlet(0, "append", genExprFileListing[i]);
  }
  outlet(0, "set", 0);
  adjustUiBoxes(0, 0);
  outlet(0, "done");
}
init.local = 1;
function bang() {
  init(dataFolderName);
}
