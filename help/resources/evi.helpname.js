"use strict";
/*!
 * this file is automatically transpiled from Typescript - DO NOT EDIT BY HAND
 */
let objectNameArgument;
if (jsarguments.length > 1) {
  objectNameArgument = jsarguments[1];
}
let overideWidthInit = 0;
if (jsarguments.length > 2) {
  overideWidthInit = jsarguments[2];
}
const thisPatcher = patcher;
const thisBox = box;
thisBox.message("border", 0);
thisBox.message("ignoreclick", 1);
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;
let isFirstTime = true;
function paint() {
  if (objectNameArgument) {
    const bgcolor = thisPatcher.getattr("locked_bgcolor");
    mgraphics.set_source_rgba(bgcolor);
    mgraphics.paint();
    mgraphics.move_to(4, 40);
    mgraphics.select_font_face("Lato");
    const textcolor = thisPatcher.getattr("textcolor");
    mgraphics.set_source_rgba(textcolor);
    mgraphics.set_font_size(48);
    mgraphics.show_text(objectNameArgument);
    mgraphics.fill();
    if (isFirstTime) {
      const widthHeight = mgraphics.text_measure(objectNameArgument);
      if (overideWidthInit > 0) {
        thisBox.message("patching_rect", 10, 10, overideWidthInit, widthHeight[1]);
      } else {
        thisBox.message("patching_rect", 10, 10, widthHeight[0] + 10, widthHeight[1]);
      }
      isFirstTime = false;
    }
  }
}
const module = {};
module.exports = {};
