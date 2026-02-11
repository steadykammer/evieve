"use strict";
let objectNameArgument;
if (jsarguments.length > 1) {
  objectNameArgument = jsarguments[1];
}
let thisPath = "";
if (jsarguments.length > 2) {
  for (let i = 2; i < jsarguments.length; i++) {
    const getArg = jsarguments[i];
    thisPath += `${getArg} `;
  }
}
const thisPatcher = patcher;
const thisBox = box;
thisBox.message("border", 0);
thisBox.message("ignoreclick", 1);
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;
let peter = new Image();
let refDict;
let absDict;
let aliasName;
let aliasRender = "";
let renderAlias = false;
let shortDesc = "";
let longDesc = "";
let sw;
let swPrev = 0;
let edgeR = 0;
let bottom;
let bottomPrev = thisBox.rect[3] - thisBox.rect[1];
let linesOfText;
let textHeight = 0;
let wrapText = [];
let isJa = false;
function init() {
  const qDict = new Dict();
  qDict.import_json(qInit());
  if (qDict.contains(`${objectNameArgument}::alias`)) {
    renderAlias = true;
    aliasName = qDict.get(`${objectNameArgument}::alias`);
    if (aliasName.length > 1) {
      aliasRender = aliasName.join("  |  ");
    } else {
      aliasRender = aliasName[0];
    }
  }
  refDict = max.getrefdict(objectNameArgument);
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
    }
    refDict.freepeer();
  }
  isJa = max.getattr("translation").indexOf("(ja)") !== -1;
  qDict.freepeer();
}
init();
function qInit() {
  let qLookup = "evieve-obj-qlookup.json";
  let qImage = "peter_icon.png";
  peter = new Image(qImage);
  return qLookup;
}
qInit.local = 1;
function paint() {
  updateSw();
  let textLocation;
  bottom = Math.round(15 * wrapText.length + 80);
  if (objectNameArgument) {
    const renderAliasOffset = 45;
    const bgColor = thisPatcher.getattr("locked_bgcolor");
    const textColor = thisPatcher.getattr("textcolor");
    const descColor = [textColor[0], textColor[1], textColor[2], textColor[3] * 0.555];
    mgraphics.set_source_rgba(bgColor);
    mgraphics.paint();
    if (renderAlias) {
      mgraphics.move_to(104, 40);
      mgraphics.select_font_face("Lato");
      mgraphics.set_source_rgba(textColor);
      mgraphics.set_font_size(48);
      mgraphics.show_text(objectNameArgument);
      mgraphics.move_to(105, 85);
      mgraphics.set_font_size(30);
      mgraphics.set_source_rgba(descColor);
      mgraphics.show_text(aliasRender);
    } else {
      mgraphics.move_to(110, 63);
      mgraphics.select_font_face("Lato");
      mgraphics.set_source_rgba(textColor);
      mgraphics.set_font_size(48);
      mgraphics.show_text(objectNameArgument);
    }
    mgraphics.move_to(4, 78 + renderAliasOffset);
    mgraphics.set_font_size(13);
    mgraphics.set_source_rgba(textColor);
    if (shortDesc) mgraphics.show_text(shortDesc);
    mgraphics.move_to(4, 88 + renderAliasOffset);
    if (longDesc != null) {
      mgraphics.set_source_rgba(descColor);
      doWordWrap(longDesc);
    }
    for (let i = 0; i < wrapText.length; i++) {
      textLocation = 88 + renderAliasOffset + textHeight * (i + 1);
      mgraphics.move_to(4, textLocation + 0.5);
      mgraphics.text_path(wrapText[i]);
    }
    mgraphics.fill();
  }
  mgraphics.set_source_rgba(1, 1, 1, 1);
  mgraphics.identity_matrix();
  mgraphics.transform(0.185, 0.185, 0, 0, 4, 4);
  mgraphics.image_surface_draw(peter);
}
function doWordWrap(theText) {
  let tmpText;
  let tmpString;
  wrapText = [];
  let tm = mgraphics.text_measure(theText);
  textHeight = tm[1];
  linesOfText = theText.split("\n");
  for (let k = 0; k < linesOfText.length; k++) {
    tm = mgraphics.text_measure(linesOfText[k]);
    if (tm[0] <= sw) {
      wrapText.push(linesOfText[k]);
    } else {
      if (isJa) tmpText = linesOfText[k];
      else tmpText = linesOfText[k].split(" ");
      tmpString = "";
      let st = 0;
      let en = -1;
      let i = 0;
      while (i < tmpText.length) {
        if (isJa) tmpString += tmpText[i];
        else tmpString += `${tmpText[i]} `;
        tm = mgraphics.text_measure(tmpString);
        if (tm[0] > sw - 8) {
          if (en === -1) {
            wrapText.push(tmpString);
            st = ++i;
            en = -1;
            tmpString = "";
          } else {
            tmpString = "";
            for (let j = st; j <= en; j++) {
              if (isJa) tmpString += tmpText[j];
              else tmpString += `${tmpText[j]} `;
            }
            wrapText.push(tmpString);
            tmpString = "";
            st = i;
            en = -1;
          }
        } else {
          en = i++;
        }
      }
      wrapText.push(tmpString);
    }
  }
}
doWordWrap.local = 1;
function fitHeight() {
  bottomPrev = bottom;
  swPrev = sw;
  thisBox.message("patching_rect", thisBox.rect[0], thisBox.rect[1], edgeR, bottom);
}
fitHeight.local = 1;
function updateSw() {
  edgeR = thisBox.rect[2] - thisBox.rect[0];
  sw = edgeR;
}
updateSw.local = 1;
const module = {};
module.exports = {};
