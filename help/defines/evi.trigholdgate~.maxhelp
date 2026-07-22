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
        "openrect": [ 55.0, 122.0, 802.0, 695.0 ],
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
                    "id": "obj-6",
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
                        "rect": [ 0.0, 26.0, 802.0, 669.0 ],
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.1,
                                    "bubbleside": 2,
                                    "id": "obj-21",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 511.0, 173.0, 165.0, 69.0 ],
                                    "text": "repeated clicks will keep the envelope active and increase the amplitude",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-29",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 498.0, 246.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "4",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 0,
                                    "id": "obj-27",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 351.0, 538.0, 144.0, 84.0 ],
                                    "text": "triggering evi.vactrol~ with just a click~ produces amplitude varience behaviour",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 358.0, 366.0, 75.0, 23.0 ],
                                    "text": "evi.vactrol~"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "activegridcolor": [ 0.22, 0.22, 0.22, 1.0 ],
                                    "activelinecolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                                    "grid": 3,
                                    "horizonal_divisions": 8,
                                    "horizontal_divisions": 8,
                                    "id": "obj-26",
                                    "maxclass": "live.scope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 358.0, 406.0, 130.0, 130.0 ],
                                    "rounded": 1.0,
                                    "samples": 48000.0,
                                    "vertical_divisions": 4
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 0,
                                    "id": "obj-24",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 513.0, 538.0, 144.0, 84.0 ],
                                    "text": "using a hold time > '3' makes triggering evi.vactrol~ amplitude predictable",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 520.0, 244.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 520.0, 286.0, 41.0, 23.0 ],
                                    "text": "click~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 520.0, 366.0, 75.0, 23.0 ],
                                    "text": "evi.vactrol~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 520.0, 326.0, 156.0, 23.0 ],
                                    "text": "evi.trigholdgate~ @hold 5",
                                    "varname": "evieveObject[1]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "activegridcolor": [ 0.22, 0.22, 0.22, 1.0 ],
                                    "activelinecolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                                    "grid": 3,
                                    "horizonal_divisions": 8,
                                    "horizontal_divisions": 8,
                                    "id": "obj-17",
                                    "maxclass": "live.scope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 520.0, 406.0, 130.0, 130.0 ],
                                    "rounded": 1.0,
                                    "samples": 48000.0,
                                    "vertical_divisions": 4
                                }
                            },
                            {
                                "box": {
                                    "disabled": [ 0, 0, 0 ],
                                    "id": "obj-10",
                                    "itemtype": 0,
                                    "maxclass": "radiogroup",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 127.0, 259.0, 18.0, 50.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "0", "1", "2" ],
                                            "parameter_initial": [ 1.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "radiogroup",
                                            "parameter_mmax": 2,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "radiogroup",
                                            "parameter_type": 2
                                        }
                                    },
                                    "size": 3,
                                    "value": 1,
                                    "varname": "radiogroup"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 80.0, 285.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 80.0, 326.0, 33.0, 23.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-14",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 126.0, 237.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "3",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-66",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 58.0, 287.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-13",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 58.0, 566.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "activegridcolor": [ 0.22, 0.22, 0.22, 1.0 ],
                                    "activelinecolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                                    "grid": 3,
                                    "horizonal_divisions": 8,
                                    "horizontal_divisions": 8,
                                    "id": "obj-1",
                                    "maxclass": "live.scope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 80.0, 406.0, 130.0, 130.0 ],
                                    "rounded": 1.0,
                                    "samples": 48000.0,
                                    "vertical_divisions": 4
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 80.0, 366.0, 171.0, 23.0 ],
                                    "text": "evi.trigholdgate~ @hold 100",
                                    "varname": "evieveObject"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpname.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "evi.trigholdgate~", 660 ],
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
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 70.0, 660.0, 38.0 ],
                                    "text": "Choose which type of input triggers the gate with the @trigger attribute. Elsewhere in evieve the object is used to determine how the evi.vactrol~ object behaves (if sample triggers are required), such as in evi.lpg~",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 145.0, 259.0, 145.0, 50.0 ],
                                    "text": "Trigger on Up & Down\nTrigger on Up only\nTrigger on Down only"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 80.0, 553.0, 45.0, 45.0 ],
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
                                    "patching_rect": [ 127.0, 563.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            },
                            {
                                "box": {
                                    "attr": "trigger",
                                    "id": "obj-8",
                                    "ignoreclick": 1,
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 127.0, 326.0, 86.0, 23.0 ],
                                    "text_width": 51.0
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "order": 0,
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "order": 1,
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 124.0, 336.0, 63.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p triggers",
                    "varname": "triggers_tab"
                }
            },
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
                    "patching_rect": [ 229.0, 85.0, 541.0, 23.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "parameter_enable": 0
                    },
                    "text": "v8 evi.helpstarter evi.trigholdgate~ 1 1 0 1 1 none",
                    "textfile": {
                        "text": "\"use strict\";\n/*!\n * This file is automatically transpiled from Typescript - DO NOT EDIT BY HAND\n * This file is part of the 'evieve' Package for Max.\n * evieve is a library of GenExpr audio code by Pete Dowling.\n */\nlet objectNameArgument = \"\";\nlet createDacForHelpfile = false;\nif (jsarguments.length > 1) {\n  objectNameArgument = jsarguments[1];\n  if (objectNameArgument.charAt(objectNameArgument.length - 1) === \"~\") {\n    createDacForHelpfile = true;\n  }\n}\nlet eviType = -1;\nlet eviOption1 = 0;\nlet eviOption2 = 0;\nlet eviOption3 = 0;\nlet eviOption4 = 0;\nlet eviOption5 = \"none\";\nif (jsarguments.length > 2) {\n  eviType = jsarguments[2];\n  eviOption1 = jsarguments[3];\n  eviOption2 = jsarguments[4];\n  eviOption3 = jsarguments[5];\n  eviOption4 = jsarguments[6];\n  eviOption5 = jsarguments[7];\n}\nconst task = new Task(init, this);\ntask.schedule(111);\nconst thisPatcher = patcher;\nconst thisPath = thisPatcher.filepath;\nconst thisHelpObjectName = \"evieveObject\";\nconst textColor = thisPatcher.getattr(\"textcolor\");\nconst descColor = [textColor[0], textColor[1], textColor[2], textColor[3] * 0.555];\nfunction init() {\n  const a = thisPatcher.getnamed(\"basic_tab\");\n  const testBasicTab = a?.valid;\n  if (!testBasicTab) {\n    thisPatcher.message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      \"p basic\",\n      \"@varname\",\n      \"basic_tab\",\n      \"@patching_rect\",\n      34,\n      336,\n      50,\n      23\n    );\n    thisPatcher.wind.size = [1277, 796];\n    thisPatcher.message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `v8ui @filename evi.helpname.js @jsarguments ${objectNameArgument} @patching_rect 10. 10. 500. 50. @background 1 @embed 0`\n    );\n    const basic = thisPatcher.getnamed(\"basic_tab\");\n    basic.subpatcher().setattr(\"openrect\", 22, 55, 837, 796);\n    basic.subpatcher().setattr(\"bglocked\", 1);\n    basic.subpatcher().message(\"wclose\");\n    basic.message(\"showontab\", 1);\n    basic.message(\"gridonopen\", 1);\n    basic.message(\"gridsize\", 15, 15);\n    basic.message(\"fontsize\", 13);\n    basic.message(\"fontname\", \"Arial\");\n    basic.message(\"locked\", 1);\n    basic.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `v8ui @filename evi.helpdetails.js @jsarguments ${objectNameArgument} ${thisPath} @patching_rect 10. 10. 660. 220. @background 1 @embed 0`\n    );\n    const PETER_BPATCHER_FILE = \"evieve_pickup_overview.maxpat\";\n    basic.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `bpatcher`,\n      \"@varname\",\n      \"PeterButton\",\n      \"@patching_position\",\n      11,\n      11\n    );\n    const peterBpatcher = basic.subpatcher().getnamed(\"PeterButton\");\n    peterBpatcher.setboxattr(\"patching_rect\", 11, 11, 98, 98);\n    peterBpatcher.setboxattr(\"lockedsize\", 1);\n    peterBpatcher.setboxattr(\"name\", `${PETER_BPATCHER_FILE}`);\n    basic.subpatcher().bringtofront(\"PeterButton\");\n    basic.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `${objectNameArgument}`,\n      \"@varname\",\n      `${thisHelpObjectName}`,\n      \"@patching_position\",\n      140,\n      336\n    );\n    if (createDacForHelpfile) {\n      const ezdacObj = basic.subpatcher().newdefault(140, 537, \"ezdac~\");\n      ezdacObj.varname = \"basic_dac\";\n      const ezdac = basic.subpatcher().getnamed(\"basic_dac\");\n      ezdac.message(\"local\", 1);\n      ezdac.message(\"patching_rect\", 140, 537, 45, 45);\n      const ezdacComment = basic.subpatcher().newdefault(111, 547, \"comment\");\n      ezdacComment.varname = \"comment_dac\";\n      const comment = basic.subpatcher().getnamed(\"comment_dac\");\n      comment.message(\"set\", \"Audio On\");\n      comment.message(\"bubble\", 1);\n      comment.message(\"bubbleside\", 1);\n      comment.message(\"textjustification\", 1);\n      comment.message(\"fontsize\", 13);\n      comment.message(\"fontname\", \"Arial\");\n      comment.message(\"patching_rect\", 187, 547, 86, 25);\n      comment.message(\"background\", 1);\n    }\n    if (eviType !== 1) {\n      const helpObject = basic.subpatcher().getnamed(thisHelpObjectName);\n      const objectRect = helpObject.getattr(\"patching_rect\");\n      const argsPos = [objectRect[0] + objectRect[2] + 2, objectRect[1] + 1];\n      basic.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        // cannot get my [v8ui] working for now, use Cyling '74 code instead...\n        `v8ui @filename evi.helpargs.js @jsarguments ${objectNameArgument} @patching_position ${argsPos[0]} ${argsPos[1]} @background 1 @embed 0`\n      );\n    }\n    basic.subpatcher().bringtofront(thisHelpObjectName);\n    outlet(0, \"setactivetab\", \"basic\");\n    outlet(0, \"bang\");\n  }\n  if (eviOption1 > 0) {\n    const mc = thisPatcher.getnamed(\"mc_tab\");\n    const testMcTab = mc?.valid;\n    if (!testMcTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        \"p mc\",\n        \"@varname\",\n        \"mc_tab\",\n        \"@patching_rect\",\n        229,\n        336,\n        37,\n        23\n      );\n      const mctab = thisPatcher.getnamed(\"mc_tab\");\n      mctab.subpatcher().setattr(\"bglocked\", 1);\n      mctab.subpatcher().message(\"wclose\");\n      mctab.message(\"showontab\", 1);\n      mctab.message(\"gridonopen\", 1);\n      mctab.message(\"gridsize\", 15, 15);\n      mctab.message(\"fontsize\", 13);\n      mctab.message(\"fontname\", \"Arial\");\n      mctab.message(\"locked\", 1);\n      mctab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `v8ui @filename evi.helpname.js @jsarguments mc.${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n      );\n      const mcDigestComment = mctab.subpatcher().newdefault(10, 70, \"comment\");\n      mcDigestComment.varname = \"digest_comment\";\n      const mcComment = mctab.subpatcher().getnamed(\"digest_comment\");\n      mcComment.message(\"set\", `${objectNameArgument} is also available as an 'mc' Object`);\n      mcComment.message(\"fontsize\", 13);\n      mcComment.message(\"fontname\", \"Lato\");\n      mcComment.message(\"textcolor\", textColor);\n      mcComment.message(\"patching_rect\", 10, 70, 660, 22);\n      mcComment.message(\"background\", 1);\n      mctab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `mc.${objectNameArgument}`,\n        \"@varname\",\n        `${thisHelpObjectName}Mc`,\n        \"@patching_position\",\n        140,\n        336\n      );\n      if (createDacForHelpfile) {\n        const ezdacObj = mctab.subpatcher().newdefault(140, 537, \"mc.ezdac~\");\n        ezdacObj.varname = \"mc_dac\";\n        const ezdac = mctab.subpatcher().getnamed(\"mc_dac\");\n        ezdac.message(\"local\", 1);\n        ezdac.message(\"patching_rect\", 140, 537, 45, 45);\n        const ezdacComment = mctab.subpatcher().newdefault(111, 547, \"comment\");\n        ezdacComment.varname = \"comment_dac\";\n        const comment = mctab.subpatcher().getnamed(\"comment_dac\");\n        comment.message(\"set\", \"Audio On\");\n        comment.message(\"bubble\", 1);\n        comment.message(\"bubbleside\", 1);\n        comment.message(\"textjustification\", 1);\n        comment.message(\"fontsize\", 13);\n        comment.message(\"fontname\", \"Arial\");\n        comment.message(\"patching_rect\", 187, 547, 86, 25);\n        comment.message(\"background\", 1);\n      }\n    }\n  }\n  if (eviOption2 > 0) {\n    const mcs = thisPatcher.getnamed(\"mcs_tab\");\n    const testMcsTab = mcs?.valid;\n    if (!testMcsTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        \"p mcs\",\n        \"@varname\",\n        \"mcs_tab\",\n        \"@patching_rect\",\n        298,\n        336,\n        43,\n        23\n      );\n      const mcstab = thisPatcher.getnamed(\"mcs_tab\");\n      mcstab.subpatcher().setattr(\"bglocked\", 1);\n      mcstab.subpatcher().message(\"wclose\");\n      mcstab.message(\"showontab\", 1);\n      mcstab.message(\"gridonopen\", 1);\n      mcstab.message(\"gridsize\", 15, 15);\n      mcstab.message(\"fontsize\", 13);\n      mcstab.message(\"fontname\", \"Arial\");\n      mcstab.message(\"locked\", 1);\n      mcstab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `v8ui @filename evi.helpname.js @jsarguments mcs.${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n      );\n      const mcsDigestComment = mcstab.subpatcher().newdefault(10, 70, \"comment\");\n      mcsDigestComment.varname = \"digest_comment\";\n      const mcsComment = mcstab.subpatcher().getnamed(\"digest_comment\");\n      mcsComment.message(\"set\", `${objectNameArgument} is also available as an 'mcs' Object`);\n      mcsComment.message(\"fontsize\", 13);\n      mcsComment.message(\"fontname\", \"Lato\");\n      mcsComment.message(\"textcolor\", textColor);\n      mcsComment.message(\"patching_rect\", 10, 70, 660, 22);\n      mcsComment.message(\"background\", 1);\n      mcstab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `mcs.${objectNameArgument}`,\n        \"@varname\",\n        `${thisHelpObjectName}Mcs`,\n        \"@patching_position\",\n        140,\n        336\n      );\n      if (createDacForHelpfile) {\n        const ezdacObj = mcstab.subpatcher().newdefault(140, 537, \"mc.ezdac~\");\n        ezdacObj.varname = \"mcs_dac\";\n        const ezdac = mcstab.subpatcher().getnamed(\"mcs_dac\");\n        ezdac.message(\"local\", 1);\n        ezdac.message(\"patching_rect\", 140, 537, 45, 45);\n        const ezdacComment = mcstab.subpatcher().newdefault(111, 547, \"comment\");\n        ezdacComment.varname = \"comment_dac\";\n        const comment = mcstab.subpatcher().getnamed(\"comment_dac\");\n        comment.message(\"set\", \"Audio On\");\n        comment.message(\"bubble\", 1);\n        comment.message(\"bubbleside\", 1);\n        comment.message(\"textjustification\", 1);\n        comment.message(\"fontsize\", 13);\n        comment.message(\"fontname\", \"Arial\");\n        comment.message(\"patching_rect\", 187, 547, 86, 25);\n        comment.message(\"background\", 1);\n      }\n    }\n  }\n  if (eviOption3 > 0) {\n    const gen = thisPatcher.getnamed(\"gen_tab\");\n    const testGenTab = gen?.valid;\n    if (!testGenTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        \"p gen~\",\n        \"@varname\",\n        \"gen_tab\",\n        \"@patching_rect\",\n        373,\n        336,\n        50,\n        23\n      );\n      const gentab = thisPatcher.getnamed(\"gen_tab\");\n      gentab.subpatcher().setattr(\"bglocked\", 1);\n      gentab.subpatcher().message(\"wclose\");\n      gentab.message(\"showontab\", 1);\n      gentab.message(\"gridonopen\", 1);\n      gentab.message(\"gridsize\", 15, 15);\n      gentab.message(\"fontsize\", 13);\n      gentab.message(\"fontname\", \"Arial\");\n      gentab.message(\"locked\", 1);\n      gentab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `v8ui @filename evi.helpname.js @jsarguments ${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n      );\n      const genDigestComment = gentab.subpatcher().newdefault(10, 70, \"comment\");\n      genDigestComment.varname = \"digest_comment\";\n      const genComment = gentab.subpatcher().getnamed(\"digest_comment\");\n      genComment.message(\"set\", `The ${objectNameArgument} algorithm is also available inside the gen~ environment`);\n      genComment.message(\"fontsize\", 13);\n      genComment.message(\"fontname\", \"Lato\");\n      genComment.message(\"textcolor\", textColor);\n      genComment.message(\"patching_rect\", 10, 70, 660, 22);\n      genComment.message(\"background\", 1);\n      gentab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `gen~ @title using_${objectNameArgument}_inside_gen~`,\n        \"@varname\",\n        `${thisHelpObjectName}Gen`,\n        \"@patching_rect\",\n        223,\n        336,\n        447,\n        23\n      );\n      const genboxComment = gentab.subpatcher().newdefault(97, 328, \"comment\");\n      genboxComment.varname = \"comment_gen\";\n      const gbComment = gentab.subpatcher().getnamed(\"comment_gen\");\n      gbComment.message(\"set\", \"Double-Click to see the example\");\n      gbComment.message(\"bubble\", 1);\n      gbComment.message(\"bubbleside\", 3);\n      gbComment.message(\"textjustification\", 1);\n      gbComment.message(\"fontsize\", 13);\n      gbComment.message(\"fontname\", \"Arial\");\n      gbComment.message(\"patching_rect\", 97, 328, 124, 40);\n      gbComment.message(\"background\", 1);\n      if (createDacForHelpfile) {\n        const ezdacObj = gentab.subpatcher().newdefault(140, 537, \"ezdac~\");\n        ezdacObj.varname = \"mcs_dac\";\n        const ezdac = gentab.subpatcher().getnamed(\"mcs_dac\");\n        ezdac.message(\"local\", 1);\n        ezdac.message(\"patching_rect\", 223, 537, 45, 45);\n        const ezdacComment = gentab.subpatcher().newdefault(270, 547, \"comment\");\n        ezdacComment.varname = \"comment_dac\";\n        const comment = gentab.subpatcher().getnamed(\"comment_dac\");\n        comment.message(\"set\", \"Audio On\");\n        comment.message(\"bubble\", 1);\n        comment.message(\"bubbleside\", 1);\n        comment.message(\"textjustification\", 1);\n        comment.message(\"fontsize\", 13);\n        comment.message(\"fontname\", \"Arial\");\n        comment.message(\"patching_rect\", 270, 547, 86, 25);\n        comment.message(\"background\", 1);\n      }\n    }\n  }\n  if (eviOption4 > 0) {\n    const genexpr = thisPatcher.getnamed(\"genexpr_tab\");\n    const testGenExprTab = genexpr?.valid;\n    if (!testGenExprTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        \"p GenExpr\",\n        \"@varname\",\n        \"genexpr_tab\",\n        \"@patching_rect\",\n        455,\n        336,\n        71,\n        23\n      );\n      const genexprtab = thisPatcher.getnamed(\"genexpr_tab\");\n      genexprtab.subpatcher().setattr(\"bglocked\", 1);\n      genexprtab.subpatcher().message(\"wclose\");\n      genexprtab.message(\"showontab\", 1);\n      genexprtab.message(\"gridonopen\", 1);\n      genexprtab.message(\"gridsize\", 15, 15);\n      genexprtab.message(\"fontsize\", 13);\n      genexprtab.message(\"fontname\", \"Arial\");\n      genexprtab.message(\"locked\", 1);\n      genexprtab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `v8ui @filename evi.helpname.js @jsarguments ${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n      );\n      const genexprDigestComment = genexprtab.subpatcher().newdefault(10, 70, \"comment\");\n      genexprDigestComment.varname = \"digest_comment\";\n      const genComment = genexprtab.subpatcher().getnamed(\"digest_comment\");\n      genComment.message(\"set\", `The ${objectNameArgument} algorithm can also be used inside GenExpr code`);\n      genComment.message(\"fontsize\", 13);\n      genComment.message(\"fontname\", \"Lato\");\n      genComment.message(\"textcolor\", textColor);\n      genComment.message(\"patching_rect\", 10, 70, 660, 22);\n      genComment.message(\"background\", 1);\n      genexprtab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `gen~ @title using_${objectNameArgument}_with_GenExpr`,\n        \"@varname\",\n        `${thisHelpObjectName}GenExpr`,\n        \"@patching_rect\",\n        223,\n        336,\n        447,\n        23\n      );\n      const genboxComment = genexprtab.subpatcher().newdefault(97, 328, \"comment\");\n      genboxComment.varname = \"comment_gen\";\n      const gbComment = genexprtab.subpatcher().getnamed(\"comment_gen\");\n      gbComment.message(\"set\", \"Double-Click to see the example\");\n      gbComment.message(\"bubble\", 1);\n      gbComment.message(\"bubbleside\", 3);\n      gbComment.message(\"textjustification\", 1);\n      gbComment.message(\"fontsize\", 13);\n      gbComment.message(\"fontname\", \"Arial\");\n      gbComment.message(\"patching_rect\", 97, 328, 124, 40);\n      gbComment.message(\"background\", 1);\n      if (createDacForHelpfile) {\n        const ezdacObj = genexprtab.subpatcher().newdefault(140, 537, \"ezdac~\");\n        ezdacObj.varname = \"mcs_dac\";\n        const ezdac = genexprtab.subpatcher().getnamed(\"mcs_dac\");\n        ezdac.message(\"local\", 1);\n        ezdac.message(\"patching_rect\", 223, 537, 45, 45);\n        const ezdacComment = genexprtab.subpatcher().newdefault(270, 547, \"comment\");\n        ezdacComment.varname = \"comment_dac\";\n        const comment = genexprtab.subpatcher().getnamed(\"comment_dac\");\n        comment.message(\"set\", \"Audio On\");\n        comment.message(\"bubble\", 1);\n        comment.message(\"bubbleside\", 1);\n        comment.message(\"textjustification\", 1);\n        comment.message(\"fontsize\", 13);\n        comment.message(\"fontname\", \"Arial\");\n        comment.message(\"patching_rect\", 270, 547, 86, 25);\n        comment.message(\"background\", 1);\n      }\n    }\n  }\n  if (eviOption5 !== \"none\") {\n    const areas = thisPatcher.getnamed(\"areas_tab\");\n    const testAreasTab = areas?.valid;\n    if (!testAreasTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `p \"evieve: ${eviOption5}\"`,\n        \"@varname\",\n        \"areas_tab\",\n        \"@patching_rect\",\n        543,\n        336,\n        107,\n        23\n      );\n      const areastab = thisPatcher.getnamed(\"areas_tab\");\n      areastab.subpatcher().setattr(\"bglocked\", 1);\n      areastab.subpatcher().message(\"wclose\");\n      areastab.message(\"showontab\", 1);\n      areastab.message(\"gridonopen\", 1);\n      areastab.message(\"gridsize\", 15, 15);\n      areastab.message(\"fontsize\", 13);\n      areastab.message(\"fontname\", \"Arial\");\n      areastab.message(\"locked\", 1);\n      let eviOp5extra = eviOption5;\n      if (eviOp5extra === \"msp\") {\n        eviOp5extra = \"msp-substitutions\";\n      }\n      areastab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `v8ui @filename evi.helpname.js @jsarguments \"evieve: ${eviOp5extra}\" ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n      );\n      const areasDigestComment = areastab.subpatcher().newdefault(10, 70, \"comment\");\n      areasDigestComment.varname = \"digest_comment\";\n      const areasComment = areastab.subpatcher().getnamed(\"digest_comment\");\n      areasComment.message(\"set\", `There are other ${eviOp5extra} objects in evieve. Here is an overview.`);\n      areasComment.message(\"fontsize\", 13);\n      areasComment.message(\"fontname\", \"Lato\");\n      areasComment.message(\"textcolor\", textColor);\n      areasComment.message(\"patching_rect\", 10, 70, 660, 22);\n      areasComment.message(\"background\", 1);\n      const AREAS_BPATCHER_NAME = `areas_help_${eviOption5}.maxhelp`;\n      areastab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `bpatcher`,\n        \"@varname\",\n        `${thisHelpObjectName}Areas`,\n        \"@patching_position\",\n        10,\n        94\n      );\n      const areasBpatcher = areastab.subpatcher().getnamed(`${thisHelpObjectName}Areas`);\n      areasBpatcher.setboxattr(\"patching_rect\", 10, 94, 660, 568);\n      areasBpatcher.setboxattr(\"lockedsize\", 1);\n      areasBpatcher.setboxattr(\"lockeddragscroll\", 2);\n      areasBpatcher.setboxattr(\"bgmode\", 0);\n      areasBpatcher.setboxattr(\"clickthrough\", 1);\n      areasBpatcher.setboxattr(\"name\", AREAS_BPATCHER_NAME);\n    }\n  }\n  const b = thisPatcher.getnamed(\"q_tab\");\n  const testQtab = b?.valid;\n  if (!testQtab) {\n    thisPatcher.message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      \"p ?\",\n      \"@varname\",\n      \"q_tab\",\n      \"@patching_rect\",\n      697,\n      336,\n      50,\n      23,\n      \"@background\",\n      1\n    );\n    const q = thisPatcher.getnamed(\"q_tab\");\n    q.subpatcher().message(\"wclose\");\n    q.message(\"showontab\", 1);\n  }\n}\nfunction resize(x, y = 796) {\n  if (x == null) {\n    thisPatcher.wind.size = [1277, 796];\n  } else {\n    thisPatcher.wind.size = [x, y];\n  }\n}\nconst module = {};\nmodule.exports = {};\n",
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
                        "rect": [ 0.0, 26.0, 802.0, 669.0 ],
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
                    "patching_rect": [ 281.0, 165.0, 72.0, 23.0 ],
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
                    "background": 1,
                    "hidden": 1,
                    "id": "obj-5",
                    "linecount": 10,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 502.0, 110.0, 268.0, 152.0 ],
                    "text": "[v8] auto generated via the template, but if you need to edit by hand, args are:\n.js file\nobject name\ntype (0 = external, 1 = gen, 2 = abstraction)\nmc tab? 0/1\nmcs tab? 0/1\ngen tab? 0/1\ngenexpr tab? 0/1\nobject 'area' (symbol)"
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
                        "openrect": [ 22.0, 55.0, 837.0, 796.0 ],
                        "openrectmode": 0,
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 222.0, 286.5, 48.0, 21.0 ],
                                    "text": "ms"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-14",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 275.0, 327.5, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "3",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-66",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 118.0, 287.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-13",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 118.0, 565.5, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 190.0, 285.5, 30.0, 23.0 ],
                                    "text": "300"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 140.0, 285.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 140.0, 326.0, 41.0, 23.0 ],
                                    "text": "click~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "scope~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 140.0, 406.0, 130.0, 130.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpdetails.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "evi.trigholdgate~", "Macintosh", "HD:/Users/stkr/Dev/evieve/help/defines/evi.trigholdgate~.maxhelp" ],
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
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-4",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 1,
                                    "maxclass": "bpatcher",
                                    "name": "evieve_pickup_overview.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 11.0, 11.0, 98.0, 98.0 ],
                                    "varname": "PeterButton",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 140.0, 366.0, 104.0, 23.0 ],
                                    "text": "evi.trigholdgate~",
                                    "varname": "evieveObject"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 140.0, 553.0, 45.0, 45.0 ],
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
                                    "patching_rect": [ 187.0, 563.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            },
                            {
                                "box": {
                                    "attr": "hold",
                                    "id": "obj-10",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 190.0, 326.0, 83.0, 23.0 ],
                                    "text_width": 36.0
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
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
                    "id": "obj-9",
                    "ignoreclick": 1,
                    "jsarguments": [ "evi.trigholdgate~" ],
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 10.0, 364.69598388671875, 57.599853515625 ],
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
                        "rect": [ 55.0, 126.0, 802.0, 669.0 ],
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-26",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 263.0, 212.5, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "3",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-66",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 23.0, 132.5, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-13",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 464.0, 172.5, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 486.0, 131.0, 64.0, 23.0 ],
                                    "text": "mc.*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "meter~",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 192.0, 638.0, 80.0, 13.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 192.0, 598.0, 151.0, 23.0 ],
                                    "text": "mc.stereo~ @autogain 1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-22",
                                    "maxclass": "flonum",
                                    "maximum": 50.0,
                                    "minimum": -50.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 285.0, 211.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ -40.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[1]",
                                            "parameter_mmax": 50.0,
                                            "parameter_mmin": -50.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "ignoreclick": 1,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 285.0, 251.0, 118.0, 23.0 ],
                                    "text": "deviate $1 hold 51."
                                }
                            },
                            {
                                "box": {
                                    "fgcolor": [ 0.9565903523274274, 0.7661489178616099, 0.4528340909165927, 1.0 ],
                                    "id": "obj-20",
                                    "maxclass": "scope~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 633.0, 451.0, 130.0, 130.0 ],
                                    "saved_attribute_attributes": {
                                        "fgcolor": {
                                            "expression": "themecolor.theme_syntax_objectcolor"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "scope~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 192.0, 451.0, 130.0, 130.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 192.0, 371.0, 130.0, 23.0 ],
                                    "text": "mc.*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 486.0, 331.0, 174.0, 23.0 ],
                                    "text": "mc.rampsmooth~ 100 10000"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-16",
                                    "maxclass": "flonum",
                                    "maximum": 2.0,
                                    "minimum": -2.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 45.0, 131.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.7 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number",
                                            "parameter_mmax": 2.0,
                                            "parameter_mmin": -2.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "ignoreclick": 1,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 45.0, 171.0, 97.0, 23.0 ],
                                    "text": "deviate $1 2.67"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "scope~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 486.0, 451.0, 130.0, 130.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "scope~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 339.0, 451.0, 130.0, 130.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "scope~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 45.0, 451.0, 130.0, 130.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 45.0, 211.0, 150.0, 23.0 ],
                                    "text": "mc.evi.listgen @chans 8"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 215.0, 331.0, 96.0, 23.0 ],
                                    "text": "mc.evi.vactrol~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 45.0, 411.0, 189.0, 23.0 ],
                                    "text": "mc.*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
                                    "patching_rect": [ 45.0, 251.0, 189.0, 23.0 ],
                                    "text": "mc.evi.audiodust~ @chans 8"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpname.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "mc.evi.trigholdgate~", 660 ],
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
                                    "text": "evi.trigholdgate~ is also available as an 'mc' Object",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.9565903523274274, 0.7661489178616099, 0.4528340909165927, 1.0 ],
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 215.0, 291.0, 188.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "color": {
                                            "expression": "themecolor.theme_syntax_objectcolor"
                                        }
                                    },
                                    "saved_newobj_attribute_attributes": {
                                        "color": {
                                            "expression": "themecolor.theme_syntax_objectcolor"
                                        }
                                    },
                                    "text": "mc.evi.trigholdgate~ @chans 8",
                                    "varname": "evieveObjectMc"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "local": 1,
                                    "maxclass": "mc.ezdac~",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 486.0, 160.0, 45.0, 45.0 ],
                                    "varname": "mc_dac"
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
                                    "patching_rect": [ 533.0, 170.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "midpoints": [ 139.5, 322.5, 201.5, 322.5 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-1", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 0,
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 1 ],
                                    "midpoints": [ 495.5, 362.5, 312.5, 362.5 ],
                                    "order": 1,
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "order": 1,
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "order": 0,
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "order": 1,
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "midpoints": [ 201.5, 631.0, 778.82421875, 631.0, 778.82421875, 121.0, 495.5, 121.0 ],
                                    "order": 0,
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "midpoints": [ 224.5, 322.5, 495.5, 322.5 ],
                                    "order": 1,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "midpoints": [ 224.5, 322.203125, 642.5, 322.203125 ],
                                    "order": 0,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "order": 2,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 224.5, 402.5, 348.5, 402.5 ],
                                    "order": 0,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "order": 1,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 229.0, 336.0, 37.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p mc",
                    "varname": "mc_tab"
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
                        "rect": [ 0.0, 26.0, 802.0, 669.0 ],
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-66",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 156.0, 252.5, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-15",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 156.0, 565.5, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "activegridcolor": [ 0.22, 0.22, 0.22, 1.0 ],
                                    "activelinecolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                                    "grid": 3,
                                    "horizonal_divisions": 8,
                                    "horizontal_divisions": 8,
                                    "id": "obj-12",
                                    "maxclass": "live.scope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 574.0, 361.0, 130.0, 130.0 ],
                                    "rounded": 1.0,
                                    "samples": 48000.0,
                                    "vertical_divisions": 4
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "activegridcolor": [ 0.22, 0.22, 0.22, 1.0 ],
                                    "activelinecolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                                    "grid": 3,
                                    "horizonal_divisions": 8,
                                    "horizontal_divisions": 8,
                                    "id": "obj-10",
                                    "maxclass": "live.scope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 442.0, 361.0, 130.0, 130.0 ],
                                    "rounded": 1.0,
                                    "samples": 48000.0,
                                    "vertical_divisions": 4
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "activegridcolor": [ 0.22, 0.22, 0.22, 1.0 ],
                                    "activelinecolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                                    "grid": 3,
                                    "horizonal_divisions": 8,
                                    "horizontal_divisions": 8,
                                    "id": "obj-26",
                                    "maxclass": "live.scope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 178.0, 361.0, 130.0, 130.0 ],
                                    "rounded": 1.0,
                                    "samples": 48000.0,
                                    "vertical_divisions": 4
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "activegridcolor": [ 0.22, 0.22, 0.22, 1.0 ],
                                    "activelinecolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                                    "grid": 3,
                                    "horizonal_divisions": 8,
                                    "horizontal_divisions": 8,
                                    "id": "obj-17",
                                    "maxclass": "live.scope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 310.0, 361.0, 130.0, 130.0 ],
                                    "rounded": 1.0,
                                    "samples": 48000.0,
                                    "vertical_divisions": 4
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpname.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "evi.trigholdgate~", 660 ],
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
                                    "text": "The evi.trigholdgate~ algorithm is also available inside the gen~ environment",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "signal", "signal", "signal" ],
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
                                        "rect": [ 640.0, 115.0, 525.0, 450.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 82.0, 328.0, 29.5, 22.0 ],
                                                    "text": "*"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 82.0, 388.0, 35.0, 22.0 ],
                                                    "text": "out 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 387.0, 328.0, 29.5, 22.0 ],
                                                    "text": "*"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 387.0, 388.0, 35.0, 22.0 ],
                                                    "text": "out 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 82.0, 94.0, 32.0, 22.0 ],
                                                    "text": "1.52"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 82.0, 133.0, 113.0, 22.0 ],
                                                    "text": "evi_audiodust"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 244.0, 94.0, 198.0, 22.0 ],
                                                    "text": "param hold 100 @min 4 @max 303"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 244.0, 133.0, 85.0, 22.0 ],
                                                    "text": "setparam hold"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 244.0, 388.0, 35.0, 22.0 ],
                                                    "text": "out 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 244.0, 263.0, 66.0, 22.0 ],
                                                    "text": "evi_vactrol"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 176.0, 187.0, 93.0, 22.0 ],
                                                    "text": "evi_trigholdgate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 82.0, 29.0, 28.0, 22.0 ],
                                                    "text": "in 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 176.0, 388.0, 35.0, 22.0 ],
                                                    "text": "out 1"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 1 ],
                                                    "midpoints": [ 253.5, 300.5390625, 407.0, 300.5390625 ],
                                                    "order": 0,
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 1 ],
                                                    "order": 2,
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "midpoints": [ 253.5, 171.0, 185.5, 171.0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "midpoints": [ 138.5, 316.2265625, 396.5, 316.2265625 ],
                                                    "source": [ "obj-9", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-9", 2 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 178.0, 306.0, 414.9999999999999, 23.0 ],
                                    "text": "gen~ @title using_evi.trigholdgate~_inside_gen~",
                                    "varname": "evieveObjectGen"
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
                                    "patching_rect": [ 52.0, 298.0, 124.0, 40.0 ],
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
                                    "patching_rect": [ 178.0, 553.0, 45.0, 45.0 ],
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
                                    "patching_rect": [ 225.0, 563.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            },
                            {
                                "box": {
                                    "attr": "hold",
                                    "id": "obj-13",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 178.0, 251.0, 130.0, 23.0 ],
                                    "text_width": 64.0
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-5", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-5", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            }
                        ]
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
                    "id": "obj-12",
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
                        "rect": [ 0.0, 26.0, 802.0, 669.0 ],
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-66",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 72.0, 156.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-13",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 330.0, 546.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 94.0, 154.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 94.0, 195.0, 33.0, 23.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "activegridcolor": [ 0.22, 0.22, 0.22, 1.0 ],
                                    "activelinecolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                                    "grid": 3,
                                    "horizonal_divisions": 8,
                                    "horizontal_divisions": 8,
                                    "id": "obj-26",
                                    "maxclass": "live.scope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 94.0, 491.0, 130.0, 130.0 ],
                                    "rounded": 1.0,
                                    "samples": 48000.0,
                                    "vertical_divisions": 4
                                }
                            },
                            {
                                "box": {
                                    "code": "\r\n// the equivalent of evi.trigholdgate~ is in this core file:\r\nrequire(\"evi_utilities.genexpr\");\r\n\r\nParam   hold(5, min=0, max=100);\r\nParam   trigger(1, min=0, max=2);\r\ntrig    = int(trigger);\r\n\r\n// the 'triggerHoldGate()' function is the exact equivalent:\r\nout1 = triggerHoldGate(in1, hold=hold, trigger=trig);\r\n\r\n",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 13.0,
                                    "id": "obj-1",
                                    "maxclass": "gen.codebox~",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 94.0, 235.0, 560.0, 239.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpname.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "evi.trigholdgate~", 660 ],
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
                                    "text": "The evi.trigholdgate~ algorithm can also be used inside GenExpr code",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 352.0, 534.0, 45.0, 45.0 ],
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
                                    "patching_rect": [ 399.0, 544.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            },
                            {
                                "box": {
                                    "attr": "hold",
                                    "id": "obj-3",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 154.0, 195.0, 150.0, 23.0 ],
                                    "text_width": 77.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "trigger",
                                    "id": "obj-5",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 307.0, 195.0, 150.0, 23.0 ],
                                    "text_width": 80.0
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 455.0, 336.0, 71.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p GenExpr",
                    "varname": "genexpr_tab"
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
            "obj-10::obj-16": [ "number", "number", 0 ],
            "obj-10::obj-22": [ "number[1]", "number", 0 ],
            "obj-6::obj-10": [ "radiogroup", "radiogroup", 0 ],
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