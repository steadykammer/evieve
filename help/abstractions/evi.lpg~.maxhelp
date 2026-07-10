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
                    "id": "obj-14",
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
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 0,
                                    "id": "obj-48",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 620.0, 378.0, 118.0, 84.0 ],
                                    "text": "with @override on, try slowly turning up 'scale' or 'sweep'",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 656.0, 236.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "id": "obj-45",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 66.0, 121.0, 115.0, 84.0 ],
                                    "text": "the slower the attack, the higher @vactrolscalar has to be",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-42",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 312.0, 336.0, 122.0, 25.0 ],
                                    "text": "soften the attack",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-38",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 264.0, 337.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 264.0, 362.0, 170.0, 23.0 ],
                                    "text": "prepend vactrolcontroldamp"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 688.0, 276.0, 30.0, 23.0 ],
                                    "text": "0.9"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 620.0, 276.0, 30.0, 23.0 ],
                                    "text": "0.7"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 79.0, 336.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 79.0, 362.0, 67.0, 23.0 ],
                                    "text": "metro 999"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "id": "obj-50",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 31.0, 184.0, 61.0, 21.0 ],
                                    "text": "ENV"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 46.0, 218.0, 50.0, 21.0 ],
                                    "text": "scalar",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-29",
                                    "maxclass": "flonum",
                                    "maximum": 10000.0,
                                    "minimum": 1.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 46.0, 241.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 50.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[39]",
                                            "parameter_mmax": 10000.0,
                                            "parameter_mmin": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[2]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[10]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 46.0, 281.0, 133.0, 23.0 ],
                                    "text": "prepend vactrolscalar"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 202.0, 218.0, 50.0, 21.0 ],
                                    "text": "shape",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 147.0, 218.0, 57.0, 21.0 ],
                                    "text": "release",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 98.0, 218.0, 50.0, 21.0 ],
                                    "text": "attack",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-55",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 202.0, 241.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.5 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[40]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[2]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[2]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 202.0, 281.0, 134.0, 23.0 ],
                                    "text": "prepend vactrolshape"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-53",
                                    "maxclass": "flonum",
                                    "maximum": 1000.0,
                                    "minimum": 0.1,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 150.0, 241.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 83.333333 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[41]",
                                            "parameter_mmax": 1000.0,
                                            "parameter_mmin": 0.1,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[17]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[3]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-51",
                                    "maxclass": "flonum",
                                    "maximum": 100.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 98.0, 241.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.208333 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[42]",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[18]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[4]"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-28",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 157.0, 363.0, 20.0, 20.0 ],
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
                                    "id": "obj-27",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 179.0, 361.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 179.0, 402.0, 41.0, 23.0 ],
                                    "text": "click~"
                                }
                            },
                            {
                                "box": {
                                    "attr": "range",
                                    "id": "obj-44",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 630.0, 472.0, 130.0, 23.0 ],
                                    "text_width": 48.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "logfreq",
                                    "id": "obj-19",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 313.0, 472.0, 300.0, 23.0 ],
                                    "text_width": 82.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "logfreq": 1,
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 313.0, 512.0, 300.0, 130.0 ]
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
                                    "id": "obj-21",
                                    "maxclass": "live.scope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 630.0, 512.0, 130.0, 130.0 ],
                                    "range": [ 0.0, 10.0 ],
                                    "rounded": 1.0,
                                    "samples": 48000.0,
                                    "vertical_divisions": 4
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
                                    "patching_rect": [ 388.0, 197.0, 20.0, 20.0 ],
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
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "id": "obj-13",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 259.0, 109.0, 327.0, 84.0 ],
                                    "text": "@override is a special attribute which simplifies use of the LPG, turning it on means the vactrol controls the CTRLs and you only need to tune the envelope (although you can still touch the CTRLs if you want)",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
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
                                        "classnamespace": "box",
                                        "rect": [ 34.0, 100.0, 516.0, 456.0 ],
                                        "gridonopen": 2,
                                        "subpatcher_template": "sub",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 132.0, 261.0, 40.0, 22.0 ],
                                                    "text": "*~ 0.7"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 50.0, 181.0, 66.0, 20.0 ],
                                                    "text": "OSC",
                                                    "textjustification": 2
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-38",
                                                    "maxclass": "number",
                                                    "maximum": 512,
                                                    "minimum": 2,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 66.0, 140.0, 50.0, 22.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_initial": [ 2.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_longname": "number[38]",
                                                            "parameter_mmax": 512.0,
                                                            "parameter_mmin": 2.0,
                                                            "parameter_modmode": 3,
                                                            "parameter_shortname": "number[1]",
                                                            "parameter_type": 0
                                                        }
                                                    },
                                                    "varname": "number[1]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "calccount": 2,
                                                    "id": "obj-36",
                                                    "maxclass": "scope~",
                                                    "numinlets": 2,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 66.0, 220.0, 50.0, 50.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 118.0, 100.0, 58.0, 22.0 ],
                                                    "text": "sig~ 10.2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 118.0, 140.0, 289.0, 22.0 ],
                                                    "text": "gen~ @expr evi_mtofapprox(evi_randy(in1) * 3 + 36)",
                                                    "varname": "gen~_AB"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 6,
                                                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal" ],
                                                    "patching_rect": [ 118.0, 180.0, 90.0, 22.0 ],
                                                    "text": "evi.blitwaves~",
                                                    "varname": "gen~_AA"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-14",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 132.0, 343.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-15", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-36", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-15", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-26", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-36", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-38", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 106.0, 402.0, 40.0, 23.0 ],
                                    "text": "p osc"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 534.0, 276.0, 36.0, 23.0 ],
                                    "text": "sel 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 534.0, 236.0, 35.0, 23.0 ],
                                    "text": "== 0"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "id": "obj-49",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 699.0, 298.0, 61.0, 21.0 ],
                                    "text": "CTRL",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 688.0, 324.0, 50.0, 21.0 ],
                                    "text": "sweep",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 620.0, 324.0, 50.0, 21.0 ],
                                    "text": "scale",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 551.0, 324.0, 50.0, 21.0 ],
                                    "text": "offset",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-17",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 688.0, 347.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.9 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[35]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[18]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[8]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-16",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 620.0, 347.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.7 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[36]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[18]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[7]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-10",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 551.0, 347.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[37]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[18]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[6]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 163.0, 527.0, 43.0, 23.0 ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 8,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 163.0, 457.0, 133.0, 23.0 ],
                                    "text": "evi.lpg~ 4 1.88"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 410.0, 195.0, 24.0, 24.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "toggle",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "toggle"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 410.0, 236.0, 107.0, 23.0 ],
                                    "text": "prepend override"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-18",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 141.0, 610.0, 20.0, 20.0 ],
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
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpname.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "evi.lpg~", 660 ],
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
                                    },
                                    "varname": "v8ui_AA"
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
                                    "text": "Simplify tuning with the @override attribute",
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
                                    "patching_rect": [ 163.0, 597.0, 45.0, 45.0 ],
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
                                    "patching_rect": [ 210.0, 607.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 2,
                                    "bordercolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "grad1": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "grad2": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "id": "obj-41",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 536.0, 316.0, 224.0, 72.0 ],
                                    "proportion": 0.5,
                                    "rounded": 2,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_bgcolor"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 2,
                                    "bordercolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "grad1": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "grad2": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "id": "obj-40",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 31.0, 203.0, 320.0, 116.0 ],
                                    "proportion": 0.5,
                                    "rounded": 2,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_bgcolor"
                                        }
                                    }
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
                                    "destination": [ "obj-3", 5 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 115.5, 436.7265625, 172.5, 436.7265625 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 6 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 7 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "midpoints": [ 172.5, 505.13671875, 322.5, 505.13671875 ],
                                    "order": 0,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "midpoints": [ 286.5, 499.28125, 639.5, 499.28125 ],
                                    "source": [ "obj-3", 3 ]
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
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 55.5, 447.7890625, 172.5, 447.7890625 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 273.5, 393.80078125, 172.5, 393.80078125 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "order": 1,
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "order": 0,
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "order": 1,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 0,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 3 ],
                                    "midpoints": [ 107.5, 276.45703125, 221.35714285714286, 276.45703125 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 4 ],
                                    "midpoints": [ 159.5, 269.55078125, 237.64285714285714, 269.55078125 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 211.5, 326.8125, 55.265625, 326.8125, 55.265625, 447.96484375, 172.5, 447.96484375 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 1 ],
                                    "order": 0,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 1,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "order": 2,
                                    "source": [ "obj-8", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "order": 1,
                                    "source": [ "obj-8", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "order": 0,
                                    "source": [ "obj-8", 1 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 191.0, 336.0, 66.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p override",
                    "varname": "override_tab"
                }
            },
            {
                "box": {
                    "id": "obj-13",
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
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 672.0, 37.0, 76.0, 25.0 ],
                                    "text": "presets",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-20",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 558.0, 39.0, 20.0, 20.0 ],
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
                                    "bubblesize": 13,
                                    "id": "obj-30",
                                    "maxclass": "preset",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                                    "patching_rect": [ 580.0, 30.0, 90.0, 38.0 ],
                                    "preset_data": [
                                        {
                                            "number": 1,
                                            "data": [ 5, "obj-6", "number", "float", 0.8999999761581421, 5, "obj-15", "attrui", "attr", "logfreq", 5, "obj-15", "attrui", "int", 1, 5, "obj-46", "number", "float", 1.0, 5, "obj-51", "number", "float", 0.019999999552965164, 5, "obj-53", "number", "float", 22.0, 5, "obj-55", "number", "float", 0.6000000238418579, 5, "obj-5", "number", "float", 0.0, 5, "obj-10", "number", "float", 0.0, 5, "obj-16", "number", "float", 0.5, 5, "obj-17", "number", "float", 0.699999988079071 ]
                                        },
                                        {
                                            "number": 2,
                                            "data": [ 5, "obj-6", "number", "float", 0.5, 5, "obj-15", "attrui", "attr", "logfreq", 5, "obj-15", "attrui", "int", 1, 5, "obj-46", "number", "float", 1.3333330154418945, 5, "obj-51", "number", "float", 0.20000000298023224, 5, "obj-53", "number", "float", 22.0, 5, "obj-55", "number", "float", 0.5, 5, "obj-5", "number", "float", 0.0, 5, "obj-10", "number", "float", 0.0, 5, "obj-16", "number", "float", 0.699999988079071, 5, "obj-17", "number", "float", 0.800000011920929 ]
                                        },
                                        {
                                            "number": 3,
                                            "data": [ 5, "obj-6", "number", "float", 0.6800000071525574, 5, "obj-15", "attrui", "attr", "logfreq", 5, "obj-15", "attrui", "int", 1, 5, "obj-46", "number", "float", 1.5, 5, "obj-51", "number", "float", 0.20000000298023224, 5, "obj-53", "number", "float", 33.0, 5, "obj-55", "number", "float", 0.9200000166893005, 5, "obj-5", "number", "float", 0.1599999964237213, 5, "obj-10", "number", "float", 0.0, 5, "obj-16", "number", "float", 0.6800000071525574, 5, "obj-17", "number", "float", 0.5799999833106995 ]
                                        },
                                        {
                                            "number": 4,
                                            "data": [ 5, "obj-6", "number", "float", 0.6800000071525574, 5, "obj-15", "attrui", "attr", "logfreq", 5, "obj-15", "attrui", "int", 1, 5, "obj-46", "number", "float", 0.7699999809265137, 5, "obj-51", "number", "float", 0.03999999910593033, 5, "obj-53", "number", "float", 80.0, 5, "obj-55", "number", "float", 0.4399999976158142, 5, "obj-5", "number", "float", 0.10000000149011612, 5, "obj-10", "number", "float", 0.05000000074505806, 5, "obj-16", "number", "float", 0.6600000262260437, 5, "obj-17", "number", "float", 0.6600000262260437 ]
                                        },
                                        {
                                            "number": 5,
                                            "data": [ 5, "obj-6", "number", "float", 0.4000000059604645, 5, "obj-15", "attrui", "attr", "logfreq", 5, "obj-15", "attrui", "int", 1, 5, "obj-46", "number", "float", 2.0, 5, "obj-51", "number", "float", 0.07999999821186066, 5, "obj-53", "number", "float", 88.0, 5, "obj-55", "number", "float", 0.6800000071525574, 5, "obj-5", "number", "float", 0.8399999737739563, 5, "obj-10", "number", "float", 0.004000000189989805, 5, "obj-16", "number", "float", 0.5799999833106995, 5, "obj-17", "number", "float", 0.6600000262260437 ]
                                        }
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "id": "obj-29",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 546.0, 117.0, 57.0, 55.0 ],
                                    "text": "opens gate",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "id": "obj-28",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 409.0, 117.0, 57.0, 55.0 ],
                                    "text": "causes sustain",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 549.0, 174.0, 50.0, 21.0 ],
                                    "text": "sweep",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 481.0, 174.0, 50.0, 21.0 ],
                                    "text": "scale",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 412.0, 174.0, 50.0, 21.0 ],
                                    "text": "offset",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 1.0,
                                    "id": "obj-21",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 654.0, 221.0, 141.0, 69.0 ],
                                    "text": "of course you can still sneakilly add in a bit of @lpg (try doing this slowly)",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-17",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 549.0, 197.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.7 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[22]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[18]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[8]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-16",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 480.5, 197.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.5 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[21]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[18]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[7]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-10",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 412.0, 197.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[20]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[18]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[6]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-5",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 609.0, 280.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[19]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[5]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 609.0, 323.0, 77.0, 23.0 ],
                                    "text": "prepend lpg"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 223.0, 134.0, 50.0, 21.0 ],
                                    "text": "shape",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 168.0, 134.0, 57.0, 21.0 ],
                                    "text": "release",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 119.0, 134.0, 50.0, 21.0 ],
                                    "text": "attack",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-55",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 223.0, 157.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.6 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[2]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[2]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[2]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 223.0, 197.0, 134.0, 23.0 ],
                                    "text": "prepend vactrolshape"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-53",
                                    "maxclass": "flonum",
                                    "maximum": 100.0,
                                    "minimum": 0.1,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 171.0, 157.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 22.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[17]",
                                            "parameter_mmax": 100.0,
                                            "parameter_mmin": 0.1,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[17]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[3]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-51",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 119.0, 157.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.02 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[18]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[18]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[4]"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 580.0, 5.0, 75.0, 23.0 ],
                                    "text": "loadmess 1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-46",
                                    "maxclass": "flonum",
                                    "maximum": 2.0,
                                    "minimum": 0.5,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 20.0, 197.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 1.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[16]",
                                            "parameter_mmax": 2.0,
                                            "parameter_mmin": 0.5,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[16]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 20.0, 237.0, 95.0, 23.0 ],
                                    "text": "prepend speed"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-42",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 201.0, 282.0, 20.0, 20.0 ],
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
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "int" ],
                                    "patching_rect": [ 86.0, 364.0, 492.0, 23.0 ],
                                    "text": "what~ 0.002 0.0619 0.1875 0.25 0.3125 0.375 0.5 0.5625 0.6875 0.75 0.8125 0.875"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 86.0, 324.0, 35.0, 23.0 ],
                                    "text": "-~ 1."
                                }
                            },
                            {
                                "box": {
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "evipointlessdrone.wav",
                                                "filename": "evipointlessdrone.wav",
                                                "filekind": "audiofile",
                                                "id": "u492011781",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1,
                                                    "timestretch": 1,
                                                    "mode": "general",
                                                    "quality": "better",
                                                    "speed": 1.0
                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-22",
                                    "maxclass": "playlist~",
                                    "mode": "general",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 20.0, 277.0, 151.0, 30.0 ],
                                    "quality": "better",
                                    "saved_attribute_attributes": {
                                        "candicane2": {
                                            "expression": ""
                                        },
                                        "candicane3": {
                                            "expression": ""
                                        },
                                        "candicane4": {
                                            "expression": ""
                                        },
                                        "candicane5": {
                                            "expression": ""
                                        },
                                        "candicane6": {
                                            "expression": ""
                                        },
                                        "candicane7": {
                                            "expression": ""
                                        },
                                        "candicane8": {
                                            "expression": ""
                                        }
                                    },
                                    "timestretch": [ 1 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.99,
                                    "bubbleside": 0,
                                    "id": "obj-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 20.0, 614.0, 432.0, 40.0 ],
                                    "text": "notice that by default there is some leakage, just like the analog original",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "attr": "logfreq",
                                    "id": "obj-15",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 386.0, 472.0, 300.0, 23.0 ],
                                    "text_width": 125.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "logfreq": 1,
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 386.0, 512.0, 300.0, 100.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 223.0, 512.0, 43.0, 23.0 ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 356.0, 417.0, 199.0, 25.0 ],
                                    "text": "switch off @lpg for pure vca",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-8",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 275.0, 272.0, 324.0, 40.0 ],
                                    "text": "Strongest @vca is in the 0.9 region. At '1', the vca is so pure that it is weak sounding (but still useful).",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-6",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 223.0, 280.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.9 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number",
                                            "parameter_mmax": 1.0,
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
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 223.0, 323.0, 80.0, 23.0 ],
                                    "text": "prepend vca"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 8,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 223.0, 418.0, 131.0, 23.0 ],
                                    "text": "evi.lpg~ 2 1.5 @lpg 0"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-18",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 201.0, 580.0, 20.0, 20.0 ],
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
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpname.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "evi.lpg~", 660 ],
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
                                    },
                                    "varname": "v8ui_AA"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-49",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 580.0, 365.0, 150.0, 21.0 ],
                                    "text": "pete's amazing rhythm"
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
                                    "text": "Using evi.lpg~ as a VCA",
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
                                    "patching_rect": [ 223.0, 567.0, 45.0, 45.0 ],
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
                                    "patching_rect": [ 270.0, 577.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "order": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "midpoints": [ 232.5, 501.7421875, 395.5, 501.7421875 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 5 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 1 ],
                                    "order": 0,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 1,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 6 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 7 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 29.5, 408.8359375, 232.5, 408.8359375 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-22", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-24", 0 ]
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
                                    "destination": [ "obj-22", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-30", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 1 ],
                                    "midpoints": [ 95.5, 402.0, 248.5, 402.0 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "hidden": 1,
                                    "order": 1,
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "hidden": 1,
                                    "order": 0,
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 3 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 4 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 618.5, 409.96484375, 232.5, 409.96484375 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 141.0, 336.0, 40.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p vca",
                    "varname": "vca_tab"
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
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 71.0, 330.0, 43.0, 23.0 ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
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
                                        "classnamespace": "box",
                                        "rect": [ 34.0, 87.0, 176.0, 292.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-46",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 50.0, 138.0, 51.0, 22.0 ],
                                                    "text": "line~ 2."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-45",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 100.0, 68.0, 22.0 ],
                                                    "text": "pack 2. 10"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-52",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-56",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 50.0, 221.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-46", 0 ],
                                                    "source": [ "obj-45", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-56", 0 ],
                                                    "source": [ "obj-46", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-45", 0 ],
                                                    "source": [ "obj-52", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 289.0, 352.0, 37.0, 23.0 ],
                                    "text": "p res"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "id": "obj-50",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 377.0, 119.0, 61.0, 21.0 ],
                                    "text": "ENV",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "id": "obj-49",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 618.0, 163.0, 61.0, 21.0 ],
                                    "text": "CTRL",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "id": "obj-48",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 686.0, 252.0, 61.0, 21.0 ],
                                    "text": "LPG",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "attr": "range",
                                    "id": "obj-44",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 538.0, 472.0, 130.0, 23.0 ],
                                    "text_width": 48.0
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-38",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 642.0, 101.0, 76.0, 25.0 ],
                                    "text": "presets",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-39",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 528.0, 103.0, 20.0, 20.0 ],
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
                                    "id": "obj-37",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 470.0, 286.0, 50.0, 21.0 ],
                                    "text": "lpg",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 275.0, 286.0, 79.0, 21.0 ],
                                    "text": "resonance",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 550.0, 69.0, 75.0, 23.0 ],
                                    "text": "loadmess 1"
                                }
                            },
                            {
                                "box": {
                                    "bubblesize": 13,
                                    "id": "obj-34",
                                    "maxclass": "preset",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                                    "patching_rect": [ 550.0, 94.0, 90.0, 38.0 ],
                                    "preset_data": [
                                        {
                                            "number": 1,
                                            "data": [ 5, "obj-7", "number", "float", 1.6699999570846558, 5, "obj-15", "attrui", "attr", "logfreq", 5, "obj-15", "attrui", "int", 0, 5, "obj-19", "number", "float", 0.0, 5, "obj-51", "number", "float", 0.019999999552965164, 5, "obj-53", "number", "float", 22.0, 5, "obj-55", "number", "float", 0.5, 5, "obj-6", "number", "float", 1.0, 5, "obj-10", "number", "float", 0.0, 5, "obj-16", "number", "float", 0.699999988079071, 5, "obj-17", "number", "float", 0.8999999761581421, 5, "obj-21", "number", "float", 0.0, 5, "obj-27", "number", "float", 100.0, 5, "obj-33", "number", "float", 2.0 ]
                                        },
                                        {
                                            "number": 2,
                                            "data": [ 5, "obj-7", "number", "float", 0.7599999904632568, 5, "obj-15", "attrui", "attr", "logfreq", 5, "obj-15", "attrui", "int", 0, 5, "obj-19", "number", "float", 1.0, 5, "obj-51", "number", "float", 0.20000000298023224, 5, "obj-53", "number", "float", 44.0, 5, "obj-55", "number", "float", 0.6600000262260437, 5, "obj-6", "number", "float", 1.0, 5, "obj-10", "number", "float", 0.0, 5, "obj-16", "number", "float", 0.949999988079071, 5, "obj-17", "number", "float", 0.7200000286102295, 5, "obj-21", "number", "float", 0.0, 5, "obj-27", "number", "float", 200.0, 5, "obj-33", "number", "float", 1.8799999952316284 ]
                                        },
                                        {
                                            "number": 3,
                                            "data": [ 5, "obj-7", "number", "float", 1.1399999856948853, 5, "obj-15", "attrui", "attr", "logfreq", 5, "obj-15", "attrui", "int", 0, 5, "obj-19", "number", "float", 0.9700000286102295, 5, "obj-51", "number", "float", 1.0, 5, "obj-53", "number", "float", 44.0, 5, "obj-55", "number", "float", 0.6600000262260437, 5, "obj-6", "number", "float", 0.8999999761581421, 5, "obj-10", "number", "float", 0.33000001311302185, 5, "obj-16", "number", "float", 0.8199999928474426, 5, "obj-17", "number", "float", 0.46000000834465027, 5, "obj-21", "number", "float", 0.30000001192092896, 5, "obj-27", "number", "float", 820.0, 5, "obj-33", "number", "float", 1.7400000095367432 ]
                                        },
                                        {
                                            "number": 4,
                                            "data": [ 5, "obj-7", "number", "float", 1.2899999618530273, 5, "obj-15", "attrui", "attr", "logfreq", 5, "obj-15", "attrui", "int", 0, 5, "obj-19", "number", "float", 0.9399999976158142, 5, "obj-51", "number", "float", 10.0, 5, "obj-53", "number", "float", 112.0, 5, "obj-55", "number", "float", 0.8999999761581421, 5, "obj-6", "number", "float", 0.8999999761581421, 5, "obj-10", "number", "float", 0.33000001311302185, 5, "obj-16", "number", "float", 0.5400000214576721, 5, "obj-17", "number", "float", 0.46000000834465027, 5, "obj-21", "number", "float", 0.5600000023841858, 5, "obj-27", "number", "float", 3072.0, 5, "obj-33", "number", "float", 2.6600000858306885, 5, "obj-44", "attrui", "attr", "range", 6, "obj-44", "attrui", "list", 0.0, 10.0 ]
                                        },
                                        {
                                            "number": 5,
                                            "data": [ 5, "obj-7", "number", "float", 3.5199999809265137, 5, "obj-15", "attrui", "attr", "logfreq", 5, "obj-15", "attrui", "int", 0, 5, "obj-19", "number", "float", 0.0, 5, "obj-51", "number", "float", 10.0, 5, "obj-53", "number", "float", 90.0, 5, "obj-55", "number", "float", 0.800000011920929, 5, "obj-6", "number", "float", 1.0, 5, "obj-10", "number", "float", 0.009999999776482582, 5, "obj-16", "number", "float", 0.9900000095367432, 5, "obj-17", "number", "float", 0.8399999737739563, 5, "obj-21", "number", "float", 0.0, 5, "obj-27", "number", "float", 1600.0, 5, "obj-33", "number", "float", 2.0 ]
                                        },
                                        {
                                            "number": 6,
                                            "data": [ 5, "obj-7", "number", "float", 12.399999618530273, 5, "obj-15", "attrui", "attr", "logfreq", 5, "obj-15", "attrui", "int", 0, 5, "obj-19", "number", "float", 0.0, 5, "obj-51", "number", "float", 0.10000000149011612, 5, "obj-53", "number", "float", 40.0, 5, "obj-55", "number", "float", 0.36000001430511475, 5, "obj-6", "number", "float", 1.0, 5, "obj-10", "number", "float", 0.0, 5, "obj-16", "number", "float", 0.0, 5, "obj-17", "number", "float", 0.0, 5, "obj-21", "number", "float", 0.0, 5, "obj-27", "number", "float", 126.0, 5, "obj-33", "number", "float", 1.2400000095367432 ]
                                        },
                                        {
                                            "number": 7,
                                            "data": [ 5, "obj-7", "number", "float", 18.799999237060547, 5, "obj-15", "attrui", "attr", "logfreq", 5, "obj-15", "attrui", "int", 0, 5, "obj-19", "number", "float", 0.0, 5, "obj-51", "number", "float", 0.0010000000474974513, 5, "obj-53", "number", "float", 44.0, 5, "obj-55", "number", "float", 0.8100000023841858, 5, "obj-6", "number", "float", 0.9399999976158142, 5, "obj-10", "number", "float", 0.23000000417232513, 5, "obj-16", "number", "float", 0.949999988079071, 5, "obj-17", "number", "float", 0.8600000143051147, 5, "obj-21", "number", "float", 0.9599999785423279, 5, "obj-27", "number", "float", 8.904000282287598, 5, "obj-33", "number", "float", 2.0999999046325684 ]
                                        },
                                        {
                                            "number": 8,
                                            "data": [ 5, "obj-7", "number", "float", 7.800000190734863, 5, "obj-15", "attrui", "attr", "logfreq", 5, "obj-15", "attrui", "int", 0, 5, "obj-19", "number", "float", 0.8999999761581421, 5, "obj-51", "number", "float", 0.0820000022649765, 5, "obj-53", "number", "float", 71.0, 5, "obj-55", "number", "float", 0.6600000262260437, 5, "obj-6", "number", "float", 1.0, 5, "obj-10", "number", "float", 0.0, 5, "obj-16", "number", "float", 1.0, 5, "obj-17", "number", "float", 0.9300000071525574, 5, "obj-21", "number", "float", 0.18000000715255737, 5, "obj-27", "number", "float", 10.0, 5, "obj-33", "number", "float", 2.0, 5, "obj-44", "attrui", "attr", "range", 6, "obj-44", "attrui", "list", 0.0, 10.0 ]
                                        },
                                        {
                                            "number": 9,
                                            "data": [ 5, "obj-7", "number", "float", 9.420000076293945, 5, "obj-15", "attrui", "attr", "logfreq", 5, "obj-15", "attrui", "int", 0, 5, "obj-19", "number", "float", 0.41999998688697815, 5, "obj-51", "number", "float", 0.10000000149011612, 5, "obj-53", "number", "float", 28.0, 5, "obj-55", "number", "float", 0.6000000238418579, 5, "obj-6", "number", "float", 0.8999999761581421, 5, "obj-10", "number", "float", 0.0, 5, "obj-16", "number", "float", 0.3799999952316284, 5, "obj-17", "number", "float", 0.8999999761581421, 5, "obj-21", "number", "float", 0.800000011920929, 5, "obj-27", "number", "float", 22.0, 5, "obj-33", "number", "float", 1.659999966621399, 5, "obj-44", "attrui", "attr", "range", 6, "obj-44", "attrui", "list", 0.0, 10.0 ]
                                        },
                                        {
                                            "number": 10,
                                            "data": [ 5, "obj-7", "number", "float", 9.420000076293945, 5, "obj-15", "attrui", "attr", "logfreq", 5, "obj-15", "attrui", "int", 0, 5, "obj-19", "number", "float", 0.41999998688697815, 5, "obj-51", "number", "float", 0.14000000059604645, 5, "obj-53", "number", "float", 16.0, 5, "obj-55", "number", "float", 0.5799999833106995, 5, "obj-6", "number", "float", 1.0, 5, "obj-10", "number", "float", 0.0, 5, "obj-16", "number", "float", 1.0, 5, "obj-17", "number", "float", 0.6600000262260437, 5, "obj-21", "number", "float", 0.4000000059604645, 5, "obj-27", "number", "float", 60.0, 5, "obj-33", "number", "float", 2.0, 5, "obj-44", "attrui", "attr", "range", 6, "obj-44", "attrui", "list", 0.0, 10.0 ]
                                        }
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-33",
                                    "maxclass": "flonum",
                                    "maximum": 3.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 289.0, 309.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 2.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[34]",
                                            "parameter_mmax": 3.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[34]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[11]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 26.0, 206.0, 66.0, 21.0 ],
                                    "text": "Ping Hz",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 553.0, 286.0, 50.0, 21.0 ],
                                    "text": "boom",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 652.0, 286.0, 50.0, 21.0 ],
                                    "text": "damp",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 133.0, 152.0, 50.0, 21.0 ],
                                    "text": "scalar",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-27",
                                    "maxclass": "flonum",
                                    "maximum": 10000.0,
                                    "minimum": 1.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 133.0, 175.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 100.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[33]",
                                            "parameter_mmax": 10000.0,
                                            "parameter_mmin": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[2]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[10]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 133.0, 215.0, 133.0, 23.0 ],
                                    "text": "prepend vactrolscalar"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-21",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 652.0, 309.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[31]",
                                            "parameter_mmax": 1.0,
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
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 652.0, 352.0, 80.0, 23.0 ],
                                    "text": "prepend vca"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 607.0, 189.0, 50.0, 21.0 ],
                                    "text": "sweep",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 539.0, 189.0, 50.0, 21.0 ],
                                    "text": "scale",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 470.0, 189.0, 50.0, 21.0 ],
                                    "text": "offset",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-17",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 607.0, 212.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.9 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[23]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[18]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[8]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-16",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 539.0, 212.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.7 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[24]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[18]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[7]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-10",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 470.0, 212.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[25]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[18]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[6]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-6",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 470.0, 309.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 1.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[26]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[5]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 470.0, 352.0, 77.0, 23.0 ],
                                    "text": "prepend lpg"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 289.0, 152.0, 50.0, 21.0 ],
                                    "text": "shape",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 234.0, 152.0, 57.0, 21.0 ],
                                    "text": "release",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 185.0, 152.0, 50.0, 21.0 ],
                                    "text": "attack",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-55",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 289.0, 175.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.5 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[27]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[2]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[2]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 289.0, 215.0, 134.0, 23.0 ],
                                    "text": "prepend vactrolshape"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-53",
                                    "maxclass": "flonum",
                                    "maximum": 1000.0,
                                    "minimum": 0.1,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 237.0, 175.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 22.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[28]",
                                            "parameter_mmax": 1000.0,
                                            "parameter_mmin": 0.1,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[17]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[3]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-51",
                                    "maxclass": "flonum",
                                    "maximum": 100.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 185.0, 175.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.02 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[29]",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[18]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[4]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-19",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 553.0, 309.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[30]",
                                            "parameter_mmax": 1.0,
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
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 553.0, 352.0, 92.0, 23.0 ],
                                    "text": "prepend boom"
                                }
                            },
                            {
                                "box": {
                                    "attr": "logfreq",
                                    "id": "obj-15",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 221.0, 472.0, 300.0, 23.0 ],
                                    "text_width": 82.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 221.0, 512.0, 300.0, 130.0 ]
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
                                    "patching_rect": [ 138.0, 309.0, 65.0, 65.0 ],
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
                                    "id": "obj-8",
                                    "maxclass": "live.scope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 538.0, 512.0, 130.0, 130.0 ],
                                    "range": [ 0.0, 10.0 ],
                                    "rounded": 1.0,
                                    "samples": 48000.0,
                                    "vertical_divisions": 4
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "id": "obj-72",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 94.0, 390.0, 47.0, 40.0 ],
                                    "text": "Ping",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-7",
                                    "maxclass": "flonum",
                                    "maximum": 1000.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 34.0, 229.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 1.6699999570846558 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[32]",
                                            "parameter_mmax": 1000.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[32]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[9]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 71.0, 512.0, 43.0, 23.0 ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 8,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 71.0, 432.0, 278.0, 23.0 ],
                                    "text": "evi.lpg~ 8 @lpg 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "signal", "signal" ],
                                    "patching_rect": [ 34.0, 269.0, 93.0, 23.0 ],
                                    "text": "evi.audiodust~"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-18",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 49.0, 580.0, 20.0, 20.0 ],
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
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpname.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "evi.lpg~", 660 ],
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
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 2,
                                    "bordercolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "grad1": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "grad2": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "id": "obj-42",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 455.0, 270.0, 292.0, 120.0 ],
                                    "proportion": 0.5,
                                    "rounded": 2,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_bgcolor"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 2,
                                    "bordercolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "grad1": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "grad2": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "id": "obj-41",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 455.0, 181.0, 224.0, 72.0 ],
                                    "proportion": 0.5,
                                    "rounded": 2,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_bgcolor"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 2,
                                    "bordercolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "grad1": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "grad2": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "id": "obj-40",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 118.0, 137.0, 320.0, 116.0 ],
                                    "proportion": 0.5,
                                    "rounded": 2,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_bgcolor"
                                        }
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
                                    "text": "Tuning evi.lpg~ for a classic LPG sound",
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
                                    "patching_rect": [ 71.0, 567.0, 45.0, 45.0 ],
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
                                    "patching_rect": [ 118.0, 577.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 0,
                                    "source": [ "obj-1", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "order": 1,
                                    "source": [ "obj-1", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 5 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 479.5, 422.5, 80.5, 422.5 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 6 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 7 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 562.5, 422.5, 80.5, 422.5 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 661.5, 422.5, 80.5, 422.5 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "midpoints": [ 80.5, 501.45703125, 230.5, 501.45703125 ],
                                    "order": 0,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "order": 1,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "midpoints": [ 339.5, 502.1484375, 547.5, 502.1484375 ],
                                    "source": [ "obj-3", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 1 ],
                                    "order": 0,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 1,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 3 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 4 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 2 ],
                                    "midpoints": [ 298.5, 403.5, 154.5, 403.5 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 94.0, 336.0, 37.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p lpg",
                    "varname": "lpg_tab"
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
                        "rect": [ 55.0, 126.0, 802.0, 669.0 ],
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 330.0, 358.0, 118.0, 21.0 ],
                                    "text": "soften attack"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 126.0, 270.0, 81.0, 21.0 ],
                                    "text": "env shape"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-20",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 76.0, 269.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.75 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[43]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[43]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[2]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 76.0, 294.0, 134.0, 23.0 ],
                                    "text": "prepend vactrolshape"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.1,
                                    "bubbleside": 2,
                                    "id": "obj-98",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 562.0, 149.0, 137.0, 40.0 ],
                                    "text": "Lowpass or LPG ?",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.7,
                                    "bubbleside": 2,
                                    "id": "obj-97",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 406.0, 134.0, 137.0, 55.0 ],
                                    "text": "morph LP..VCA behaviour, 'dampens'",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-95",
                                    "linecount": 6,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 244.0, 150.0, 150.0, 98.0 ],
                                    "text": "add resistors, effect is low boom and accentauted Res, depending on Offset/Scale/Sweep, only if @lpg is on",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 432.0, 516.0, 238.0, 25.0 ],
                                    "text": "set CTRLs smoothing as attributes",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-99",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 569.0, 588.0, 54.0, 23.0 ],
                                    "text": "unjoin 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-93",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 123.0, 229.0, 86.0, 21.0 ],
                                    "text": "vactrol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-92",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 655.0, 444.0, 113.0, 65.0 ],
                                    "text": "*) and you should be very careful of levels if you do turn it off"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.2,
                                    "bubbleside": 2,
                                    "id": "obj-90",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 638.0, 328.0, 129.0, 69.0 ],
                                    "text": "turning off nonlinear beahaviour is atypical *)",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-88",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 123.0, 211.0, 30.0, 21.0 ],
                                    "text": "10."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-87",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 123.0, 252.0, 30.0, 21.0 ],
                                    "text": "0."
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-85",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 710.0, 173.0, 20.0, 20.0 ],
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
                                    "id": "obj-84",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 524.0, 310.0, 20.0, 20.0 ],
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
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-82",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 12.0, 610.0, 20.0, 20.0 ],
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
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-83",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 167.0, 331.0, 20.0, 20.0 ],
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
                                    "fontface": 1,
                                    "id": "obj-81",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 717.0, 172.0, 58.0, 21.0 ],
                                    "text": "LPG",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "id": "obj-80",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 169.0, 330.0, 58.0, 21.0 ],
                                    "text": "ENV",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "id": "obj-79",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 534.0, 309.0, 58.0, 21.0 ],
                                    "text": "CTRL",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-77",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 278.0, 357.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "id": "obj-73",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 153.0, 370.0, 41.0, 40.0 ],
                                    "text": "Res",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "id": "obj-72",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 92.0, 370.0, 47.0, 40.0 ],
                                    "text": "Ping",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "id": "obj-71",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 37.0, 370.0, 44.0, 40.0 ],
                                    "text": "Input",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-67",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 700.0, 239.0, 76.0, 21.0 ],
                                    "text": "time in ms"
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
                                    "id": "obj-61",
                                    "maxclass": "live.scope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 76.0, 217.0, 50.0, 50.0 ],
                                    "range": [ 0.0, 10.0 ],
                                    "rounded": 1.0,
                                    "samples": 48000.0,
                                    "vertical_divisions": 4
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "signal", "signal" ],
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
                                        "rect": [ 326.0, 135.0, 1152.0, 755.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-37",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 599.0, 328.0, 43.0, 22.0 ],
                                                    "text": "+~ 0.5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-36",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 265.0, 85.0, 40.0, 22.0 ],
                                                    "text": "-~ 0.5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "frozen_object_attributes": {
                                                        "dcblock": 1,
                                                        "preamp": 1.0,
                                                        "threshold": -1.0
                                                    },
                                                    "id": "obj-25",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 97.0, 633.0, 44.0, 22.0 ],
                                                    "text": "limi~ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-24",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 235.0, 127.0, 49.0, 22.0 ],
                                                    "text": "*~ 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-23",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 272.0, 372.0, 30.0, 22.0 ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-22",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "float" ],
                                                    "patching_rect": [ 868.0, 161.0, 77.0, 22.0 ],
                                                    "text": "mstosamps~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "float" ],
                                                    "patching_rect": [ 684.0, 161.0, 77.0, 22.0 ],
                                                    "text": "mstosamps~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 97.0, 602.0, 30.0, 22.0 ],
                                                    "text": "+~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 272.0, 230.0, 67.0, 22.0 ],
                                                    "text": "*~ 0.0125"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 478.0, 558.0, 47.0, 22.0 ],
                                                    "text": "*~ 0.25"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 478.0, 445.0, 89.0, 22.0 ],
                                                    "text": "rect~ 220. 0.59"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 415.0, 490.0, 88.0, 22.0 ],
                                                    "text": "rect~ 110. 0.44"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 415.0, 445.0, 47.0, 22.0 ],
                                                    "text": "*~ 0.53"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 415.0, 372.0, 39.0, 22.0 ],
                                                    "text": "mtof~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "editor_rect": [ 100.0, 100.0, 300.0, 300.0 ],
                                                    "embed": 1,
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 415.0, 281.0, 227.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "name": "",
                                                        "parameter_enable": 0,
                                                        "parameter_mappable": 0,
                                                        "range": 128,
                                                        "size": 128
                                                    },
                                                    "showeditor": 0,
                                                    "size": 128,
                                                    "table_data": [ 0, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 62, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 62, 16, 16, 16, 54, 54, 54, 54, 54, 54, 54, 54, 54, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 92, 92, 92, 92, 92, 92, 92, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 34, 34, 35, 35, 35, 35, 35, 35, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 41, 40, 40, 40, 40, 40, 40, 40, 22, 22, 22, 22, 22, 22, 22, 22 ],
                                                    "text": "table~ @inmap 0 3 @embed 1 @interp 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 97.0, 445.0, 54.0, 22.0 ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 415.0, 230.0, 212.0, 22.0 ],
                                                    "text": "evi.vactrol~ @scalar 50. @shape 0.55"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 270.0, 696.0, 108.0, 20.0 ],
                                                    "text": "Ping",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 888.0, 63.0, 108.0, 20.0 ],
                                                    "text": "Vactrol",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-41",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 97.0, 528.0, 101.0, 22.0 ],
                                                    "text": "evi.formletfilter~",
                                                    "varname": "gen~_AC"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 97.0, 490.0, 30.0, 22.0 ],
                                                    "text": "+~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 684.0, 230.0, 62.0, 22.0 ],
                                                    "text": "sig~ 0.66"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 235.0, 20.0, 54.0, 22.0 ],
                                                    "text": "sig~ 5.7"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-29",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "signal", "signal", "signal" ],
                                                    "patching_rect": [ 235.0, 161.0, 93.0, 22.0 ],
                                                    "text": "evi.audiodust~",
                                                    "varname": "gen~_AB"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 951.0, 85.0, 91.0, 22.0 ],
                                                    "text": "sig~ 83.333333"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 843.0, 85.0, 84.0, 22.0 ],
                                                    "text": "sig~ 0.208333"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 684.0, 443.0, 38.0, 22.0 ],
                                                    "text": "+~ 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
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
                                                        "rect": [ 59.0, 119.0, 886.0, 829.0 ],
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
                                                                    "code": "\r\nrequire(\"evi_lfo.genexpr\");\r\n\r\nParam   lfowave(5, min=0, max=10);\r\n\r\n\r\nphase, hz, sync = evi_phasor0(in1, 0);\r\n\r\nout1 = lfoShapes01(phase, sync, sqrt1_2, lfowave);\r\n\r\n",
                                                                    "fontface": 0,
                                                                    "fontname": "<Monospaced>",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-3",
                                                                    "maxclass": "codebox",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 50.0, 75.0, 708.0, 619.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-4",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 50.0, 763.0, 35.0, 22.0 ],
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
                                                                    "destination": [ "obj-4", 0 ],
                                                                    "source": [ "obj-3", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 684.0, 281.0, 38.0, 22.0 ],
                                                    "text": "gen~",
                                                    "varname": "gen~_AA"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-42",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 724.0, 444.0, 108.0, 20.0 ],
                                                    "text": "Resonance"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-54",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 97.0, 664.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-55",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 309.0, 664.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-56",
                                                    "index": 4,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 843.0, 664.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-57",
                                                    "index": 3,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 684.0, 664.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-58",
                                                    "index": 5,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 951.0, 664.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 1 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-37", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-36", 0 ],
                                                    "midpoints": [ 693.5, 475.0, 1068.8046875, 475.0, 1068.8046875, 54.90234375, 274.5, 54.90234375 ],
                                                    "order": 1,
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-57", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 1 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 2 ],
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 1 ],
                                                    "source": [ "obj-23", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-29", 0 ],
                                                    "source": [ "obj-24", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-54", 0 ],
                                                    "source": [ "obj-25", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-58", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-56", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-29", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-29", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 1 ],
                                                    "source": [ "obj-29", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-29", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
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
                                                    "destination": [ "obj-41", 0 ],
                                                    "source": [ "obj-32", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 1 ],
                                                    "source": [ "obj-36", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 1 ],
                                                    "source": [ "obj-37", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-41", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-41", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 34.0, 462.0, 237.0, 23.0 ],
                                    "text": "p inputs"
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
                                    "id": "obj-53",
                                    "maxclass": "live.scope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 34.0, 412.0, 50.0, 50.0 ],
                                    "rounded": 1.0,
                                    "samples": 2000.0,
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
                                    "id": "obj-52",
                                    "maxclass": "live.scope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 90.0, 412.0, 50.0, 50.0 ],
                                    "rounded": 1.0,
                                    "samples": 48000.0,
                                    "vertical_divisions": 4
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-51",
                                    "maxclass": "flonum",
                                    "maximum": 111.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 648.0, 238.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 15.111 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[7]",
                                            "parameter_mmax": 111.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[7]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 655.0, 397.0, 24.0, 24.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 1.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "toggle[4]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "toggle[3]",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "toggle[3]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-36",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 569.0, 213.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-21",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 487.0, 213.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-18",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 393.0, 213.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 393.0, 187.0, 24.0, 24.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "toggle[2]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "toggle[2]",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "toggle[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 487.0, 187.0, 24.0, 24.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "toggle[1]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "toggle[1]",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "toggle"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 569.0, 187.0, 24.0, 24.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 1.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "toggle[3]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "toggle[3]",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "toggle[2]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-40",
                                    "maxclass": "flonum",
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 76.0, 167.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 100.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[8]",
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number[8]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 487.0, 330.0, 93.0, 50.0 ],
                                    "text": "short\nmedium\nlong"
                                }
                            },
                            {
                                "box": {
                                    "disabled": [ 0, 0, 0 ],
                                    "id": "obj-33",
                                    "itemtype": 0,
                                    "maxclass": "radiogroup",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 467.0, 330.0, 18.0, 50.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "0", "1", "2" ],
                                            "parameter_initial": [ 1.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "radiogroup[1]",
                                            "parameter_mmax": 2,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "radiogroup[1]",
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
                                    "id": "obj-59",
                                    "logfreq": 1,
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 199.0, 557.0, 361.0, 85.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 569.0, 557.0, 151.0, 23.0 ],
                                    "text": "loadmess 0.18 0.66 0.74"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-25",
                                    "maxclass": "number~",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "mode": 1,
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "float" ],
                                    "patching_rect": [ 467.0, 462.0, 56.0, 23.0 ],
                                    "sig": 0.74
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-24",
                                    "maxclass": "number~",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "mode": 1,
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "float" ],
                                    "patching_rect": [ 385.0, 462.0, 56.0, 23.0 ],
                                    "sig": 0.66
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-22",
                                    "maxclass": "number~",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "mode": 1,
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "float" ],
                                    "patching_rect": [ 306.0, 462.0, 56.0, 23.0 ],
                                    "sig": 0.18
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-16",
                                    "ignoreclick": 1,
                                    "maxclass": "number~",
                                    "mode": 2,
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "float" ],
                                    "patching_rect": [ 145.0, 412.0, 56.0, 23.0 ],
                                    "sig": 0.0
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "id": "obj-35",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 459.0, 422.0, 72.0, 40.0 ],
                                    "text": "Sweep",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "id": "obj-34",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 379.0, 422.0, 69.0, 40.0 ],
                                    "text": "Scale",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 301.0, 422.0, 66.0, 40.0 ],
                                    "text": "Offset",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 569.0, 238.0, 77.0, 23.0 ],
                                    "text": "prepend lpg"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 467.0, 382.0, 113.0, 23.0 ],
                                    "text": "prepend response"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 278.0, 382.0, 170.0, 23.0 ],
                                    "text": "prepend vactrolcontroldamp"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 76.0, 192.0, 133.0, 23.0 ],
                                    "text": "prepend vactrolscalar"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 655.0, 421.0, 95.0, 23.0 ],
                                    "text": "prepend nonlin"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 487.0, 238.0, 80.0, 23.0 ],
                                    "text": "prepend vca"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 393.0, 238.0, 92.0, 23.0 ],
                                    "text": "prepend boom"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 648.0, 263.0, 102.0, 23.0 ],
                                    "text": "prepend smooth"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 34.0, 557.0, 50.0, 23.0 ],
                                    "text": "*~ 0.25"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 8,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 34.0, 517.0, 400.0, 23.0 ],
                                    "text": "evi.lpg~ 8 @offsetsmooth 33 @scalesmooth 11 @sweepsmooth 22"
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
                                    "jsarguments": [ "evi.lpg~", 660 ],
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
                                    },
                                    "varname": "v8ui_AA"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 370.0, 260.0, 289.0, 21.0 ],
                                    "text": "|_____________________________________",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 128.0, 168.0, 81.0, 21.0 ],
                                    "text": "env scale"
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
                                    "text": "Many attributes shape the behaviour of the filter, with lots of options. Some of them somewhat esoteric.",
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
                                    "patching_rect": [ 34.0, 597.0, 45.0, 45.0 ],
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
                                    "patching_rect": [ 81.0, 607.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 2,
                                    "bordercolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "grad1": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                                    "grad2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                                    "id": "obj-70",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 273.0, 309.0, 320.0, 189.0 ],
                                    "proportion": 0.5,
                                    "rounded": 1,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_bgcolor"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 2,
                                    "bordercolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "grad1": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                                    "grad2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                                    "id": "obj-68",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 60.0, 150.0, 167.0, 180.0 ],
                                    "proportion": 0.5,
                                    "rounded": 1,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_bgcolor"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 2,
                                    "bordercolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "grad1": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                                    "grad2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                                    "id": "obj-69",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 378.0, 172.0, 398.0, 128.0 ],
                                    "proportion": 0.5,
                                    "rounded": 1,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_bgcolor"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-37",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 92.0, 660.0, 50.0 ],
                                    "text": "defaults: @envout 1 @smooth 15.111 @boom 0. @vca 0. @lpg 1. @nonlin 1 @vactrolshape 0.75 @vactrolscalar 100. @vactrolcontrolhz 9.07 @vactrolcontroldamp 0. @response 1 @offsetsmooth 0. @scalesmooth 0. @sweepsmooth 0. @override 0"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "order": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 0 ],
                                    "midpoints": [ 43.5, 548.5, 208.5, 548.5 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 424.5, 650.8671875, 22.6328125, 650.8671875, 22.6328125, 214.06640625, 85.5, 214.06640625 ],
                                    "source": [ "obj-1", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 5 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 6 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 7 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-99", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 1 ],
                                    "order": 0,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 1,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 4 ],
                                    "source": [ "obj-60", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 3 ],
                                    "source": [ "obj-60", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 2 ],
                                    "order": 0,
                                    "source": [ "obj-60", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 1 ],
                                    "order": 0,
                                    "source": [ "obj-60", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "order": 0,
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 152.5, 495.0, 144.48046875, 495.0, 144.48046875, 402.0, 154.5, 402.0 ],
                                    "order": 1,
                                    "source": [ "obj-60", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 98.0, 495.0, 88.0703125, 495.0, 88.0703125, 402.0, 99.5, 402.0 ],
                                    "order": 1,
                                    "source": [ "obj-60", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 43.5, 495.0, 29.125, 495.0, 29.125, 402.0, 43.5, 402.0 ],
                                    "order": 1,
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-77", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-99", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-99", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-99", 2 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 491.66666666666663, 336.0, 122.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p attributes/controls",
                    "varname": "attributes_tab"
                }
            },
            {
                "box": {
                    "id": "obj-5",
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
                        "openinpresentation": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.39215686274509803, 0.0, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-3",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 319.0, 183.0, 20.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 358.0, 132.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_key_assignment"
                                        }
                                    },
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Morph through the presets.",
                                    "annotation_name": "Preset Morph",
                                    "format": 6,
                                    "hint": "Morph through the presets.",
                                    "id": "obj-33",
                                    "maxclass": "flonum",
                                    "minimum": 1.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 270.0, 180.0, 50.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 380.0, 92.0, 50.0, 23.0 ],
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "activegridcolor": [ 0.22, 0.22, 0.22, 1.0 ],
                                    "activelinecolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                                    "annotation": "Ping Scope",
                                    "grid": 3,
                                    "hint": "Ping Scope",
                                    "id": "obj-75",
                                    "maxclass": "live.scope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 742.0, 570.0, 50.0, 50.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 218.0, 118.0, 48.0, 48.0 ],
                                    "rounded": 1.0,
                                    "samples": 48000.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-73",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 523.0, 380.0, 71.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 202.0, 281.0, 51.0, 21.0 ],
                                    "text": "shape"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Transform the vactrol envelope shape between flat ('0') and sharp ('1').",
                                    "annotation_name": "Vactrol Shape",
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "hint": "Transform the vactrol envelope shape between flat ('0') and sharp ('1').",
                                    "id": "obj-74",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 461.0, 382.0, 60.0, 16.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 142.0, 284.0, 60.0, 16.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 75.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.numbox[3]",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Shape",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "live.numbox[3]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-72",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 502.0, 415.0, 134.0, 23.0 ],
                                    "text": "prepend vactrolshape"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 218.0, 481.0, 50.0, 21.0 ],
                                    "text": "res",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 348.0, 481.0, 86.0, 21.0 ],
                                    "text": "__ control __",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 264.0, 481.0, 69.0, 21.0 ],
                                    "text": "__ env __",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 40.0, 132.0, 86.0, 21.0 ],
                                    "text": "all in ms"
                                }
                            },
                            {
                                "box": {
                                    "attr": "samples",
                                    "hidden": 1,
                                    "id": "obj-43",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 25.0, 505.0, 119.0, 23.0 ],
                                    "text_width": 61.0
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 0,
                                    "id": "obj-58",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 289.0, 255.0, 79.0, 40.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 399.0, 168.0, 79.0, 40.0 ],
                                    "text": "Presets",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 700.0, 380.0, 71.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 202.0, 263.0, 51.0, 21.0 ],
                                    "text": "scale"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 307.0, 394.0, 70.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 202.0, 245.0, 51.0, 21.0 ],
                                    "text": "fall"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.0, 363.0, 110.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 202.0, 227.0, 51.0, 21.0 ],
                                    "text": "rise"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.39215686274509803, 0.0, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-35",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 205.0, 265.0, 20.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 521.0, 282.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_key_assignment"
                                        }
                                    },
                                    "text": "3",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.25,
                                    "bubbleside": 2,
                                    "id": "obj-17",
                                    "linecount": 5,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 630.0, 284.0, 157.0, 98.0 ],
                                    "text": "notice that with @vactrolscalar high, 'Offset' / 'Scale' / 'Sweep' usually need to be lowered.",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 1.0, 0.39215686274509803, 0.0, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-82",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 139.0, 613.0, 20.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 603.0, 133.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.live_key_assignment"
                                        }
                                    },
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-71",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 270.0, 155.0, 58.0, 23.0 ],
                                    "text": "deferlow"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-70",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 270.0, 130.0, 79.0, 23.0 ],
                                    "text": "loadmess 9."
                                }
                            },
                            {
                                "box": {
                                    "bubblesize": 12,
                                    "id": "obj-64",
                                    "maxclass": "preset",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                                    "patching_rect": [ 270.0, 205.0, 117.0, 52.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 380.0, 116.0, 117.0, 52.0 ],
                                    "preset_data": [
                                        {
                                            "number": 1,
                                            "data": [ 5, "obj-52", "attrui", "attr", "samples", 5, "obj-52", "attrui", "float", 48000.0, 5, "obj-6", "live.dial", "float", 111.81101989746094, 5, "obj-23", "live.dial", "float", 10.0, 5, "obj-22", "live.dial", "float", 48.0, 5, "obj-21", "live.dial", "float", 70.07874298095703, 5, "obj-5", "live.dial", "float", 0.0, 5, "obj-20", "live.dial", "float", 0.0, 5, "obj-7", "live.dial", "float", 100.0, 5, "obj-18", "live.gain~", "float", -3.0, 5, "obj-24", "live.numbox", "float", 0.41666701436042786, 5, "obj-25", "live.numbox", "float", 62.5, 5, "obj-34", "live.numbox", "float", 15.019135475158691, 5, "obj-39", "live.tab", "float", 1.0, 5, "obj-45", "attrui", "attr", "range", 6, "obj-45", "attrui", "list", 0.0, 10.0, 5, "obj-63", "attrui", "attr", "logfreq", 5, "obj-63", "attrui", "int", 1, 5, "obj-43", "attrui", "attr", "samples", 5, "obj-43", "attrui", "float", 1200.0, 5, "obj-74", "live.numbox", "float", 54.33070755004883 ]
                                        },
                                        {
                                            "number": 2,
                                            "data": [ 5, "obj-52", "attrui", "attr", "samples", 5, "obj-52", "attrui", "float", 48000.0, 5, "obj-6", "live.dial", "float", 139.3700714111328, 5, "obj-23", "live.dial", "float", 66.14173126220703, 5, "obj-22", "live.dial", "float", 41.73228454589844, 5, "obj-21", "live.dial", "float", 79.80000305175781, 5, "obj-5", "live.dial", "float", 0.0, 5, "obj-20", "live.dial", "float", 9.685039520263672, 5, "obj-7", "live.dial", "float", 100.0, 5, "obj-18", "live.gain~", "float", -6.0, 5, "obj-24", "live.numbox", "float", 0.41666701436042786, 5, "obj-25", "live.numbox", "float", 78.20866394042969, 5, "obj-34", "live.numbox", "float", 5.457953929901123, 5, "obj-39", "live.tab", "float", 1.0, 5, "obj-45", "attrui", "attr", "range", 6, "obj-45", "attrui", "list", 0.0, 10.0, 5, "obj-63", "attrui", "attr", "logfreq", 5, "obj-63", "attrui", "int", 1, 5, "obj-43", "attrui", "attr", "samples", 5, "obj-43", "attrui", "float", 1200.0, 5, "obj-74", "live.numbox", "float", 60.78740310668945 ]
                                        },
                                        {
                                            "number": 3,
                                            "data": [ 5, "obj-52", "attrui", "attr", "samples", 5, "obj-52", "attrui", "float", 48000.0, 5, "obj-6", "live.dial", "float", 139.3700714111328, 5, "obj-23", "live.dial", "float", 81.88976287841797, 5, "obj-22", "live.dial", "float", 50.39370346069336, 5, "obj-21", "live.dial", "float", 65.02755737304688, 5, "obj-5", "live.dial", "float", 90.0, 5, "obj-20", "live.dial", "float", 20.472440719604492, 5, "obj-7", "live.dial", "float", 100.0, 5, "obj-18", "live.gain~", "float", -6.0, 5, "obj-24", "live.numbox", "float", 1.282808780670166, 5, "obj-25", "live.numbox", "float", 104.91339111328125, 5, "obj-34", "live.numbox", "float", 5.792335510253906, 5, "obj-39", "live.tab", "float", 0.0, 5, "obj-45", "attrui", "attr", "range", 6, "obj-45", "attrui", "list", 0.0, 10.0, 5, "obj-63", "attrui", "attr", "logfreq", 5, "obj-63", "attrui", "int", 1, 5, "obj-43", "attrui", "attr", "samples", 5, "obj-43", "attrui", "float", 1200.0, 5, "obj-74", "live.numbox", "float", 74.0157470703125, 5, "obj-33", "number", "float", 1.0 ]
                                        },
                                        {
                                            "number": 4,
                                            "data": [ 5, "obj-52", "attrui", "attr", "samples", 5, "obj-52", "attrui", "float", 48000.0, 5, "obj-6", "live.dial", "float", 145.98423767089844, 5, "obj-23", "live.dial", "float", 65.19685363769531, 5, "obj-22", "live.dial", "float", 34.094486236572266, 5, "obj-21", "live.dial", "float", 85.82677459716797, 5, "obj-5", "live.dial", "float", 25.039369583129883, 5, "obj-20", "live.dial", "float", 70.86614227294922, 5, "obj-7", "live.dial", "float", 84.80314636230469, 5, "obj-18", "live.gain~", "float", -12.0, 5, "obj-24", "live.numbox", "float", 6.794620037078857, 5, "obj-25", "live.numbox", "float", 131.09449768066406, 5, "obj-34", "live.numbox", "float", 2.1628899574279785, 5, "obj-39", "live.tab", "float", 2.0, 5, "obj-45", "attrui", "attr", "range", 6, "obj-45", "attrui", "list", 0.0, 10.0, 5, "obj-63", "attrui", "attr", "logfreq", 5, "obj-63", "attrui", "int", 1, 5, "obj-43", "attrui", "attr", "samples", 5, "obj-43", "attrui", "float", 1200.0, 5, "obj-74", "live.numbox", "float", 82.67716217041016 ]
                                        },
                                        {
                                            "number": 5,
                                            "data": [ 5, "obj-52", "attrui", "attr", "samples", 5, "obj-52", "attrui", "float", 48000.0, 5, "obj-6", "live.dial", "float", 115.43306732177734, 5, "obj-23", "live.dial", "float", 84.25196838378906, 5, "obj-22", "live.dial", "float", 55.11811065673828, 5, "obj-21", "live.dial", "float", 75.69999694824219, 5, "obj-5", "live.dial", "float", 0.0, 5, "obj-20", "live.dial", "float", 84.64566802978516, 5, "obj-7", "live.dial", "float", 98.4251937866211, 5, "obj-18", "live.gain~", "float", -2.950772762298584, 5, "obj-24", "live.numbox", "float", 6.794620037078857, 5, "obj-25", "live.numbox", "float", 131.09449768066406, 5, "obj-34", "live.numbox", "float", 1.2176427841186523, 5, "obj-39", "live.tab", "float", 2.0, 5, "obj-45", "attrui", "attr", "range", 6, "obj-45", "attrui", "list", 0.0, 10.0, 5, "obj-63", "attrui", "attr", "logfreq", 5, "obj-63", "attrui", "int", 1, 5, "obj-43", "attrui", "attr", "samples", 5, "obj-43", "attrui", "float", 1200.0, 5, "obj-74", "live.numbox", "float", 69.29133605957031 ]
                                        },
                                        {
                                            "number": 6,
                                            "data": [ 5, "obj-52", "attrui", "attr", "samples", 5, "obj-52", "attrui", "float", 48000.0, 5, "obj-6", "live.dial", "float", 121.88976287841797, 5, "obj-23", "live.dial", "float", 27.55905532836914, 5, "obj-22", "live.dial", "float", 34.645668029785156, 5, "obj-21", "live.dial", "float", 74.0, 5, "obj-5", "live.dial", "float", 37.086612701416016, 5, "obj-20", "live.dial", "float", 96.53543090820312, 5, "obj-7", "live.dial", "float", 100.0, 5, "obj-18", "live.gain~", "float", -3.0, 5, "obj-24", "live.numbox", "float", 2.936352252960205, 5, "obj-25", "live.numbox", "float", 110.14961242675781, 5, "obj-34", "live.numbox", "float", 10.195406913757324, 5, "obj-39", "live.tab", "float", 1.0, 5, "obj-45", "attrui", "attr", "range", 6, "obj-45", "attrui", "list", 0.0, 10.0, 5, "obj-63", "attrui", "attr", "logfreq", 5, "obj-63", "attrui", "int", 1, 5, "obj-43", "attrui", "attr", "samples", 5, "obj-43", "attrui", "float", 1200.0, 5, "obj-74", "live.numbox", "float", 59.05511474609375 ]
                                        },
                                        {
                                            "number": 7,
                                            "data": [ 5, "obj-52", "attrui", "attr", "samples", 5, "obj-52", "attrui", "float", 48000.0, 5, "obj-6", "live.dial", "float", 121.88976287841797, 5, "obj-23", "live.dial", "float", 17.795276641845703, 5, "obj-22", "live.dial", "float", 36.377952575683594, 5, "obj-21", "live.dial", "float", 71.56299591064453, 5, "obj-5", "live.dial", "float", 92.12598419189453, 5, "obj-20", "live.dial", "float", 80.07874298095703, 5, "obj-7", "live.dial", "float", 100.0, 5, "obj-18", "live.gain~", "float", -2.9802565574645996, 5, "obj-24", "live.numbox", "float", 2.936352252960205, 5, "obj-25", "live.numbox", "float", 110.14961242675781, 5, "obj-34", "live.numbox", "float", 14.112360000610352, 5, "obj-39", "live.tab", "float", 0.0, 5, "obj-45", "attrui", "attr", "range", 6, "obj-45", "attrui", "list", 0.0, 10.0, 5, "obj-63", "attrui", "attr", "logfreq", 5, "obj-63", "attrui", "int", 1, 5, "obj-43", "attrui", "attr", "samples", 5, "obj-43", "attrui", "float", 1200.0, 5, "obj-74", "live.numbox", "float", 83.46456146240234 ]
                                        },
                                        {
                                            "number": 8,
                                            "data": [ 5, "obj-52", "attrui", "attr", "samples", 5, "obj-52", "attrui", "float", 48000.0, 5, "obj-6", "live.dial", "float", 130.55117797851562, 5, "obj-23", "live.dial", "float", 26.299211502075195, 5, "obj-22", "live.dial", "float", 87.44882202148438, 5, "obj-21", "live.dial", "float", 59.8425178527832, 5, "obj-5", "live.dial", "float", 37.00787353515625, 5, "obj-20", "live.dial", "float", 100.0, 5, "obj-7", "live.dial", "float", 100.0, 5, "obj-18", "live.gain~", "float", -11.817584991455078, 5, "obj-24", "live.numbox", "float", 0.8891079425811768, 5, "obj-25", "live.numbox", "float", 98.62992095947266, 5, "obj-34", "live.numbox", "float", 7.1401848793029785, 5, "obj-39", "live.tab", "float", 0.0, 5, "obj-45", "attrui", "attr", "range", 6, "obj-45", "attrui", "list", 0.0, 10.0, 5, "obj-63", "attrui", "attr", "logfreq", 5, "obj-63", "attrui", "int", 1, 5, "obj-43", "attrui", "attr", "samples", 5, "obj-43", "attrui", "float", 1200.0, 5, "obj-74", "live.numbox", "float", 83.46456909179688 ]
                                        },
                                        {
                                            "number": 9,
                                            "data": [ 5, "obj-52", "attrui", "attr", "samples", 5, "obj-52", "attrui", "float", 48000.0, 5, "obj-6", "live.dial", "float", 174.17323303222656, 5, "obj-23", "live.dial", "float", 12.047243118286133, 5, "obj-22", "live.dial", "float", 69.29133605957031, 5, "obj-21", "live.dial", "float", 51.968502044677734, 5, "obj-5", "live.dial", "float", 16.535432815551758, 5, "obj-20", "live.dial", "float", 10.236220359802246, 5, "obj-7", "live.dial", "float", 100.0, 5, "obj-18", "live.gain~", "float", -6.0, 5, "obj-24", "live.numbox", "float", 7.1095805168151855, 5, "obj-25", "live.numbox", "float", 145.7559051513672, 5, "obj-34", "live.numbox", "float", 14.0387544631958, 5, "obj-39", "live.tab", "float", 1.0, 5, "obj-45", "attrui", "attr", "range", 6, "obj-45", "attrui", "list", 0.0, 10.0, 5, "obj-63", "attrui", "attr", "logfreq", 5, "obj-63", "attrui", "int", 1, 5, "obj-43", "attrui", "attr", "samples", 5, "obj-43", "attrui", "float", 1200.0, 5, "obj-74", "live.numbox", "float", 56.69291305541992 ]
                                        },
                                        {
                                            "number": 10,
                                            "data": [ 5, "obj-52", "attrui", "attr", "samples", 5, "obj-52", "attrui", "float", 48000.0, 5, "obj-6", "live.dial", "float", 147.71653747558594, 5, "obj-23", "live.dial", "float", 86.61417388916016, 5, "obj-22", "live.dial", "float", 51.496063232421875, 5, "obj-21", "live.dial", "float", 0.0, 5, "obj-5", "live.dial", "float", 48.11023712158203, 5, "obj-20", "live.dial", "float", 97.79527282714844, 5, "obj-7", "live.dial", "float", 98.50393676757812, 5, "obj-18", "live.gain~", "float", -15.95508861541748, 5, "obj-24", "live.numbox", "float", 5.2198166847229, 5, "obj-25", "live.numbox", "float", 209.63780212402344, 5, "obj-34", "live.numbox", "float", 1.1389752626419067, 5, "obj-39", "live.tab", "float", 2.0, 5, "obj-45", "attrui", "attr", "range", 6, "obj-45", "attrui", "list", 0.0, 10.0, 5, "obj-63", "attrui", "attr", "logfreq", 5, "obj-63", "attrui", "int", 1, 5, "obj-43", "attrui", "attr", "samples", 5, "obj-43", "attrui", "float", 1200.0, 5, "obj-74", "live.numbox", "float", 80.31495666503906 ]
                                        },
                                        {
                                            "number": 11,
                                            "data": [ 5, "obj-52", "attrui", "attr", "samples", 5, "obj-52", "attrui", "float", 48000.0, 5, "obj-6", "live.dial", "float", 127.55905151367188, 5, "obj-23", "live.dial", "float", 0.0, 5, "obj-22", "live.dial", "float", 14.724409103393555, 5, "obj-21", "live.dial", "float", 17.952754974365234, 5, "obj-5", "live.dial", "float", 88.18898010253906, 5, "obj-20", "live.dial", "float", 100.0, 5, "obj-7", "live.dial", "float", 100.0, 5, "obj-18", "live.gain~", "float", -12.0, 5, "obj-24", "live.numbox", "float", 15.928478240966797, 5, "obj-25", "live.numbox", "float", 42.0787467956543, 5, "obj-34", "live.numbox", "float", 148.55149841308594, 5, "obj-39", "live.tab", "float", 0.0, 5, "obj-45", "attrui", "attr", "range", 6, "obj-45", "attrui", "list", 0.0, 10.0, 5, "obj-63", "attrui", "attr", "logfreq", 5, "obj-63", "attrui", "int", 1, 5, "obj-43", "attrui", "attr", "samples", 5, "obj-43", "attrui", "float", 1200.0, 5, "obj-74", "live.numbox", "float", 57.716529846191406, 5, "obj-33", "number", "float", 10.0 ]
                                        },
                                        {
                                            "number": 12,
                                            "data": [ 5, "obj-52", "attrui", "attr", "samples", 5, "obj-52", "attrui", "float", 48000.0, 5, "obj-6", "live.dial", "float", 100.0, 5, "obj-23", "live.dial", "float", 0.0, 5, "obj-22", "live.dial", "float", 75.5905532836914, 5, "obj-21", "live.dial", "float", 48.031497955322266, 5, "obj-5", "live.dial", "float", 92.12598419189453, 5, "obj-20", "live.dial", "float", 0.0, 5, "obj-7", "live.dial", "float", 10.236220359802246, 5, "obj-18", "live.gain~", "float", -3.0, 5, "obj-24", "live.numbox", "float", 5.141076564788818, 5, "obj-25", "live.numbox", "float", 41.555118560791016, 5, "obj-34", "live.numbox", "float", 35.099578857421875, 5, "obj-39", "live.tab", "float", 0.0, 5, "obj-45", "attrui", "attr", "range", 6, "obj-45", "attrui", "list", 0.0, 10.0, 5, "obj-63", "attrui", "attr", "logfreq", 5, "obj-63", "attrui", "int", 1, 5, "obj-43", "attrui", "attr", "samples", 5, "obj-43", "attrui", "float", 1200.0, 5, "obj-74", "live.numbox", "float", 52.952754974365234, 5, "obj-33", "number", "float", 10.0 ]
                                        },
                                        {
                                            "number": 13,
                                            "data": [ 5, "obj-52", "attrui", "attr", "samples", 5, "obj-52", "attrui", "float", 48000.0, 5, "obj-6", "live.dial", "float", 136.0, 5, "obj-23", "live.dial", "float", 4.0, 5, "obj-22", "live.dial", "float", 75.0, 5, "obj-21", "live.dial", "float", 25.0, 5, "obj-5", "live.dial", "float", 0.0, 5, "obj-20", "live.dial", "float", 0.0, 5, "obj-7", "live.dial", "float", 100.0, 5, "obj-18", "live.gain~", "float", -3.0, 5, "obj-24", "live.numbox", "float", 0.41666701436042786, 5, "obj-25", "live.numbox", "float", 62.5, 5, "obj-34", "live.numbox", "float", 10.0, 5, "obj-39", "live.tab", "float", 2.0, 5, "obj-45", "attrui", "attr", "range", 6, "obj-45", "attrui", "list", 0.0, 10.0, 5, "obj-63", "attrui", "attr", "logfreq", 5, "obj-63", "attrui", "int", 1, 5, "obj-43", "attrui", "attr", "samples", 5, "obj-43", "attrui", "float", 1200.0, 5, "obj-74", "live.numbox", "float", 50.0, 5, "obj-33", "number", "float", 10.0 ]
                                        },
                                        {
                                            "number": 14,
                                            "data": [ 5, "obj-52", "attrui", "attr", "samples", 5, "obj-52", "attrui", "float", 48000.0, 5, "obj-6", "live.dial", "float", 100.0, 5, "obj-23", "live.dial", "float", 0.0, 5, "obj-22", "live.dial", "float", 50.0, 5, "obj-21", "live.dial", "float", 0.0, 5, "obj-5", "live.dial", "float", 25.0, 5, "obj-20", "live.dial", "float", 50.0, 5, "obj-7", "live.dial", "float", 100.0, 5, "obj-18", "live.gain~", "float", -3.0, 5, "obj-24", "live.numbox", "float", 1.0, 5, "obj-25", "live.numbox", "float", 100.0, 5, "obj-34", "live.numbox", "float", 25.0, 5, "obj-39", "live.tab", "float", 2.0, 5, "obj-45", "attrui", "attr", "range", 6, "obj-45", "attrui", "list", 0.0, 10.0, 5, "obj-63", "attrui", "attr", "logfreq", 5, "obj-63", "attrui", "int", 1, 5, "obj-43", "attrui", "attr", "samples", 5, "obj-43", "attrui", "float", 1200.0, 5, "obj-74", "live.numbox", "float", 50.0, 5, "obj-33", "number", "float", 10.0 ]
                                        }
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "logfreq",
                                    "id": "obj-63",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 447.0, 505.0, 160.0, 23.0 ],
                                    "text_width": 51.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
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
                                        "rect": [ 59.0, 119.0, 595.0, 333.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 201.0, 229.0, 102.0, 20.0 ],
                                                    "text": "all in ms"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-51",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 201.0, 160.0, 102.0, 22.0 ],
                                                    "text": "s toLpgExample"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-50",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 341.0, 100.0, 140.0, 22.0 ],
                                                    "text": "prepend sweepsmooth"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 201.0, 100.0, 123.0, 22.0 ],
                                                    "text": "prepend scalesmooth"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 100.0, 134.0, 22.0 ],
                                                    "text": "prepend offsetsmooth"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-57",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-58",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 201.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-60",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 341.0, 40.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-51", 0 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-51", 0 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-51", 0 ],
                                                    "source": [ "obj-50", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-57", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "source": [ "obj-58", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-50", 0 ],
                                                    "source": [ "obj-60", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 40.0, 230.0, 86.0, 23.0 ],
                                    "text": "p ctrlsmooths"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-55",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 92.0, 206.0, 117.0, 21.0 ],
                                    "text": "@sweepsmooth"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 92.0, 181.0, 117.0, 21.0 ],
                                    "text": "@scalesmooth"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 92.0, 156.0, 117.0, 21.0 ],
                                    "text": "@offsetsmooth"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-47",
                                    "maxclass": "flonum",
                                    "maximum": 222.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 40.0, 205.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 22.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[15]",
                                            "parameter_mmax": 222.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[15]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[2]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-48",
                                    "maxclass": "flonum",
                                    "maximum": 111.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 40.0, 180.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 11.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[10]",
                                            "parameter_mmax": 111.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[10]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[1]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-49",
                                    "maxclass": "flonum",
                                    "maximum": 333.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 40.0, 155.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 33.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[9]",
                                            "parameter_mmax": 333.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[9]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 439.0, 302.0, 122.0, 21.0 ],
                                    "text": "control response"
                                }
                            },
                            {
                                "box": {
                                    "attr": "range",
                                    "id": "obj-45",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 639.0, 505.0, 150.0, 23.0 ],
                                    "text_width": 45.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 639.0, 525.0, 100.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 142.0, 381.0, 100.0, 21.0 ],
                                    "text": "vactrol env",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 439.0, 455.0, 102.0, 23.0 ],
                                    "text": "s toLpgExample"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "This control switches between slow..long response times for the voltage input into the control circuit shaper.",
                                    "annotation_name": "Control Response",
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "hint": "This control switches between slow..long response times for the voltage input into the control circuit shaper.",
                                    "id": "obj-39",
                                    "maxclass": "live.tab",
                                    "mode": 1,
                                    "num_lines_patching": 1,
                                    "num_lines_presentation": 1,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 439.0, 322.0, 122.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 132.0, 492.0, 122.0, 20.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "short", "medium", "long" ],
                                            "parameter_initial": [ 1.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.tab[1]",
                                            "parameter_mmax": 2,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.tab",
                                            "parameter_type": 2,
                                            "parameter_unitstyle": 9
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "live.tab[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 439.0, 346.0, 113.0, 23.0 ],
                                    "text": "prepend response"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Scale (multiply) the Vactrol Envelope coming from the Ping.",
                                    "annotation_name": "Vactrol Scale",
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "hint": "Scale (multiply) the Vactrol Envelope coming from the Ping.",
                                    "id": "obj-34",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 638.0, 382.0, 60.0, 16.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 142.0, 266.0, 60.0, 16.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 4.0,
                                            "parameter_initial": [ 10.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.numbox[2]",
                                            "parameter_mmax": 2000.0,
                                            "parameter_mmin": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Scale",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 1
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "live.numbox[2]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 638.0, 415.0, 133.0, 23.0 ],
                                    "text": "prepend vactrolscalar"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 524.0, 269.0, 102.0, 23.0 ],
                                    "text": "s toLpgExample"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 25.0, 455.0, 100.0, 23.0 ],
                                    "text": "r toLpgExample"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 444.0, 219.0, 77.0, 23.0 ],
                                    "text": "prepend lpg"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 524.0, 219.0, 80.0, 23.0 ],
                                    "text": "prepend vca"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 607.0, 219.0, 92.0, 23.0 ],
                                    "text": "prepend boom"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Internal Vactrol: Ping release time in ms.",
                                    "annotation_name": "Fall Time",
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "hint": "Internal Vactrol: Ping release time in ms.",
                                    "id": "obj-25",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 307.0, 410.0, 60.0, 16.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 142.0, 248.0, 60.0, 16.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 62.5 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.numbox[1]",
                                            "parameter_mmax": 666.0,
                                            "parameter_mmin": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Fall",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "live.numbox[1]"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Internal Vactrol: Ping attack time in ms.",
                                    "annotation_name": "Rise Time",
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "hint": "Internal Vactrol: Ping attack time in ms.",
                                    "id": "obj-24",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 270.0, 379.0, 60.0, 16.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 142.0, 230.0, 60.0, 16.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.416667 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.numbox",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Rise",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "live.numbox"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Input Gain to Filter",
                                    "annotation_name": "Input Gain",
                                    "channels": 1,
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "hint": "Input Gain to Filter",
                                    "id": "obj-18",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "orientation": 1,
                                    "outlettype": [ "signal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 157.0, 445.0, 123.0, 43.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 380.0, 331.0, 300.0, 43.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ -6.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.gain~[1]",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "In Gain",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "live.gain~[1]"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Output Gain from Filter",
                                    "annotation_name": "Output Gain",
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "hint": "Output Gain from Filter",
                                    "id": "obj-19",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 2,
                                    "numoutlets": 5,
                                    "orientation": 1,
                                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 157.0, 545.0, 123.0, 49.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 380.0, 494.0, 300.0, 49.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ -18.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.gain~",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Out Gain",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "live.gain~"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Core filter/gate functionality. Smoothly switch or interpolate between filter and gate behaviour.",
                                    "annotation_name": "LPG Control",
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "hint": "Core filter/gate functionality. Smoothly switch or interpolate between filter and gate behaviour.",
                                    "id": "obj-7",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 408.0, 152.0, 55.0, 50.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 461.6666666666667, 427.0, 55.0, 50.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 100.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[6]",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "LPG",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "live.dial[6]"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Core filter/gate functionality. Only has effect if the 'lpg' attribute is on. Smoothly crossfades additional resistors into the feedback path while maintaining filter stability. This can have a drastic effect on the tone of the filter and the resonance behaviour.",
                                    "annotation_name": "Boom Control",
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "hint": "Core filter/gate functionality. Only has effect if the 'lpg' attribute is on. Smoothly crossfades additional resistors into the feedback path while maintaining filter stability. This can have a drastic effect on the tone of the filter and the resonance behaviour.",
                                    "id": "obj-20",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 571.0, 152.0, 55.0, 50.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 625.0, 427.0, 55.0, 50.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[5]",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Boom",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "live.dial[5]"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Core filter/gate functionality. Smoothly switch or interpolate between LP(G) and VCA behaviour. Using the block as a pure VCA is useful but far less fun. Ultimately this can be thought of as a gate damping effect, darkening the tone.",
                                    "annotation_name": "VCA Control",
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "hint": "Core filter/gate functionality. Smoothly switch or interpolate between LP(G) and VCA behaviour. Using the block as a pure VCA is useful but far less fun. Ultimately this can be thought of as a gate damping effect, darkening the tone.",
                                    "id": "obj-5",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 488.0, 152.0, 55.0, 50.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 543.3333333333334, 427.0, 55.0, 50.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[4]",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "VCA",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "live.dial[4]"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Amount of sweep range of the voltage input to the LPG, from small range to large range. Can be used as a classic sounding Lowpass filter cutoff sweeper. Part of the control circuit that engages the voltage (frequency) of the filter/gate.",
                                    "annotation_name": "Control Sweep",
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "hint": "Amount of sweep range of the voltage input to the LPG, from small range to large range. Can be used as a classic sounding Lowpass filter cutoff sweeper. Part of the control circuit that engages the voltage (frequency) of the filter/gate.",
                                    "id": "obj-21",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 384.0, 308.0, 55.0, 50.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 233.0, 427.0, 55.0, 50.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 40.8141 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[2]",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Sweep",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "live.dial[2]"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Scale (multiply) the voltage input to the LPG, thus extending the frequency range of the LPG filter sweep. Part of the control circuit that engages the voltage (frequency) of the filter/gate.",
                                    "annotation_name": "Control Scale",
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "hint": "Scale (multiply) the voltage input to the LPG, thus extending the frequency range of the LPG filter sweep. Part of the control circuit that engages the voltage (frequency) of the filter/gate.",
                                    "id": "obj-22",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 346.0, 308.0, 55.0, 50.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 165.0, 427.0, 55.0, 50.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 48.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[1]",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Scale",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "live.dial[1]"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Offset (add to) the voltage input to the LPG, thus increasing the starting point of the LPG filter sweep. Part of the control circuit that engages the voltage (frequency) of the filter/gate.",
                                    "annotation_name": "Control Offset",
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "hint": "Offset (add to) the voltage input to the LPG, thus increasing the starting point of the LPG filter sweep. Part of the control circuit that engages the voltage (frequency) of the filter/gate.",
                                    "id": "obj-23",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 309.0, 308.0, 55.0, 50.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 98.0, 427.0, 55.0, 50.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 10.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Offset",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "live.dial"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Filter Output Spectrum",
                                    "hint": "Filter Output Spectrum",
                                    "id": "obj-12",
                                    "logfreq": 1,
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 307.0, 545.0, 300.0, 100.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 380.0, 545.0, 300.0, 100.0 ]
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Ping the envelope. Repeated pings will keep the envelope active and increase the cutoff",
                                    "annotation_name": "Ping",
                                    "bgcolor": [ 0.125, 0.125, 0.125, 0.0 ],
                                    "blinkcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "hint": "Ping the envelope. Repeated pings will keep the envelope active and increase the cutoff",
                                    "id": "obj-66",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "outlinecolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 120.0, 334.0, 24.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 168.0, 168.0, 48.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "blinkcolor": {
                                            "expression": "themecolor.live_control_selection"
                                        },
                                        "outlinecolor": {
                                            "expression": "themecolor.live_control_selection"
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "signal", "signal", "signal" ],
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
                                        "rect": [ 34.0, 100.0, 1396.0, 825.0 ],
                                        "gridonopen": 2,
                                        "subpatcher_template": "sub",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-45",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
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
                                                        "rect": [ 359.0, 87.0, 330.0, 689.0 ],
                                                        "gridonopen": 2,
                                                        "subpatcher_template": "sub",
                                                        "integercoordinates": 1,
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-3",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "bang" ],
                                                                    "patching_rect": [ 165.0, 538.0, 52.0, 22.0 ],
                                                                    "text": "togedge"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-38",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "" ],
                                                                    "patching_rect": [ 64.0, 419.0, 34.0, 22.0 ],
                                                                    "text": "sel 0"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-37",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 64.0, 380.0, 36.0, 22.0 ],
                                                                    "text": "% 17"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-31",
                                                                    "maxclass": "toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 64.0, 458.0, 24.0, 24.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-25",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 64.0, 538.0, 92.0, 22.0 ],
                                                                    "text": "switch 2 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-24",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 64.0, 499.0, 30.0, 22.0 ],
                                                                    "text": "+ 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-22",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "bang" ],
                                                                    "patching_rect": [ 137.0, 499.0, 47.0, 22.0 ],
                                                                    "text": "t b b"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-21",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "bang" ],
                                                                    "patching_rect": [ 168.0, 237.0, 52.0, 22.0 ],
                                                                    "text": "togedge"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-17",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "int", "int" ],
                                                                    "patching_rect": [ 201.0, 315.0, 50.0, 22.0 ],
                                                                    "text": "split 0 0"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-16",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 3,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "int", "int" ],
                                                                    "patching_rect": [ 137.0, 158.0, 50.0, 22.0 ],
                                                                    "text": "split 1 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-7",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 137.0, 419.0, 52.0, 22.0 ],
                                                                    "text": "gate 1 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-6",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "patching_rect": [ 168.0, 198.0, 22.0, 22.0 ],
                                                                    "text": "t b"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-4",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 201.0, 276.0, 44.0, 22.0 ],
                                                                    "text": "decide"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-1",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 137.0, 120.0, 44.0, 22.0 ],
                                                                    "text": "decide"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-2",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "bang", "bang", "bang" ],
                                                                    "patching_rect": [ 101.0, 81.0, 55.0, 22.0 ],
                                                                    "text": "t b b b"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-39",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 221.0, 34.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-40",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "patching_rect": [ 101.0, 34.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-43",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 64.0, 622.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-44",
                                                                    "index": 2,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 165.0, 622.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-16", 0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-6", 0 ],
                                                                    "source": [ "obj-16", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 0 ],
                                                                    "source": [ "obj-16", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 0 ],
                                                                    "source": [ "obj-17", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-1", 0 ],
                                                                    "source": [ "obj-2", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-25", 1 ],
                                                                    "source": [ "obj-2", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-7", 1 ],
                                                                    "midpoints": [ 128.5, 359.1171875, 179.5, 359.1171875 ],
                                                                    "source": [ "obj-2", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 0 ],
                                                                    "source": [ "obj-21", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-3", 0 ],
                                                                    "source": [ "obj-22", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-25", 0 ],
                                                                    "source": [ "obj-24", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-43", 0 ],
                                                                    "source": [ "obj-25", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-25", 2 ],
                                                                    "source": [ "obj-3", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-44", 0 ],
                                                                    "source": [ "obj-3", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-24", 0 ],
                                                                    "source": [ "obj-31", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-38", 0 ],
                                                                    "source": [ "obj-37", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-31", 0 ],
                                                                    "source": [ "obj-38", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-37", 0 ],
                                                                    "midpoints": [ 230.5, 73.70703125, 73.5, 73.70703125 ],
                                                                    "source": [ "obj-39", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-17", 0 ],
                                                                    "source": [ "obj-4", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-40", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-21", 0 ],
                                                                    "source": [ "obj-6", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-22", 0 ],
                                                                    "source": [ "obj-7", 0 ]
                                                                }
                                                            }
                                                        ],
                                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                                    },
                                                    "patching_rect": [ 96.0, 140.0, 99.0, 22.0 ],
                                                    "text": "p trigger"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-123",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 379.0, 39.0, 130.0, 20.0 ],
                                                    "text": "source select 0/1/2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-122",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 126.0, 39.0, 130.0, 20.0 ],
                                                    "text": "sequence 0/1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-121",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1273.0, 39.0, 91.0, 20.0 ],
                                                    "text": "resonance"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-120",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 25.0, 12.0, 48.0, 20.0 ],
                                                    "text": "PING",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-119",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 126.0, 766.0, 130.0, 20.0 ],
                                                    "text": "PING"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-118",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 227.0, 96.0, 50.0, 22.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_initial": [ 200 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_invisible": 1,
                                                            "parameter_longname": "number[14]",
                                                            "parameter_modmode": 0,
                                                            "parameter_shortname": "number",
                                                            "parameter_type": 3
                                                        }
                                                    },
                                                    "varname": "number"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-116",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1273.0, 766.0, 91.0, 20.0 ],
                                                    "text": "resonance"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-115",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1017.0, 766.0, 130.0, 20.0 ],
                                                    "text": "PING",
                                                    "textjustification": 2
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-114",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 379.0, 766.0, 130.0, 20.0 ],
                                                    "text": "audio source"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-112",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 34.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-111",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 96.0, 761.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-110",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1241.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-107",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 1241.0, 272.0, 123.0, 22.0 ],
                                                    "text": "evi.expsmooth~ 1. 22"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-108",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 1241.0, 233.0, 40.0, 22.0 ],
                                                    "text": "* 0.01"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-106",
                                                    "index": 4,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1241.0, 761.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 952.0, 350.0, 30.0, 22.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-89",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 647.0, 272.0, 30.0, 22.0 ],
                                                    "text": "* 12"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-105",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 7,
                                                    "outlettype": [ "int", "int", "int", "int", "int", "", "" ],
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
                                                        "rect": [ 318.0, 100.0, 659.0, 494.0 ],
                                                        "gridonopen": 2,
                                                        "subpatcher_template": "sub",
                                                        "integercoordinates": 1,
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "id": "obj-4",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "int", "int", "int" ],
                                                                    "patching_rect": [ 124.0, 120.0, 100.0, 22.0 ],
                                                                    "text": "t i i i"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-3",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "int", "int" ],
                                                                    "patching_rect": [ 261.0, 252.0, 45.0, 22.0 ],
                                                                    "text": "t i i"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-2",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "int", "int" ],
                                                                    "patching_rect": [ 295.0, 159.0, 76.0, 22.0 ],
                                                                    "text": "t i i"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-1",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 3,
                                                                    "outlettype": [ "int", "bang", "bang" ],
                                                                    "patching_rect": [ 238.0, 159.0, 42.0, 22.0 ],
                                                                    "text": "t 0 b b"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-76",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "" ],
                                                                    "patching_rect": [ 165.0, 198.0, 34.0, 22.0 ],
                                                                    "text": "sel 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-75",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 165.0, 159.0, 30.0, 22.0 ],
                                                                    "text": "% 7"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-70",
                                                                    "maxclass": "toggle",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "parameter_enable": 0,
                                                                    "patching_rect": [ 62.0, 329.0, 24.0, 24.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-59",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 508.0, 291.0, 72.0, 22.0 ],
                                                                    "text": "expr noise()"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-47",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 352.0, 291.0, 124.0, 22.0 ],
                                                                    "text": "expr $f1 * 0.01 + 0.51"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-46",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 352.0, 252.0, 44.0, 22.0 ],
                                                                    "text": "decide"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-45",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "" ],
                                                                    "patching_rect": [ 352.0, 213.0, 34.0, 22.0 ],
                                                                    "text": "sel 0"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-44",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 295.0, 120.0, 30.0, 22.0 ],
                                                                    "text": "% 3"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-43",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "bang", "" ],
                                                                    "patching_rect": [ 238.0, 120.0, 34.0, 22.0 ],
                                                                    "text": "sel 1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-38",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 287.0, 291.0, 32.0, 22.0 ],
                                                                    "text": "+ 15"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-37",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 261.0, 213.0, 59.0, 22.0 ],
                                                                    "text": "random 7"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-22",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 205.0, 330.0, 101.0, 22.0 ],
                                                                    "text": "% 15"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-21",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 5,
                                                                    "numoutlets": 4,
                                                                    "outlettype": [ "int", "", "", "int" ],
                                                                    "patching_rect": [ 124.0, 81.0, 190.0, 22.0 ],
                                                                    "text": "counter 0 0 33"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-95",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "bang" ],
                                                                    "patching_rect": [ 124.0, 34.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-96",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 62.0, 414.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-97",
                                                                    "index": 2,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 124.0, 414.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-98",
                                                                    "index": 3,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 205.0, 414.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-99",
                                                                    "index": 4,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 261.0, 414.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-100",
                                                                    "index": 5,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 320.0, 414.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-101",
                                                                    "index": 6,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 352.0, 414.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-104",
                                                                    "index": 7,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 508.0, 414.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-37", 0 ],
                                                                    "source": [ "obj-1", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-59", 0 ],
                                                                    "source": [ "obj-1", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-70", 0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-100", 0 ],
                                                                    "midpoints": [ 304.5, 198.0, 330.0, 198.0, 330.0, 399.0, 329.5, 399.0 ],
                                                                    "source": [ "obj-2", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-45", 0 ],
                                                                    "source": [ "obj-2", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 0 ],
                                                                    "source": [ "obj-21", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-43", 0 ],
                                                                    "source": [ "obj-21", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-44", 0 ],
                                                                    "source": [ "obj-21", 3 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-98", 0 ],
                                                                    "source": [ "obj-22", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-38", 0 ],
                                                                    "source": [ "obj-3", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-99", 0 ],
                                                                    "source": [ "obj-3", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-3", 0 ],
                                                                    "source": [ "obj-37", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-22", 1 ],
                                                                    "source": [ "obj-38", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-22", 0 ],
                                                                    "source": [ "obj-4", 2 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-75", 0 ],
                                                                    "source": [ "obj-4", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-97", 0 ],
                                                                    "source": [ "obj-4", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-1", 0 ],
                                                                    "source": [ "obj-43", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-44", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-46", 0 ],
                                                                    "source": [ "obj-45", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-47", 0 ],
                                                                    "source": [ "obj-46", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-101", 0 ],
                                                                    "source": [ "obj-47", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-104", 0 ],
                                                                    "source": [ "obj-59", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-96", 0 ],
                                                                    "source": [ "obj-70", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-76", 0 ],
                                                                    "source": [ "obj-75", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-70", 0 ],
                                                                    "source": [ "obj-76", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-21", 0 ],
                                                                    "source": [ "obj-95", 0 ]
                                                                }
                                                            }
                                                        ],
                                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                                    },
                                                    "patching_rect": [ 176.0, 179.0, 818.0, 22.0 ],
                                                    "text": "p count"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-92",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 1149.0, 272.0, 60.0, 22.0 ],
                                                    "text": "clip~ 0. 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-93",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 1149.0, 233.0, 36.0, 22.0 ],
                                                    "text": "line~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-94",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1149.0, 179.0, 79.0, 22.0 ],
                                                    "text": "0, 1 3 1 6 0 8"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-87",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 393.0, 350.0, 32.0, 22.0 ],
                                                    "text": "+ 12"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-83",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 163.0, 590.0, 94.0, 22.0 ],
                                                    "text": "evi.formletfilter~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-82",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 576.0, 350.0, 30.0, 22.0 ],
                                                    "text": "/ 7."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-77",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 477.0, 350.0, 30.0, 22.0 ],
                                                    "text": "/ 7."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-64",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 163.0, 497.0, 32.0, 22.0 ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-63",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 176.0, 272.0, 152.0, 22.0 ],
                                                    "text": "evi.logdecay~ 0. 88"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-62",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 975.0, 233.0, 118.0, 22.0 ],
                                                    "text": "expr $f1*$f1 * 3. + 4."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-60",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1032.0, 419.0, 63.0, 22.0 ],
                                                    "text": "pack 1. 11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-61",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 1032.0, 458.0, 48.0, 22.0 ],
                                                    "text": "line~ 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-56",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 347.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-55",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 347.0, 668.0, 44.0, 22.0 ],
                                                    "text": "sig~ 3."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-54",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 347.0, 629.0, 30.0, 22.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-51",
                                                    "maxclass": "newobj",
                                                    "numinlets": 4,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 347.0, 707.0, 162.0, 22.0 ],
                                                    "text": "selector~ 3 3 @ramptime 11."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-50",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 709.0, 350.0, 110.0, 22.0 ],
                                                    "text": "expr $f1 * 0.6 + 0.4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-49",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 126.0, 272.0, 33.0, 22.0 ],
                                                    "text": "* 9.7"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-48",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 126.0, 629.0, 40.0, 22.0 ],
                                                    "text": "*~ 0.5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-41",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 126.0, 311.0, 83.0, 22.0 ],
                                                    "text": "pack 1000. 11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-42",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 126.0, 350.0, 83.0, 22.0 ],
                                                    "text": "line~ 1000."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-33",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 309.0, 233.0, 36.0, 22.0 ],
                                                    "text": "+ 93."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "signal", "signal", "signal" ],
                                                    "patching_rect": [ 126.0, 419.0, 94.0, 22.0 ],
                                                    "text": "evi.velvetnoise~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 952.0, 419.0, 63.0, 22.0 ],
                                                    "text": "pack 1. 11"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 836.0, 536.0, 44.0, 22.0 ],
                                                    "text": "sig~ 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 836.0, 497.0, 30.0, 22.0 ],
                                                    "text": "+ 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 709.0, 272.0, 30.0, 22.0 ],
                                                    "text": "/ 2."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 836.0, 590.0, 168.0, 22.0 ],
                                                    "text": "selector~ 2 1 @ramptime 111."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 709.0, 497.0, 78.0, 22.0 ],
                                                    "text": "tri~ 110. 0.52"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 709.0, 536.0, 34.0, 22.0 ],
                                                    "text": "*~ 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 952.0, 458.0, 48.0, 22.0 ],
                                                    "text": "line~ 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 836.0, 629.0, 47.0, 22.0 ],
                                                    "text": "*~ 0.25"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-109",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 911.0, 497.0, 101.0, 22.0 ],
                                                    "text": "simpleFM~ 2. 10."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-3",
                                                    "index": 3,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1149.0, 761.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-36",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 542.0, 536.0, 88.0, 22.0 ],
                                                    "text": "rect~ 110. 0.62"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-35",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 542.0, 458.0, 40.0, 22.0 ],
                                                    "text": "* 0.51"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-34",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 442.0, 629.0, 47.0, 22.0 ],
                                                    "text": "*~ 0.25"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 442.0, 536.0, 89.0, 22.0 ],
                                                    "text": "rect~ 220. 0.44"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 442.0, 350.0, 32.0, 22.0 ],
                                                    "text": "mtof"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-28",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 442.0, 272.0, 32.0, 22.0 ],
                                                    "text": "+ 48"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-23",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 442.0, 233.0, 297.0, 22.0 ],
                                                    "text": "list.lookup 0 7 3 2 9 7 10 0 7 3 0 9 10 2 9 7 10 0 7 3 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 96.0, 96.0, 119.0, 22.0 ],
                                                    "text": "metro 200 @active 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-57",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 96.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-58",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 347.0, 761.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubblepoint": 0.2,
                                                    "bubbleside": 2,
                                                    "hidden": 1,
                                                    "id": "obj-2",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 281.0, 532.0, 70.0, 39.0 ],
                                                    "text": "naughty",
                                                    "textjustification": 1
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "midpoints": [ 585.0, 215.203125, 961.5, 215.203125 ],
                                                    "order": 0,
                                                    "source": [ "obj-105", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-105", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 0 ],
                                                    "source": [ "obj-105", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-33", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-105", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-35", 1 ],
                                                    "midpoints": [ 851.3333333333334, 435.47265625, 572.5, 435.47265625 ],
                                                    "source": [ "obj-105", 5 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-45", 1 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 318.66666666666663, 211.0, 84.69661458333331, 211.0, 84.69661458333331, 130.0, 185.5, 130.0 ],
                                                    "order": 1,
                                                    "source": [ "obj-105", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-62", 0 ],
                                                    "source": [ "obj-105", 6 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-63", 0 ],
                                                    "source": [ "obj-105", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-82", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-105", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-89", 0 ],
                                                    "midpoints": [ 718.1666666666666, 262.0625, 656.5, 262.0625 ],
                                                    "order": 1,
                                                    "source": [ "obj-105", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-106", 0 ],
                                                    "source": [ "obj-107", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-107", 0 ],
                                                    "source": [ "obj-108", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 1 ],
                                                    "order": 2,
                                                    "source": [ "obj-109", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 2 ],
                                                    "order": 0,
                                                    "source": [ "obj-109", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-109", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-26", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-108", 0 ],
                                                    "source": [ "obj-110", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-94", 0 ],
                                                    "midpoints": [ 43.5, 82.06640625, 1158.5, 82.06640625 ],
                                                    "source": [ "obj-112", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 1 ],
                                                    "source": [ "obj-118", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 2 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-50", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-45", 0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 0.5763723254, 0.0, 1.0 ],
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-23", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-48", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-64", 0 ],
                                                    "source": [ "obj-27", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 0.5763723254, 0.0, 1.0 ],
                                                    "destination": [ "obj-30", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 0.5763723254, 0.0, 1.0 ],
                                                    "destination": [ "obj-87", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 0.5763723254, 0.0, 1.0 ],
                                                    "destination": [ "obj-109", 0 ],
                                                    "midpoints": [ 451.5, 384.5390625, 920.5, 384.5390625 ],
                                                    "order": 0,
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 0.5763723254, 0.0, 1.0 ],
                                                    "destination": [ "obj-32", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 0.5763723254, 0.0, 1.0 ],
                                                    "destination": [ "obj-35", 0 ],
                                                    "midpoints": [ 451.5, 384.55078125, 551.5, 384.55078125 ],
                                                    "order": 1,
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-34", 0 ],
                                                    "source": [ "obj-32", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-49", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-33", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-63", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-33", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-51", 2 ],
                                                    "source": [ "obj-34", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 0.5763723254, 0.0, 1.0 ],
                                                    "destination": [ "obj-13", 0 ],
                                                    "midpoints": [ 551.5, 488.5, 718.5, 488.5 ],
                                                    "order": 0,
                                                    "source": [ "obj-35", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 0.5763723254, 0.0, 1.0 ],
                                                    "destination": [ "obj-36", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-35", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-34", 0 ],
                                                    "source": [ "obj-36", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 0 ],
                                                    "source": [ "obj-41", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-42", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-105", 0 ],
                                                    "source": [ "obj-45", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-111", 0 ],
                                                    "source": [ "obj-45", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-51", 1 ],
                                                    "midpoints": [ 135.5, 661.265625, 404.1666666666667, 661.265625 ],
                                                    "source": [ "obj-48", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-41", 0 ],
                                                    "source": [ "obj-49", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-51", 3 ],
                                                    "midpoints": [ 845.5, 661.1171875, 499.5, 661.1171875 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 1 ],
                                                    "midpoints": [ 718.5, 399.20703125, 210.5, 399.20703125 ],
                                                    "source": [ "obj-50", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-58", 0 ],
                                                    "source": [ "obj-51", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 0 ],
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-51", 0 ],
                                                    "source": [ "obj-55", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-54", 0 ],
                                                    "source": [ "obj-56", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "source": [ "obj-57", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "source": [ "obj-60", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-109", 2 ],
                                                    "source": [ "obj-61", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-62", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-77", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-62", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-64", 1 ],
                                                    "source": [ "obj-63", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-34", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-64", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-83", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-64", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 1 ],
                                                    "source": [ "obj-77", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-82", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-36", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-82", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-48", 0 ],
                                                    "source": [ "obj-83", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 0.5763723254, 0.0, 1.0 ],
                                                    "destination": [ "obj-83", 1 ],
                                                    "source": [ "obj-87", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-87", 1 ],
                                                    "source": [ "obj-89", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-109", 1 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-92", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-92", 0 ],
                                                    "source": [ "obj-93", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-93", 0 ],
                                                    "source": [ "obj-94", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 120.0, 375.0, 131.0, 23.0 ],
                                    "text": "p sequence"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Demo audio sequence Off/On.",
                                    "annotation_name": "Sequence",
                                    "hint": "Demo audio sequence Off/On.",
                                    "id": "obj-56",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 157.0, 334.0, 24.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 168.0, 118.0, 48.0, 48.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 1.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "toggle[5]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "toggle",
                                            "parameter_type": 2
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "toggle"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Switch Filter Input between Noisyness, Oscillators or FM",
                                    "annotation_name": "Input Switcher",
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "hint": "Switch Filter Input between Noisyness, Oscillators or FM",
                                    "id": "obj-13",
                                    "maxclass": "live.tab",
                                    "mode": 1,
                                    "num_lines_patching": 3,
                                    "num_lines_presentation": 1,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 195.0, 281.0, 40.0, 77.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 469.0, 302.0, 123.0, 20.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "noise", "osc", "FM" ],
                                            "parameter_initial": [ 2.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.tab",
                                            "parameter_mmax": 2,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.tab",
                                            "parameter_type": 2,
                                            "parameter_unitstyle": 9
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "live.tab"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Filter resonance. Effect depends on other settings, such as @boom, @lpg and @vca.",
                                    "annotation_name": "Filter Resonance",
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "hint": "Filter resonance. Effect depends on other settings, such as @boom, @lpg and @vca.",
                                    "id": "obj-6",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 232.0, 308.0, 55.0, 50.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 380.0, 427.0, 55.0, 50.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 100.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[3]",
                                            "parameter_mmax": 200.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Res",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "live.dial[3]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 8,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 157.0, 505.0, 282.0, 23.0 ],
                                    "text": "evi.lpg~ 8"
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
                                    "jsarguments": [ "evi.lpg~", 660 ],
                                    "maxclass": "v8ui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 660.0, 57.599853515625 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 10.0, 10.0, 660.0, 57.599853515625 ],
                                    "textfile": {
                                        "filename": "evi.helpname.js",
                                        "flags": 0,
                                        "embed": 0,
                                        "autowatch": 1
                                    },
                                    "varname": "v8ui_AA"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 61.0, 334.0, 57.0, 25.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 109.0, 180.0, 57.0, 25.0 ],
                                    "text": "Ping",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 0,
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 180.0, 398.0, 48.0, 40.0 ],
                                    "text": "Ping",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.9,
                                    "bubbleside": 2,
                                    "id": "obj-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 119.0, 292.0, 60.0, 40.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 142.0, 76.0, 60.0, 40.0 ],
                                    "text": "On/Off",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "activegridcolor": [ 0.22, 0.22, 0.22, 1.0 ],
                                    "activelinecolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                                    "annotation": "Displays the internal Vactrol Envelope which Pings the Filter.",
                                    "annotation_name": "Vactrol Display",
                                    "grid": 3,
                                    "hint": "Displays the internal Vactrol Envelope which Pings the Filter.",
                                    "id": "obj-36",
                                    "maxclass": "live.scope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 639.0, 545.0, 100.0, 100.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 142.0, 302.0, 100.0, 100.0 ],
                                    "range": [ 0.0, 10.0 ],
                                    "rounded": 1.0,
                                    "samples": 48000.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "samples",
                                    "hidden": 1,
                                    "id": "obj-52",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 607.0, 480.0, 132.0, 23.0 ],
                                    "text_width": 60.0
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "activegridcolor": [ 0.22, 0.22, 0.22, 1.0 ],
                                    "activelinecolor": [ 0.6196078431372549, 0.7450980392156863, 0.9529411764705882, 1.0 ],
                                    "annotation": "Filter Output Scope",
                                    "grid": 3,
                                    "hint": "Filter Output Scope",
                                    "id": "obj-16",
                                    "maxclass": "live.scope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 25.0, 545.0, 100.0, 100.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 143.0, 545.0, 100.0, 100.0 ],
                                    "rounded": 1.0,
                                    "samples": 1200.0
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-68",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
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
                                        "rect": [ 59.0, 119.0, 363.0, 355.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "button",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 50.0, 61.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-62",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 103.0, 158.0, 30.0, 22.0 ],
                                                    "text": "/ 40"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-57",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "int" ],
                                                    "patching_rect": [ 50.0, 100.0, 72.0, 22.0 ],
                                                    "text": "adstatus sr"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-65",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 103.0, 212.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-67",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 176.0, 212.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-57", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-62", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-57", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-67", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-57", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-62", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 25.0, 403.0, 68.0, 23.0 ],
                                    "text": "p because"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-4",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 70.0, 660.0, 53.0 ],
                                    "text": "This is a complex object and difficult to control. The smallest changes can have a big effect and settings in one control changes the behaviour of another. Remember to hold down shift when changing controls for fine adjustments. Try the presets, and try presentation mode.",
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
                                    "patching_rect": [ 157.0, 600.0, 45.0, 45.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 625.0, 120.0, 45.0, 45.0 ],
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
                                    "patching_rect": [ 204.0, 610.0, 86.0, 25.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 672.0, 130.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            },
                            {
                                "box": {
                                    "arrows": 2,
                                    "background": 1,
                                    "border": 5.0,
                                    "id": "obj-60",
                                    "justification": 1,
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 98.0, 647.0, 19.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 98.0, 647.0, 19.0, 21.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "midpoints": [ 166.5, 536.5, 316.5, 536.5 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 166.5, 536.5, 34.5, 536.5 ],
                                    "order": 3,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 1 ],
                                    "midpoints": [ 166.5, 536.5, 270.5, 536.5 ],
                                    "order": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "order": 2,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "midpoints": [ 429.5, 536.5, 648.5, 536.5 ],
                                    "source": [ "obj-1", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 2 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 1 ],
                                    "source": [ "obj-19", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-20", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 7 ],
                                    "source": [ "obj-21", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 6 ],
                                    "source": [ "obj-22", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 5 ],
                                    "source": [ "obj-23", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 3 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 4 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 34.5, 492.90625, 166.5, 492.90625 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 2 ],
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 1 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "hidden": 1,
                                    "order": 1,
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-75", 0 ],
                                    "hidden": 1,
                                    "order": 0,
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 1 ],
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 2 ],
                                    "source": [ "obj-59", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 1 ],
                                    "order": 1,
                                    "source": [ "obj-59", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-59", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "midpoints": [ 129.5, 407.0, 110.33984375, 407.0, 110.33984375, 324.0, 129.5, 324.0 ],
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-75", 0 ],
                                    "hidden": 1,
                                    "order": 0,
                                    "source": [ "obj-59", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 3 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "midpoints": [ 456.5, 542.125, 316.5, 542.125 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 0.0 ],
                                    "destination": [ "obj-13", 0 ],
                                    "hidden": 1,
                                    "order": 0,
                                    "source": [ "obj-64", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 0.0 ],
                                    "destination": [ "obj-19", 0 ],
                                    "hidden": 1,
                                    "order": 1,
                                    "source": [ "obj-64", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 0.0 ],
                                    "destination": [ "obj-47", 0 ],
                                    "hidden": 1,
                                    "order": 4,
                                    "source": [ "obj-64", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 0.0 ],
                                    "destination": [ "obj-48", 0 ],
                                    "hidden": 1,
                                    "order": 5,
                                    "source": [ "obj-64", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 0.0 ],
                                    "destination": [ "obj-49", 0 ],
                                    "hidden": 1,
                                    "order": 6,
                                    "source": [ "obj-64", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 0.0 ],
                                    "destination": [ "obj-56", 0 ],
                                    "hidden": 1,
                                    "order": 2,
                                    "source": [ "obj-64", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 0.0 ],
                                    "destination": [ "obj-66", 0 ],
                                    "hidden": 1,
                                    "order": 3,
                                    "source": [ "obj-64", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 0 ],
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 34.5, 441.0, 12.0, 441.0, 12.0, 492.0, 34.5, 492.0 ],
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-68", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-7", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-71", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-74", 1 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 281.0, 336.0, 68.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p example",
                    "varname": "example_tab"
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
                        "rect": [ 0.0, 26.0, 802.0, 669.0 ],
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.9,
                                    "id": "obj-60",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 447.0, 261.0, 101.0, 25.0 ],
                                    "text": "Inlets 4 & 5",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-58",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 319.0, 241.0, 71.0, 25.0 ],
                                    "text": "Inlet 3",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-39",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 62.0, 550.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "5",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.3,
                                    "bubbleside": 0,
                                    "id": "obj-55",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 558.0, 477.0, 111.0, 40.0 ],
                                    "text": "Inlets 6, 7 & 8",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 4.0, 535.0, 37.0, 50.0 ],
                                    "text": "LPG\nBP\nHP",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 43.0, 587.0, 30.0, 23.0 ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "disabled": [ 0, 0, 0 ],
                                    "id": "obj-26",
                                    "itemtype": 0,
                                    "maxclass": "radiogroup",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 43.0, 535.0, 18.0, 50.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "0", "1", "2" ],
                                            "parameter_initial": [ 0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "radiogroup[3]",
                                            "parameter_mmax": 2,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "radiogroup",
                                            "parameter_type": 2
                                        }
                                    },
                                    "size": 3,
                                    "value": 0,
                                    "varname": "radiogroup"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 97.0, 548.0, 83.0, 23.0 ],
                                    "text": "selector~ 3 1"
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
                                    "patching_rect": [ 547.0, 452.0, 20.0, 20.0 ],
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
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-12",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 390.0, 452.0, 20.0, 20.0 ],
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
                                    "id": "obj-8",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 75.0, 627.0, 20.0, 20.0 ],
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
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-47",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 236.0, 452.0, 20.0, 20.0 ],
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
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 625.0, 570.0, 103.0, 21.0 ],
                                    "text": "vactrol envelope"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 558.0, 625.0, 170.0, 23.0 ],
                                    "text": "loadmess vactrolscalar 100."
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.3,
                                    "bubbleside": 2,
                                    "fontface": 1,
                                    "id": "obj-6",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 583.0, 285.0, 207.0, 69.0 ],
                                    "text": "Offset, Scale & Sweep control how the envelope is mapped to the LPG cutoff",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "calccount": 128,
                                    "id": "obj-36",
                                    "maxclass": "scope~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 558.0, 548.0, 65.0, 65.0 ],
                                    "range": [ 0.0, 10.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "logfreq": 1,
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 241.0, 548.0, 300.0, 100.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 256.0, 243.0, 50.0, 21.0 ],
                                    "text": "0..2"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-54",
                                    "maxclass": "flonum",
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 144.0, 329.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 112.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[12]",
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number[11]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number[5]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-53",
                                    "maxclass": "flonum",
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 119.0, 289.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.07 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[11]",
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number[11]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number[4]"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-51",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 196.0, 328.0, 176.0, 25.0 ],
                                    "text": "vactrol fall, signal or float",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-41",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 171.0, 288.0, 185.0, 25.0 ],
                                    "text": "vactrol rise, signal or float",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-49",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 103.0, 116.0, 146.0, 25.0 ],
                                    "text": "Audio source, inlet 1",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
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
                                        "classnamespace": "box",
                                        "rect": [ 59.0, 119.0, 616.0, 314.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 128.0, 62.0, 57.0, 22.0 ],
                                                    "text": "sig~ 110."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 128.0, 165.0, 34.0, 22.0 ],
                                                    "text": "*~ 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 246.0, 53.0, 51.0, 22.0 ],
                                                    "text": "sig~ 5.7"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 246.0, 93.0, 299.0, 22.0 ],
                                                    "text": "gen~ @expr evi_dbtoaapprox(evi_randy(in1) * 6 + 0.3)",
                                                    "varname": "gen~_AB"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
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
                                                        "classnamespace": "box",
                                                        "rect": [ 198.0, 216.0, 255.0, 218.0 ],
                                                        "integercoordinates": 1,
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-6",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "signal" ],
                                                                    "patching_rect": [ 203.0, 81.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-5",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "signal" ],
                                                                    "patching_rect": [ 158.0, 126.0, 34.0, 22.0 ],
                                                                    "text": "*~ 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-2",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "signal" ],
                                                                    "patching_rect": [ 78.0, 126.0, 40.0, 22.0 ],
                                                                    "text": "*~ 1.1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-8",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 103.0, 39.0, 95.0, 20.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-4",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 49.0, 166.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-3",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "signal" ],
                                                                    "patching_rect": [ 49.0, 34.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-1",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 5,
                                                                    "outlettype": [ "signal", "signal", "signal", "signal", "signal" ],
                                                                    "patching_rect": [ 49.0, 81.0, 69.0, 22.0 ],
                                                                    "text": "evi.4wave~"
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-1", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-5", 0 ],
                                                                    "source": [ "obj-1", 3 ]
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
                                                                    "source": [ "obj-3", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-4", 0 ],
                                                                    "source": [ "obj-5", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-5", 1 ],
                                                                    "source": [ "obj-6", 0 ]
                                                                }
                                                            }
                                                        ],
                                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                                    },
                                                    "patching_rect": [ 95.0, 116.0, 40.0, 22.0 ],
                                                    "text": "p osc"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-47",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 76.0, 227.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-26", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-47", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 43.0, 117.0, 58.0, 23.0 ],
                                    "text": "p source"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 215.0, 197.0, 144.0, 25.0 ],
                                    "text": "Ping, signal, inlet 2",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 68.0, 158.0, 78.0, 23.0 ],
                                    "text": "phasor~ 0.3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "int" ],
                                    "patching_rect": [ 68.0, 198.0, 145.0, 23.0 ],
                                    "text": "what~ 0.5 0.75 0.8 0.85"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-43",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 627.0, 428.0, 161.0, 40.0 ],
                                    "text": "Control characteristics, signal or float, 0..1",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-42",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 145.0, 233.0, 108.0, 40.0 ],
                                    "text": "Resonance, signal or float",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-40",
                                    "maxclass": "flonum",
                                    "maximum": 2.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 93.0, 241.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 1.8 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[6]",
                                            "parameter_mmax": 2.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number[6]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number[3]"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.65,
                                    "id": "obj-38",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 528.0, 364.0, 260.0, 40.0 ],
                                    "text": "whether using floats or signals, they can be smoothed in ms via attributes",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_bgcolor": [ 0.235, 0.235, 0.235, 0.0 ],
                                    "bubbleside": 3,
                                    "fontface": 1,
                                    "id": "obj-35",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 477.0, 435.0, 91.0, 25.0 ],
                                    "text": "Sweep",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_bgcolor": [ 0.235, 0.235, 0.235, 0.0 ],
                                    "bubbleside": 3,
                                    "fontface": 1,
                                    "id": "obj-34",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 323.0, 435.0, 87.0, 25.0 ],
                                    "text": "Scale",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-33",
                                    "maxclass": "flonum",
                                    "maximum": 222.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 477.0, 381.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-32",
                                    "maxclass": "flonum",
                                    "maximum": 111.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 323.0, 381.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-31",
                                    "maxclass": "flonum",
                                    "maximum": 333.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 172.0, 381.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-29",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 567.0, 436.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.5 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[5]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[5]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[2]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-28",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 410.0, 436.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.4 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[4]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[4]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[1]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-27",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 256.0, 436.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.2 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[3]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[3]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_bgcolor": [ 0.235, 0.235, 0.235, 0.0 ],
                                    "bubbleside": 3,
                                    "fontface": 1,
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 172.0, 435.0, 87.0, 25.0 ],
                                    "text": "Offset",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 241.0, 492.0, 228.0, 25.0 ],
                                    "text": "Arg #1: 8 times oversampled core",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 477.0, 406.0, 140.0, 23.0 ],
                                    "text": "prepend sweepsmooth"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 323.0, 406.0, 137.0, 23.0 ],
                                    "text": "prepend scalesmooth"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 172.0, 406.0, 134.0, 23.0 ],
                                    "text": "prepend offsetsmooth"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 97.0, 587.0, 50.0, 23.0 ],
                                    "text": "*~ 0.25"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 8,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 43.0, 493.0, 196.0, 23.0 ],
                                    "text": "evi.lpg~ 8"
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
                                    "jsarguments": [ "evi.lpg~", 660 ],
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
                                    },
                                    "varname": "v8ui_AA"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 342.0, 309.0, 118.0, 21.0 ],
                                    "text": "envelope, in ms"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 477.0, 362.0, 50.0, 21.0 ],
                                    "text": "ms"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 323.0, 362.0, 50.0, 21.0 ],
                                    "text": "ms"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 172.0, 362.0, 50.0, 21.0 ],
                                    "text": "ms"
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
                                    "text": "Inlets 1 & 2 are signal rate only, inlets 3..8 can be signals or floats. Attributes offer additional smoothing. Simultaneous outlets offer the LPG, a Bandpass version and a Highpass version.",
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
                                    "patching_rect": [ 97.0, 614.0, 45.0, 45.0 ],
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
                                    "patching_rect": [ 144.0, 624.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 2,
                                    "bordercolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "grad1": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "grad2": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "id": "obj-37",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 4.0, 528.0, 230.0, 137.0 ],
                                    "proportion": 0.5,
                                    "rounded": 2,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_bgcolor"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 2,
                                    "bordercolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "grad1": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "grad2": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "id": "obj-22",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 162.0, 365.0, 634.0, 112.0 ],
                                    "proportion": 0.5,
                                    "rounded": 2,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_bgcolor"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 2,
                                    "bordercolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "grad1": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "grad2": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "id": "obj-20",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 109.0, 279.0, 338.0, 81.0 ],
                                    "proportion": 0.5,
                                    "rounded": 2,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_bgcolor"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 2,
                                    "bordercolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "grad1": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "grad2": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "id": "obj-19",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 86.0, 231.0, 231.0, 44.0 ],
                                    "proportion": 0.5,
                                    "rounded": 2,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_bgcolor"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 2,
                                    "bordercolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "grad1": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "grad2": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "id": "obj-15",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 59.0, 152.0, 313.0, 75.0 ],
                                    "proportion": 0.5,
                                    "rounded": 2,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_bgcolor"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 2,
                                    "bordercolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "grad1": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "grad2": [ 0.20868053195387726, 0.2086804741973305, 0.20868048929003885, 0.0 ],
                                    "id": "obj-14",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 32.0, 109.0, 234.0, 39.0 ],
                                    "proportion": 0.5,
                                    "rounded": 2,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_bgcolor"
                                        }
                                    }
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 3 ],
                                    "source": [ "obj-1", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 2 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 1 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "midpoints": [ 229.5, 523.7109375, 567.5, 523.7109375 ],
                                    "source": [ "obj-1", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 0.0 ],
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 181.5, 463.0, 52.5, 463.0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 0.0 ],
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 332.5, 463.0, 52.5, 463.0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 0.0 ],
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 486.5, 463.0, 52.5, 463.0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 5 ],
                                    "midpoints": [ 265.5, 472.62109375, 178.92857142857144, 472.62109375 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 6 ],
                                    "midpoints": [ 419.5, 478.75, 204.21428571428572, 478.75 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 7 ],
                                    "midpoints": [ 576.5, 485.78125, 229.5, 485.78125 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 1 ],
                                    "order": 0,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 1,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "order": 1,
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 0 ],
                                    "midpoints": [ 106.5, 581.0, 200.7265625, 581.0, 200.7265625, 538.0, 250.5, 538.0 ],
                                    "order": 0,
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 2 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 1 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 3 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 4 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 374.3333333333333, 336.0, 92.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p inlets/outlets",
                    "varname": "inlets_tab"
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
                    "text": "v8 evi.helpstarter.js evi.lpg~ 2 0 0 1 0 none",
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
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.99,
                                    "bubbleside": 0,
                                    "id": "obj-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 626.0, 432.0, 40.0 ],
                                    "text": "notice that by default there is some leakage, just like the analog original",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.9,
                                    "id": "obj-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 209.0, 421.0, 61.0, 25.0 ],
                                    "text": "Ping",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 45.0, 285.0, 71.0, 21.0 ],
                                    "text": "INPUT",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 14.0, 321.0, 55.0, 50.0 ],
                                    "text": "Off\nNoise\nOsc",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "disabled": [ 0, 0, 0 ],
                                    "id": "obj-8",
                                    "itemtype": 0,
                                    "maxclass": "radiogroup",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 71.0, 321.0, 18.0, 50.0 ],
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
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
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
                                        "classnamespace": "box",
                                        "rect": [ 34.0, 100.0, 516.0, 456.0 ],
                                        "gridonopen": 2,
                                        "subpatcher_template": "sub",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 132.0, 261.0, 40.0, 22.0 ],
                                                    "text": "*~ 0.7"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 50.0, 181.0, 66.0, 20.0 ],
                                                    "text": "OSC",
                                                    "textjustification": 2
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-38",
                                                    "maxclass": "number",
                                                    "maximum": 512,
                                                    "minimum": 2,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 66.0, 140.0, 50.0, 22.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_initial": [ 2.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_longname": "number[1]",
                                                            "parameter_mmax": 512.0,
                                                            "parameter_mmin": 2.0,
                                                            "parameter_modmode": 3,
                                                            "parameter_shortname": "number[1]",
                                                            "parameter_type": 0
                                                        }
                                                    },
                                                    "varname": "number[1]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "calccount": 2,
                                                    "id": "obj-36",
                                                    "maxclass": "scope~",
                                                    "numinlets": 2,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 66.0, 220.0, 50.0, 50.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 118.0, 100.0, 58.0, 22.0 ],
                                                    "text": "sig~ 10.2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 118.0, 140.0, 289.0, 22.0 ],
                                                    "text": "gen~ @expr evi_mtofapprox(evi_randy(in1) * 3 + 36)",
                                                    "varname": "gen~_AB"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 6,
                                                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal" ],
                                                    "patching_rect": [ 118.0, 180.0, 90.0, 22.0 ],
                                                    "text": "evi.blitwaves~",
                                                    "varname": "gen~_AA"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-14",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 132.0, 343.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-15", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-36", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-15", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-26", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-36", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-38", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 135.0, 348.0, 40.0, 23.0 ],
                                    "text": "p osc"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 71.0, 388.0, 83.0, 23.0 ],
                                    "text": "selector~ 2 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 103.0, 308.0, 47.0, 23.0 ],
                                    "text": "noise~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 195.0, 388.0, 41.0, 23.0 ],
                                    "text": "click~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 245.0, 212.0, 157.0, 50.0 ],
                                    "text": "Repeated pings will keep the envelope active and increase the cutoff"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "id": "obj-50",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 305.0, 321.0, 183.0, 21.0 ],
                                    "text": "A basic Ping example"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-10",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 158.0, 600.0, 20.0, 20.0 ],
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
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-47",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 173.0, 227.0, 20.0, 20.0 ],
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
                                    "id": "obj-44",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 487.0, 634.0, 300.0, 21.0 ],
                                    "text": "LPG",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "attr": "logfreq",
                                    "id": "obj-35",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 487.0, 489.0, 300.0, 23.0 ],
                                    "text_width": 56.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "logfreq": 1,
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 487.0, 514.0, 300.0, 118.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 102.0, 225.0, 70.0, 25.0 ],
                                    "text": "Ping",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 195.0, 213.0, 48.0, 48.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 404.0, 563.0, 69.0, 21.0 ],
                                    "text": "vactrol"
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
                                    "patching_rect": [ 284.0, 514.0, 118.0, 118.0 ],
                                    "range": [ -0.01, 7.07107 ],
                                    "rounded": 1.0,
                                    "samples": 48000.0,
                                    "vertical_divisions": 4
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 127.0, 452.0, 61.0, 25.0 ],
                                    "text": "LPG",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 180.0, 514.0, 43.0, 23.0 ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 8,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 180.0, 443.0, 123.0, 23.0 ],
                                    "text": "evi.lpg~ 4 2.",
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
                                    "patching_rect": [ 180.0, 587.0, 45.0, 45.0 ],
                                    "varname": "basic_dac"
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
                                    "jsarguments": [ "evi.lpg~", "pants:/Users/stkr/Dev/evieve/help/abstractions/evi.lpg~.maxhelp" ],
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
                                    },
                                    "varname": "v8ui_AB"
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
                                    "background": 1,
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 598.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpargs.js",
                                    "id": "obj-11",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "evi.lpg~" ],
                                    "maxclass": "v8ui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 303.0, 444.0, 182.72850036621094, 54.0 ],
                                    "textfile": {
                                        "filename": "evi.helpargs.js",
                                        "flags": 0,
                                        "embed": 0,
                                        "autowatch": 1
                                    },
                                    "varname": "v8ui_AA"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 1 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 80.5, 427.0, 189.5, 427.0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 2 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 1 ],
                                    "midpoints": [ 189.5, 562.0, 215.5, 562.0 ],
                                    "order": 0,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 1,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-35", 0 ]
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
                                    "destination": [ "obj-3", 0 ],
                                    "order": 1,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "midpoints": [ 189.5, 504.90234375, 496.5, 504.90234375 ],
                                    "order": 0,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ],
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
                    "jsarguments": [ "evi.lpg~" ],
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 10.0, 173.4639892578125, 57.599853515625 ],
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
                        "rect": [ 0.0, 26.0, 802.0, 669.0 ],
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 268.0, 261.0, 74.0, 23.0 ],
                                    "text": "cycle~ 119."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 253.0, 341.0, 99.0, 23.0 ],
                                    "text": "evi.wavefolder~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 253.0, 301.0, 74.0, 23.0 ],
                                    "text": "cycle~ 110."
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
                                    "patching_rect": [ 105.0, 383.0, 20.0, 20.0 ],
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
                                    "patching_rect": [ 72.0, 240.0, 20.0, 20.0 ],
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
                                    "id": "obj-18",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 231.0, 595.0, 20.0, 20.0 ],
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
                                    "bubble": 1,
                                    "bubblepoint": 0.01,
                                    "bubbleside": 2,
                                    "id": "obj-29",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 94.0, 142.0, 485.0, 55.0 ],
                                    "text": "In the MSP [evi.lpg~] version oversampling is handled by [poly~] via argument, in the gen~ [evi_lpg_buchla] version oversampling is handled locally via attribute",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 114.0, 279.0, 107.0, 21.0 ],
                                    "text": "8x"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 114.0, 263.0, 107.0, 21.0 ],
                                    "text": "6x"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 114.0, 247.0, 107.0, 21.0 ],
                                    "text": "4x"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 114.0, 231.0, 107.0, 21.0 ],
                                    "text": "3x"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 114.0, 215.0, 107.0, 21.0 ],
                                    "text": "2x"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 114.0, 199.0, 107.0, 21.0 ],
                                    "text": "1x"
                                }
                            },
                            {
                                "box": {
                                    "disabled": [ 0, 0, 0, 0, 0, 0 ],
                                    "id": "obj-16",
                                    "itemtype": 0,
                                    "maxclass": "radiogroup",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 94.0, 201.0, 18.0, 98.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "0", "1", "2", "3", "4", "5" ],
                                            "parameter_initial": [ 3.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "radiogroup[2]",
                                            "parameter_mmax": 5,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "radiogroup[2]",
                                            "parameter_type": 2
                                        }
                                    },
                                    "size": 6,
                                    "value": 3,
                                    "varname": "radiogroup"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 94.0, 301.0, 127.0, 23.0 ],
                                    "text": "prepend oversample"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 364.0, 259.0, 78.0, 40.0 ],
                                    "text": "Pings",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 594.0, 484.0, 69.0, 21.0 ],
                                    "text": "vactrol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "scope~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 474.0, 435.0, 118.0, 118.0 ],
                                    "range": [ 0.0, 7.07107 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 364.0, 301.0, 85.0, 23.0 ],
                                    "text": "phasor~ 0.33"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "int" ],
                                    "patching_rect": [ 364.0, 341.0, 145.0, 23.0 ],
                                    "text": "what~ 0.5 0.75 0.8 0.85"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 253.0, 482.0, 43.0, 23.0 ],
                                    "text": "*~ 0.5"
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
                                    "jsarguments": [ "evi.lpg~", 660 ],
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
                                    "text": "The evi.lpg~ algorithm is also available inside the gen~ environment",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
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
                                        "rect": [ 59.0, 119.0, 750.0, 482.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 594.0, 75.0, 129.0, 22.0 ],
                                                    "text": "setparam vactrolscalar"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 594.0, 36.0, 97.0, 22.0 ],
                                                    "text": "param scale 100"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 39.0, 148.0, 247.0, 20.0 ],
                                                    "text": "0 = 1x, 1 = 2x, 2 = 3x, 3 = 4x, 4 = 6x, 5 = 8x"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 39.0, 85.0, 118.0, 22.0 ],
                                                    "text": "param oversample 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 39.0, 124.0, 136.0, 22.0 ],
                                                    "text": "setparam localresample"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 413.0, 75.0, 153.0, 22.0 ],
                                                    "text": "in 3 Resonance @default 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 3,
                                                    "id": "obj-12",
                                                    "linecount": 4,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 176.0, 205.0, 153.0, 64.0 ],
                                                    "text": "note in gen~ we use a different lpg abstraction which has internal oversampling included",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-10",
                                                    "linecount": 4,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 526.0, 166.0, 167.0, 64.0 ],
                                                    "text": "in gen~ we piece together the equivalent gen~ abstractions from inside the [evi.lpg~] abstraction.",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 490.0, 410.0, 74.0, 22.0 ],
                                                    "text": "out 2 vactrol"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 378.0, 187.0, 131.0, 22.0 ],
                                                    "text": "evi_control_lpg_buchla"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 343.0, 226.0, 89.0, 22.0 ],
                                                    "text": "evi_lpg_buchla"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 225.0, 36.0, 61.0, 22.0 ],
                                                    "text": "in 1 Audio"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 378.0, 36.0, 55.0, 22.0 ],
                                                    "text": "in 2 Ping"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 343.0, 410.0, 63.0, 22.0 ],
                                                    "text": "out 1 LPG"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 0.5763723254, 0.0, 1.0 ],
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 0.5763723254, 0.0, 1.0 ],
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 0.5763723254, 0.0, 1.0 ],
                                                    "destination": [ "obj-5", 2 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 0.5763723254, 0.0, 1.0 ],
                                                    "destination": [ "obj-5", 1 ],
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
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 253.0, 381.0, 240.0, 23.0 ],
                                    "text": "gen~ @title using_evi.lpg~_inside_gen~",
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
                                    "patching_rect": [ 127.0, 373.0, 124.0, 40.0 ],
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
                                    "patching_rect": [ 253.0, 582.0, 45.0, 45.0 ],
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
                                    "patching_rect": [ 300.0, 592.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 1 ],
                                    "order": 0,
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 1,
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 639.0, 336.0, 50.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p gen~",
                    "varname": "gen_tab"
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
            "obj-10::obj-26": [ "radiogroup[3]", "radiogroup", 0 ],
            "obj-10::obj-27": [ "number[3]", "number[3]", 0 ],
            "obj-10::obj-28": [ "number[4]", "number[4]", 0 ],
            "obj-10::obj-29": [ "number[5]", "number[5]", 0 ],
            "obj-10::obj-40": [ "number[6]", "number[6]", 0 ],
            "obj-10::obj-53": [ "number[11]", "number[11]", 0 ],
            "obj-10::obj-54": [ "number[12]", "number[11]", 0 ],
            "obj-11::obj-20": [ "number[43]", "number[43]", 0 ],
            "obj-11::obj-33": [ "radiogroup[1]", "radiogroup[1]", 0 ],
            "obj-11::obj-40": [ "number[8]", "number[8]", 0 ],
            "obj-11::obj-46": [ "toggle[4]", "toggle[3]", 0 ],
            "obj-11::obj-47": [ "toggle[3]", "toggle[3]", 0 ],
            "obj-11::obj-48": [ "toggle[1]", "toggle[1]", 0 ],
            "obj-11::obj-49": [ "toggle[2]", "toggle[2]", 0 ],
            "obj-11::obj-51": [ "number[7]", "number[7]", 0 ],
            "obj-12::obj-10": [ "number[25]", "number[18]", 0 ],
            "obj-12::obj-16": [ "number[24]", "number[18]", 0 ],
            "obj-12::obj-17": [ "number[23]", "number[18]", 0 ],
            "obj-12::obj-19": [ "number[30]", "number", 0 ],
            "obj-12::obj-21": [ "number[31]", "number", 0 ],
            "obj-12::obj-27": [ "number[33]", "number[2]", 0 ],
            "obj-12::obj-33": [ "number[34]", "number[34]", 0 ],
            "obj-12::obj-51": [ "number[29]", "number[18]", 0 ],
            "obj-12::obj-53": [ "number[28]", "number[17]", 0 ],
            "obj-12::obj-55": [ "number[27]", "number[2]", 0 ],
            "obj-12::obj-6": [ "number[26]", "number", 0 ],
            "obj-12::obj-7": [ "number[32]", "number[32]", 0 ],
            "obj-13::obj-10": [ "number[20]", "number[18]", 0 ],
            "obj-13::obj-16": [ "number[21]", "number[18]", 0 ],
            "obj-13::obj-17": [ "number[22]", "number[18]", 0 ],
            "obj-13::obj-46": [ "number[16]", "number[16]", 0 ],
            "obj-13::obj-5": [ "number[19]", "number", 0 ],
            "obj-13::obj-51": [ "number[18]", "number[18]", 0 ],
            "obj-13::obj-53": [ "number[17]", "number[17]", 0 ],
            "obj-13::obj-55": [ "number[2]", "number[2]", 0 ],
            "obj-13::obj-6": [ "number", "number", 0 ],
            "obj-14::obj-10": [ "number[37]", "number[18]", 0 ],
            "obj-14::obj-15::obj-38": [ "number[38]", "number[1]", 0 ],
            "obj-14::obj-16": [ "number[36]", "number[18]", 0 ],
            "obj-14::obj-17": [ "number[35]", "number[18]", 0 ],
            "obj-14::obj-29": [ "number[39]", "number[2]", 0 ],
            "obj-14::obj-5": [ "toggle", "toggle", 0 ],
            "obj-14::obj-51": [ "number[42]", "number[18]", 0 ],
            "obj-14::obj-53": [ "number[41]", "number[17]", 0 ],
            "obj-14::obj-55": [ "number[40]", "number[2]", 0 ],
            "obj-2::obj-15::obj-38": [ "number[1]", "number[1]", 0 ],
            "obj-2::obj-8": [ "radiogroup", "radiogroup", 0 ],
            "obj-5::obj-13": [ "live.tab", "live.tab", 0 ],
            "obj-5::obj-18": [ "live.gain~[1]", "In Gain", 0 ],
            "obj-5::obj-19": [ "live.gain~", "Out Gain", 0 ],
            "obj-5::obj-20": [ "live.dial[5]", "Boom", 0 ],
            "obj-5::obj-21": [ "live.dial[2]", "Sweep", 0 ],
            "obj-5::obj-22": [ "live.dial[1]", "Scale", 0 ],
            "obj-5::obj-23": [ "live.dial", "Offset", 0 ],
            "obj-5::obj-24": [ "live.numbox", "Rise", 0 ],
            "obj-5::obj-25": [ "live.numbox[1]", "Fall", 0 ],
            "obj-5::obj-34": [ "live.numbox[2]", "Scale", 0 ],
            "obj-5::obj-39": [ "live.tab[1]", "live.tab", 0 ],
            "obj-5::obj-47": [ "number[15]", "number[15]", 0 ],
            "obj-5::obj-48": [ "number[10]", "number[10]", 0 ],
            "obj-5::obj-49": [ "number[9]", "number[9]", 0 ],
            "obj-5::obj-5": [ "live.dial[4]", "VCA", 0 ],
            "obj-5::obj-56": [ "toggle[5]", "toggle", 0 ],
            "obj-5::obj-59::obj-118": [ "number[14]", "number", 0 ],
            "obj-5::obj-6": [ "live.dial[3]", "Res", 0 ],
            "obj-5::obj-7": [ "live.dial[6]", "LPG", 0 ],
            "obj-5::obj-74": [ "live.numbox[3]", "Shape", 0 ],
            "obj-9::obj-16": [ "radiogroup[2]", "radiogroup[2]", 0 ],
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