"use strict";
/*!
 * this file is automatically transpiled from Typescript - DO NOT EDIT BY HAND
 */
let objectNameArgument = "";
let createDacForHelpfile = false;
if (jsarguments.length > 1) {
  objectNameArgument = jsarguments[1];
  if (objectNameArgument.charAt(objectNameArgument.length - 1) === "~") {
    createDacForHelpfile = true;
  }
}
let eviType = -1;
let eviOption1 = 0;
let eviOption2 = 0;
let eviOption3 = 0;
let eviOption4 = 0;
let eviOption5 = "none";
if (jsarguments.length > 2) {
  eviType = jsarguments[2];
  eviOption1 = jsarguments[3];
  eviOption2 = jsarguments[4];
  eviOption3 = jsarguments[5];
  eviOption4 = jsarguments[6];
  eviOption5 = jsarguments[7];
}
const task = new Task(init, this);
task.schedule(111);
const thisPatcher = patcher;
const thisPath = thisPatcher.filepath;
const thisHelpObjectName = "evieveObject";
const textColor = thisPatcher.getattr("textcolor");
const descColor = [textColor[0], textColor[1], textColor[2], textColor[3] * 0.555];
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
    thisPatcher.wind.size = [1277, 796];
    thisPatcher.message(
      "script",
      "newobject",
      "newobj",
      "@text",
      `v8ui @filename evi.helpname.js @jsarguments ${objectNameArgument} @patching_rect 10. 10. 500. 50. @background 1 @embed 0`
    );
    const basic = thisPatcher.getnamed("basic_tab");
    basic.subpatcher().setattr("openrect", 22, 55, 837, 796);
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
    const PETER_BPATCHER_FILE = "helpfile_pickup_overview.maxpat";
    basic.subpatcher().message(
      "script",
      "newobject",
      "newobj",
      "@text",
      `bpatcher`,
      "@varname",
      "PeterButton",
      "@patching_position",
      11,
      11
    );
    const peterBpatcher = basic.subpatcher().getnamed("PeterButton");
    peterBpatcher.setboxattr("patching_rect", 11, 11, 98, 98);
    peterBpatcher.setboxattr("lockedsize", 1);
    peterBpatcher.setboxattr("name", `${PETER_BPATCHER_FILE}`);
    basic.subpatcher().bringtofront("PeterButton");
    basic.subpatcher().message(
      "script",
      "newobject",
      "newobj",
      "@text",
      `${objectNameArgument}`,
      "@varname",
      `${thisHelpObjectName}`,
      "@patching_position",
      140,
      336
    );
    if (createDacForHelpfile) {
      const ezdacObj = basic.subpatcher().newdefault(140, 537, "ezdac~");
      ezdacObj.varname = "basic_dac";
      const ezdac = basic.subpatcher().getnamed("basic_dac");
      ezdac.message("local", 1);
      ezdac.message("patching_rect", 140, 537, 45, 45);
      const ezdacComment = basic.subpatcher().newdefault(111, 547, "comment");
      ezdacComment.varname = "comment_dac";
      const comment = basic.subpatcher().getnamed("comment_dac");
      comment.message("set", "Audio On");
      comment.message("bubble", 1);
      comment.message("bubbleside", 1);
      comment.message("textjustification", 1);
      comment.message("fontsize", 13);
      comment.message("fontname", "Arial");
      comment.message("patching_rect", 187, 547, 86, 25);
      comment.message("background", 1);
    }
    if (eviType !== 1) {
      const helpObject = basic.subpatcher().getnamed(thisHelpObjectName);
      const objectRect = helpObject.getattr("patching_rect");
      const argsPos = [objectRect[0] + objectRect[2] + 2, objectRect[1] + 1];
      basic.subpatcher().message(
        "script",
        "newobject",
        "newobj",
        "@text",
        // cannot get my [v8ui] working for now, use Cyling '74 code instead...
        // `v8ui @filename evi.helpargs.js @jsarguments ${objectNameArgument} @patching_position ${argsPos[0]} ${argsPos[1]} @background 1 @embed 0`);
        `jsui @filename helpargs.js @jsarguments ${objectNameArgument} @patching_position ${argsPos[0]} ${argsPos[1]} @background 1 @embed 0`
      );
    }
    basic.subpatcher().bringtofront(thisHelpObjectName);
    outlet(0, "setactivetab", "basic");
    outlet(0, "bang");
  }
  if (eviOption1 > 0) {
    const mc = thisPatcher.getnamed("mc_tab");
    const testMcTab = mc?.valid;
    if (!testMcTab) {
      thisPatcher.message(
        "script",
        "newobject",
        "newobj",
        "@text",
        "p mc",
        "@varname",
        "mc_tab",
        "@patching_rect",
        229,
        336,
        37,
        23
      );
      const mctab = thisPatcher.getnamed("mc_tab");
      mctab.subpatcher().setattr("bglocked", 1);
      mctab.subpatcher().message("wclose");
      mctab.message("showontab", 1);
      mctab.message("gridonopen", 1);
      mctab.message("gridsize", 15, 15);
      mctab.message("fontsize", 13);
      mctab.message("fontname", "Arial");
      mctab.message("locked", 1);
      mctab.subpatcher().message(
        "script",
        "newobject",
        "newobj",
        "@text",
        `v8ui @filename evi.helpname.js @jsarguments mc.${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`
      );
      const mcDigestComment = mctab.subpatcher().newdefault(10, 70, "comment");
      mcDigestComment.varname = "digest_comment";
      const mcComment = mctab.subpatcher().getnamed("digest_comment");
      mcComment.message("set", `${objectNameArgument} is also available as an 'mc' Object`);
      mcComment.message("fontsize", 13);
      mcComment.message("fontname", "Lato");
      mcComment.message("textcolor", textColor);
      mcComment.message("patching_rect", 10, 70, 660, 22);
      mcComment.message("background", 1);
      mctab.subpatcher().message(
        "script",
        "newobject",
        "newobj",
        "@text",
        `mc.${objectNameArgument}`,
        "@varname",
        `${thisHelpObjectName}Mc`,
        "@patching_position",
        140,
        336
      );
      if (createDacForHelpfile) {
        const ezdacObj = mctab.subpatcher().newdefault(140, 537, "ezdac~");
        ezdacObj.varname = "mc_dac";
        const ezdac = mctab.subpatcher().getnamed("mc_dac");
        ezdac.message("local", 1);
        ezdac.message("patching_rect", 140, 537, 45, 45);
        const ezdacComment = mctab.subpatcher().newdefault(111, 547, "comment");
        ezdacComment.varname = "comment_dac";
        const comment = mctab.subpatcher().getnamed("comment_dac");
        comment.message("set", "Audio On");
        comment.message("bubble", 1);
        comment.message("bubbleside", 1);
        comment.message("textjustification", 1);
        comment.message("fontsize", 13);
        comment.message("fontname", "Arial");
        comment.message("patching_rect", 187, 547, 86, 25);
        comment.message("background", 1);
      }
    }
  }
  if (eviOption2 > 0) {
    const mcs = thisPatcher.getnamed("mcs_tab");
    const testMcsTab = mcs?.valid;
    if (!testMcsTab) {
      thisPatcher.message(
        "script",
        "newobject",
        "newobj",
        "@text",
        "p mcs",
        "@varname",
        "mcs_tab",
        "@patching_rect",
        298,
        336,
        43,
        23
      );
      const mcstab = thisPatcher.getnamed("mcs_tab");
      mcstab.subpatcher().setattr("bglocked", 1);
      mcstab.subpatcher().message("wclose");
      mcstab.message("showontab", 1);
      mcstab.message("gridonopen", 1);
      mcstab.message("gridsize", 15, 15);
      mcstab.message("fontsize", 13);
      mcstab.message("fontname", "Arial");
      mcstab.message("locked", 1);
      mcstab.subpatcher().message(
        "script",
        "newobject",
        "newobj",
        "@text",
        `v8ui @filename evi.helpname.js @jsarguments mcs.${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`
      );
      const mcsDigestComment = mcstab.subpatcher().newdefault(10, 70, "comment");
      mcsDigestComment.varname = "digest_comment";
      const mcsComment = mcstab.subpatcher().getnamed("digest_comment");
      mcsComment.message("set", `${objectNameArgument} is also available as an 'mcs' Object`);
      mcsComment.message("fontsize", 13);
      mcsComment.message("fontname", "Lato");
      mcsComment.message("textcolor", textColor);
      mcsComment.message("patching_rect", 10, 70, 660, 22);
      mcsComment.message("background", 1);
      mcstab.subpatcher().message(
        "script",
        "newobject",
        "newobj",
        "@text",
        `mcs.${objectNameArgument}`,
        "@varname",
        `${thisHelpObjectName}Mcs`,
        "@patching_position",
        140,
        336
      );
      if (createDacForHelpfile) {
        const ezdacObj = mcstab.subpatcher().newdefault(140, 537, "ezdac~");
        ezdacObj.varname = "mcs_dac";
        const ezdac = mcstab.subpatcher().getnamed("mcs_dac");
        ezdac.message("local", 1);
        ezdac.message("patching_rect", 140, 537, 45, 45);
        const ezdacComment = mcstab.subpatcher().newdefault(111, 547, "comment");
        ezdacComment.varname = "comment_dac";
        const comment = mcstab.subpatcher().getnamed("comment_dac");
        comment.message("set", "Audio On");
        comment.message("bubble", 1);
        comment.message("bubbleside", 1);
        comment.message("textjustification", 1);
        comment.message("fontsize", 13);
        comment.message("fontname", "Arial");
        comment.message("patching_rect", 187, 547, 86, 25);
        comment.message("background", 1);
      }
    }
  }
  if (eviOption3 > 0) {
    const gen = thisPatcher.getnamed("gen_tab");
    const testGenTab = gen?.valid;
    if (!testGenTab) {
      thisPatcher.message(
        "script",
        "newobject",
        "newobj",
        "@text",
        "p gen~",
        "@varname",
        "gen_tab",
        "@patching_rect",
        373,
        336,
        50,
        23
      );
      const gentab = thisPatcher.getnamed("gen_tab");
      gentab.subpatcher().setattr("bglocked", 1);
      gentab.subpatcher().message("wclose");
      gentab.message("showontab", 1);
      gentab.message("gridonopen", 1);
      gentab.message("gridsize", 15, 15);
      gentab.message("fontsize", 13);
      gentab.message("fontname", "Arial");
      gentab.message("locked", 1);
      gentab.subpatcher().message(
        "script",
        "newobject",
        "newobj",
        "@text",
        `v8ui @filename evi.helpname.js @jsarguments ${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`
      );
      const genDigestComment = gentab.subpatcher().newdefault(10, 70, "comment");
      genDigestComment.varname = "digest_comment";
      const genComment = gentab.subpatcher().getnamed("digest_comment");
      genComment.message("set", `The ${objectNameArgument} algorithm is also available inside the gen~ environment`);
      genComment.message("fontsize", 13);
      genComment.message("fontname", "Lato");
      genComment.message("textcolor", textColor);
      genComment.message("patching_rect", 10, 70, 660, 22);
      genComment.message("background", 1);
      gentab.subpatcher().message(
        "script",
        "newobject",
        "newobj",
        "@text",
        `gen~ @title using_${objectNameArgument}_inside_gen~`,
        "@varname",
        `${thisHelpObjectName}Gen`,
        "@patching_rect",
        223,
        336,
        447,
        23
      );
      const genboxComment = gentab.subpatcher().newdefault(97, 328, "comment");
      genboxComment.varname = "comment_gen";
      const gbComment = gentab.subpatcher().getnamed("comment_gen");
      gbComment.message("set", "Double-Click to see the example");
      gbComment.message("bubble", 1);
      gbComment.message("bubbleside", 3);
      gbComment.message("textjustification", 1);
      gbComment.message("fontsize", 13);
      gbComment.message("fontname", "Arial");
      gbComment.message("patching_rect", 97, 328, 124, 40);
      gbComment.message("background", 1);
      if (createDacForHelpfile) {
        const ezdacObj = gentab.subpatcher().newdefault(140, 537, "ezdac~");
        ezdacObj.varname = "mcs_dac";
        const ezdac = gentab.subpatcher().getnamed("mcs_dac");
        ezdac.message("local", 1);
        ezdac.message("patching_rect", 223, 537, 45, 45);
        const ezdacComment = gentab.subpatcher().newdefault(270, 547, "comment");
        ezdacComment.varname = "comment_dac";
        const comment = gentab.subpatcher().getnamed("comment_dac");
        comment.message("set", "Audio On");
        comment.message("bubble", 1);
        comment.message("bubbleside", 1);
        comment.message("textjustification", 1);
        comment.message("fontsize", 13);
        comment.message("fontname", "Arial");
        comment.message("patching_rect", 270, 547, 86, 25);
        comment.message("background", 1);
      }
    }
  }
  if (eviOption4 > 0) {
    const genexpr = thisPatcher.getnamed("genexpr_tab");
    const testGenExprTab = genexpr?.valid;
    if (!testGenExprTab) {
      thisPatcher.message(
        "script",
        "newobject",
        "newobj",
        "@text",
        "p GenExpr",
        "@varname",
        "genexpr_tab",
        "@patching_rect",
        455,
        336,
        71,
        23
      );
      const genexprtab = thisPatcher.getnamed("genexpr_tab");
      genexprtab.subpatcher().setattr("bglocked", 1);
      genexprtab.subpatcher().message("wclose");
      genexprtab.message("showontab", 1);
      genexprtab.message("gridonopen", 1);
      genexprtab.message("gridsize", 15, 15);
      genexprtab.message("fontsize", 13);
      genexprtab.message("fontname", "Arial");
      genexprtab.message("locked", 1);
      genexprtab.subpatcher().message(
        "script",
        "newobject",
        "newobj",
        "@text",
        `v8ui @filename evi.helpname.js @jsarguments ${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`
      );
      const genexprDigestComment = genexprtab.subpatcher().newdefault(10, 70, "comment");
      genexprDigestComment.varname = "digest_comment";
      const genComment = genexprtab.subpatcher().getnamed("digest_comment");
      genComment.message("set", `The ${objectNameArgument} algorithm can also be used inside GenExpr code`);
      genComment.message("fontsize", 13);
      genComment.message("fontname", "Lato");
      genComment.message("textcolor", textColor);
      genComment.message("patching_rect", 10, 70, 660, 22);
      genComment.message("background", 1);
      genexprtab.subpatcher().message(
        "script",
        "newobject",
        "newobj",
        "@text",
        `gen~ @title using_${objectNameArgument}_with_GenExpr`,
        "@varname",
        `${thisHelpObjectName}GenExpr`,
        "@patching_rect",
        223,
        336,
        447,
        23
      );
      const genboxComment = genexprtab.subpatcher().newdefault(97, 328, "comment");
      genboxComment.varname = "comment_gen";
      const gbComment = genexprtab.subpatcher().getnamed("comment_gen");
      gbComment.message("set", "Double-Click to see the example");
      gbComment.message("bubble", 1);
      gbComment.message("bubbleside", 3);
      gbComment.message("textjustification", 1);
      gbComment.message("fontsize", 13);
      gbComment.message("fontname", "Arial");
      gbComment.message("patching_rect", 97, 328, 124, 40);
      gbComment.message("background", 1);
      if (createDacForHelpfile) {
        const ezdacObj = genexprtab.subpatcher().newdefault(140, 537, "ezdac~");
        ezdacObj.varname = "mcs_dac";
        const ezdac = genexprtab.subpatcher().getnamed("mcs_dac");
        ezdac.message("local", 1);
        ezdac.message("patching_rect", 223, 537, 45, 45);
        const ezdacComment = genexprtab.subpatcher().newdefault(270, 547, "comment");
        ezdacComment.varname = "comment_dac";
        const comment = genexprtab.subpatcher().getnamed("comment_dac");
        comment.message("set", "Audio On");
        comment.message("bubble", 1);
        comment.message("bubbleside", 1);
        comment.message("textjustification", 1);
        comment.message("fontsize", 13);
        comment.message("fontname", "Arial");
        comment.message("patching_rect", 270, 547, 86, 25);
        comment.message("background", 1);
      }
    }
  }
  if (eviOption5 !== "none") {
    const areas = thisPatcher.getnamed("areas_tab");
    const testAreasTab = areas?.valid;
    if (!testAreasTab) {
      thisPatcher.message(
        "script",
        "newobject",
        "newobj",
        "@text",
        `p "evieve ${eviOption5}"`,
        "@varname",
        "areas_tab",
        "@patching_rect",
        543,
        336,
        107,
        23
      );
      const areastab = thisPatcher.getnamed("areas_tab");
      areastab.subpatcher().setattr("bglocked", 1);
      areastab.subpatcher().message("wclose");
      areastab.message("showontab", 1);
      areastab.message("gridonopen", 1);
      areastab.message("gridsize", 15, 15);
      areastab.message("fontsize", 13);
      areastab.message("fontname", "Arial");
      areastab.message("locked", 1);
      areastab.subpatcher().message(
        "script",
        "newobject",
        "newobj",
        "@text",
        `v8ui @filename evi.helpname.js @jsarguments "evieve: ${eviOption5}" ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`
      );
      const areasDigestComment = areastab.subpatcher().newdefault(10, 70, "comment");
      areasDigestComment.varname = "digest_comment";
      const areasComment = areastab.subpatcher().getnamed("digest_comment");
      areasComment.message("set", `There are other ${eviOption5} objects in evieve. Here is an overview.`);
      areasComment.message("fontsize", 13);
      areasComment.message("fontname", "Lato");
      areasComment.message("textcolor", textColor);
      areasComment.message("patching_rect", 10, 70, 660, 22);
      areasComment.message("background", 1);
      const AREAS_BPATCHER_NAME = `areas_help_${eviOption5}.maxpat`;
      areastab.subpatcher().message(
        "script",
        "newobject",
        "newobj",
        "@text",
        `bpatcher`,
        "@varname",
        `${thisHelpObjectName}Areas`,
        "@patching_position",
        10,
        94
      );
      const areasBpatcher = areastab.subpatcher().getnamed(`${thisHelpObjectName}Areas`);
      areasBpatcher.setboxattr("patching_rect", 10, 94, 660, 568);
      areasBpatcher.setboxattr("lockedsize", 1);
      areasBpatcher.setboxattr("lockeddragscroll", 2);
      areasBpatcher.setboxattr("bgmode", 0);
      areasBpatcher.setboxattr("clickthrough", 1);
      areasBpatcher.setboxattr("name", AREAS_BPATCHER_NAME);
    }
  }
  const b = thisPatcher.getnamed("q_tab");
  const testQtab = b?.valid;
  if (!testQtab) {
    thisPatcher.message(
      "script",
      "newobject",
      "newobj",
      "@text",
      "p ?",
      "@varname",
      "q_tab",
      "@patching_rect",
      697,
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
    thisPatcher.wind.size = [1277, 796];
  } else {
    thisPatcher.wind.size = [x, y];
  }
}
const module = {};
module.exports = {};
