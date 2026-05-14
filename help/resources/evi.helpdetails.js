"use strict";
/*!
 * This file is automatically transpiled from Typescript - DO NOT EDIT BY HAND
 * This file is part of the 'evieve' Package for Max.
 * evieve is a library of GenExpr audio code by Pete Dowling.
 */
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
let renderAlias = false;
let imageMargin = 100;
let shortDesc = "";
let longDesc = "";
let swL;
let swS;
let swPrev = 0;
let edgeR = 0;
let bottom;
let bottomPrev = thisBox.rect[3] - thisBox.rect[1];
let linesOfText;
let textHeight = 0;
let wrapText = [];
let isJa = false;
function init() {
  const dDict = new Dict();
  dDict.import_json(dInit());
  refDict = dDict.get(objectNameArgument);
  if (typeof refDict === "object") {
    shortDesc = refDict.get("digest");
    longDesc = refDict.get("description");
    if (longDesc === shortDesc) {
      longDesc = null;
    }
    refDict.freepeer();
  }
  isJa = max.getattr("translation").indexOf("(ja)") !== -1;
  dDict.freepeer();
}
init();
function dInit() {
  let dLookup = "evieve-obj-dLookup.json";
  let dImage = "peter_icon.png";
  peter = new Image(dImage);
  return dLookup;
}
dInit.local = 1;
function paint() {
  updateSw();
  let textLocation;
  let tlS = 0;
  let mtO = 0;
  bottom = Math.round(15 * wrapText.length + 80);
  if (objectNameArgument) {
    const renderAliasOffset = renderAlias ? 45 : 25;
    const bgColor = thisPatcher.getattr("locked_bgcolor");
    const textColor = thisPatcher.getattr("textcolor");
    const descColor = [textColor[0], textColor[1], textColor[2], textColor[3] * 0.666];
    mgraphics.set_source_rgba(bgColor);
    mgraphics.paint();
    mgraphics.move_to(111, 70 + renderAliasOffset);
    mgraphics.set_font_size(13);
    mgraphics.set_source_rgba(textColor);
    if (shortDesc) {
      let tm = mgraphics.text_measure(shortDesc);
      if (tm[0] > swS) {
        tlS = 40;
        mtO = 44;
      } else {
        tlS = 48;
        mtO = 50;
      }
      doWordWrap(shortDesc, imageMargin);
      for (let i = 0; i < wrapText.length; i++) {
        textLocation = tlS + renderAliasOffset + textHeight * (i + 1);
        mgraphics.move_to(111, textLocation + 0.5);
        mgraphics.show_text(wrapText[i]);
      }
    } else {
      mtO = 63;
    }
    mgraphics.move_to(110, mtO);
    mgraphics.select_font_face("Lato");
    mgraphics.set_source_rgba(textColor);
    mgraphics.set_font_size(48);
    mgraphics.show_text(objectNameArgument);
    mgraphics.move_to(11, 64 + renderAliasOffset);
    mgraphics.set_font_size(13);
    mgraphics.set_source_rgba(descColor);
    if (longDesc != null) {
      doWordWrap(longDesc);
      for (let i = 0; i < wrapText.length; i++) {
        textLocation = 84 + renderAliasOffset + textHeight * (i + 1);
        mgraphics.move_to(10, textLocation + 0.5);
        mgraphics.text_path(wrapText[i]);
      }
    }
    mgraphics.fill();
  }
  mgraphics.set_source_rgba(1, 1, 1, 1);
  mgraphics.identity_matrix();
  mgraphics.transform(0.185, 0.185, 0, 0, 4, 4);
  mgraphics.image_surface_draw(peter);
}
function doWordWrap(theText, theMargin = 0) {
  let tmpText;
  let tmpString;
  wrapText = [];
  let tm = mgraphics.text_measure(theText);
  textHeight = tm[1];
  linesOfText = theText.split("\n");
  for (let k = 0; k < linesOfText.length; k++) {
    tm = mgraphics.text_measure(linesOfText[k]);
    if (tm[0] <= swL - theMargin) {
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
        if (tm[0] > swL - 10 - theMargin) {
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
  swPrev = swL;
  thisBox.message("patching_rect", thisBox.rect[0], thisBox.rect[1], edgeR, bottom);
}
fitHeight.local = 1;
function updateSw() {
  edgeR = thisBox.rect[2] - thisBox.rect[0];
  swL = edgeR;
  swS = edgeR - imageMargin;
}
updateSw.local = 1;
const module = {};
module.exports = {};
