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
        "rect": [ 0.0, 62.0, 1319.0, 531.0 ],
        "bglocked": 1,
        "gridonopen": 2,
        "toolbarvisible": 0,
        "lefttoolbarpinned": 2,
        "toptoolbarpinned": 2,
        "righttoolbarpinned": 2,
        "bottomtoolbarpinned": 2,
        "toolbars_unpinned_last_save": 15,
        "tallnewobj": 1,
        "subpatcher_template": "sub",
        "showrootpatcherontab": 0,
        "cluebar": 2,
        "integercoordinates": 1,
        "title": "evieve Package Overview",
        "boxes": [
            {
                "box": {
                    "id": "obj-73",
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
                        "rect": [ 0.0, 26.0, 1319.0, 505.0 ],
                        "bglocked": 1,
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontsize": 14.0,
                                    "id": "obj-67",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 603.0, 337.0, 195.0, 53.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 3,
                                    "presentation_rect": [ 603.0, 337.0, 195.0, 53.0 ],
                                    "text": "Overview of managing dependencies when using evieve objects",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 16.0,
                                    "hint": "Open...",
                                    "id": "obj-63",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 608.0, 403.0, 184.0, 26.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 608.0, 403.0, 184.0, 26.0 ],
                                    "rounded": 4.0,
                                    "saved_attribute_attributes": {
                                        "textoncolor": {
                                            "expression": "themecolor.theme_syntax_attributecolor"
                                        },
                                        "textovercolor": {
                                            "expression": "themecolor.theme_syntax_objectcolor"
                                        }
                                    },
                                    "text": "Projects and AMXDs",
                                    "texton": "Projects and AMXDs",
                                    "textoncolor": [ 0.5746819173620666, 0.7467304293728035, 1.0, 1.0 ],
                                    "textovercolor": [ 0.9565903523274274, 0.7661489178616099, 0.4528340909165927, 1.0 ],
                                    "usetextovercolor": 1,
                                    "valuepopuplabel": 1
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-62",
                                    "ignoreclick": 1,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 608.0, 437.0, 179.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 608.0, 437.0, 179.0, 22.0 ],
                                    "text": "evieve_explain_projects.maxpat"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 2,
                                    "id": "obj-53",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 660.0, 210.0, 612.0, 33.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 660.0, 210.0, 612.0, 33.0 ],
                                    "text": "|\nTIP: in an unlocked patcher, hit the \"g\" key to pull up a gen~ Object or \"G\" to pull up a gen.codebox~"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 2,
                                    "id": "obj-51",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 97.0, 210.0, 561.0, 33.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 97.0, 210.0, 561.0, 33.0 ],
                                    "text": "|\nTIP: in an unlocked patcher, hit the \"v\" key to pull up an evieve Object"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 159.0, 414.0, 139.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 159.0, 414.0, 139.0, 20.0 ],
                                    "text": "---->> is similar to ---->>",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 166.0, 346.0, 139.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 166.0, 346.0, 139.0, 20.0 ],
                                    "text": "---->> is similar to ---->>",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 14.0,
                                    "id": "obj-46",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1072.0, 337.0, 170.0, 53.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 3,
                                    "presentation_rect": [ 1072.0, 337.0, 170.0, 53.0 ],
                                    "text": "Overview of all the Objects available in Max (& gen~) patching",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 16.0,
                                    "hint": "Open...",
                                    "id": "obj-44",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 1065.0, 403.0, 184.0, 26.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 1065.0, 403.0, 184.0, 26.0 ],
                                    "rounded": 4.0,
                                    "saved_attribute_attributes": {
                                        "textoncolor": {
                                            "expression": "themecolor.theme_syntax_attributecolor"
                                        },
                                        "textovercolor": {
                                            "expression": "themecolor.theme_syntax_objectcolor"
                                        }
                                    },
                                    "text": "evieve Objects Overview",
                                    "texton": "evieve Objects Overview",
                                    "textoncolor": [ 0.5746819173620666, 0.7467304293728035, 1.0, 1.0 ],
                                    "textovercolor": [ 0.9565903523274274, 0.7661489178616099, 0.4528340909165927, 1.0 ],
                                    "usetextovercolor": 1,
                                    "valuepopuplabel": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 16.0,
                                    "hint": "Open...",
                                    "id": "obj-5",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 844.0, 403.0, 167.0, 26.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 844.0, 403.0, 167.0, 26.0 ],
                                    "rounded": 4.0,
                                    "saved_attribute_attributes": {
                                        "textoncolor": {
                                            "expression": "themecolor.theme_syntax_attributecolor"
                                        },
                                        "textovercolor": {
                                            "expression": "themecolor.theme_syntax_objectcolor"
                                        }
                                    },
                                    "text": "evieve GenExpr Index",
                                    "texton": "evieveGenExprIndex",
                                    "textoncolor": [ 0.5746819173620666, 0.7467304293728035, 1.0, 1.0 ],
                                    "textovercolor": [ 0.9565903523274274, 0.7661489178616099, 0.4528340909165927, 1.0 ],
                                    "usetextovercolor": 1,
                                    "valuepopuplabel": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 981.0, 145.0, 162.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 981.0, 145.0, 162.0, 20.0 ],
                                    "text": "---->> is the same as ---->>",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 710.0, 145.0, 162.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 710.0, 145.0, 162.0, 20.0 ],
                                    "text": "---->> is the same as ---->>",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 459.0, 145.0, 162.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 459.0, 145.0, 162.0, 20.0 ],
                                    "text": "---->> is the same as ---->>",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_outlinecolor": [ 0.9565903523274274, 0.7661489178616099, 0.4528340909165927, 1.0 ],
                                    "bubbleside": 0,
                                    "id": "obj-35",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1127.0, 173.0, 140.0, 39.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 1127.0, 173.0, 140.0, 39.0 ],
                                    "saved_attribute_attributes": {
                                        "bubble_outlinecolor": {
                                            "expression": "themecolor.theme_syntax_objectcolor"
                                        }
                                    },
                                    "text": "patched inside a rnbo~",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "autosave": 1,
                                    "hint": "Double-Click to See Inside...",
                                    "id": "obj-34",
                                    "inletInfo": {
                                        "IOInfo": [
                                            {
                                                "type": "signal",
                                                "index": 1,
                                                "tag": "in1",
                                                "comment": ""
                                            },
                                            {
                                                "type": "event",
                                                "index": 2,
                                                "tag": "in2",
                                                "comment": ""
                                            },
                                            {
                                                "type": "event",
                                                "index": 3,
                                                "tag": "in3",
                                                "comment": ""
                                            },
                                            {
                                                "type": "event",
                                                "index": 4,
                                                "tag": "in4",
                                                "comment": ""
                                            }
                                        ]
                                    },
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 2,
                                    "outletInfo": {
                                        "IOInfo": [
                                            {
                                                "type": "signal",
                                                "index": 1,
                                                "tag": "out1",
                                                "comment": ""
                                            }
                                        ]
                                    },
                                    "outlettype": [ "signal", "list" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 2,
                                            "revision": 0,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "rnbo",
                                        "rect": [ 94.0, 149.0, 597.0, 479.0 ],
                                        "default_fontname": "Lato",
                                        "integercoordinates": 1,
                                        "title": "gen~",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "genpatcher": {
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
                                                            "rect": [ 489.0, 100.0, 989.0, 848.0 ],
                                                            "gridonopen": 2,
                                                            "subpatcher_template": "sub",
                                                            "integercoordinates": 1,
                                                            "boxes": [
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 2 Reset (Param has changed)",
                                                                        "patching_rect": [ 756.0, 807.0, 189.0, 22.0 ],
                                                                        "id": "obj-7",
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 2 (signal/float) Shape (linear gain 1..100) @default 1 @min 1 @max 100",
                                                                        "patching_rect": [ 539.0, 19.0, 406.0, 22.0 ],
                                                                        "outlettype": [ "" ],
                                                                        "id": "obj-5",
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 1 (signal) Input Signal",
                                                                        "patching_rect": [ 49.0, 19.0, 137.0, 22.0 ],
                                                                        "outlettype": [ "" ],
                                                                        "id": "obj-1",
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "codebox",
                                                                        "patching_rect": [ 49.0, 58.0, 896.0, 732.0 ],
                                                                        "fontname": "<Monospaced>",
                                                                        "outlettype": [ "", "" ],
                                                                        "fontface": 0,
                                                                        "id": "obj-3",
                                                                        "numinlets": 2,
                                                                        "fontsize": 12.0,
                                                                        "numoutlets": 2,
                                                                        "code": "\r\n// this is an antialiased atan(x) (with gain compensation wrapper)\r\n// for saturating your audio, not for Maths.\r\n\r\nrequire(\"evi_saturators.genexpr\");\n\r\n// This gain compensation wrapper around the atan() function makes a great non-linear\r\n// shaper. Many thanks to Volker Böhm. With no antialiasing it sounds like crap, but here\r\n// the atan(x)s in the functions required here are antialiased and much nicer.\r\natanDrive(drive)\r\n{\n\tpre = maximum(drive, 1);\n\tpost = maximum((1 / atanA(drive)), 0.1);// naive approx for control rate\n\treturn pre, post;\r\n}\n\r\nHistory\treset(1);\r\n\r\n//Param\tshape(1, min=1, max=100);\t\t\t// linear gain, 0..40 dB\r\n//Param\tsmoothshape(22.666, min=0, max=333);// ms\r\nParam\thfcompensate(1, min=0, max=1);\t\t// default on\r\nParam\taa(3, min=0, max=5);\t\t\t\t// default Adaa2\r\nadaaxx\t= int(aa);\r\nhfcomp\t= int(hfcompensate);\r\n//smooth\t= smoothshape * 0.001;\t\t\t// secs\r\n\r\nresetaa\t= delta(change(adaaxx)) < 0;\r\nresethf\t= delta(change(hfcomp)) < 0;\r\nreset\t= resetaa + resethf;\r\n\r\ningain, outgain = atanDrive(in2);           // must smooth in2 externally\r\nataninput = in1 * ingain;// + bias;\r\natanoutput\t= 0;\r\nif (adaaxx == 1) {\r\n\tatanoutput = atanAdaa1_2x_6POINT(ataninput, reset);\r\n} else if (adaaxx == 2) {\r\n\tatanoutput = atanAdaa1_4x_6POINT(ataninput, reset);\r\n} else if (adaaxx == 3) {\t// default\r\n\tatanoutput = dcblock(atanAdaa2(ataninput, reset));\r\n} else if (adaaxx == 4) {\r\n\tatanoutput = atanAdaa2_2x_6POINT(ataninput, reset);\r\n} else if (adaaxx == 5) {\r\n\tatanoutput = atanAdaa2_4x_6POINT(ataninput, reset);\r\n} else {\t\t\t\t\t// (adaaxx == 0)\r\n\tatanoutput = dcblock(atanAdaa1(ataninput, reset));\r\n}\r\n\r\nif (hfcomp) {\r\n\tatanoutput = decorelate(atanoutput);\r\n}\r\n\r\nout1\t= atanoutput * outgain;// * HALFPI;\r\nout2\t= reset;\r\n\r\n"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 1 (signal) Atan(x) Output - antialiased for your audio not for Maths",
                                                                        "patching_rect": [ 49.0, 807.0, 381.0, 22.0 ],
                                                                        "id": "obj-4",
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0
                                                                    }
                                                                }
                                                            ],
                                                            "lines": [
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-5", 0 ],
                                                                        "destination": [ "obj-3", 1 ],
                                                                        "midpoints": [ 548.5, 49.5, 935.5, 49.5 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-3", 1 ],
                                                                        "destination": [ "obj-7", 0 ],
                                                                        "midpoints": [ 935.5, 798.5, 765.5, 798.5 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-3", 0 ],
                                                                        "destination": [ "obj-4", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-1", 0 ],
                                                                        "destination": [ "obj-3", 0 ]
                                                                    }
                                                                }
                                                            ]
                                                        }
                                                    },
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "signal" ],
                                                    "patching_rect": [ 69.0, 324.0, 169.0, 23.0 ],
                                                    "rnbo_classname": "gen~",
                                                    "rnbo_serial": 1,
                                                    "rnbo_uniqueid": "gen~_obj-2",
                                                    "rnboinfo": {
                                                        "needsInstanceInfo": 1,
                                                        "argnames": {
                                                            "in1": {
                                                                "kind": 1,
                                                                "digest": "in1",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 0,
                                                                "attachable": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "inlet": 1,
                                                                "type": "number"
                                                            },
                                                            "reset": {
                                                                "kind": 1,
                                                                "digest": "Reset all param and history objects to initial values",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 0,
                                                                "attachable": 1,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "bang"
                                                            },
                                                            "expr": {
                                                                "kind": 2,
                                                                "digest": "a gen expression",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "symbol",
                                                                "doNotShowInMaxInspector": 1
                                                            },
                                                            "file": {
                                                                "kind": 2,
                                                                "digest": "gendsp file to load",
                                                                "isalias": 0,
                                                                "aliases": [ "gen" ],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "symbol",
                                                                "doNotShowInMaxInspector": 1
                                                            },
                                                            "gen": {
                                                                "kind": 2,
                                                                "digest": "gendsp file to load",
                                                                "isalias": 1,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "aliasOf": "file",
                                                                "type": "symbol"
                                                            },
                                                            "title": {
                                                                "kind": 2,
                                                                "digest": "a title",
                                                                "isalias": 0,
                                                                "aliases": [ "t" ],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "defaultarg": 1,
                                                                "type": "symbol",
                                                                "doNotShowInMaxInspector": 1
                                                            },
                                                            "t": {
                                                                "kind": 2,
                                                                "digest": "a title",
                                                                "isalias": 1,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "aliasOf": "title",
                                                                "type": "symbol"
                                                            },
                                                            "exposeparams": {
                                                                "kind": 2,
                                                                "digest": "Expose gen params as RNBO params.",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "bool",
                                                                "defaultValue": "false"
                                                            }
                                                        },
                                                        "inputs": [
                                                            {
                                                                "name": "in1",
                                                                "type": "auto",
                                                                "digest": "in1",
                                                                "hot": 1
                                                            },
                                                            {
                                                                "name": "in2",
                                                                "type": "auto"
                                                            }
                                                        ],
                                                        "outputs": [
                                                            {
                                                                "name": "out1",
                                                                "type": "signal"
                                                            },
                                                            {
                                                                "name": "out2",
                                                                "type": "signal"
                                                            }
                                                        ],
                                                        "helpname": "gen~",
                                                        "classname": "gen~",
                                                        "digest": "gen~",
                                                        "versionId": 1955946750,
                                                        "objectversion": 0,
                                                        "changesPatcherIO": 0,
                                                        "hasPatcherArgs": 0
                                                    },
                                                    "text": "gen~ @file evi_overdrive_wrap"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 359.0, 68.0, 28.0, 23.0 ],
                                                    "rnbo_classname": "in",
                                                    "rnbo_serial": 1,
                                                    "rnbo_uniqueid": "in_obj-8",
                                                    "rnboinfo": {
                                                        "needsInstanceInfo": 1,
                                                        "argnames": {
                                                            "index": {
                                                                "attrOrProp": 2,
                                                                "digest": "inlet number",
                                                                "defaultarg": 1,
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "number",
                                                                "mandatory": 1
                                                            },
                                                            "comment": {
                                                                "attrOrProp": 2,
                                                                "digest": "mouse over comment",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "symbol"
                                                            },
                                                            "meta": {
                                                                "attrOrProp": 2,
                                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "symbol",
                                                                "defaultValue": "",
                                                                "label": "Metadata",
                                                                "displayorder": 3
                                                            }
                                                        },
                                                        "inputs": [],
                                                        "outputs": [
                                                            {
                                                                "name": "out1",
                                                                "type": [ "bang", "number", "list" ],
                                                                "digest": "value from inlet with index 4",
                                                                "displayName": "",
                                                                "docked": 0
                                                            }
                                                        ],
                                                        "helpname": "in",
                                                        "aliasOf": "in",
                                                        "classname": "in",
                                                        "operator": 0,
                                                        "versionId": 475235762,
                                                        "objectversion": 0,
                                                        "changesPatcherIO": 1
                                                    },
                                                    "text": "in 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 245.0, 68.0, 28.0, 23.0 ],
                                                    "rnbo_classname": "in",
                                                    "rnbo_serial": 2,
                                                    "rnbo_uniqueid": "in_obj-7",
                                                    "rnboinfo": {
                                                        "needsInstanceInfo": 1,
                                                        "argnames": {
                                                            "index": {
                                                                "attrOrProp": 2,
                                                                "digest": "inlet number",
                                                                "defaultarg": 1,
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "number",
                                                                "mandatory": 1
                                                            },
                                                            "comment": {
                                                                "attrOrProp": 2,
                                                                "digest": "mouse over comment",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "symbol"
                                                            },
                                                            "meta": {
                                                                "attrOrProp": 2,
                                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "symbol",
                                                                "defaultValue": "",
                                                                "label": "Metadata",
                                                                "displayorder": 3
                                                            }
                                                        },
                                                        "inputs": [],
                                                        "outputs": [
                                                            {
                                                                "name": "out1",
                                                                "type": [ "bang", "number", "list" ],
                                                                "digest": "value from inlet with index 3",
                                                                "displayName": "",
                                                                "docked": 0
                                                            }
                                                        ],
                                                        "helpname": "in",
                                                        "aliasOf": "in",
                                                        "classname": "in",
                                                        "operator": 0,
                                                        "versionId": 475235762,
                                                        "objectversion": 0,
                                                        "changesPatcherIO": 1
                                                    },
                                                    "text": "in 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 142.0, 68.0, 28.0, 23.0 ],
                                                    "rnbo_classname": "in",
                                                    "rnbo_serial": 3,
                                                    "rnbo_uniqueid": "in_obj-6",
                                                    "rnboinfo": {
                                                        "needsInstanceInfo": 1,
                                                        "argnames": {
                                                            "index": {
                                                                "attrOrProp": 2,
                                                                "digest": "inlet number",
                                                                "defaultarg": 1,
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "number",
                                                                "mandatory": 1
                                                            },
                                                            "comment": {
                                                                "attrOrProp": 2,
                                                                "digest": "mouse over comment",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "symbol"
                                                            },
                                                            "meta": {
                                                                "attrOrProp": 2,
                                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "symbol",
                                                                "defaultValue": "",
                                                                "label": "Metadata",
                                                                "displayorder": 3
                                                            }
                                                        },
                                                        "inputs": [],
                                                        "outputs": [
                                                            {
                                                                "name": "out1",
                                                                "type": [ "bang", "number", "list" ],
                                                                "digest": "value from inlet with index 2",
                                                                "displayName": "",
                                                                "docked": 0
                                                            }
                                                        ],
                                                        "helpname": "in",
                                                        "aliasOf": "in",
                                                        "classname": "in",
                                                        "operator": 0,
                                                        "versionId": 475235762,
                                                        "objectversion": 0,
                                                        "changesPatcherIO": 1
                                                    },
                                                    "text": "in 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 46.0, 68.0, 35.0, 23.0 ],
                                                    "rnbo_classname": "in~",
                                                    "rnbo_serial": 1,
                                                    "rnbo_uniqueid": "in~_obj-5",
                                                    "rnboinfo": {
                                                        "needsInstanceInfo": 1,
                                                        "argnames": {
                                                            "out1": {
                                                                "attrOrProp": 1,
                                                                "digest": "signal from inlet with index 1",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 0,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "outlet": 1,
                                                                "type": "signal"
                                                            },
                                                            "index": {
                                                                "attrOrProp": 2,
                                                                "digest": "inlet number",
                                                                "defaultarg": 1,
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "number",
                                                                "mandatory": 1
                                                            },
                                                            "comment": {
                                                                "attrOrProp": 2,
                                                                "digest": "mouse over comment",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "symbol"
                                                            },
                                                            "meta": {
                                                                "attrOrProp": 2,
                                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "symbol",
                                                                "defaultValue": "",
                                                                "label": "Metadata",
                                                                "displayorder": 3
                                                            }
                                                        },
                                                        "inputs": [],
                                                        "outputs": [
                                                            {
                                                                "name": "out1",
                                                                "type": "signal",
                                                                "digest": "signal from inlet with index 1",
                                                                "displayName": "",
                                                                "docked": 0
                                                            }
                                                        ],
                                                        "helpname": "in~",
                                                        "aliasOf": "in~",
                                                        "classname": "in~",
                                                        "operator": 0,
                                                        "versionId": -1654556303,
                                                        "objectversion": 0,
                                                        "changesPatcherIO": 1
                                                    },
                                                    "text": "in~ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 69.0, 397.0, 43.0, 23.0 ],
                                                    "rnbo_classname": "out~",
                                                    "rnbo_serial": 1,
                                                    "rnbo_uniqueid": "out~_obj-4",
                                                    "rnboinfo": {
                                                        "needsInstanceInfo": 1,
                                                        "argnames": {
                                                            "in1": {
                                                                "kind": 1,
                                                                "digest": "signal sent to outlet with index 1",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 0,
                                                                "attachable": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "inlet": 1,
                                                                "type": "signal"
                                                            },
                                                            "index": {
                                                                "kind": 2,
                                                                "digest": "outlet number",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "defaultarg": 1,
                                                                "type": "number",
                                                                "defaultValue": "0"
                                                            },
                                                            "comment": {
                                                                "kind": 2,
                                                                "digest": "mouse over comment",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "symbol"
                                                            },
                                                            "meta": {
                                                                "kind": 2,
                                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "symbol",
                                                                "defaultValue": "",
                                                                "label": "Metadata",
                                                                "displayorder": 3
                                                            }
                                                        },
                                                        "inputs": [
                                                            {
                                                                "name": "in1",
                                                                "type": "signal",
                                                                "digest": "signal sent to outlet with index 1",
                                                                "displayName": "",
                                                                "hot": 1
                                                            }
                                                        ],
                                                        "outputs": [],
                                                        "helpname": "out~",
                                                        "classname": "out~",
                                                        "digest": "signal outlet",
                                                        "versionId": -605335439,
                                                        "objectversion": 0,
                                                        "changesPatcherIO": 1,
                                                        "hasPatcherArgs": 0
                                                    },
                                                    "text": "out~ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "linecount": 4,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 380.0, 164.0, 171.0, 64.0 ],
                                                    "text": "there are no 'defines' in [rnbo~] so you will have to patch with gen~ @file names (similar to inside [gen~])",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "genpatcher": {
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
                                                            "rect": [ 34.0, 100.0, 764.0, 600.0 ],
                                                            "gridonopen": 2,
                                                            "subpatcher_template": "sub",
                                                            "integercoordinates": 1,
                                                            "boxes": [
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 4 (signal/float) Q @default 0.707107",
                                                                        "linecount": 2,
                                                                        "patching_rect": [ 637.0, 13.0, 114.0, 35.0 ],
                                                                        "outlettype": [ "" ],
                                                                        "id": "obj-6",
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 3 (signal/float) Gain in dB @min -30 @max 30 @default 0",
                                                                        "linecount": 2,
                                                                        "patching_rect": [ 436.0, 13.0, 179.0, 35.0 ],
                                                                        "outlettype": [ "" ],
                                                                        "id": "obj-5",
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 1 (signal) Input",
                                                                        "patching_rect": [ 34.0, 19.0, 101.0, 22.0 ],
                                                                        "outlettype": [ "" ],
                                                                        "id": "obj-1",
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 2 (signal/float) Cutoff in Hz @min 1 @max samplerate*0.5",
                                                                        "linecount": 2,
                                                                        "patching_rect": [ 235.0, 13.0, 175.0, 35.0 ],
                                                                        "outlettype": [ "" ],
                                                                        "id": "obj-2",
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 1 (signal) Filter Output",
                                                                        "patching_rect": [ 34.0, 553.0, 147.0, 22.0 ],
                                                                        "id": "obj-4",
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "codebox",
                                                                        "patching_rect": [ 34.0, 58.0, 622.0, 478.0 ],
                                                                        "fontname": "<Monospaced>",
                                                                        "outlettype": [ "" ],
                                                                        "fontface": 0,
                                                                        "id": "obj-3",
                                                                        "numinlets": 4,
                                                                        "fontsize": 12.0,
                                                                        "numoutlets": 1,
                                                                        "code": "\r\nrequire(\"evi_svfs_tpt.genexpr\");\r\n\r\nParam   smooth(0., min=0, max=333);\r\nParam   filter(7, min=0, max=12);\r\nfilt    = int(filter);\r\nreset   = delta(change(filt)) < 0;\r\n\r\n/*\n\tIndex\tFilter\n\n\t0 \t\tBypass\n\t1 \t\tLowpass\n\t2 \t\tHighpass\n\t3 \t\tBandpass\n\t4 \t\tPeak\n\t5 \t\tNotch\n\t6 \t\tResonant\n\t7 \t\tBell            // (default)\n\t8 \t\tBellAdaptiveQ\n\t9 \t\tLowshelf\n\t10 \t\tHighshelf\n\t11 \t\tTilt\n\t12 \t\tAllpass\n*/\n\r\n                            //   hz,  db,  Q\r\nout1    = eviFilterTptReset(in1, in2, in3, in4, filt, reset, smooth=smooth);\r\n\r\n"
                                                                    }
                                                                }
                                                            ],
                                                            "lines": [
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-6", 0 ],
                                                                        "destination": [ "obj-3", 3 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-5", 0 ],
                                                                        "destination": [ "obj-3", 2 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-3", 0 ],
                                                                        "destination": [ "obj-4", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-2", 0 ],
                                                                        "destination": [ "obj-3", 1 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-1", 0 ],
                                                                        "destination": [ "obj-3", 0 ]
                                                                    }
                                                                }
                                                            ]
                                                        }
                                                    },
                                                    "hint": "Double-Click to See Inside...",
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 4,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 69.0, 184.0, 211.0, 23.0 ],
                                                    "rnbo_classname": "gen~",
                                                    "rnbo_serial": 2,
                                                    "rnbo_uniqueid": "evi_filter",
                                                    "rnboinfo": {
                                                        "needsInstanceInfo": 1,
                                                        "argnames": {
                                                            "in1": {
                                                                "kind": 1,
                                                                "digest": "in1",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 0,
                                                                "attachable": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "inlet": 1,
                                                                "type": "number"
                                                            },
                                                            "reset": {
                                                                "kind": 1,
                                                                "digest": "Reset all param and history objects to initial values",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 0,
                                                                "attachable": 1,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "bang"
                                                            },
                                                            "expr": {
                                                                "kind": 2,
                                                                "digest": "a gen expression",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "symbol",
                                                                "doNotShowInMaxInspector": 1
                                                            },
                                                            "file": {
                                                                "kind": 2,
                                                                "digest": "gendsp file to load",
                                                                "isalias": 0,
                                                                "aliases": [ "gen" ],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "symbol",
                                                                "doNotShowInMaxInspector": 1
                                                            },
                                                            "gen": {
                                                                "kind": 2,
                                                                "digest": "gendsp file to load",
                                                                "isalias": 1,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "aliasOf": "file",
                                                                "type": "symbol"
                                                            },
                                                            "title": {
                                                                "kind": 2,
                                                                "digest": "a title",
                                                                "isalias": 0,
                                                                "aliases": [ "t" ],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "defaultarg": 1,
                                                                "type": "symbol",
                                                                "doNotShowInMaxInspector": 1
                                                            },
                                                            "t": {
                                                                "kind": 2,
                                                                "digest": "a title",
                                                                "isalias": 1,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "aliasOf": "title",
                                                                "type": "symbol"
                                                            },
                                                            "exposeparams": {
                                                                "kind": 2,
                                                                "digest": "Expose gen params as RNBO params.",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "bool",
                                                                "defaultValue": "false"
                                                            }
                                                        },
                                                        "inputs": [
                                                            {
                                                                "name": "in1",
                                                                "type": "auto",
                                                                "digest": "in1",
                                                                "hot": 1
                                                            },
                                                            {
                                                                "name": "in2",
                                                                "type": "auto"
                                                            },
                                                            {
                                                                "name": "in3",
                                                                "type": "auto"
                                                            },
                                                            {
                                                                "name": "in4",
                                                                "type": "auto"
                                                            }
                                                        ],
                                                        "outputs": [
                                                            {
                                                                "name": "out1",
                                                                "type": "signal"
                                                            }
                                                        ],
                                                        "helpname": "gen~",
                                                        "classname": "gen~",
                                                        "digest": "gen~",
                                                        "versionId": 1955946750,
                                                        "objectversion": 0,
                                                        "changesPatcherIO": 0,
                                                        "hasPatcherArgs": 0
                                                    },
                                                    "text": "gen~ @file evi_filter @exposeparams 1",
                                                    "varname": "evi_filter"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "linecount": 5,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 112.0, 201.0, 282.0, 78.0 ],
                                                    "text": "|\n|\n|\n|\nNOTE: \"@file\" not \"@gen\" as in MSP! ...because Max"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-2", 0 ]
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
                                                    "destination": [ "obj-1", 1 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 2 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 3 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 1145.0, 142.0, 104.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 1145.0, 142.0, 104.0, 22.0 ],
                                    "rnboattrcache": {
                                        "evi_filter/filter": {
                                            "label": "filter",
                                            "isEnum": 0,
                                            "parsestring": "",
                                            "type": 0
                                        },
                                        "evi_filter/smooth": {
                                            "label": "smooth",
                                            "isEnum": 0,
                                            "parsestring": "",
                                            "type": 0
                                        }
                                    },
                                    "rnboversion": "1.5.0-dev.136",
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_invisible": 1,
                                            "parameter_longname": "rnbo~[1]",
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "rnbo~",
                                            "parameter_type": 3
                                        }
                                    },
                                    "saved_object_attributes": {
                                        "optimization": "O1",
                                        "parameter_enable": 1,
                                        "uuid": "349229b3-e4c7-11f0-a9b3-8630418aacfd"
                                    },
                                    "snapshot": {
                                        "filetype": "C74Snapshot",
                                        "version": 2,
                                        "minorversion": 0,
                                        "name": "snapshotlist",
                                        "origin": "rnbo~",
                                        "type": "list",
                                        "subtype": "Undefined",
                                        "embed": 1,
                                        "snapshot": {
                                            "evi_filter/filter": {
                                                "value": 0.0
                                            },
                                            "evi_filter/smooth": {
                                                "value": 0.0
                                            },
                                            "__presetid": "gen~"
                                        },
                                        "snapshotlist": {
                                            "current_snapshot": 0,
                                            "entries": [
                                                {
                                                    "filetype": "C74Snapshot",
                                                    "version": 2,
                                                    "minorversion": 0,
                                                    "name": "untitled",
                                                    "origin": "gen~",
                                                    "type": "rnbo",
                                                    "subtype": "",
                                                    "embed": 0,
                                                    "snapshot": {
                                                        "evi_filter/filter": {
                                                            "value": 0.0
                                                        },
                                                        "evi_filter/smooth": {
                                                            "value": 0.0
                                                        },
                                                        "__presetid": "gen~"
                                                    },
                                                    "fileref": {
                                                        "name": "untitled",
                                                        "filename": "untitled_20251229_1.maxsnap",
                                                        "filepath": "~/Documents/Max 9/Snapshots",
                                                        "filepos": -1,
                                                        "snapshotfileid": "58545e3df9b22360702e23cd15e904c7"
                                                    }
                                                }
                                            ]
                                        }
                                    },
                                    "text": "rnbo~ @title gen~",
                                    "varname": "rnbo~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 439.0, 379.0, 33.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 71.0, 439.0, 379.0, 33.0 ],
                                    "text": "^^ sometimes the [evi.* something] is a patched Max abstraction, but usually it has a similar gen~ version..."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 371.0, 481.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 71.0, 371.0, 481.0, 20.0 ],
                                    "text": "^^ sometimes the [evi.* something] is an external, but it still has a gen~ version..."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 16.0,
                                    "id": "obj-30",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 300.0, 290.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 71.0, 300.0, 290.0, 24.0 ],
                                    "text": "Exceptions..."
                                }
                            },
                            {
                                "box": {
                                    "hint": "Double-Click to See Inside...",
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
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
                                        "rect": [ 34.0, 100.0, 1064.0, 509.0 ],
                                        "gridonopen": 2,
                                        "subpatcher_template": "sub",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 401.0, 34.0, 71.0, 22.0 ],
                                                    "text": "in 5 release"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 318.0, 34.0, 69.0, 22.0 ],
                                                    "text": "in 4 sustain"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 241.0, 34.0, 63.0, 22.0 ],
                                                    "text": "in 3 decay"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 383.0, 418.0, 35.0, 22.0 ],
                                                    "text": "out 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 309.0, 418.0, 35.0, 22.0 ],
                                                    "text": "out 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 235.0, 418.0, 35.0, 22.0 ],
                                                    "text": "out 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 8,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "", "", "", "" ],
                                                    "patching_rect": [ 250.0, 238.0, 93.0, 22.0 ],
                                                    "text": "evi_DAHDSHR"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "code": "\r\n\r\nout1, out2, out3, out4 = evi_DAHDSHR(in1, 0, in2, 0, in3, in4, 0, in5);\r\n\r\n",
                                                    "fontface": 0,
                                                    "fontname": "<Monospaced>",
                                                    "fontsize": 12.0,
                                                    "id": "obj-5",
                                                    "maxclass": "codebox",
                                                    "numinlets": 5,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "", "", "", "" ],
                                                    "patching_rect": [ 401.0, 161.0, 605.0, 177.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 34.0, 65.0, 22.0 ],
                                                    "text": "in 1 trigger"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 164.0, 34.0, 63.0, 22.0 ],
                                                    "text": "in 2 attack"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 161.0, 418.0, 62.0, 22.0 ],
                                                    "text": "out 1 adsr"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 2 ],
                                                    "order": 0,
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 4 ],
                                                    "order": 1,
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 3 ],
                                                    "order": 0,
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 5 ],
                                                    "order": 1,
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 4 ],
                                                    "order": 0,
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 7 ],
                                                    "order": 1,
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 2 ],
                                                    "order": 1,
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-6", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-6", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-6", 3 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 325.0, 411.0, 108.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 325.0, 411.0, 108.0, 22.0 ],
                                    "text": "gen~ @t gen~adsr"
                                }
                            },
                            {
                                "box": {
                                    "hint": "Abstraction: Double-Click to See Inside...",
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 71.0, 411.0, 61.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 71.0, 411.0, 61.0, 22.0 ],
                                    "text": "evi.adsr~"
                                }
                            },
                            {
                                "box": {
                                    "hint": "Double-Click to See Inside...",
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "signal", "signal" ],
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
                                        "rect": [ 34.0, 100.0, 1279.0, 579.0 ],
                                        "gridonopen": 2,
                                        "subpatcher_template": "sub",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 865.0, 456.0, 35.0, 22.0 ],
                                                    "text": "out 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "code": "\r\nrequire(\"evi_smooth.genexpr\");\r\n\r\nout1 = expsmooth(in1, in2*0.001);\r\n\r\n",
                                                    "fontface": 0,
                                                    "fontname": "<Monospaced>",
                                                    "fontsize": 12.0,
                                                    "id": "obj-8",
                                                    "maxclass": "codebox",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 865.0, 216.0, 340.0, 157.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 423.0, 456.0, 35.0, 22.0 ],
                                                    "text": "out 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "code": "\r\n\r\n\r\nout1 = evi_expsmooth(in1, in2);\r\n\r\n",
                                                    "fontface": 0,
                                                    "fontname": "<Monospaced>",
                                                    "fontsize": 12.0,
                                                    "id": "obj-5",
                                                    "maxclass": "codebox",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 423.0, 216.0, 340.0, 157.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 60.0, 52.0, 28.0, 22.0 ],
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
                                                    "patching_rect": [ 315.0, 52.0, 134.0, 22.0 ],
                                                    "text": "in 2 Smooth Time in ms"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 186.0, 283.0, 89.0, 22.0 ],
                                                    "text": "evi_expsmooth"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 186.0, 456.0, 35.0, 22.0 ],
                                                    "text": "out 1"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 1 ],
                                                    "order": 2,
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 307.0, 343.0, 143.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 307.0, 343.0, 143.0, 22.0 ],
                                    "text": "gen~ @t gen~expsmooth"
                                }
                            },
                            {
                                "box": {
                                    "hint": "This is an external",
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 71.0, 343.0, 93.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 71.0, 343.0, 93.0, 22.0 ],
                                    "text": "evi.expsmooth~"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 918.0, 467.0, 51.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 918.0, 467.0, 51.0, 22.0 ],
                                    "text": "pcontrol"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 918.0, 435.0, 115.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 918.0, 435.0, 115.0, 22.0 ],
                                    "text": "prepend loadunique"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 14.0,
                                    "id": "obj-10",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 828.0, 329.0, 202.0, 69.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 4,
                                    "presentation_rect": [ 828.0, 329.0, 202.0, 69.0 ],
                                    "text": "Launch the 'evieve GenExpr Index' to learn about every function in the evieve .genexpr files system",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 572.0, 36.0, 188.0, 47.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 3,
                                    "presentation_rect": [ 572.0, 36.0, 188.0, 47.0 ],
                                    "text": "You can patch inside a gen~ with the same names as in MSP - just substitute the '.' for a '_'",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 835.0, 23.0, 184.0, 60.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 4,
                                    "presentation_rect": [ 835.0, 23.0, 184.0, 60.0 ],
                                    "text": "Creating your own processing chains inside GenExpr is always the most efficient as there is no other wrapping going on",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 296.0, 94.0, 161.0, 33.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 296.0, 94.0, 161.0, 33.0 ],
                                    "text": "In gen~, the naming is always [evi_*something]",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 21.0, 94.0, 161.0, 33.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 21.0, 94.0, 161.0, 33.0 ],
                                    "text": "In MSP, the naming is always [evi.*something]",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 135.0, 190.0, 159.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 135.0, 190.0, 159.0, 20.0 ],
                                    "text": "....... is a 'define' for .......",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.01,
                                    "bubbleside": 2,
                                    "id": "obj-16",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 920.0, 89.0, 210.0, 52.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 920.0, 89.0, 210.0, 52.0 ],
                                    "text": "this is what the evieve package is all about - anything else is a bonus :-)",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_outlinecolor": [ 0.9565903523274274, 0.7661489178616099, 0.4528340909165927, 1.0 ],
                                    "bubbleside": 0,
                                    "id": "obj-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 848.0, 173.0, 158.0, 39.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 848.0, 173.0, 158.0, 39.0 ],
                                    "saved_attribute_attributes": {
                                        "bubble_outlinecolor": {
                                            "expression": "themecolor.theme_syntax_objectcolor"
                                        }
                                    },
                                    "text": "called from GenExpr code",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_outlinecolor": [ 0.9565903523274274, 0.7661489178616099, 0.4528340909165927, 1.0 ],
                                    "bubbleside": 0,
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 596.0, 173.0, 140.0, 39.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 596.0, 173.0, 140.0, 39.0 ],
                                    "saved_attribute_attributes": {
                                        "bubble_outlinecolor": {
                                            "expression": "themecolor.theme_syntax_objectcolor"
                                        }
                                    },
                                    "text": "patched inside a gen~",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_outlinecolor": [ 0.9565903523274274, 0.7661489178616099, 0.4528340909165927, 1.0 ],
                                    "bubbleside": 0,
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 310.0, 173.0, 134.0, 39.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 310.0, 173.0, 134.0, 39.0 ],
                                    "saved_attribute_attributes": {
                                        "bubble_outlinecolor": {
                                            "expression": "themecolor.theme_syntax_objectcolor"
                                        }
                                    },
                                    "text": "as a gen~ file in MSP",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_outlinecolor": [ 0.9565903523274274, 0.7661489178616099, 0.4528340909165927, 1.0 ],
                                    "bubbleside": 0,
                                    "id": "obj-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 173.0, 62.0, 39.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 71.0, 173.0, 62.0, 39.0 ],
                                    "saved_attribute_attributes": {
                                        "bubble_outlinecolor": {
                                            "expression": "themecolor.theme_syntax_objectcolor"
                                        }
                                    },
                                    "text": "in MSP",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "hint": "Double-Click to See Inside...",
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
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
                                        "rect": [ 521.0, 100.0, 735.0, 555.0 ],
                                        "gridonopen": 2,
                                        "subpatcher_template": "sub",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 659.0, 19.0, 28.0, 22.0 ],
                                                    "text": "in 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 451.0, 19.0, 28.0, 22.0 ],
                                                    "text": "in 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 34.0, 19.0, 28.0, 22.0 ],
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
                                                    "patching_rect": [ 242.0, 19.0, 28.0, 22.0 ],
                                                    "text": "in 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 34.0, 500.0, 35.0, 22.0 ],
                                                    "text": "out 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "code": "\r\nrequire(\"evi_svfs_tpt.genexpr\"); // <<-- evieve is organised by require() files\r\n\r\n\r\nParam   smooth(0, min=0, max=333);\r\nParam   filter(7, min=0, max=11);\r\nfilt    = int(filter);\r\nreset   = delta(change(filt)) < 0;\r\n\r\n\r\n// this 'eviFilterTptReset()' function is inside the \"evi_svfs_tpt.genexpr\"\r\n// file declared above\r\n\r\n                             //  hz,  db,  Q\r\nout1    = eviFilterTptReset(in1, in2, in3, in4, filt, reset, smooth=smooth);\r\n\r\n\r\n// notice how this is just the same as [evi.filter~] in MSP\r\n// because we have not done anything else with the code !\r\n\r\n\r\n// to discover all the .genexpr files in evieve, use the\r\n// 'evieve GenExpr Index'\r\n\r\n",
                                                    "fontface": 0,
                                                    "fontname": "<Monospaced>",
                                                    "fontsize": 12.0,
                                                    "id": "obj-3",
                                                    "maxclass": "codebox",
                                                    "numinlets": 4,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 34.0, 58.0, 643.0, 425.0 ]
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
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 2 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 3 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 874.0, 142.0, 105.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 874.0, 142.0, 105.0, 22.0 ],
                                    "text": "gen~ @t GenExpr"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 132.0, 145.0, 162.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 132.0, 145.0, 162.0, 20.0 ],
                                    "text": "---->> is the same as ---->>",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "hint": "Double-Click to See Inside...",
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
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
                                        "rect": [ 34.0, 100.0, 1244.0, 579.0 ],
                                        "gridonopen": 2,
                                        "subpatcher_template": "sub",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 266.0, 468.0, 35.0, 22.0 ],
                                                    "text": "out 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 937.0, 468.0, 35.0, 22.0 ],
                                                    "text": "out 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 854.0, 150.0, 228.0, 33.0 ],
                                                    "text": "We use underscores because otherwise we would not be able to do this:"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 170.0, 251.0, 85.0, 22.0 ],
                                                    "text": "setparam filter"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 259.0, 400.0, 82.0, 22.0 ],
                                                    "text": "evi_limiterfast"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "<Monospaced>",
                                                    "fontsize": 11.0,
                                                    "id": "obj-15",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 820.0, 343.0, 313.0, 45.0 ],
                                                    "saved_attribute_attributes": {
                                                        "textcolor": {
                                                            "expression": "themecolor.jed_expr_comment"
                                                        }
                                                    },
                                                    "text": "...but if you look in the Code sidebar you will see that gen~ unpacks the code contained inside the abstraction versions...",
                                                    "textcolor": [ 0.4904921114938933, 0.6819244478854937, 0.5100669514757755, 1.0 ],
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 685.0, 468.0, 35.0, 22.0 ],
                                                    "text": "out 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "code": "\r\nfilt = evi_filter(in1, in2, in3, in4, filter=7);\r\nout1, out2 = evi_limiterfast(filt, filt);\r\n\r\n// ^^ this just calls the exact same abstractions...\r\n\r\n",
                                                    "fontface": 0,
                                                    "fontname": "<Monospaced>",
                                                    "fontsize": 12.0,
                                                    "id": "obj-8",
                                                    "maxclass": "codebox",
                                                    "numinlets": 4,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 752.0, 185.0, 448.0, 156.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 767.0, 64.0, 28.0, 22.0 ],
                                                    "text": "in 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 553.0, 64.0, 28.0, 22.0 ],
                                                    "text": "in 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hint": "Double-Click to See Inside...",
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 4,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 334.0, 251.0, 101.0, 22.0 ],
                                                    "text": "evi_filter @filter 7"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 69.0, 64.0, 28.0, 22.0 ],
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
                                                    "patching_rect": [ 339.0, 64.0, 28.0, 22.0 ],
                                                    "text": "in 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 468.0, 35.0, 22.0 ],
                                                    "text": "out 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "linecount": 5,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 351.0, 267.0, 211.0, 74.0 ],
                                                    "text": "|\n|\n|\n|\nunderscores inside gen~, dots in MSP"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 455.0, 251.0, 277.0, 20.0 ],
                                                    "text": "------->> is the same as ------->>",
                                                    "textjustification": 1
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-3", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 2 ],
                                                    "order": 1,
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 2 ],
                                                    "order": 0,
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 3 ],
                                                    "order": 1,
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 3 ],
                                                    "order": 0,
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-8", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 623.0, 142.0, 85.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 623.0, 142.0, 85.0, 22.0 ],
                                    "text": "gen~ @t gen~"
                                }
                            },
                            {
                                "box": {
                                    "hint": "Double-Click to See Inside...",
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 296.0, 142.0, 161.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 296.0, 142.0, 161.0, 22.0 ],
                                    "text": "gen~ @gen evi_filter.gendsp"
                                }
                            },
                            {
                                "box": {
                                    "hint": "Double-Click to See Inside...",
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 73.0, 142.0, 57.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 73.0, 142.0, 57.0, 22.0 ],
                                    "text": "evi.filter~"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 2,
                                    "id": "obj-7",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 97.0, 237.0, 759.0, 33.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 2,
                                    "presentation_rect": [ 97.0, 237.0, 759.0, 33.0 ],
                                    "text": "|\nthe benefit of MSP is we have auto-completion (unlike gen~) so this is the best place to start discovering the Package content"
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "bordercolor": [ 0.6189349783285454, 0.744701397656435, 0.9537501082553762, 0.0 ],
                                    "id": "obj-65",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 22.0, 270.0, 529.0, 8.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 22.0, 270.0, 529.0, 8.0 ],
                                    "proportion": 0.5,
                                    "rounded": 2,
                                    "saved_attribute_attributes": {
                                        "bgfillcolor": {
                                            "expression": "themecolor.theme_locked_bgcolor"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "arrows": 2,
                                    "background": 1,
                                    "id": "obj-1",
                                    "justification": 1,
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "orientation": 0,
                                    "patching_rect": [ 920.0, 217.0, 14.0, 107.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 920.0, 217.0, 14.0, 107.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-64",
                                    "justification": 1,
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "orientation": 0,
                                    "patching_rect": [ 809.0, 308.0, 19.0, 164.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 809.0, 308.0, 19.0, 164.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-47",
                                    "justification": 1,
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "orientation": 0,
                                    "patching_rect": [ 1028.0, 308.0, 19.0, 164.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 1028.0, 308.0, 19.0, 164.0 ]
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 1,
                                    "bordercolor": [ 0.9565903523274274, 0.7661489178616099, 0.4528340909165927, 1.0 ],
                                    "grad1": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                                    "grad2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                                    "id": "obj-43",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 572.0, 294.0, 727.0, 191.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 572.0, 294.0, 727.0, 191.0 ],
                                    "proportion": 0.5,
                                    "rounded": 4,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_syntax_objectcolor"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 1,
                                    "bordercolor": [ 0.9, 0.9, 0.9, 1.0 ],
                                    "grad1": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                                    "grad2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                                    "id": "obj-41",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 21.0, 22.0, 1278.0, 252.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 21.0, 22.0, 1278.0, 252.0 ],
                                    "proportion": 0.5,
                                    "rounded": 4,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.jed_defaulttext"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 1,
                                    "bordercolor": [ 0.9, 0.9, 0.9, 1.0 ],
                                    "grad1": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                                    "grad2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                                    "id": "obj-42",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 21.0, 272.0, 531.0, 213.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 21.0, 272.0, 531.0, 213.0 ],
                                    "proportion": 0.5,
                                    "rounded": 4,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.jed_defaulttext"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontsize": 16.0,
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 73.0, 36.0, 329.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 73.0, 36.0, 329.0, 24.0 ],
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_syntax_objectcolor"
                                        }
                                    },
                                    "text": "The basic principle of evieve patching:",
                                    "textcolor": [ 0.9565903523274274, 0.7661489178616099, 0.4528340909165927, 1.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 1157.0, 432.0, 927.5, 432.0 ],
                                    "source": [ "obj-44", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-63", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 509.0, 260.0, 161.0, 26.0 ],
                    "text": "p \"How to Patch with evieve\"",
                    "varname": "patching"
                }
            },
            {
                "box": {
                    "id": "obj-54",
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
                        "rect": [ 0.0, 88.0, 1319.0, 505.0 ],
                        "bglocked": 1,
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontsize": 14.0,
                                    "id": "obj-46",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 591.0, 337.0, 170.0, 53.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 3,
                                    "presentation_rect": [ 591.0, 340.0, 170.0, 53.0 ],
                                    "text": "Overview of all the Objects available in Max (& gen~) patching",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 16.0,
                                    "hint": "Open...",
                                    "id": "obj-44",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 584.0, 403.0, 184.0, 26.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 584.0, 406.0, 184.0, 26.0 ],
                                    "rounded": 4.0,
                                    "saved_attribute_attributes": {
                                        "textoncolor": {
                                            "expression": "themecolor.theme_syntax_attributecolor"
                                        },
                                        "textovercolor": {
                                            "expression": "themecolor.theme_syntax_objectcolor"
                                        }
                                    },
                                    "text": "evieve Objects Overview",
                                    "texton": "evieve Objects Overview",
                                    "textoncolor": [ 0.5746819173620666, 0.7467304293728035, 1.0, 1.0 ],
                                    "textovercolor": [ 0.9565903523274274, 0.7661489178616099, 0.4528340909165927, 1.0 ],
                                    "usetextovercolor": 1,
                                    "valuepopuplabel": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 16.0,
                                    "hint": "Open...",
                                    "id": "obj-5",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 363.0, 403.0, 167.0, 26.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 363.0, 406.0, 167.0, 26.0 ],
                                    "rounded": 4.0,
                                    "saved_attribute_attributes": {
                                        "textoncolor": {
                                            "expression": "themecolor.theme_syntax_attributecolor"
                                        },
                                        "textovercolor": {
                                            "expression": "themecolor.theme_syntax_objectcolor"
                                        }
                                    },
                                    "text": "evieve GenExpr Index",
                                    "texton": "evieveGenExprIndex",
                                    "textoncolor": [ 0.5746819173620666, 0.7467304293728035, 1.0, 1.0 ],
                                    "textovercolor": [ 0.9565903523274274, 0.7661489178616099, 0.4528340909165927, 1.0 ],
                                    "usetextovercolor": 1,
                                    "valuepopuplabel": 1
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 437.0, 467.0, 51.0, 22.0 ],
                                    "text": "pcontrol"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 437.0, 435.0, 115.0, 22.0 ],
                                    "text": "prepend loadunique"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 14.0,
                                    "id": "obj-10",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 347.0, 329.0, 202.0, 69.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 4,
                                    "presentation_rect": [ 347.0, 332.0, 202.0, 69.0 ],
                                    "text": "Launch the 'evieve GenExpr Index' to learn about every function in the evieve .genexpr files system",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "border": 0,
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "hint": "",
                                    "id": "obj-74",
                                    "linkbold": 1,
                                    "linkcolor": [ 0.20392156862745098, 0.4745098039215686, 0.7803921568627451, 1.0 ],
                                    "maxclass": "markup",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 944.0, 241.0, 298.0, 42.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 944.0, 244.0, 298.0, 42.0 ],
                                    "preservehref": 1,
                                    "saved_attribute_attributes": {
                                        "textcolor": {
                                            "expression": "themecolor.theme_textcolor"
                                        }
                                    },
                                    "text": "By Pete Dowling a.k.a. 'stkr'. © Peter Dowling 2026, <link href=\"; max openhelp doesnotexist\">license: GPLv3</link>",
                                    "textcolor": [ 0.85, 0.85, 0.85, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-78",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
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
                                        "rect": [ 1005.0, 93.0, 207.0, 270.0 ],
                                        "gridonopen": 2,
                                        "subpatcher_template": "sub",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-76",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "open" ],
                                                    "patching_rect": [ 50.0, 90.66666666666667, 42.0, 22.0 ],
                                                    "text": "t open"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-75",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 133.33333333333334, 51.0, 22.0 ],
                                                    "text": "pcontrol"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-73",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
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
                                                        "openrect": [ 526.0, 213.0, 526.0, 213.0 ],
                                                        "openrectmode": 0,
                                                        "openinpresentation": 1,
                                                        "gridonopen": 2,
                                                        "lefttoolbarpinned": 2,
                                                        "toptoolbarpinned": 2,
                                                        "righttoolbarpinned": 2,
                                                        "bottomtoolbarpinned": 2,
                                                        "toolbars_unpinned_last_save": 15,
                                                        "subpatcher_template": "<none>",
                                                        "cluebar": 2,
                                                        "title": "evieve License",
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "hidden": 1,
                                                                    "id": "obj-70",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 459.0, 142.0, 19.0, 22.0 ],
                                                                    "text": "0"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "hidden": 1,
                                                                    "id": "obj-69",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 439.0, 142.0, 19.0, 22.0 ],
                                                                    "text": "1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "hidden": 1,
                                                                    "id": "obj-72",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
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
                                                                        "rect": [ 175.0, 245.0, 880.0, 521.0 ],
                                                                        "subpatcher_template": "<none>",
                                                                        "integercoordinates": 1,
                                                                        "boxes": [
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-69",
                                                                                    "maxclass": "message",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 409.0, 268.0, 415.0, 22.0 ],
                                                                                    "text": "window flags zoom, window flags minimize, window flags grow, window exec"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-68",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 3,
                                                                                    "numoutlets": 3,
                                                                                    "outlettype": [ "bang", "bang", "" ],
                                                                                    "patching_rect": [ 396.0, 86.0, 44.0, 22.0 ],
                                                                                    "text": "sel 1 0"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-67",
                                                                                    "maxclass": "newobj",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 2,
                                                                                    "outlettype": [ "bang", "bang" ],
                                                                                    "patching_rect": [ 53.0, 170.0, 32.0, 22.0 ],
                                                                                    "text": "t b b"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-66",
                                                                                    "maxclass": "message",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 53.0, 209.0, 84.0, 22.0 ],
                                                                                    "text": "savewindow 1"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "id": "obj-63",
                                                                                    "maxclass": "message",
                                                                                    "numinlets": 2,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 149.0, 208.0, 455.0, 22.0 ],
                                                                                    "text": "window flags nozoom, window flags nominimize, window flags nogrow, window exec"
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-70",
                                                                                    "index": 1,
                                                                                    "maxclass": "inlet",
                                                                                    "numinlets": 0,
                                                                                    "numoutlets": 1,
                                                                                    "outlettype": [ "" ],
                                                                                    "patching_rect": [ 396.0, 40.0000005, 30.0, 30.0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "box": {
                                                                                    "comment": "",
                                                                                    "id": "obj-71",
                                                                                    "index": 1,
                                                                                    "maxclass": "outlet",
                                                                                    "numinlets": 1,
                                                                                    "numoutlets": 0,
                                                                                    "patching_rect": [ 149.0, 443.0, 30.0, 30.0 ]
                                                                                }
                                                                            }
                                                                        ],
                                                                        "lines": [
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-71", 0 ],
                                                                                    "source": [ "obj-63", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-71", 0 ],
                                                                                    "source": [ "obj-66", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-63", 0 ],
                                                                                    "source": [ "obj-67", 1 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-66", 0 ],
                                                                                    "source": [ "obj-67", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-67", 0 ],
                                                                                    "source": [ "obj-68", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-69", 0 ],
                                                                                    "source": [ "obj-68", 1 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-71", 0 ],
                                                                                    "source": [ "obj-69", 0 ]
                                                                                }
                                                                            },
                                                                            {
                                                                                "patchline": {
                                                                                    "destination": [ "obj-68", 0 ],
                                                                                    "source": [ "obj-70", 0 ]
                                                                                }
                                                                            }
                                                                        ],
                                                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                                                    },
                                                                    "patching_rect": [ 439.0, 164.0, 59.0, 22.0 ],
                                                                    "text": "p window"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "hidden": 1,
                                                                    "id": "obj-59",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "", "" ],
                                                                    "patching_rect": [ 439.0, 188.0, 67.0, 22.0 ],
                                                                    "save": [ "#N", "thispatcher", ";", "#Q", "window", "flags", "grow", "close", "zoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 50, 50, 32768, 32768, ";", "#Q", "window", "size", 526, 213, 1052, 426, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ],
                                                                    "text": "thispatcher"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-4",
                                                                    "linecount": 8,
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 15.0, 83.0, 491.0, 127.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_linecount": 8,
                                                                    "presentation_rect": [ 15.0, 83.0, 491.0, 127.0 ],
                                                                    "text": "evieve is free software: you can redistribute it and/or modify it under the terms\nof the GNU General Public License as published by the Free Software Foundation,\neither version 3 of the License, or (at your option) any later version.\n\nevieve is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.\nSee the GNU General Public License for more details.\n"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "border": 0,
                                                                    "evaluatehref": 1,
                                                                    "fontface": 0,
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "hint": "...or launch the 'Read Me' from the Max Package Manager",
                                                                    "id": "obj-74",
                                                                    "linkbold": 1,
                                                                    "linkcolor": [ 0.20392156862745098, 0.4745098039215686, 0.7803921568627451, 1.0 ],
                                                                    "maxclass": "markup",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 19.0, 19.0, 487.0, 75.0 ],
                                                                    "presentation": 1,
                                                                    "presentation_rect": [ 19.0, 19.0, 487.0, 75.0 ],
                                                                    "preservehref": 1,
                                                                    "saved_attribute_attributes": {
                                                                        "textcolor": {
                                                                            "expression": "themecolor.theme_textcolor"
                                                                        }
                                                                    },
                                                                    "text": "evieve is released under the <b>GPLv3 license</b>, copyright © Peter Dowling 2026.\nThis means that it is licensed for non-commercial use only.\nFor license details see 'license.txt' in the root of the Package, or access it via the Max 'Package Manager' <link href=\"; max packagebrowser evieve\">entry for evieve</link>. Otherwise see <link href=\"; max launchbrowser https://www.gnu.org/licenses/\">https://www.gnu.org/licenses/</link>.",
                                                                    "textcolor": [ 0.85, 0.85, 0.85, 1.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "hidden": 1,
                                                                    "id": "obj-6",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 476.0, 83.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-72", 0 ],
                                                                    "hidden": 1,
                                                                    "source": [ "obj-69", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-72", 0 ],
                                                                    "hidden": 1,
                                                                    "source": [ "obj-70", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-59", 0 ],
                                                                    "hidden": 1,
                                                                    "source": [ "obj-72", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 50.0, 176.0, 56.0, 22.0 ],
                                                    "text": "p license"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-77",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-73", 0 ],
                                                    "source": [ "obj-75", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-75", 0 ],
                                                    "source": [ "obj-76", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-76", 0 ],
                                                    "source": [ "obj-77", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 944.0, 285.0, 56.0, 22.0 ],
                                    "text": "p license"
                                }
                            },
                            {
                                "box": {
                                    "button": 1,
                                    "fontsize": 16.0,
                                    "id": "obj-61",
                                    "maxclass": "tab",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 54.0, 95.0, 219.0, 141.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 54.0, 98.0, 219.0, 141.0 ],
                                    "tabs": [ "asj", "dronegarden", "monosynth", "offcoastplayground", "polysynth" ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
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
                                        "rect": [ 34.0, 100.0, 868.0, 556.0 ],
                                        "gridonopen": 2,
                                        "subpatcher_template": "sub",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 567.0, 387.0, 31.0, 22.0 ],
                                                    "text": "tabs"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 460.0, 87.0, 54.0, 22.0 ],
                                                    "text": "deferlow"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 460.0, 48.0, 58.0, 22.0 ],
                                                    "text": "loadbang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-29",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 113.0, 138.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-28",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 460.0, 387.0, 79.0, 22.0 ],
                                                    "text": "prepend tabs"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-27",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 460.0, 441.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 460.0, 294.0, 54.0, 22.0 ],
                                                    "text": "deferlow"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 460.0, 348.0, 57.0, 22.0 ],
                                                    "text": "list.group"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-23",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 489.0, 255.0, 109.0, 22.0 ],
                                                    "text": "route clear append"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 5,
                                                    "outlettype": [ "", "", "", "", "" ],
                                                    "patching_rect": [ 534.0, 294.0, 177.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "legacyoutputorder": 0
                                                    },
                                                    "text": "regexp eviexample_(.+).maxpat"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 517.0, 177.0, 85.0, 22.0 ],
                                                    "text": "prepend types"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "bang", "bang", "JSON", "zlclear" ],
                                                    "patching_rect": [ 460.0, 138.0, 105.0, 22.0 ],
                                                    "text": "t b b JSON zlclear"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "button",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 419.0, 86.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "int" ],
                                                    "patching_rect": [ 489.0, 216.0, 158.0, 22.0 ],
                                                    "text": "folder Patcher:../../examples"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 302.0, 51.0, 22.0 ],
                                                    "text": "pcontrol"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 263.0, 115.0, 22.0 ],
                                                    "text": "prepend loadunique"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 64.0, 224.0, 239.0, 22.0 ],
                                                    "text": "combine eviexample_ example @triggers 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-4",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 755.0, 138.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 284.0, 138.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 64.0, 49.0, 227.0, 20.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 1 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "source": [ "obj-14", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-14", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "source": [ "obj-14", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-26", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "source": [ "obj-16", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-23", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-25", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-31", 0 ],
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-31", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 129.0, 245.0, 70.0, 22.0 ],
                                    "text": "p examples"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-57",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
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
                                        "rect": [ 34.0, 100.0, 868.0, 565.0 ],
                                        "gridonopen": 2,
                                        "subpatcher_template": "sub",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 265.0, 224.0, 66.0, 22.0 ],
                                                    "text": "route none"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 265.0, 185.0, 446.0, 22.0 ],
                                                    "text": "list.lookup biquadsvf lineartpt korgfilters ladderfilters svffilters saturation smoothers"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 362.0, 51.0, 22.0 ],
                                                    "text": "pcontrol"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 323.0, 79.0, 22.0 ],
                                                    "text": "prepend help"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 64.0, 284.0, 267.0, 22.0 ],
                                                    "text": "combine evicompare_ topic @triggers 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-4",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 694.0, 138.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 265.0, 138.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "linecount": 7,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 64.0, 49.0, 227.0, 100.0 ],
                                                    "text": "Biquads/SVFs\n\"Linear Filters\"\n\"Korg Filters\"\n\"Ladder Filters\"\n\"Nonlinear SVFs\"\nReverbs\nSmoothers"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 1 ],
                                                    "source": [ "obj-2", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 317.0, 245.0, 65.0, 22.0 ],
                                    "text": "p compare"
                                }
                            },
                            {
                                "box": {
                                    "button": 1,
                                    "fontsize": 16.0,
                                    "id": "obj-58",
                                    "maxclass": "tab",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 317.0, 95.0, 219.0, 141.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 317.0, 98.0, 219.0, 141.0 ],
                                    "tabs": [ "Biquads/TPT SVFs", "Linear Filters", "Nonlinear Korg Filters", "Nonlinear Ladder Filters", "Nonlinear SVFs", "Saturation and Aliasing", "Smoothers" ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-48",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
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
                                        "rect": [ 34.0, 100.0, 868.0, 383.0 ],
                                        "gridonopen": 2,
                                        "subpatcher_template": "sub",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 261.0, 185.0, 409.0, 22.0 ],
                                                    "text": "list.lookup filter nonlinear crossover msp oscillator reverb saturation smooth"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 302.0, 51.0, 22.0 ],
                                                    "text": "pcontrol"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 263.0, 79.0, 22.0 ],
                                                    "text": "prepend help"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 64.0, 224.0, 216.0, 22.0 ],
                                                    "text": "combine areas_help_ area @triggers 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-4",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 694.0, 138.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 261.0, 138.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "linecount": 8,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 64.0, 49.0, 227.0, 114.0 ],
                                                    "text": "\"Linear Filters\"\n\"Nonlinear Filters\"\n\"Crossover Filters\"\n\"MSP Substitutions\" \nOscillators and Sources\"\n\"Reverbs\"\n\"Saturation\"\n\"Signal Smoothing\""
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 1 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 578.0, 245.0, 50.0, 22.0 ],
                                    "text": "p topics"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "id": "obj-52",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 940.0, 62.0, 331.0, 47.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 3,
                                    "presentation_rect": [ 940.0, 65.0, 331.0, 47.0 ],
                                    "text": "A library of GenExpr audio code with a particular focus on linear and nonlinear filtering, antialiased saturation and signal smoothing."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "linecount": 8,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 940.0, 116.0, 331.0, 114.0 ],
                                    "presentation": 1,
                                    "presentation_linecount": 8,
                                    "presentation_rect": [ 940.0, 119.0, 331.0, 114.0 ],
                                    "text": "The evieve package aims to be as ordinary as possible - generic and easily reusable audio code but for using directly inside of '.genexpr' & 'codebox' etc, organised into source files for usage via 'require()'.\n\nSome of the code has been (largely automatically) extrapolated to 'gen~' and 'MSP' abstractions and therefore may be useful in those environments as well."
                                }
                            },
                            {
                                "box": {
                                    "button": 1,
                                    "fontsize": 16.0,
                                    "id": "obj-40",
                                    "maxclass": "tab",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 578.0, 95.0, 295.0, 141.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 578.0, 98.0, 295.0, 141.0 ],
                                    "tabs": [ "Linear Filters", "Nonlinear Filters", "Crossover Filters", "MSP Substitutions", "Oscillators and Sources", "Reverbs", "Saturation", "Signal Smoothing" ]
                                }
                            },
                            {
                                "box": {
                                    "autofit": 2,
                                    "background": 1,
                                    "forceaspect": 1,
                                    "hidden": 1,
                                    "id": "obj-12",
                                    "maxclass": "fpic",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "jit_matrix" ],
                                    "patching_rect": [ 1105.0, 294.0, 194.0, 194.0 ],
                                    "pic": "peter_icon.png",
                                    "presentation": 1,
                                    "presentation_rect": [ 20.0, 19.0, 80.0, 80.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-68",
                                    "justification": 1,
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "orientation": 0,
                                    "patching_rect": [ 286.0, 84.0, 19.0, 164.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 286.0, 87.0, 19.0, 164.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-71",
                                    "justification": 1,
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "orientation": 0,
                                    "patching_rect": [ 547.0, 84.0, 19.0, 164.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 547.0, 87.0, 19.0, 164.0 ]
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 1,
                                    "bordercolor": [ 0.9565903523274274, 0.7661489178616099, 0.4528340909165927, 1.0 ],
                                    "grad1": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                                    "grad2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                                    "id": "obj-31",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 21.0, 54.0, 885.0, 223.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 21.0, 57.0, 885.0, 223.0 ],
                                    "proportion": 0.5,
                                    "rounded": 4,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_syntax_objectcolor"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 1,
                                    "bordercolor": [ 0.9, 0.9, 0.9, 1.0 ],
                                    "grad1": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                                    "grad2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                                    "id": "obj-36",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 925.0, 54.0, 374.0, 223.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 925.0, 57.0, 374.0, 223.0 ],
                                    "proportion": 0.5,
                                    "rounded": 4,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.jed_defaulttext"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-47",
                                    "justification": 1,
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "orientation": 0,
                                    "patching_rect": [ 547.0, 308.0, 19.0, 164.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 547.0, 311.0, 19.0, 164.0 ]
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 1,
                                    "bordercolor": [ 0.9565903523274274, 0.7661489178616099, 0.4528340909165927, 1.0 ],
                                    "grad1": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                                    "grad2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                                    "id": "obj-43",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 317.0, 294.0, 501.0, 191.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 317.0, 297.0, 501.0, 191.0 ],
                                    "proportion": 0.5,
                                    "rounded": 4,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_syntax_objectcolor"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubblepoint": 0.25,
                                    "bubbleside": 0,
                                    "fontsize": 13.0,
                                    "hidden": 1,
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 197.0, 2.0, 116.0, 40.0 ],
                                    "text": "evieve Patching",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontsize": 16.0,
                                    "id": "obj-56",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 54.0, 28.0, 219.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 54.0, 31.0, 219.0, 24.0 ],
                                    "text": "Example Patchers:"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontsize": 16.0,
                                    "id": "obj-55",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 317.0, 28.0, 219.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 317.0, 31.0, 219.0, 24.0 ],
                                    "text": "Comparison Patchers:"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontsize": 16.0,
                                    "id": "obj-29",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 940.0, 28.0, 331.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 940.0, 31.0, 331.0, 24.0 ],
                                    "text": "About"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontsize": 16.0,
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 578.0, 28.0, 295.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 578.0, 31.0, 295.0, 24.0 ],
                                    "text": "Topics Overviews:"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "id": "obj-3",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 820.0, 398.0, 171.0, 37.0 ],
                                    "presentation_linecount": 3,
                                    "text": "... but there is lots of other content to explore, too",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-2",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 181.0, 398.0, 134.0, 37.0 ],
                                    "text": "evieve is about GenExpr code ...",
                                    "textjustification": 1
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 1 ],
                                    "hidden": 1,
                                    "midpoints": [ 863.5, 241.0, 618.5, 241.0 ],
                                    "source": [ "obj-40", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 676.0, 432.5, 446.5, 432.5 ],
                                    "source": [ "obj-44", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 1 ],
                                    "hidden": 1,
                                    "midpoints": [ 526.5, 241.0, 372.5, 241.0 ],
                                    "source": [ "obj-58", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 138.5, 281.5, 40.26953125, 281.5, 40.26953125, 85.5, 63.5, 85.5 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 2 ],
                                    "hidden": 1,
                                    "midpoints": [ 263.5, 241.0, 189.5, 241.0 ],
                                    "source": [ "obj-61", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-61", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 63.5, 241.0, 138.5, 241.0 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-78", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-74", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 272.0, 260.0, 107.0, 26.0 ],
                    "text": "p \"evieve Content\"",
                    "varname": "content"
                }
            },
            {
                "box": {
                    "border": 0,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "hint": "",
                    "id": "obj-74",
                    "linkbold": 1,
                    "linkcolor": [ 0.20392156862745098, 0.4745098039215686, 0.7803921568627451, 1.0 ],
                    "maxclass": "markup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 944.0, 227.0, 298.0, 42.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 944.0, 227.0, 298.0, 42.0 ],
                    "preservehref": 1,
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "By Pete Dowling a.k.a. 'stkr'. © Peter Dowling 2026, <link href=\"; max openhelp doesnotexist\">license: GPLv3</link>",
                    "textcolor": [ 0.85, 0.85, 0.85, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "newobj",
                    "numinlets": 1,
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
                        "rect": [ 1005.0, 93.0, 207.0, 270.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-76",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "open" ],
                                    "patching_rect": [ 50.0, 90.66666666666667, 42.0, 22.0 ],
                                    "text": "t open"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-75",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 133.33333333333334, 51.0, 22.0 ],
                                    "text": "pcontrol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-73",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
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
                                        "openrect": [ 526.0, 213.0, 526.0, 213.0 ],
                                        "openrectmode": 0,
                                        "openinpresentation": 1,
                                        "gridonopen": 2,
                                        "lefttoolbarpinned": 2,
                                        "toptoolbarpinned": 2,
                                        "righttoolbarpinned": 2,
                                        "bottomtoolbarpinned": 2,
                                        "toolbars_unpinned_last_save": 15,
                                        "subpatcher_template": "<none>",
                                        "cluebar": 2,
                                        "title": "evieve License",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-70",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 459.0, 142.0, 19.0, 22.0 ],
                                                    "text": "0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-69",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 439.0, 142.0, 19.0, 22.0 ],
                                                    "text": "1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-72",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
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
                                                        "rect": [ 175.0, 245.0, 880.0, 521.0 ],
                                                        "subpatcher_template": "<none>",
                                                        "integercoordinates": 1,
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-69",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 409.0, 268.0, 415.0, 22.0 ],
                                                                    "text": "window flags zoom, window flags minimize, window flags grow, window exec"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-68",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "bang", "bang", "" ],
                                                                    "patching_rect": [ 396.0, 86.0, 44.0, 22.0 ],
                                                                    "text": "sel 1 0"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-67",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "bang" ],
                                                                    "patching_rect": [ 53.0, 170.0, 32.0, 22.0 ],
                                                                    "text": "t b b"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-66",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 53.0, 209.0, 84.0, 22.0 ],
                                                                    "text": "savewindow 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-63",
                                                                    "maxclass": "message",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 149.0, 208.0, 455.0, 22.0 ],
                                                                    "text": "window flags nozoom, window flags nominimize, window flags nogrow, window exec"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-70",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 396.0, 40.0000005, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-71",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 149.0, 443.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-71", 0 ],
                                                                    "source": [ "obj-63", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-71", 0 ],
                                                                    "source": [ "obj-66", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-63", 0 ],
                                                                    "source": [ "obj-67", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-66", 0 ],
                                                                    "source": [ "obj-67", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-67", 0 ],
                                                                    "source": [ "obj-68", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-69", 0 ],
                                                                    "source": [ "obj-68", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-71", 0 ],
                                                                    "source": [ "obj-69", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-68", 0 ],
                                                                    "source": [ "obj-70", 0 ]
                                                                }
                                                            }
                                                        ],
                                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                                    },
                                                    "patching_rect": [ 439.0, 164.0, 59.0, 22.0 ],
                                                    "text": "p window"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-59",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 439.0, 188.0, 67.0, 22.0 ],
                                                    "save": [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ],
                                                    "text": "thispatcher"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "linecount": 8,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 15.0, 83.0, 491.0, 127.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 8,
                                                    "presentation_rect": [ 15.0, 83.0, 491.0, 127.0 ],
                                                    "text": "evieve is free software: you can redistribute it and/or modify it under the terms\nof the GNU General Public License as published by the Free Software Foundation,\neither version 3 of the License, or (at your option) any later version.\n\nevieve is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.\nSee the GNU General Public License for more details.\n"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "border": 0,
                                                    "evaluatehref": 1,
                                                    "fontface": 0,
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "hint": "...or launch the 'Read Me' from the Max Package Manager",
                                                    "id": "obj-74",
                                                    "linkbold": 1,
                                                    "linkcolor": [ 0.20392156862745098, 0.4745098039215686, 0.7803921568627451, 1.0 ],
                                                    "maxclass": "markup",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 19.0, 19.0, 487.0, 75.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 19.0, 19.0, 487.0, 75.0 ],
                                                    "preservehref": 1,
                                                    "saved_attribute_attributes": {
                                                        "textcolor": {
                                                            "expression": "themecolor.theme_textcolor"
                                                        }
                                                    },
                                                    "text": "evieve is released under the <b>GPLv3 license</b>, copyright © Peter Dowling 2026.\nThis means that it is licensed for non-commercial use only.\nFor license details see 'license.txt' in the root of the Package, or access it via the Max 'Package Manager' <link href=\"; max packagebrowser evieve\">entry for evieve</link>. Otherwise see <link href=\"; max launchbrowser https://www.gnu.org/licenses/\">https://www.gnu.org/licenses/</link>.",
                                                    "textcolor": [ 0.85, 0.85, 0.85, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "hidden": 1,
                                                    "id": "obj-6",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 476.0, 83.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-72", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-69", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-72", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-70", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-59", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-72", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 50.0, 176.0, 56.0, 22.0 ],
                                    "text": "p license"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-77",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-73", 0 ],
                                    "source": [ "obj-75", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-75", 0 ],
                                    "source": [ "obj-76", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-76", 0 ],
                                    "source": [ "obj-77", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 944.0, 260.0, 56.0, 26.0 ],
                    "text": "p license"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 964.0, 374.0, 19.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 944.0, 374.0, 19.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
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
                        "rect": [ 59.0, 119.0, 752.0, 529.0 ],
                        "subpatcher_template": "<none>",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-69",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 409.0, 268.0, 289.0, 22.0 ],
                                    "text": "window flags zoom, window flags grow, window exec"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "bang", "" ],
                                    "patching_rect": [ 396.0, 86.0, 44.0, 22.0 ],
                                    "text": "sel 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-67",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 53.0, 170.0, 32.0, 22.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-66",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 53.0, 209.0, 84.0, 22.0 ],
                                    "text": "savewindow 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 149.0, 208.0, 316.0, 22.0 ],
                                    "text": "window flags nozoom, window flags nogrow, window exec"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-70",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 396.0, 40.0000005, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-71",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 149.0, 443.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "source": [ "obj-67", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 0 ],
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "obj-68", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-68", 0 ],
                                    "source": [ "obj-70", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 944.0, 411.0, 59.0, 26.0 ],
                    "text": "p window"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1020.0, 411.0, 67.0, 26.0 ],
                    "save": [ "#N", "thispatcher", ";", "#Q", "window", "flags", "nogrow", "close", "nozoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 50, 50, 32768, 32768, ";", "#Q", "window", "size", 0, 62, 1319, 593, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ],
                    "text": "thispatcher"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-52",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 940.0, 48.0, 331.0, 47.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 940.0, 48.0, 327.0, 47.0 ],
                    "text": "A library of GenExpr audio code with a particular focus on linear and nonlinear filtering, antialiased saturation and signal smoothing."
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "linecount": 8,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 940.0, 102.0, 331.0, 114.0 ],
                    "presentation": 1,
                    "presentation_linecount": 8,
                    "presentation_rect": [ 940.0, 102.0, 331.0, 114.0 ],
                    "text": "The evieve package aims to be as ordinary as possible - generic and easily reusable audio code but for using directly inside of '.genexpr' & 'codebox' etc, organised into source files for usage via 'require()'.\n\nSome of the code has been (largely automatically) extrapolated to 'gen~' and 'MSP' abstractions and therefore may be useful in those environments as well."
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "id": "obj-29",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 940.0, 10.0, 331.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 940.0, 10.0, 327.0, 24.0 ],
                    "text": "About"
                }
            },
            {
                "box": {
                    "background": 1,
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1213.0, 411.0, 54.0, 26.0 ],
                    "text": "onecopy"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-72", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-73::obj-34": [ "rnbo~[1]", "rnbo~", 0 ],
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