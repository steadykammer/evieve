"use strict";
let objectNameArgument = "";
let createDacForHelpfile = false;
if (jsarguments.length > 1) {
  objectNameArgument = jsarguments[1];
  if (objectNameArgument.charAt(objectNameArgument.length - 1) === "~") {
    createDacForHelpfile = true;
  }
}
let evieveOption = 0;
if (jsarguments.length > 2) {
  const arg2 = jsarguments[2];
  evieveOption = arg2 > 0;
}
const task = new Task(init, this);
task.schedule(333);
const thisPatcher = patcher;
const thisPath = thisPatcher.filepath;
const thisHelpObjectName = "thisEvieveObject";
function init() {
  const a = thisPatcher.getnamed("basic_tab");
  const testBasicTab = a?.valid;
  if (!testBasicTab) {
    thisPatcher.message(
      "script",
      "newobject",
      "newobj",
      "@text",
      "p basic",
      "@varname",
      "basic_tab",
      "@patching_rect",
      34,
      336,
      50,
      23
    );
    thisPatcher.wind.size = [837, 796];
    thisPatcher.message(
      "script",
      "newobject",
      "newobj",
      "@text",
      `v8ui @filename evi.helpname.js @jsarguments ${objectNameArgument} @patching_rect 10. 10. 500. 50. @background 1 @embed 0`
    );
    const basic = thisPatcher.getnamed("basic_tab");
    basic.subpatcher().setattr("bglocked", 1);
    basic.subpatcher().message("wclose");
    basic.message("showontab", 1);
    basic.message("gridonopen", 1);
    basic.message("gridsize", 15, 15);
    basic.message("fontsize", 13);
    basic.message("fontname", "Arial");
    basic.message("locked", 1);
    basic.subpatcher().message(
      "script",
      "newobject",
      "newobj",
      "@text",
      `v8ui @filename evi.helpdetails.js @jsarguments ${objectNameArgument} ${thisPath} @patching_rect 10. 10. 660. 220. @background 1 @embed 0`
    );
    basic.subpatcher().message(
      "script",
      "newobject",
      "newobj",
      "@text",
      `${objectNameArgument}`,
      "@varname",
      `${thisHelpObjectName}`,
      "@patching_position",
      64,
      412
    );
    if (createDacForHelpfile) {
      const ezdacObj = basic.subpatcher().newdefault(64, 537, "ezdac~");
      ezdacObj.varname = "basic_dac";
      const ezdac = basic.subpatcher().getnamed("basic_dac");
      ezdac.message("local", 1);
      ezdac.message("patching_rect", 64, 537, 45, 45);
      const ezdacComment = basic.subpatcher().newdefault(111, 547, "comment");
      ezdacComment.varname = "comment_dac";
      const comment = basic.subpatcher().getnamed("comment_dac");
      comment.message("set", "Audio On");
      comment.message("bubble", 1);
      comment.message("bubbleside", 3);
      comment.message("textjustification", 1);
      comment.message("fontsize", 13);
      comment.message("fontname", "Arial");
      comment.message("patching_rect", 64, 547, 86, 25);
      comment.message("background", 1);
    }
    const helpObject = basic.subpatcher().getnamed(thisHelpObjectName);
    const objectRect = helpObject.getattr("patching_rect");
    const argsPos = [objectRect[0] + objectRect[2] + 2, objectRect[1] + 1];
    basic.subpatcher().message(
      "script",
      "newobject",
      "newobj",
      "@text",
      `v8ui @filename evi.helpargs.js @jsarguments ${objectNameArgument} @patching_position ${argsPos[0]} ${argsPos[1]} @background 1 @embed 0`
    );
    basic.subpatcher().bringtofront(thisHelpObjectName);
    outlet(0, "setactivetab", "basic");
    outlet(0, "bang");
  }
  if (evieveOption) {
    ;
  }
  const b = thisPatcher.getnamed("q_tab");
  if (b == null) {
    thisPatcher.message(
      "script",
      "newobject",
      "newobj",
      "@text",
      "p ?",
      "@varname",
      "q_tab",
      "@patching_rect",
      535,
      336,
      50,
      23,
      "@background",
      1
    );
    const q = thisPatcher.getnamed("q_tab");
    q.subpatcher().message("wclose");
    q.message("showontab", 1);
  }
}
function resize(x, y = 796) {
  if (x == null) {
    thisPatcher.wind.size = [837, 796];
  } else {
    thisPatcher.wind.size = [x, y];
  }
}
const module = {};
module.exports = {};
