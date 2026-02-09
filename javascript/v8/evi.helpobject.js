"use strict";
inlets = 1;
outlets = 2;
let categories = [];
let foundQLookupFiles = [];
let outputObjects = [];
function findQLookupFiles() {
  const p = new Packages();
  const paths = p.getsubpaths("interfaces", 1);
  foundQLookupFiles = [];
  if (typeof paths === "string") {
    lookForQLookup(paths);
  } else {
    for (let i = 0; i < paths.length; i++) {
      lookForQLookup(paths[i]);
    }
  }
}
findQLookupFiles.local = 1;
function lookForQLookup(path) {
  const f = new Folder(path);
  f.typelist = ["JSON"];
  while (!f.end) {
    if (f.filename.search("obj-qlookup") !== -1) {
      foundQLookupFiles[foundQLookupFiles.length] = `${path}/${f.filename}`;
    }
    f.next();
  }
  f.close();
}
lookForQLookup.local = 1;
function getcategories() {
  findQLookupFiles();
  outlet(0, "clear");
  outlet(0, "append", "(Select Category...)");
  categories = [];
  for (let i = 0; i < foundQLookupFiles.length; i++) {
    const d = new Dict();
    d.import_json(foundQLookupFiles[i]);
    addToCategoryArray(d, d.getkeys());
    d.freepeer();
  }
  const sorted = categories.sort(alphabeticalSort);
  const thinned = thinArray(sorted);
  for (let i = 0; i < thinned.length; i++) {
    outlet(0, "append", thinned[i]);
  }
  outlet(0, 1);
}
function addToCategoryArray(d, objectNames) {
  for (let i = 0; i < objectNames.length; i++) {
    const categoryNames = d.get(`${objectNames[i]}::category`);
    if (typeof categoryNames === "object") {
      for (const categoryName in categoryNames) {
        if (categoryNames[categoryName] !== "Unlisted") {
          categories[categories.length] = categoryNames[categoryName];
        }
      }
    } else {
      if (categoryNames !== "Unlisted") categories[categories.length] = categoryNames;
    }
  }
}
addToCategoryArray.local = 1;
function thinArray(inputArray) {
  const rtn = [];
  rtn[0] = inputArray[0];
  for (let i = 1; i < inputArray.length; i++) {
    if (rtn[rtn.length - 1] !== inputArray[i]) rtn[rtn.length] = inputArray[i];
  }
  return rtn;
}
thinArray.local = 1;
function dumpcategory(categorySearched) {
  outputObjects = [];
  outlet(1, "clear");
  for (let i = 0; i < foundQLookupFiles.length; i++) {
    const d = new Dict();
    d.import_json(foundQLookupFiles[i]);
    findObjectForCategory(d, categorySearched);
    d.freepeer();
  }
  const sorted = outputObjects.sort(alphabeticalSort);
  for (let i = 0; i < sorted.length; i++) {
    outlet(1, "append", sorted[i]);
  }
}
function findObjectForCategory(d, categorySearched) {
  const objectNames = d.getkeys();
  for (let i = 0; i < objectNames.length; i++) {
    const categoryNames = d.get(`${objectNames[i]}::category`);
    if (typeof categoryNames === "object") {
      for (const cat in categoryNames) {
        if (categoryNames[cat] === categorySearched) {
          outputObjects[outputObjects.length] = objectNames[i];
          break;
        }
      }
    } else if (categoryNames === categorySearched) {
      outputObjects[outputObjects.length] = objectNames[i];
    }
  }
}
findObjectForCategory.local = 1;
function alphabeticalSort(a, b) {
  const nameA = a.toLowerCase();
  const nameB = b.toLowerCase();
  if (nameA < nameB) return -1;
  if (nameA > nameB) return 1;
  return 0;
}
alphabeticalSort.local = 1;
const module = {};
module.exports = {};
