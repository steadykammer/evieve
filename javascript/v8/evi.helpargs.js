"use strict";
/*!
 * this file is automatically transpiled from Typescript - DO NOT EDIT BY HAND
 */
let objectNameArgument;
if (jsarguments.length > 1) {
  objectNameArgument = jsarguments[1];
}
let offsetArg = 2;
if (jsarguments.length > 2) {
  offsetArg = jsarguments[2];
}
const thisPatcher = patcher;
const thisBox = box;
thisBox.message("border", 0);
thisBox.message("ignoreclick", 1);
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;
const edge = [0, 0];
let value = [];
let executed = false;
function init() {
  let opt = [];
  const dict = max.getrefdict(objectNameArgument);
  const args = dict.get("objargs");
  const argsKeys = args.getkeys();
  if (args) {
    post(`${JSON.stringify(args)}`);
  }
  dict.freepeer();
  if (args) {
    args.freepeer();
  }
}
init();
function clip(v, lo, hi) {
  return v < lo ? lo : v > hi ? hi : v;
}
function adjustColor(color, amount) {
  const newcolor = [0, 0, 0, 1];
  let newamount = 0.5;
  if (color[0] + color[1] + color[2] < 0.6) {
    newamount = Math.abs(amount);
  } else if (color[0] + color[1] + color[2] > 2.4) {
    newamount = -Math.abs(amount);
  }
  newcolor[0] = clip(color[0] + newamount, 0, 1);
  newcolor[1] = clip(color[1] + newamount, 0, 1);
  newcolor[2] = clip(color[2] + newamount, 0, 1);
  newcolor[3] = color[3];
  return newcolor;
}
function paint() {
  if (objectNameArgument) {
    mgraphics.select_font_face("Lato");
    mgraphics.set_font_size(13);
    argEdgeCalc(objectNameArgument);
    const panelcolor = thisPatcher.getattr("accentcolor");
    mgraphics.set_source_rgba(panelcolor);
    mgraphics.rectangle_rounded(20, 0, edge[0] + 10, edge[1] + 23, 8, 8);
    mgraphics.fill();
    mgraphics.move_to(2, offsetArg + 8);
    mgraphics.line_to(10, offsetArg + 1);
    mgraphics.line_to(10, offsetArg + 15);
    mgraphics.close_path();
    mgraphics.fill();
    mgraphics.move_to(9, offsetArg + 8);
    mgraphics.set_line_width(3);
    mgraphics.line_to(20, offsetArg + 8);
    mgraphics.stroke();
    mgraphics.move_to(25, 15);
    const textcolor = adjustColor(panelcolor, -0.4);
    mgraphics.set_source_rgba(textcolor);
    mgraphics.show_text("Arguments:");
    const inverttextcolor = adjustColor(panelcolor, 0.4);
    inverttextcolor.push(1);
    mgraphics.set_source_rgba(inverttextcolor);
    mgraphics.move_to(25, 30);
    argDraw(objectNameArgument);
    mgraphics.fill();
  }
}
function argDraw(_name) {
  if (value) {
    if (Array.isArray(value)) {
      for (let i = 0; i < value.length; i++) {
        mgraphics.show_text(value[i]);
        mgraphics.move_to(25, 45 + i * 15);
      }
    } else {
      mgraphics.show_text(value);
      mgraphics.move_to(25, 60);
    }
  }
}
function argEdgeCalc(_name) {
  if (Array.isArray(value)) {
    edge[0] = 68;
    for (let i = 0; i < value.length; i++) {
      const measure = mgraphics.text_measure(value[i]);
      edge[0] = Math.max(edge[0], measure[0]);
      edge[1] = value.length * 15;
    }
    theBox();
  } else {
    edge[0] = mgraphics.text_measure(value)[0];
    edge[0] = Math.max(edge[0], 68);
    edge[1] = 15;
    theBox();
  }
}
function theBox() {
  if (!executed) {
    executed = true;
    thisBox.message("rect", thisBox.rect[0], thisBox.rect[1], edge[0] + 32, edge[1] + 24);
  }
}
const module = {};
module.exports = {};
