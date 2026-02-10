{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 2,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "openrect": [ 55.0, 122.0, 837.0, 796.0 ],
        "openrectmode": 0,
        "bglocked": 1,
        "default_fontsize": 13.0,
        "gridonopen": 2,
        "digest": "evieve helpfile",
        "showrootpatcherontab": 0,
        "showontab": 0,
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 169.0, 85.0, 43.0, 23.0 ],
                    "text": "resize"
                }
            },
            {
                "box": {
                    "background": 1,
                    "filename": "evi.helpstarter.js",
                    "id": "obj-1",
                    "ignoreclick": 1,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 229.0, 85.0, 518.0, 23.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "parameter_enable": 0
                    },
                    "text": "v8 evi.helpstarter.js evi.freezeverb~ 0 1 1 0 reverb",
                    "textfile": {
                        "text": "\"use strict\";\nlet objectNameArgument = \"\";\nlet createDacForHelpfile = false;\nif (jsarguments.length > 1) {\n  objectNameArgument = jsarguments[1];\n  if (objectNameArgument.charAt(objectNameArgument.length - 1) === \"~\") {\n    createDacForHelpfile = true;\n  }\n}\nlet eviOption1 = 0;\nlet eviOption2 = 0;\nlet eviOption3 = 0;\nlet eviOption4 = 0;\nlet eviOption5 = \"none\";\nif (jsarguments.length > 2) {\n  eviOption1 = jsarguments[2];\n  eviOption2 = jsarguments[3];\n  eviOption3 = jsarguments[4];\n  eviOption4 = jsarguments[5];\n  eviOption5 = jsarguments[6];\n}\nconst task = new Task(init, this);\ntask.schedule(333);\nconst thisPatcher = patcher;\nconst thisPath = thisPatcher.filepath;\nconst thisHelpObjectName = \"thisEvieveObject\";\nconst textColor = thisPatcher.getattr(\"textcolor\");\nconst descColor = [textColor[0], textColor[1], textColor[2], textColor[3] * 0.555];\nfunction init() {\n  const a = thisPatcher.getnamed(\"basic_tab\");\n  const testBasicTab = a?.valid;\n  if (!testBasicTab) {\n    thisPatcher.message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      \"p basic\",\n      \"@varname\",\n      \"basic_tab\",\n      \"@patching_rect\",\n      34,\n      336,\n      50,\n      23\n    );\n    thisPatcher.wind.size = [1277, 796];\n    thisPatcher.message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `v8ui @filename evi.helpname.js @jsarguments ${objectNameArgument} @patching_rect 10. 10. 500. 50. @background 1 @embed 0`\n    );\n    const basic = thisPatcher.getnamed(\"basic_tab\");\n    basic.subpatcher().setattr(\"bglocked\", 1);\n    basic.subpatcher().message(\"wclose\");\n    basic.message(\"showontab\", 1);\n    basic.message(\"gridonopen\", 1);\n    basic.message(\"gridsize\", 15, 15);\n    basic.message(\"fontsize\", 13);\n    basic.message(\"fontname\", \"Arial\");\n    basic.message(\"locked\", 1);\n    basic.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `v8ui @filename evi.helpdetails.js @jsarguments ${objectNameArgument} ${thisPath} @patching_rect 10. 10. 660. 220. @background 1 @embed 0`\n    );\n    const ubuttonObj = basic.subpatcher().newdefault(11, 11, \"ubutton\");\n    ubuttonObj.varname = \"basic_ubutton\";\n    const ubutton = basic.subpatcher().getnamed(\"basic_ubutton\");\n    ubutton.message(\"hltcolor\", 1, 1, 1, 0.5);\n    ubutton.message(\"patching_rect\", 11, 11, 98, 98);\n    basic.subpatcher().bringtofront(\"basic_ubutton\");\n    basic.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `${objectNameArgument}`,\n      \"@varname\",\n      `${thisHelpObjectName}`,\n      \"@patching_position\",\n      64,\n      336\n    );\n    if (createDacForHelpfile) {\n      const ezdacObj = basic.subpatcher().newdefault(64, 537, \"ezdac~\");\n      ezdacObj.varname = \"basic_dac\";\n      const ezdac = basic.subpatcher().getnamed(\"basic_dac\");\n      ezdac.message(\"local\", 1);\n      ezdac.message(\"patching_rect\", 64, 537, 45, 45);\n      const ezdacComment = basic.subpatcher().newdefault(111, 547, \"comment\");\n      ezdacComment.varname = \"comment_dac\";\n      const comment = basic.subpatcher().getnamed(\"comment_dac\");\n      comment.message(\"set\", \"Audio On\");\n      comment.message(\"bubble\", 1);\n      comment.message(\"bubbleside\", 1);\n      comment.message(\"textjustification\", 1);\n      comment.message(\"fontsize\", 13);\n      comment.message(\"fontname\", \"Arial\");\n      comment.message(\"patching_rect\", 111, 547, 86, 25);\n      comment.message(\"background\", 1);\n    }\n    const helpObject = basic.subpatcher().getnamed(thisHelpObjectName);\n    const objectRect = helpObject.getattr(\"patching_rect\");\n    const argsPos = [objectRect[0] + objectRect[2] + 2, objectRect[1] + 1];\n    basic.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      // cannot get [v8ui] working for now, use Cyling '74 code instead...\n      // `v8ui @filename evi.helpargs.js @jsarguments ${objectNameArgument} @patching_position ${argsPos[0]} ${argsPos[1]} @background 1 @embed 0`);\n      `jsui @filename helpargs.js @jsarguments ${objectNameArgument} @patching_position ${argsPos[0]} ${argsPos[1]} @background 1 @embed 0`\n    );\n    basic.subpatcher().bringtofront(thisHelpObjectName);\n    outlet(0, \"setactivetab\", \"basic\");\n    outlet(0, \"bang\");\n  }\n  if (eviOption1 > 0) {\n    const mc = thisPatcher.getnamed(\"mc_tab\");\n    const testMcTab = mc?.valid;\n    if (!testMcTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        \"p mc\",\n        \"@varname\",\n        \"mc_tab\",\n        \"@patching_rect\",\n        229,\n        336,\n        37,\n        23\n      );\n    }\n    const mctab = thisPatcher.getnamed(\"mc_tab\");\n    mctab.subpatcher().setattr(\"bglocked\", 1);\n    mctab.subpatcher().message(\"wclose\");\n    mctab.message(\"showontab\", 1);\n    mctab.message(\"gridonopen\", 1);\n    mctab.message(\"gridsize\", 15, 15);\n    mctab.message(\"fontsize\", 13);\n    mctab.message(\"fontname\", \"Arial\");\n    mctab.message(\"locked\", 1);\n    mctab.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `v8ui @filename evi.helpname.js @jsarguments mc.${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n    );\n    const mcDigestComment = mctab.subpatcher().newdefault(10, 70, \"comment\");\n    mcDigestComment.varname = \"digest_comment\";\n    const mcComment = mctab.subpatcher().getnamed(\"digest_comment\");\n    mcComment.message(\"set\", `${objectNameArgument} is also available as an 'mc' Object`);\n    mcComment.message(\"fontsize\", 13);\n    mcComment.message(\"fontname\", \"Lato\");\n    mcComment.message(\"textcolor\", textColor);\n    mcComment.message(\"patching_rect\", 10, 70, 660, 22);\n    mcComment.message(\"background\", 1);\n    mctab.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `mc.${objectNameArgument}`,\n      \"@varname\",\n      `${thisHelpObjectName}Mc`,\n      \"@patching_position\",\n      64,\n      336\n    );\n    if (createDacForHelpfile) {\n      const ezdacObj = mctab.subpatcher().newdefault(64, 537, \"ezdac~\");\n      ezdacObj.varname = \"mc_dac\";\n      const ezdac = mctab.subpatcher().getnamed(\"mc_dac\");\n      ezdac.message(\"local\", 1);\n      ezdac.message(\"patching_rect\", 64, 537, 45, 45);\n      const ezdacComment = mctab.subpatcher().newdefault(111, 547, \"comment\");\n      ezdacComment.varname = \"comment_dac\";\n      const comment = mctab.subpatcher().getnamed(\"comment_dac\");\n      comment.message(\"set\", \"Audio On\");\n      comment.message(\"bubble\", 1);\n      comment.message(\"bubbleside\", 1);\n      comment.message(\"textjustification\", 1);\n      comment.message(\"fontsize\", 13);\n      comment.message(\"fontname\", \"Arial\");\n      comment.message(\"patching_rect\", 111, 547, 86, 25);\n      comment.message(\"background\", 1);\n    }\n  }\n  if (eviOption2 > 0) {\n    const mcs = thisPatcher.getnamed(\"mcs_tab\");\n    const testMcsTab = mcs?.valid;\n    if (!testMcsTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        \"p mcs\",\n        \"@varname\",\n        \"mcs_tab\",\n        \"@patching_rect\",\n        298,\n        336,\n        43,\n        23\n      );\n    }\n    const mcstab = thisPatcher.getnamed(\"mcs_tab\");\n    mcstab.subpatcher().setattr(\"bglocked\", 1);\n    mcstab.subpatcher().message(\"wclose\");\n    mcstab.message(\"showontab\", 1);\n    mcstab.message(\"gridonopen\", 1);\n    mcstab.message(\"gridsize\", 15, 15);\n    mcstab.message(\"fontsize\", 13);\n    mcstab.message(\"fontname\", \"Arial\");\n    mcstab.message(\"locked\", 1);\n    mcstab.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `v8ui @filename evi.helpname.js @jsarguments mcs.${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n    );\n    const mcsDigestComment = mcstab.subpatcher().newdefault(10, 70, \"comment\");\n    mcsDigestComment.varname = \"digest_comment\";\n    const mcsComment = mcstab.subpatcher().getnamed(\"digest_comment\");\n    mcsComment.message(\"set\", `${objectNameArgument} is also available as an 'mcs' Object`);\n    mcsComment.message(\"fontsize\", 13);\n    mcsComment.message(\"fontname\", \"Lato\");\n    mcsComment.message(\"textcolor\", textColor);\n    mcsComment.message(\"patching_rect\", 10, 70, 660, 22);\n    mcsComment.message(\"background\", 1);\n    mcstab.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `mcs.${objectNameArgument}`,\n      \"@varname\",\n      `${thisHelpObjectName}Mcs`,\n      \"@patching_position\",\n      64,\n      336\n    );\n    if (createDacForHelpfile) {\n      const ezdacObj = mcstab.subpatcher().newdefault(64, 537, \"ezdac~\");\n      ezdacObj.varname = \"mcs_dac\";\n      const ezdac = mcstab.subpatcher().getnamed(\"mcs_dac\");\n      ezdac.message(\"local\", 1);\n      ezdac.message(\"patching_rect\", 64, 537, 45, 45);\n      const ezdacComment = mcstab.subpatcher().newdefault(111, 547, \"comment\");\n      ezdacComment.varname = \"comment_dac\";\n      const comment = mcstab.subpatcher().getnamed(\"comment_dac\");\n      comment.message(\"set\", \"Audio On\");\n      comment.message(\"bubble\", 1);\n      comment.message(\"bubbleside\", 1);\n      comment.message(\"textjustification\", 1);\n      comment.message(\"fontsize\", 13);\n      comment.message(\"fontname\", \"Arial\");\n      comment.message(\"patching_rect\", 111, 547, 86, 25);\n      comment.message(\"background\", 1);\n    }\n  }\n  if (eviOption3 > 0) {\n    const gen = thisPatcher.getnamed(\"gen_tab\");\n    const testGenTab = gen?.valid;\n    if (!testGenTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        \"p gen~\",\n        \"@varname\",\n        \"gen_tab\",\n        \"@patching_rect\",\n        373,\n        336,\n        50,\n        23\n      );\n    }\n    const gentab = thisPatcher.getnamed(\"gen_tab\");\n    gentab.subpatcher().setattr(\"bglocked\", 1);\n    gentab.subpatcher().message(\"wclose\");\n    gentab.message(\"showontab\", 1);\n    gentab.message(\"gridonopen\", 1);\n    gentab.message(\"gridsize\", 15, 15);\n    gentab.message(\"fontsize\", 13);\n    gentab.message(\"fontname\", \"Arial\");\n    gentab.message(\"locked\", 1);\n    gentab.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `v8ui @filename evi.helpname.js @jsarguments ${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n    );\n    const genDigestComment = gentab.subpatcher().newdefault(10, 70, \"comment\");\n    genDigestComment.varname = \"digest_comment\";\n    const genComment = gentab.subpatcher().getnamed(\"digest_comment\");\n    genComment.message(\"set\", `The ${objectNameArgument} algorithm is also available inside the gen~ environment`);\n    genComment.message(\"fontsize\", 13);\n    genComment.message(\"fontname\", \"Lato\");\n    genComment.message(\"textcolor\", textColor);\n    genComment.message(\"patching_rect\", 10, 70, 660, 22);\n    genComment.message(\"background\", 1);\n    gentab.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `gen~ @title using_${objectNameArgument}_inside_gen~`,\n      \"@varname\",\n      `${thisHelpObjectName}Gen`,\n      \"@patching_rect\",\n      223,\n      336,\n      447,\n      23\n    );\n    const genboxComment = gentab.subpatcher().newdefault(97, 328, \"comment\");\n    genboxComment.varname = \"comment_gen\";\n    const gbComment = gentab.subpatcher().getnamed(\"comment_gen\");\n    gbComment.message(\"set\", \"Double-Click to see the example\");\n    gbComment.message(\"bubble\", 1);\n    gbComment.message(\"bubbleside\", 3);\n    gbComment.message(\"textjustification\", 1);\n    gbComment.message(\"fontsize\", 13);\n    gbComment.message(\"fontname\", \"Arial\");\n    gbComment.message(\"patching_rect\", 97, 328, 124, 40);\n    gbComment.message(\"background\", 1);\n    if (createDacForHelpfile) {\n      const ezdacObj = gentab.subpatcher().newdefault(64, 537, \"ezdac~\");\n      ezdacObj.varname = \"mcs_dac\";\n      const ezdac = gentab.subpatcher().getnamed(\"mcs_dac\");\n      ezdac.message(\"local\", 1);\n      ezdac.message(\"patching_rect\", 223, 537, 45, 45);\n      const ezdacComment = gentab.subpatcher().newdefault(270, 547, \"comment\");\n      ezdacComment.varname = \"comment_dac\";\n      const comment = gentab.subpatcher().getnamed(\"comment_dac\");\n      comment.message(\"set\", \"Audio On\");\n      comment.message(\"bubble\", 1);\n      comment.message(\"bubbleside\", 1);\n      comment.message(\"textjustification\", 1);\n      comment.message(\"fontsize\", 13);\n      comment.message(\"fontname\", \"Arial\");\n      comment.message(\"patching_rect\", 270, 547, 86, 25);\n      comment.message(\"background\", 1);\n    }\n  }\n  if (eviOption4 > 0) {\n    const genexpr = thisPatcher.getnamed(\"genexpr_tab\");\n    const testGenExprTab = genexpr?.valid;\n    if (!testGenExprTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        \"p GenExpr\",\n        \"@varname\",\n        \"genexpr_tab\",\n        \"@patching_rect\",\n        455,\n        336,\n        71,\n        23\n      );\n    }\n    const genexprtab = thisPatcher.getnamed(\"genexpr_tab\");\n    genexprtab.subpatcher().setattr(\"bglocked\", 1);\n    genexprtab.subpatcher().message(\"wclose\");\n    genexprtab.message(\"showontab\", 1);\n    genexprtab.message(\"gridonopen\", 1);\n    genexprtab.message(\"gridsize\", 15, 15);\n    genexprtab.message(\"fontsize\", 13);\n    genexprtab.message(\"fontname\", \"Arial\");\n    genexprtab.message(\"locked\", 1);\n    genexprtab.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `v8ui @filename evi.helpname.js @jsarguments ${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n    );\n    const genexprDigestComment = genexprtab.subpatcher().newdefault(10, 70, \"comment\");\n    genexprDigestComment.varname = \"digest_comment\";\n    const genComment = genexprtab.subpatcher().getnamed(\"digest_comment\");\n    genComment.message(\"set\", `The ${objectNameArgument} algorithm can also be used inside GenExpr code`);\n    genComment.message(\"fontsize\", 13);\n    genComment.message(\"fontname\", \"Lato\");\n    genComment.message(\"textcolor\", textColor);\n    genComment.message(\"patching_rect\", 10, 70, 660, 22);\n    genComment.message(\"background\", 1);\n    genexprtab.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `gen~ @title using_${objectNameArgument}_with_GenExpr`,\n      \"@varname\",\n      `${thisHelpObjectName}GenExpr`,\n      \"@patching_rect\",\n      223,\n      336,\n      447,\n      23\n    );\n    const genboxComment = genexprtab.subpatcher().newdefault(97, 328, \"comment\");\n    genboxComment.varname = \"comment_gen\";\n    const gbComment = genexprtab.subpatcher().getnamed(\"comment_gen\");\n    gbComment.message(\"set\", \"Double-Click to see the example\");\n    gbComment.message(\"bubble\", 1);\n    gbComment.message(\"bubbleside\", 3);\n    gbComment.message(\"textjustification\", 1);\n    gbComment.message(\"fontsize\", 13);\n    gbComment.message(\"fontname\", \"Arial\");\n    gbComment.message(\"patching_rect\", 97, 328, 124, 40);\n    gbComment.message(\"background\", 1);\n    if (createDacForHelpfile) {\n      const ezdacObj = genexprtab.subpatcher().newdefault(64, 537, \"ezdac~\");\n      ezdacObj.varname = \"mcs_dac\";\n      const ezdac = genexprtab.subpatcher().getnamed(\"mcs_dac\");\n      ezdac.message(\"local\", 1);\n      ezdac.message(\"patching_rect\", 223, 537, 45, 45);\n      const ezdacComment = genexprtab.subpatcher().newdefault(270, 547, \"comment\");\n      ezdacComment.varname = \"comment_dac\";\n      const comment = genexprtab.subpatcher().getnamed(\"comment_dac\");\n      comment.message(\"set\", \"Audio On\");\n      comment.message(\"bubble\", 1);\n      comment.message(\"bubbleside\", 1);\n      comment.message(\"textjustification\", 1);\n      comment.message(\"fontsize\", 13);\n      comment.message(\"fontname\", \"Arial\");\n      comment.message(\"patching_rect\", 270, 547, 86, 25);\n      comment.message(\"background\", 1);\n    }\n  }\n  if (eviOption5 !== \"none\") {\n    const areas = thisPatcher.getnamed(\"areas_tab\");\n    const testAreasTab = areas?.valid;\n    if (!testAreasTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `p \"evieve ${eviOption5}\"`,\n        \"@varname\",\n        \"areas_tab\",\n        \"@patching_rect\",\n        543,\n        336,\n        107,\n        23\n      );\n    }\n    const areastab = thisPatcher.getnamed(\"areas_tab\");\n    areastab.subpatcher().setattr(\"bglocked\", 1);\n    areastab.subpatcher().message(\"wclose\");\n    areastab.message(\"showontab\", 1);\n    areastab.message(\"gridonopen\", 1);\n    areastab.message(\"gridsize\", 15, 15);\n    areastab.message(\"fontsize\", 13);\n    areastab.message(\"fontname\", \"Arial\");\n    areastab.message(\"locked\", 1);\n    areastab.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `v8ui @filename evi.helpname.js @jsarguments \"evieve: ${eviOption5}\" ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n    );\n    const areasDigestComment = areastab.subpatcher().newdefault(10, 70, \"comment\");\n    areasDigestComment.varname = \"digest_comment\";\n    const areasComment = areastab.subpatcher().getnamed(\"digest_comment\");\n    areasComment.message(\"set\", `There are many ${eviOption5} objects in evieve. Here is an overview.`);\n    areasComment.message(\"fontsize\", 13);\n    areasComment.message(\"fontname\", \"Lato\");\n    areasComment.message(\"textcolor\", textColor);\n    areasComment.message(\"patching_rect\", 10, 70, 660, 22);\n    areasComment.message(\"background\", 1);\n    areastab.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `bpatcher`,\n      \"@varname\",\n      `${thisHelpObjectName}Areas`,\n      \"@patching_rect\",\n      10,\n      94,\n      660,\n      568\n    );\n    if (createDacForHelpfile) {\n      ;\n    }\n  }\n  const b = thisPatcher.getnamed(\"q_tab\");\n  if (b == null) {\n    thisPatcher.message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      \"p ?\",\n      \"@varname\",\n      \"q_tab\",\n      \"@patching_rect\",\n      697,\n      336,\n      50,\n      23,\n      \"@background\",\n      1\n    );\n    const q = thisPatcher.getnamed(\"q_tab\");\n    q.subpatcher().message(\"wclose\");\n    q.message(\"showontab\", 1);\n  }\n}\nfunction resize(x, y = 796) {\n  if (x == null) {\n    thisPatcher.wind.size = [1277, 796];\n  } else {\n    thisPatcher.wind.size = [x, y];\n  }\n}\nconst module = {};\nmodule.exports = {};\n",
                        "filename": "evi.helpstarter.js",
                        "flags": 0,
                        "embed": 1,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "background": 1,
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 831.0, 702.0 ],
                        "default_fontsize": 13.0,
                        "showontab": 1,
                        "integercoordinates": 1,
                        "boxes": [],
                        "lines": [],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 697.0, 336.0, 50.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p ?",
                    "varname": "q_tab"
                }
            },
            {
                "box": {
                    "background": 1,
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 675.0, 589.0, 72.0, 23.0 ],
                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                    "text": "thispatcher",
                    "varname": "this_patcher"
                }
            },
            {
                "box": {
                    "background": 1,
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 229.0, 125.0, 71.0, 23.0 ],
                    "text": "route bang"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 55.0, 126.0, 831.0, 702.0 ],
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpdetails.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "evi.freezeverb~", "pants:/Users/stkr/Dev/evieve/help/abstractions/evi.freezeverb~.maxhelp" ],
                                    "maxclass": "v8ui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 660.0, 220.0 ],
                                    "textfile": {
                                        "filename": "evi.helpdetails.js",
                                        "flags": 0,
                                        "embed": 0,
                                        "autowatch": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "handoff": "",
                                    "hltcolor": [ 1.0, 1.0, 1.0, 0.5 ],
                                    "id": "obj-4",
                                    "maxclass": "ubutton",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 11.0, 11.0, 98.0, 98.0 ],
                                    "varname": "basic_ubutton"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "signal", "" ],
                                    "patching_rect": [ 64.0, 336.0, 100.0, 23.0 ],
                                    "text": "evi.freezeverb~",
                                    "varname": "thisEvieveObject"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 64.0, 537.0, 45.0, 45.0 ],
                                    "varname": "basic_dac"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 111.0, 547.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "border": 0,
                                    "filename": "helpargs.js",
                                    "id": "obj-11",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "evi.freezeverb~" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 166.0, 337.0, 100.0, 24.0 ]
                                }
                            }
                        ],
                        "lines": [],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 34.0, 336.0, 50.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p basic",
                    "varname": "basic_tab"
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 0,
                    "embed": 0,
                    "filename": "evi.helpname.js",
                    "id": "obj-6",
                    "ignoreclick": 1,
                    "jsarguments": [ "evi.freezeverb~" ],
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 10.0, 500.0, 50.0 ],
                    "textfile": {
                        "filename": "evi.helpname.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 831.0, 702.0 ],
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpname.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "mcs.evi.freezeverb~", 660 ],
                                    "maxclass": "v8ui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 660.0, 57.599853515625 ],
                                    "textfile": {
                                        "filename": "evi.helpname.js",
                                        "flags": 0,
                                        "embed": 0,
                                        "autowatch": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 70.0, 660.0, 22.0 ],
                                    "text": "evi.freezeverb~ is also available as an 'mcs' Object",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "multichannelsignal", "" ],
                                    "patching_rect": [ 64.0, 336.0, 125.0, 23.0 ],
                                    "text": "mcs.evi.freezeverb~",
                                    "varname": "thisEvieveObjectMcs"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 64.0, 537.0, 45.0, 45.0 ],
                                    "varname": "mcs_dac"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 111.0, 547.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            }
                        ],
                        "lines": [],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 298.0, 336.0, 43.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p mcs",
                    "varname": "mcs_tab"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 831.0, 702.0 ],
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpname.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "evi.freezeverb~", 660 ],
                                    "maxclass": "v8ui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 660.0, 57.599853515625 ],
                                    "textfile": {
                                        "filename": "evi.helpname.js",
                                        "flags": 0,
                                        "embed": 0,
                                        "autowatch": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 70.0, 660.0, 22.0 ],
                                    "text": "The evi.freezeverb~ algorithm is also available inside the gen~ environment",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 2,
                                            "revision": 0,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "dsp.gen",
                                        "rect": [ 59.0, 119.0, 600.0, 450.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                                    "text": "in 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 305.0, 14.0, 28.0, 22.0 ],
                                                    "text": "in 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 176.0, 149.0, 29.5, 22.0 ],
                                                    "text": "+"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 176.0, 418.0, 35.0, 22.0 ],
                                                    "text": "out 1"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 1 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 223.0, 336.0, 447.0, 23.0 ],
                                    "text": "gen~ @title using_evi.freezeverb~_inside_gen~",
                                    "varname": "thisEvieveObjectGen"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-7",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 97.0, 328.0, 124.0, 40.0 ],
                                    "text": "Double-Click to see the example",
                                    "textjustification": 1,
                                    "varname": "comment_gen"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 223.0, 537.0, 45.0, 45.0 ],
                                    "varname": "mcs_dac"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 547.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            }
                        ],
                        "lines": [],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 373.0, 336.0, 50.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p gen~",
                    "varname": "gen_tab"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 831.0, 702.0 ],
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpname.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "evieve: reverb", 660 ],
                                    "maxclass": "v8ui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 660.0, 57.599853515625 ],
                                    "textfile": {
                                        "filename": "evi.helpname.js",
                                        "flags": 0,
                                        "embed": 0,
                                        "autowatch": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 70.0, 660.0, 22.0 ],
                                    "text": "There are many reverb objects in evieve. Here is an overview.",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-6",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 10.0, 94.0, 128.0, 128.0 ],
                                    "varname": "thisEvieveObjectAreas",
                                    "viewvisibility": 1
                                }
                            }
                        ],
                        "lines": [],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 543.0, 336.0, 107.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p \"evieve reverb\"",
                    "varname": "areas_tab"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-2::obj-5::obj-54::obj-10": [ "eqHighGain", "eqHighGain", 0 ],
            "obj-2::obj-5::obj-54::obj-12": [ "earlyGain", "earlyGain", 0 ],
            "obj-2::obj-5::obj-54::obj-15": [ "eqLowGain", "eqLowGain", 0 ],
            "obj-2::obj-5::obj-54::obj-16": [ "eqLowFreq", "eqLowFreq", 0 ],
            "obj-2::obj-5::obj-54::obj-2": [ "preDelay", "preDelay", 0 ],
            "obj-2::obj-5::obj-54::obj-3": [ "reverbSize", "reverbSize", 0 ],
            "obj-2::obj-5::obj-54::obj-33": [ "wetGain", "wetGain", 0 ],
            "obj-2::obj-5::obj-54::obj-35": [ "bypass", "bypass", 0 ],
            "obj-2::obj-5::obj-54::obj-4": [ "dryGain", "dryGain", 0 ],
            "obj-2::obj-5::obj-54::obj-5": [ "width", "width", 0 ],
            "obj-2::obj-5::obj-54::obj-7": [ "eqHighFreq", "eqHighFreq", 0 ],
            "obj-2::obj-5::obj-54::obj-8": [ "smoothTime", "smoothTime", 0 ],
            "obj-2::obj-5::obj-54::obj-9": [ "damping", "damping", 0 ],
            "obj-9::obj-5::obj-54::obj-10": [ "eqHighGain[1]", "eqHighGain", 0 ],
            "obj-9::obj-5::obj-54::obj-12": [ "earlyGain[1]", "earlyGain", 0 ],
            "obj-9::obj-5::obj-54::obj-15": [ "eqLowGain[1]", "eqLowGain", 0 ],
            "obj-9::obj-5::obj-54::obj-16": [ "eqLowFreq[1]", "eqLowFreq", 0 ],
            "obj-9::obj-5::obj-54::obj-2": [ "preDelay[1]", "preDelay", 0 ],
            "obj-9::obj-5::obj-54::obj-3": [ "reverbSize[1]", "reverbSize", 0 ],
            "obj-9::obj-5::obj-54::obj-33": [ "wetGain[1]", "wetGain", 0 ],
            "obj-9::obj-5::obj-54::obj-35": [ "bypass[1]", "bypass", 0 ],
            "obj-9::obj-5::obj-54::obj-4": [ "dryGain[1]", "dryGain", 0 ],
            "obj-9::obj-5::obj-54::obj-5": [ "width[1]", "width", 0 ],
            "obj-9::obj-5::obj-54::obj-7": [ "eqHighFreq[1]", "eqHighFreq", 0 ],
            "obj-9::obj-5::obj-54::obj-8": [ "smoothTime[1]", "smoothTime", 0 ],
            "obj-9::obj-5::obj-54::obj-9": [ "damping[1]", "damping", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}