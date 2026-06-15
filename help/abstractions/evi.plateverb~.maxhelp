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
                    "hidden": 1,
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "mcs" ],
                    "patching_rect": [ 543.0, 165.0, 40.0, 23.0 ],
                    "text": "t mcs"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 543.0, 205.0, 129.0, 23.0 ],
                    "text": "prepend setactivetab"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 543.0, 125.0, 144.0, 23.0 ],
                    "text": "r from_mcseviplateverb"
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
                                    "patching_rect": [ 13.0, 546.0, 20.0, 20.0 ],
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
                                    "id": "obj-24",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 241.0, 613.0, 20.0, 20.0 ],
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
                                    "id": "obj-27",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 107.0, 379.0, 20.0, 20.0 ],
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
                                    "bubble": 1,
                                    "bubbleside": 0,
                                    "hidden": 1,
                                    "id": "obj-23",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 539.0, 540.0, 161.0, 69.0 ],
                                    "text": "Is [yafr2] is a little more muddy in mids ? Or do you prefer this ?",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-22",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 327.0, 473.0, 116.0, 40.0 ],
                                    "text": "setup evieve to be like yafr2",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-55",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 84.0, 545.0, 105.0, 21.0 ],
                                    "text": "evieve / MSP"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "clear" ],
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
                                        "rect": [ 59.0, 119.0, 348.0, 413.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-46",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 58.0, 167.0, 58.0, 22.0 ],
                                                    "text": "pack 0 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-42",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 58.0, 134.0, 35.0, 22.0 ],
                                                    "text": "== 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-41",
                                                    "ignoreclick": 1,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 58.0, 201.0, 175.0, 22.0 ],
                                                    "text": "0 0 $1, 1 1 $1, 2 0 $2, 3 1 $2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-38",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "int", "int", "clear" ],
                                                    "patching_rect": [ 58.0, 100.0, 97.0, 22.0 ],
                                                    "text": "t i i clear"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-51",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 58.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-52",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 136.0, 287.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 0 ],
                                                    "source": [ "obj-38", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-46", 1 ],
                                                    "source": [ "obj-38", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-52", 0 ],
                                                    "source": [ "obj-38", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-52", 0 ],
                                                    "source": [ "obj-41", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-46", 0 ],
                                                    "source": [ "obj-42", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-41", 0 ],
                                                    "source": [ "obj-46", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-38", 0 ],
                                                    "source": [ "obj-51", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 35.0, 611.0, 55.0, 23.0 ],
                                    "text": "p switch"
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
                                    "patching_rect": [ 35.0, 532.0, 47.0, 47.0 ],
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
                                    "id": "obj-36",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 452.0, 150.0, 50.0, 21.0 ],
                                    "text": "Damp",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 329.0, 150.0, 50.0, 21.0 ],
                                    "text": "Diffuse",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 224.0, 150.0, 50.0, 21.0 ],
                                    "text": "Decay",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 130.0, 150.0, 50.0, 21.0 ],
                                    "text": "Size",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-29",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 611.0, 172.0, 161.0, 25.0 ],
                                    "text": "[yafr2] controls click",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-28",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 8.0, 158.0, 119.0, 54.0 ],
                                    "text": "[evi.plateverb~] controls are all smooth",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 504.0, 174.0, 87.0, 21.0 ],
                                    "text": "% 0..1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 534.0, 411.0, 206.0, 21.0 ],
                                    "text": "yafr2 controls are all 0..127",
                                    "textjustification": 1
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
                                    "patching_rect": [ 452.0, 173.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.498 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[3]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[3]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[3]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 698.0, 434.0, 42.0, 23.0 ],
                                    "text": "* 127."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 643.0, 434.0, 42.0, 23.0 ],
                                    "text": "* 127."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 589.0, 434.0, 42.0, 23.0 ],
                                    "text": "* 127."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 534.0, 434.0, 42.0, 23.0 ],
                                    "text": "* 127."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 130.0, 304.0, 94.0, 23.0 ],
                                    "text": "s toPlateComp"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 130.0, 238.0, 102.0, 21.0 ],
                                    "text": "% 0..1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 224.0, 238.0, 82.0, 21.0 ],
                                    "text": "% 0..1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 329.0, 238.0, 82.0, 21.0 ],
                                    "text": "% 0..1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 452.0, 263.0, 82.0, 21.0 ],
                                    "text": "Hz"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-37",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 329.0, 173.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.4 ],
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
                                    "format": 6,
                                    "id": "obj-35",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 224.0, 173.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.66 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[1]",
                                            "parameter_mmax": 1.0,
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
                                    "format": 6,
                                    "id": "obj-34",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 130.0, 173.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.3 ],
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
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 452.0, 239.0, 92.0, 23.0 ],
                                    "text": "prepend damp"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 224.0, 214.0, 95.0, 23.0 ],
                                    "text": "prepend decay"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 329.0, 214.0, 98.0, 23.0 ],
                                    "text": "prepend diffuse"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 130.0, 214.0, 83.0, 23.0 ],
                                    "text": "prepend size"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 21.0, 434.0, 92.0, 23.0 ],
                                    "text": "r toPlateComp"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "signal", "" ],
                                    "patching_rect": [ 248.0, 556.0, 149.0, 23.0 ],
                                    "text": "matrix~ 4 2 @ramp 100."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 522.0, 481.0, 195.0, 23.0 ],
                                    "text": "yafr2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "signal", "" ],
                                    "patching_rect": [ 130.0, 481.0, 195.0, 23.0 ],
                                    "text": "evi.plateverb~ @wet 0 @dry -90",
                                    "varname": "evi.plateverb~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 130.0, 434.0, 50.0, 23.0 ],
                                    "text": "*~ 0.55"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 34.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "drumLoop.aif",
                                                "filename": "drumLoop.aif",
                                                "filekind": "audiofile",
                                                "id": "u338009934",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "duduk.aif",
                                                "filename": "duduk.aif",
                                                "filekind": "audiofile",
                                                "id": "u190005635",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-5",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 130.0, 354.0, 242.0, 70.0 ],
                                    "quality": "basic",
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
                                    }
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
                                    "jsarguments": [ "evi.plateverb~", 660 ],
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
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 452.0, 214.0, 139.0, 23.0 ],
                                    "text": "expr $f1 * 11980. + 20."
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
                                    "text": "Compare the evi.plateverb~ and it's parent yafr2. They are almost identical, but the evieve made some slightly different decisions regards tone.",
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
                                    "patching_rect": [ 264.0, 600.0, 45.0, 45.0 ],
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
                                    "patching_rect": [ 311.0, 610.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 3 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 2 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 1 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 2 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 3 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 4 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "midpoints": [ 139.5, 270.5, 139.5, 270.5 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "midpoints": [ 338.5, 270.5, 139.5, 270.5 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "midpoints": [ 233.5, 270.5, 139.5, 270.5 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "midpoints": [ 461.5, 283.0, 139.5, 283.0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "midpoints": [ 461.5, 204.6328125, 652.5, 204.6328125 ],
                                    "order": 0,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "order": 1,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 1 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "order": 0,
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "order": 1,
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 0,
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "order": 1,
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "order": 0,
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "order": 1,
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "order": 0,
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "order": 1,
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 1 ],
                                    "source": [ "obj-6", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 229.0, 336.0, 70.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p compare",
                    "varname": "compare_tab"
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
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-30",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 135.0, 357.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "6",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
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
                                    "patching_rect": [ 512.0, 433.0, 20.0, 20.0 ],
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
                                    "patching_rect": [ 494.0, 283.0, 20.0, 20.0 ],
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
                                    "id": "obj-15",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 209.0, 134.0, 20.0, 20.0 ],
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
                                    "id": "obj-25",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 3.0, 481.0, 20.0, 20.0 ],
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
                                    "id": "obj-27",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 149.0, 619.0, 20.0, 20.0 ],
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
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 459.0, 570.0, 66.0, 23.0 ],
                                    "text": "s toPlatev"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "signal", "" ],
                                    "patching_rect": [ 10.0, 571.0, 90.0, 23.0 ],
                                    "text": "evi.plateverb~",
                                    "varname": "evi.plateverb~"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-90",
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
                                        "rect": [ 70.0, 106.0, 640.0, 480.0 ],
                                        "gridonopen": 2,
                                        "lefttoolbarpinned": 2,
                                        "toptoolbarpinned": 2,
                                        "righttoolbarpinned": 2,
                                        "bottomtoolbarpinned": 1,
                                        "toolbars_unpinned_last_save": 7,
                                        "subpatcher_template": "sk_notoolbars_arial12",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-87",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 55.0, 145.0, 92.0, 22.0 ],
                                                    "text": "prepend hidden"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-86",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 50.0, 100.0, 29.5, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-88",
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
                                                    "id": "obj-89",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 55.0, 227.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-87", 0 ],
                                                    "source": [ "obj-86", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-89", 0 ],
                                                    "source": [ "obj-87", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-86", 0 ],
                                                    "source": [ "obj-88", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 523.0, 462.0, 19.0, 23.0 ],
                                    "text": "p"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-73",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 459.0, 527.0, 82.0, 21.0 ],
                                    "text": "0..1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-72",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 459.0, 462.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 459.0, 503.0, 82.0, 23.0 ],
                                    "text": "prepend pan"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 663.0, 379.0, 82.0, 21.0 ],
                                    "text": "% ± 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 519.0, 379.0, 82.0, 21.0 ],
                                    "text": "Hz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 386.0, 379.0, 82.0, 21.0 ],
                                    "text": "% ± 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 238.0, 379.0, 82.0, 21.0 ],
                                    "text": "Hz"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-70",
                                    "maxclass": "flonum",
                                    "maximum": 4000.0,
                                    "minimum": 62.5,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 519.0, 314.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-68",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": -1.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 663.0, 314.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-67",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": -1.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 386.0, 314.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-66",
                                    "maxclass": "flonum",
                                    "maximum": 15000.0,
                                    "minimum": 500.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 238.0, 314.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 663.0, 355.0, 104.0, 23.0 ],
                                    "text": "prepend lowgain"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 386.0, 355.0, 109.0, 23.0 ],
                                    "text": "prepend highgain"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 519.0, 355.0, 136.0, 23.0 ],
                                    "text": "prepend lowfrequency"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 238.0, 355.0, 141.0, 23.0 ],
                                    "text": "prepend highfrequency"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 567.0, 527.0, 89.0, 21.0 ],
                                    "text": "0/1/2"
                                }
                            },
                            {
                                "box": {
                                    "disabled": [ 0, 0, 0 ],
                                    "id": "obj-54",
                                    "itemtype": 0,
                                    "maxclass": "radiogroup",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 567.0, 448.0, 18.0, 50.0 ],
                                    "size": 3,
                                    "value": 0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 567.0, 503.0, 96.0, 23.0 ],
                                    "text": "prepend stereo"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 587.0, 449.0, 69.0, 50.0 ],
                                    "text": "Mono\nStereo\n2-Channs"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 81.0, 536.0, 50.0, 23.0 ],
                                    "text": "*~ 0.55"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 10.0, 536.0, 50.0, 23.0 ],
                                    "text": "*~ 0.55"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 40.0, 230.0, 102.0, 21.0 ],
                                    "text": "% 0..1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 134.0, 230.0, 82.0, 21.0 ],
                                    "text": "% 0..1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 239.0, 230.0, 82.0, 21.0 ],
                                    "text": "% 0..1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 362.0, 230.0, 82.0, 21.0 ],
                                    "text": "Hz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 369.0, 527.0, 82.0, 21.0 ],
                                    "text": "dB"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 277.0, 527.0, 82.0, 21.0 ],
                                    "text": "dB"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 673.0, 527.0, 94.0, 21.0 ],
                                    "text": "0/1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-42",
                                    "maxclass": "flonum",
                                    "maximum": 0.0,
                                    "minimum": -90.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 369.0, 462.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-41",
                                    "maxclass": "flonum",
                                    "maximum": 0.0,
                                    "minimum": -90.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 277.0, 462.0, 67.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-38",
                                    "maxclass": "flonum",
                                    "maximum": 12000.0,
                                    "minimum": 20.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 362.0, 165.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-37",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 239.0, 165.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-35",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 134.0, 165.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-34",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 40.0, 165.0, 50.0, 23.0 ]
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
                                    "patching_rect": [ 673.0, 461.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 238.0, 407.0, 66.0, 23.0 ],
                                    "text": "s toPlatev"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 673.0, 503.0, 101.0, 23.0 ],
                                    "text": "prepend bypass"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 369.0, 503.0, 78.0, 23.0 ],
                                    "text": "prepend dry"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 277.0, 503.0, 80.0, 23.0 ],
                                    "text": "prepend wet"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 362.0, 206.0, 92.0, 23.0 ],
                                    "text": "prepend damp"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 134.0, 206.0, 95.0, 23.0 ],
                                    "text": "prepend decay"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 239.0, 206.0, 98.0, 23.0 ],
                                    "text": "prepend diffuse"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 40.0, 206.0, 83.0, 23.0 ],
                                    "text": "prepend size"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-91",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 536.0, 63.0, 23.0 ],
                                    "text": "r toPlatev"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-84",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 40.0, 257.0, 66.0, 23.0 ],
                                    "text": "s toPlatev"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-75",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 104.0, 379.0, 82.0, 23.0 ],
                                    "text": "clientwindow"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-69",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 14,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
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
                                        "rect": [ 100.0, 138.0, 975.0, 480.0 ],
                                        "gridonopen": 2,
                                        "lefttoolbarpinned": 2,
                                        "toptoolbarpinned": 2,
                                        "righttoolbarpinned": 2,
                                        "bottomtoolbarpinned": 1,
                                        "toolbars_unpinned_last_save": 7,
                                        "subpatcher_template": "sk_notoolbars_arial12",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 847.7857142857144, 286.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-21",
                                                    "index": 14,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 847.7857142857144, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-20",
                                                    "index": 13,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 790.4285714285718, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-19",
                                                    "index": 12,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 733.357142857143, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 790.5714285714287, 325.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 733.357142857143, 286.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 676.2857142857142, 325.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 619.0714285714286, 286.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 561.8571428571429, 325.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-4",
                                                    "index": 9,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 561.6428571428571, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-5",
                                                    "index": 10,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 619.0714285714286, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-6",
                                                    "index": 11,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 676.2857142857142, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-42",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 504.5, 286.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-43",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 447.2857142857143, 325.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-44",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 390.07142857142856, 286.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-45",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 332.8571428571429, 325.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-40",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 275.6428571428571, 286.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-37",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 218.42857142857144, 325.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-33",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 161.21428571428572, 286.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 104.0, 325.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 15,
                                                    "numoutlets": 15,
                                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                                                    "patching_rect": [ 104.0, 232.0, 820.0000000000001, 22.0 ],
                                                    "text": "route reverbSize decay diffusion damping wetGain dryGain inputPan stereo bypass smoothTime eqHighFreq eqHighGain eqLowFreq eqLowGain"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 212.0, 178.0, 22.0, 22.0 ],
                                                    "text": "t b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-24",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 212.0, 139.0, 69.0, 22.0 ],
                                                    "text": "route dump"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-22",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 104.0, 139.0, 71.0, 22.0 ],
                                                    "text": "fromsymbol"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 5,
                                                    "outlettype": [ "", "", "", "", "" ],
                                                    "patching_rect": [ 50.0, 100.0, 235.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "legacyoutputorder": 1
                                                    },
                                                    "text": "regexp eviPlateverb::(.+)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-54",
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
                                                    "id": "obj-55",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 104.0, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-56",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 161.21428571428572, 409.0, 30.0, 30.0 ]
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
                                                    "patching_rect": [ 218.42857142857144, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-58",
                                                    "index": 4,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 275.6428571428571, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-59",
                                                    "index": 5,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 332.6428571428571, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-60",
                                                    "index": 6,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 390.07142857142856, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-61",
                                                    "index": 7,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 447.2857142857143, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-62",
                                                    "index": 8,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 504.50000000000006, 409.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "source": [ "obj-17", 0 ]
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
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-22", 0 ]
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
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-27", 10 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "source": [ "obj-27", 12 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "source": [ "obj-27", 11 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-27", 9 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-27", 8 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-33", 0 ],
                                                    "source": [ "obj-27", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-37", 0 ],
                                                    "source": [ "obj-27", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 0 ],
                                                    "source": [ "obj-27", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 0 ],
                                                    "source": [ "obj-27", 7 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-43", 0 ],
                                                    "source": [ "obj-27", 6 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "source": [ "obj-27", 5 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-45", 0 ],
                                                    "source": [ "obj-27", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-27", 13 ]
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
                                                    "destination": [ "obj-55", 0 ],
                                                    "source": [ "obj-32", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-56", 0 ],
                                                    "source": [ "obj-33", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-57", 0 ],
                                                    "source": [ "obj-37", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-58", 0 ],
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-62", 0 ],
                                                    "source": [ "obj-42", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "source": [ "obj-43", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "source": [ "obj-44", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-59", 0 ],
                                                    "source": [ "obj-45", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "source": [ "obj-9", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "source": [ "obj-9", 3 ]
                                                }
                                            }
                                        ],
                                        "styles": [
                                            {
                                                "name": "AudioStatus_Menu",
                                                "default": {
                                                    "bgfillcolor": {
                                                        "angle": 270.0,
                                                        "autogradient": 0,
                                                        "color": [ 0.294118, 0.313726, 0.337255, 1 ],
                                                        "color1": [ 0.454902, 0.462745, 0.482353, 0.0 ],
                                                        "color2": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                                        "proportion": 0.39,
                                                        "type": "color"
                                                    }
                                                },
                                                "parentstyle": "",
                                                "multi": 0
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 40.0, 94.0, 642.0, 23.0 ],
                                    "text": "p readPattr"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 61.0, 407.0, 129.0, 23.0 ],
                                    "text": "prepend pattrstorage",
                                    "varname": "u555000915"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 61.0, 379.0, 41.0, 23.0 ],
                                    "text": "dump"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 34.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "drumLoop.aif",
                                                "filename": "drumLoop.aif",
                                                "filekind": "audiofile",
                                                "id": "u338009934",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "duduk.aif",
                                                "filename": "duduk.aif",
                                                "filekind": "audiofile",
                                                "id": "u190005635",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-5",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 456.0, 242.0, 70.0 ],
                                    "quality": "basic",
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
                                    }
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
                                    "jsarguments": [ "evi.plateverb~", 660 ],
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
                                    "text": "Full set of controls for Reverb, EQing and Mixing, all accessable via pattr.",
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
                                    "patching_rect": [ 14.0, 606.0, 45.0, 45.0 ],
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
                                    "patching_rect": [ 61.0, 616.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontface": 1,
                                    "id": "obj-56",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 260.0, 432.0, 153.0, 21.0 ],
                                    "text": "MIX"
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 2,
                                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "grad1": [ 0.290196, 0.309804, 0.301961, 0.0 ],
                                    "grad2": [ 0.290196, 0.309804, 0.301961, 0.0 ],
                                    "id": "obj-48",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 260.0, 432.0, 524.0, 121.0 ],
                                    "proportion": 0.39,
                                    "rounded": 2
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontface": 1,
                                    "id": "obj-55",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 133.0, 153.0, 21.0 ],
                                    "text": "REVERB"
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 2,
                                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "grad1": [ 0.290196, 0.309804, 0.301961, 0.0 ],
                                    "grad2": [ 0.290196, 0.309804, 0.301961, 0.0 ],
                                    "id": "obj-47",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 133.0, 477.0, 121.0 ],
                                    "proportion": 0.39,
                                    "rounded": 2
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontface": 1,
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 223.0, 282.0, 153.0, 21.0 ],
                                    "text": "EQ"
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 2,
                                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "grad1": [ 0.290196, 0.309804, 0.301961, 0.0 ],
                                    "grad2": [ 0.290196, 0.309804, 0.301961, 0.0 ],
                                    "id": "obj-22",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 223.0, 282.0, 561.0, 121.0 ],
                                    "proportion": 0.39,
                                    "rounded": 2
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 682.5, 548.0, 468.5, 548.0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 286.5, 548.0, 468.5, 548.0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-84", 0 ],
                                    "midpoints": [ 49.5, 248.25, 49.5, 248.25 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-84", 0 ],
                                    "midpoints": [ 248.5, 248.25, 49.5, 248.25 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-84", 0 ],
                                    "midpoints": [ 143.5, 248.25, 49.5, 248.25 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-84", 0 ],
                                    "midpoints": [ 371.5, 248.25, 49.5, 248.25 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 0.0 ],
                                    "destination": [ "obj-69", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 90.5, 604.0, 6.15625, 604.0, 6.15625, 84.0, 49.5, 84.0 ],
                                    "source": [ "obj-3", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 1 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-38", 0 ]
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
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "order": 0,
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-90", 0 ],
                                    "hidden": 1,
                                    "order": 1,
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 576.5, 548.0, 468.5, 548.0 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "midpoints": [ 247.5, 397.25, 247.5, 397.25 ],
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 378.5, 548.0, 468.5, 548.0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "midpoints": [ 528.5, 397.25, 247.5, 397.25 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "midpoints": [ 395.5, 397.25, 247.5, 397.25 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "midpoints": [ 672.5, 397.25, 247.5, 397.25 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 468.5, 548.0, 468.5, 548.0 ],
                                    "source": [ "obj-65", 0 ]
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
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 0 ],
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                                    "destination": [ "obj-32", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                                    "destination": [ "obj-34", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                                    "destination": [ "obj-35", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                                    "destination": [ "obj-37", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                                    "destination": [ "obj-38", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                                    "destination": [ "obj-41", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                                    "destination": [ "obj-42", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                                    "destination": [ "obj-54", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                                    "destination": [ "obj-66", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                                    "destination": [ "obj-67", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 11 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                                    "destination": [ "obj-68", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 13 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                                    "destination": [ "obj-70", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 12 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                                    "destination": [ "obj-72", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-75", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-90", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-91", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 147.0, 336.0, 65.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p controls",
                    "varname": "controls_tab"
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
                    "text": "v8 evi.helpstarter.js evi.plateverb~ 2 0 1 1 0 reverb",
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
                                    "patching_rect": [ 341.0, 449.0, 20.0, 20.0 ],
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
                                    "patching_rect": [ 79.0, 326.0, 20.0, 20.0 ],
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
                                    "id": "obj-12",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 79.0, 550.0, 20.0, 20.0 ],
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
                                    "bubblepoint": 0.25,
                                    "bubbleside": 2,
                                    "id": "obj-74",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 650.0, 419.0, 102.0, 55.0 ],
                                    "text": "smooth & cpu control",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.25,
                                    "bubbleside": 2,
                                    "id": "obj-71",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 561.0, 422.0, 50.0, 40.0 ],
                                    "text": "clicks",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-90",
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
                                        "rect": [ 70.0, 106.0, 640.0, 480.0 ],
                                        "gridonopen": 2,
                                        "lefttoolbarpinned": 2,
                                        "toptoolbarpinned": 2,
                                        "righttoolbarpinned": 2,
                                        "bottomtoolbarpinned": 1,
                                        "toolbars_unpinned_last_save": 7,
                                        "subpatcher_template": "sk_notoolbars_arial12",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-87",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 145.0, 92.0, 22.0 ],
                                                    "text": "prepend hidden"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-86",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 50.0, 100.0, 29.5, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-88",
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
                                                    "id": "obj-89",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 50.0, 227.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-87", 0 ],
                                                    "source": [ "obj-86", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-89", 0 ],
                                                    "source": [ "obj-87", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-86", 0 ],
                                                    "source": [ "obj-88", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 517.0, 477.0, 19.0, 23.0 ],
                                    "text": "p"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-73",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 453.0, 542.0, 82.0, 21.0 ],
                                    "text": "0..1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-72",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 453.0, 477.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 453.0, 518.0, 82.0, 23.0 ],
                                    "text": "prepend pan"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 561.0, 542.0, 89.0, 21.0 ],
                                    "text": "0/1/2"
                                }
                            },
                            {
                                "box": {
                                    "disabled": [ 0, 0, 0 ],
                                    "id": "obj-54",
                                    "itemtype": 0,
                                    "maxclass": "radiogroup",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 561.0, 463.0, 18.0, 50.0 ],
                                    "size": 3,
                                    "value": 0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 561.0, 518.0, 96.0, 23.0 ],
                                    "text": "prepend stereo"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 581.0, 465.0, 69.0, 50.0 ],
                                    "text": "Mono\nStereo\n2-Channs"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 167.0, 390.0, 50.0, 23.0 ],
                                    "text": "*~ 0.55"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 96.0, 390.0, 50.0, 23.0 ],
                                    "text": "*~ 0.55"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 363.0, 542.0, 82.0, 21.0 ],
                                    "text": "dB"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 271.0, 542.0, 82.0, 21.0 ],
                                    "text": "dB"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 667.0, 542.0, 94.0, 21.0 ],
                                    "text": "0/1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-42",
                                    "maxclass": "flonum",
                                    "maximum": 0.0,
                                    "minimum": -90.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 363.0, 477.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-41",
                                    "maxclass": "flonum",
                                    "maximum": 0.0,
                                    "minimum": -90.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 271.0, 477.0, 67.0, 23.0 ]
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
                                    "patching_rect": [ 667.0, 476.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 667.0, 518.0, 101.0, 23.0 ],
                                    "text": "prepend bypass"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 363.0, 518.0, 78.0, 23.0 ],
                                    "text": "prepend dry"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 271.0, 518.0, 80.0, 23.0 ],
                                    "text": "prepend wet"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 453.0, 601.0, 71.0, 23.0 ],
                                    "text": "s toPlate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-91",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 10.0, 497.0, 69.0, 23.0 ],
                                    "text": "r toPlate"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-69",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 14,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
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
                                        "rect": [ 100.0, 138.0, 975.0, 480.0 ],
                                        "gridonopen": 2,
                                        "lefttoolbarpinned": 2,
                                        "toptoolbarpinned": 2,
                                        "righttoolbarpinned": 2,
                                        "bottomtoolbarpinned": 1,
                                        "toolbars_unpinned_last_save": 7,
                                        "subpatcher_template": "sk_notoolbars_arial12",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 847.7857142857144, 286.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-21",
                                                    "index": 14,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 847.7857142857144, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-20",
                                                    "index": 13,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 790.4285714285718, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-19",
                                                    "index": 12,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 733.357142857143, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 790.5714285714287, 325.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 733.357142857143, 286.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 676.2857142857142, 325.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 619.0714285714286, 286.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 561.8571428571429, 325.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-4",
                                                    "index": 9,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 561.6428571428571, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-5",
                                                    "index": 10,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 619.0714285714286, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-6",
                                                    "index": 11,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 676.2857142857142, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-42",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 504.5, 286.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-43",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 447.2857142857143, 325.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-44",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 390.07142857142856, 286.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-45",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 332.8571428571429, 325.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-40",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 275.6428571428571, 286.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-37",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 218.42857142857144, 325.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-33",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 161.21428571428572, 286.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 104.0, 325.0, 72.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 15,
                                                    "numoutlets": 15,
                                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                                                    "patching_rect": [ 104.0, 232.0, 820.0000000000001, 22.0 ],
                                                    "text": "route reverbSize decay diffusion damping wetGain dryGain inputPan stereo bypass smoothTime eqHighFreq eqHighGain eqLowFreq eqLowGain"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 212.0, 178.0, 22.0, 22.0 ],
                                                    "text": "t b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-24",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 212.0, 139.0, 69.0, 22.0 ],
                                                    "text": "route dump"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-22",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 104.0, 139.0, 71.0, 22.0 ],
                                                    "text": "fromsymbol"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 5,
                                                    "outlettype": [ "", "", "", "", "" ],
                                                    "patching_rect": [ 50.0, 100.0, 235.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "legacyoutputorder": 1
                                                    },
                                                    "text": "regexp eviPlateverb::(.+)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-54",
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
                                                    "id": "obj-55",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 104.0, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-56",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 161.21428571428572, 409.0, 30.0, 30.0 ]
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
                                                    "patching_rect": [ 218.42857142857144, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-58",
                                                    "index": 4,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 275.6428571428571, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-59",
                                                    "index": 5,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 332.6428571428571, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-60",
                                                    "index": 6,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 390.07142857142856, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-61",
                                                    "index": 7,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 447.2857142857143, 409.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-62",
                                                    "index": 8,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 504.50000000000006, 409.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "source": [ "obj-17", 0 ]
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
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-22", 0 ]
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
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-27", 10 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "source": [ "obj-27", 12 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "source": [ "obj-27", 11 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-27", 9 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-27", 8 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-33", 0 ],
                                                    "source": [ "obj-27", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-37", 0 ],
                                                    "source": [ "obj-27", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 0 ],
                                                    "source": [ "obj-27", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 0 ],
                                                    "source": [ "obj-27", 7 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-43", 0 ],
                                                    "source": [ "obj-27", 6 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "source": [ "obj-27", 5 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-45", 0 ],
                                                    "source": [ "obj-27", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-27", 13 ]
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
                                                    "destination": [ "obj-55", 0 ],
                                                    "source": [ "obj-32", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-56", 0 ],
                                                    "source": [ "obj-33", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-57", 0 ],
                                                    "source": [ "obj-37", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-58", 0 ],
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-62", 0 ],
                                                    "source": [ "obj-42", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "source": [ "obj-43", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "source": [ "obj-44", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-59", 0 ],
                                                    "source": [ "obj-45", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "source": [ "obj-9", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "source": [ "obj-9", 3 ]
                                                }
                                            }
                                        ],
                                        "styles": [
                                            {
                                                "name": "AudioStatus_Menu",
                                                "default": {
                                                    "bgfillcolor": {
                                                        "angle": 270.0,
                                                        "autogradient": 0,
                                                        "color": [ 0.294118, 0.313726, 0.337255, 1 ],
                                                        "color1": [ 0.454902, 0.462745, 0.482353, 0.0 ],
                                                        "color2": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                                        "proportion": 0.39,
                                                        "type": "color"
                                                    }
                                                },
                                                "parentstyle": "",
                                                "multi": 0
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 390.0, 390.0, 156.0, 23.0 ],
                                    "text": "p readPattr"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 35.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "drumLoop.aif",
                                                "filename": "drumLoop.aif",
                                                "filekind": "audiofile",
                                                "id": "u338009934",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "duduk.aif",
                                                "filename": "duduk.aif",
                                                "filekind": "audiofile",
                                                "id": "u190005635",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-3",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 96.0, 300.0, 303.0, 72.0 ],
                                    "quality": "basic",
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
                                    }
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
                                    "jsarguments": [ "evi.plateverb~", "pants:/Users/stkr/Dev/evieve/help/abstractions/evi.plateverb~.maxhelp" ],
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
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "signal", "" ],
                                    "patching_rect": [ 96.0, 497.0, 90.0, 23.0 ],
                                    "text": "evi.plateverb~",
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
                                    "patching_rect": [ 101.0, 537.0, 45.0, 45.0 ],
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
                                    "patching_rect": [ 148.0, 547.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontface": 1,
                                    "id": "obj-56",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 254.0, 448.0, 153.0, 21.0 ],
                                    "text": "MIX"
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 2,
                                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "grad1": [ 0.290196, 0.309804, 0.301961, 0.0 ],
                                    "grad2": [ 0.290196, 0.309804, 0.301961, 0.0 ],
                                    "id": "obj-48",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 254.0, 448.0, 524.0, 121.0 ],
                                    "proportion": 0.39,
                                    "rounded": 2
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 676.5, 569.75, 462.5, 569.75 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 280.5, 569.75, 462.5, 569.75 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-32", 0 ]
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
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 0.0 ],
                                    "destination": [ "obj-69", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 176.5, 530.0, 5.390625, 530.0, 5.390625, 293.64453125, 399.5, 293.64453125 ],
                                    "source": [ "obj-5", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 1 ],
                                    "source": [ "obj-5", 1 ]
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
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "order": 0,
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-90", 0 ],
                                    "hidden": 1,
                                    "order": 1,
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 570.5, 569.75, 462.5, 569.75 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 372.5, 569.75, 462.5, 569.75 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 462.5, 569.75, 462.5, 569.75 ],
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                                    "destination": [ "obj-32", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                                    "destination": [ "obj-41", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                                    "destination": [ "obj-42", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                                    "destination": [ "obj-54", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                                    "destination": [ "obj-72", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-90", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-91", 0 ]
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
                    "jsarguments": [ "evi.plateverb~" ],
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 10.0, 307.8639831542969, 57.599853515625 ],
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
                                    "id": "obj-11",
                                    "maxclass": "meter~",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "orientation": 2,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 92.0, 388.0, 16.0, 89.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 603.0, 184.0, 82.0, 21.0 ],
                                    "text": "dB"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 511.0, 184.0, 82.0, 21.0 ],
                                    "text": "dB"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-42",
                                    "maxclass": "flonum",
                                    "maximum": 0.0,
                                    "minimum": -90.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 603.0, 207.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ -15.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[8]",
                                            "parameter_mmax": 0.0,
                                            "parameter_mmin": -90.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[8]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[1]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-41",
                                    "maxclass": "flonum",
                                    "maximum": 0.0,
                                    "minimum": -90.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 511.0, 207.0, 67.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ -3.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[7]",
                                            "parameter_mmax": 0.0,
                                            "parameter_mmin": -90.0,
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
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 603.0, 251.0, 78.0, 23.0 ],
                                    "text": "prepend dry"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 511.0, 251.0, 80.0, 23.0 ],
                                    "text": "prepend wet"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 29.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "drumLoop.aif",
                                                "filename": "drumLoop.aif",
                                                "filekind": "audiofile",
                                                "id": "u916010013",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "duduk.aif",
                                                "filename": "duduk.aif",
                                                "filekind": "audiofile",
                                                "id": "u288010751",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "sho0630.aif",
                                                "filename": "sho0630.aif",
                                                "filekind": "audiofile",
                                                "id": "u269010823",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-1",
                                    "maxclass": "mc.playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "multichannelsignal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 140.0, 184.0, 292.0, 90.0 ],
                                    "quality": "basic",
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
                                    }
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
                                    "jsarguments": [ "mcs.evi.plateverb~", 660 ],
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
                                    "text": "The mcs version is a stereo utility in case you are in an mc environment when wanting to use the reverb",
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
                                    "patching_rect": [ 140.0, 336.0, 117.0, 23.0 ],
                                    "text": "mcs.evi.plateverb~",
                                    "varname": "evieveObjectMcs"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "local": 1,
                                    "maxclass": "mc.ezdac~",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 140.0, 537.0, 45.0, 45.0 ],
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
                                    "patching_rect": [ 187.0, 547.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "source": [ "obj-16", 0 ]
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
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
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
                                    "destination": [ "obj-5", 1 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 358.0, 336.0, 43.0, 23.0 ],
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
                        "rect": [ 0.0, 26.0, 802.0, 669.0 ],
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "integercoordinates": 1,
                        "boxes": [
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
                                    "patching_rect": [ 30.0, 488.0, 20.0, 20.0 ],
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
                                    "id": "obj-17",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 530.0, 189.0, 20.0, 20.0 ],
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
                                    "id": "obj-19",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 156.0, 371.0, 20.0, 20.0 ],
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
                                    "id": "obj-20",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 156.0, 610.0, 20.0, 20.0 ],
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
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 234.0, 426.0, 50.0, 23.0 ],
                                    "text": "*~ 0.55"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 178.0, 426.0, 50.0, 23.0 ],
                                    "text": "*~ 0.55"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 34.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "drumLoop.aif",
                                                "filename": "drumLoop.aif",
                                                "filekind": "audiofile",
                                                "id": "u338009934",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "duduk.aif",
                                                "filename": "duduk.aif",
                                                "filekind": "audiofile",
                                                "id": "u190005635",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-16",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 178.0, 346.0, 242.0, 70.0 ],
                                    "quality": "basic",
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
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 576.0, 262.0, 149.0, 21.0 ],
                                    "text": "Low",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 340.0, 265.0, 153.0, 21.0 ],
                                    "text": "High",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 675.0, 214.0, 82.0, 21.0 ],
                                    "text": "% ± 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 576.0, 214.0, 82.0, 21.0 ],
                                    "text": "Hz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 443.0, 214.0, 82.0, 21.0 ],
                                    "text": "% ± 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 340.0, 214.0, 82.0, 21.0 ],
                                    "text": "Hz"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-70",
                                    "maxclass": "flonum",
                                    "maximum": 4000.0,
                                    "minimum": 62.5,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 576.0, 237.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 500.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[6]",
                                            "parameter_mmax": 4000.0,
                                            "parameter_mmin": 62.5,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[6]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[2]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-68",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": -1.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 675.0, 237.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-67",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": -1.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 443.0, 237.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-66",
                                    "maxclass": "flonum",
                                    "maximum": 15000.0,
                                    "minimum": 500.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 340.0, 237.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 2000.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[5]",
                                            "parameter_mmax": 15000.0,
                                            "parameter_mmin": 500.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[5]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 178.0, 214.0, 50.0, 21.0 ],
                                    "text": "Hz"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-38",
                                    "maxclass": "flonum",
                                    "maximum": 12000.0,
                                    "minimum": 20.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 178.0, 237.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 6593.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[4]",
                                            "parameter_mmax": 12000.0,
                                            "parameter_mmin": 20.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number[4]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 606.0, 426.0, 19.0, 23.0 ],
                                    "text": "t l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-71",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "" ],
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
                                        "rect": [ 252.0, 92.0, 450.0, 552.0 ],
                                        "gridonopen": 2,
                                        "lefttoolbarpinned": 2,
                                        "toptoolbarpinned": 2,
                                        "righttoolbarpinned": 2,
                                        "bottomtoolbarpinned": 2,
                                        "toolbars_unpinned_last_save": 15,
                                        "boxanimatetime": 0,
                                        "subpatcher_template": "PeteSubDefault10",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-3",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 183.0, 461.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "int", "int" ],
                                                    "patching_rect": [ 83.0, 86.0, 58.0, 22.0 ],
                                                    "text": "change 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-64",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 153.0, 381.0, 117.0, 22.0 ],
                                                    "text": "prepend delayTime2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-63",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 183.0, 327.0, 117.0, 22.0 ],
                                                    "text": "prepend delayTime1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-49",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 153.0, 243.0, 186.0, 22.0 ],
                                                    "text": "expr int(($f1 * 0.25995) + 0.5) + 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-28",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 183.0, 189.0, 186.0, 22.0 ],
                                                    "text": "expr int(($f1 * 0.26636) + 0.5) + 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "float", "float" ],
                                                    "patching_rect": [ 83.0, 135.0, 89.0714285714289, 22.0 ],
                                                    "text": "t f f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-69",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 83.0, 28.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-70",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 83.0, 461.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 183.0, 136.0, 156.0, 20.0 ],
                                                    "text": "seconds to samples"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "linecount": 4,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 183.0, 48.0, 156.0, 60.0 ],
                                                    "text": "this is hopefully temporary and in order to get round a gen~ bug regards initialising 'Delay()' params"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-27", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-49", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-27", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-70", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-63", 0 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-64", 0 ],
                                                    "source": [ "obj-49", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-63", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-64", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-69", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "transport", "audiosolo", "audiomute" ],
                                        "toolbarexclusions": [ "audiopowerctrl", "browsebeap", "browsevizzie", "lessonbrowser" ]
                                    },
                                    "patching_rect": [ 607.0, 346.0, 110.0, 23.0 ],
                                    "text": "p delay_times"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
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
                                        "rect": [ 100.0, 138.0, 344.0, 329.0 ],
                                        "gridonopen": 2,
                                        "lefttoolbarpinned": 2,
                                        "toptoolbarpinned": 2,
                                        "righttoolbarpinned": 2,
                                        "bottomtoolbarpinned": 1,
                                        "toolbars_unpinned_last_save": 7,
                                        "subpatcher_template": "PeteSubDefault10",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 96.0, 39.0, 49.0, 20.0 ],
                                                    "text": "SR"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 244.0, 39.0, 49.0, 20.0 ],
                                                    "text": "Hz"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-18",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 212.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 150.0, 86.0, 22.0 ],
                                                    "text": "prepend damp"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-11",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 64.0, 234.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-2",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 64.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
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
                                                        "rect": [ 59.0, 104.0, 404.0, 344.0 ],
                                                        "gridonopen": 2,
                                                        "lefttoolbarpinned": 2,
                                                        "toptoolbarpinned": 2,
                                                        "righttoolbarpinned": 2,
                                                        "bottomtoolbarpinned": 1,
                                                        "toolbars_unpinned_last_save": 7,
                                                        "integercoordinates": 1,
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "fontface": 0,
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-6",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 155.0, 33.5, 205.0, 22.0 ],
                                                                    "text": "in 1 host samplerate @default 48000"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontface": 0,
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-5",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 49.0, 255.5, 69.0, 22.0 ],
                                                                    "text": "out 1 a 0..1"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontface": 0,
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-32",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 49.0, 33.5, 46.0, 22.0 ],
                                                                    "text": "in 2 Hz"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontface": 0,
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-29",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 49.0, 87.5, 239.0, 22.0 ],
                                                                    "text": "expr maximum((minimum(in1\\, (in2 / pi)))\\, 1)"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontface": 0,
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-26",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 49.0, 133.5, 125.0, 22.0 ],
                                                                    "text": "expr (twopi * in1) / in2"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontface": 0,
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-24",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 49.0, 179.5, 156.0, 22.0 ],
                                                                    "text": "expr in1 - (0.25 * (in1 * in1))"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontface": 0,
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-30",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 49.0, 111.5, 28.0, 20.0 ],
                                                                    "text": "fcm"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontface": 0,
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-28",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 49.0, 157.5, 19.0, 20.0 ],
                                                                    "text": "ß"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontface": 0,
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-4",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 49.0, 203.5, 58.0, 20.0 ],
                                                                    "text": "a warped"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontface": 0,
                                                                    "fontname": "Arial",
                                                                    "fontsize": 12.0,
                                                                    "id": "obj-3",
                                                                    "maxclass": "comment",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 49.0, 65.5, 114.0, 20.0 ],
                                                                    "text": "frequency in Hz"
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-5", 0 ],
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
                                                                    "destination": [ "obj-26", 0 ],
                                                                    "source": [ "obj-29", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-29", 0 ],
                                                                    "source": [ "obj-32", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-26", 1 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-6", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-29", 1 ],
                                                                    "midpoints": [ 164.5, 71.0, 278.5, 71.0 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-6", 0 ]
                                                                }
                                                            }
                                                        ],
                                                        "editing_bgcolor": [ 0.9, 0.9, 0.9, 1.0 ]
                                                    },
                                                    "patching_rect": [ 64.0, 96.0, 167.0, 22.0 ],
                                                    "text": "gen @title dampCoeff @hot 1"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 1 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            }
                                        ],
                                        "styles": [
                                            {
                                                "name": "AudioStatus_Menu",
                                                "default": {
                                                    "bgfillcolor": {
                                                        "angle": 270.0,
                                                        "autogradient": 0,
                                                        "color": [ 0.294118, 0.313726, 0.337255, 1 ],
                                                        "color1": [ 0.454902, 0.462745, 0.482353, 0.0 ],
                                                        "color2": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                                        "proportion": 0.39,
                                                        "type": "color"
                                                    }
                                                },
                                                "parentstyle": "",
                                                "multi": 0
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 490.0, 386.0, 106.0, 23.0 ],
                                    "text": "p damp_for_Gen"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
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
                                        "rect": [ 100.0, 138.0, 749.0, 511.0 ],
                                        "gridonopen": 2,
                                        "lefttoolbarpinned": 2,
                                        "toptoolbarpinned": 2,
                                        "righttoolbarpinned": 2,
                                        "bottomtoolbarpinned": 1,
                                        "toolbars_unpinned_last_save": 7,
                                        "subpatcher_template": "PeteSubDefault10",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-22",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 38.0, 87.0, 113.0, 22.0 ],
                                                    "text": "prepend HOST_SR"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 38.0, 126.0, 45.0, 22.0 ],
                                                    "text": "t b l"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-21",
                                                    "index": 5,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 582.5, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-20",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 462.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-19",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 291.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-18",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 166.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 142.0, 318.0, 107.0, 22.0 ],
                                                    "text": "prepend lowshelfK"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 357.0, 109.0, 22.0 ],
                                                    "text": "prepend lowshelfG"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 298.0, 318.0, 112.0, 22.0 ],
                                                    "text": "prepend highshelfK"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 220.0, 357.0, 113.0, 22.0 ],
                                                    "text": "prepend highshelfG"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-11",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 64.0, 441.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 608.0, 180.0, 104.0, 22.0 ],
                                                    "text": "prepend damplow"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 317.0, 180.0, 109.0, 22.0 ],
                                                    "text": "prepend damphigh"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 488.0, 180.0, 103.0, 22.0 ],
                                                    "text": "prepend cutofflow"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 192.0, 180.0, 108.0, 22.0 ],
                                                    "text": "prepend cutoffhigh"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "float" ],
                                                    "patching_rect": [ 583.0, 126.0, 45.0, 22.0 ],
                                                    "text": "t b f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "float" ],
                                                    "patching_rect": [ 462.0, 126.0, 45.0, 22.0 ],
                                                    "text": "t b f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "float" ],
                                                    "patching_rect": [ 291.0, 126.0, 45.0, 22.0 ],
                                                    "text": "t b f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "float" ],
                                                    "patching_rect": [ 166.0, 126.0, 45.0, 22.0 ],
                                                    "text": "t b f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-2",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 38.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "float", "float", "float", "float" ],
                                                    "patching_rect": [ 64.0, 264.0, 253.0, 22.0 ],
                                                    "text": "gen evi_damp_coeffs @mode 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 319.0, 265.0, 184.0, 20.0 ],
                                                    "text": "evi_damp_coeffs.gendsp"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-1", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "source": [ "obj-1", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-1", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "midpoints": [ 617.5, 217.5, 73.5, 217.5 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "midpoints": [ 229.5, 409.5, 73.5, 409.5 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-13", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "midpoints": [ 47.5, 219.5, 73.5, 219.5 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "midpoints": [ 307.5, 409.0, 73.5, 409.0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "midpoints": [ 151.5, 409.0, 73.5, 409.0 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "midpoints": [ 73.5, 409.5, 73.5, 409.5 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "midpoints": [ 175.5, 163.5, 73.5, 163.5 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-3", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "midpoints": [ 300.5, 163.5, 73.5, 163.5 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-4", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "midpoints": [ 471.5, 163.5, 73.5, 163.5 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-5", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "midpoints": [ 592.5, 163.5, 73.5, 163.5 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-6", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "midpoints": [ 201.5, 217.5, 73.5, 217.5 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "midpoints": [ 497.5, 217.5, 73.5, 217.5 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "midpoints": [ 326.5, 217.5, 73.5, 217.5 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 606.0, 386.0, 88.0, 23.0 ],
                                    "text": "p eq_for_Gen"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "int" ],
                                    "patching_rect": [ 554.0, 306.0, 72.0, 23.0 ],
                                    "text": "adstatus sr"
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
                                    "jsarguments": [ "evi.plateverb~", 660 ],
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
                                    "text": "The evi.plateverb~ algorithm is also available inside the gen~ environment",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontface": 1,
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 178.0, 188.0, 50.0, 21.0 ],
                                    "text": "Damp"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-1",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 94.0, 660.0, 53.0 ],
                                    "text": "Unlike some other evieve reverbs, evi.plateverb~ does not require external reverb coefficients calculations, so can be used inside gen~ and GenExpr at any local samplerate. However, if you want the EQ functionality you must do those calculations externally.",
                                    "varname": "digest_comment[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
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
                                        "rect": [ 59.0, 119.0, 600.0, 450.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 403.0, 123.0, 22.0 ],
                                                    "text": "setparam delayTime2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 325.0, 123.0, 22.0 ],
                                                    "text": "setparam delayTime1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-64",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 364.0, 107.0, 22.0 ],
                                                    "text": "param delayTime2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-63",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 286.0, 107.0, 22.0 ],
                                                    "text": "param delayTime1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 433.0, 315.0, 97.0, 22.0 ],
                                                    "text": "param lowshelfK"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 433.0, 231.0, 99.0, 22.0 ],
                                                    "text": "param lowshelfG"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 433.0, 159.0, 102.0, 22.0 ],
                                                    "text": "param highshelfK"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 433.0, 77.0, 103.0, 22.0 ],
                                                    "text": "param highshelfG"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 433.0, 349.0, 113.0, 22.0 ],
                                                    "text": "setparam lowshelfK"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 433.0, 273.0, 115.0, 22.0 ],
                                                    "text": "setparam lowshelfG"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 433.0, 196.0, 118.0, 22.0 ],
                                                    "text": "setparam highshelfK"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 433.0, 118.0, 119.0, 22.0 ],
                                                    "text": "setparam highshelfG"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 112.0, 76.0, 22.0 ],
                                                    "text": "param damp"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 149.0, 92.0, 22.0 ],
                                                    "text": "setparam damp"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "linecount": 4,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 21.0, 19.0, 369.0, 60.0 ],
                                                    "text": "Unlike some other evieve reverbs, evi.plateverb~ does not require external reverb coefficients calculations, so can be used inside gen~ and GenExpr at any local samplerate. However, if you want the EQ functionality you must do those calculations externally."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 317.0, 403.0, 35.0, 22.0 ],
                                                    "text": "out 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 199.0, 349.0, 137.0, 22.0 ],
                                                    "text": "evi_plateverb @size 0.7"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 199.0, 112.0, 28.0, 22.0 ],
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
                                                    "patching_rect": [ 317.0, 112.0, 28.0, 22.0 ],
                                                    "text": "in 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 199.0, 403.0, 35.0, 22.0 ],
                                                    "text": "out 1"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
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
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-15", 0 ]
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
                                                    "destination": [ "obj-5", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 1 ],
                                                    "source": [ "obj-2", 0 ]
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
                                                    "destination": [ "obj-4", 0 ],
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
                                                    "destination": [ "obj-17", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-63", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-64", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 178.0, 486.0, 276.0, 23.0 ],
                                    "text": "gen~ @title using_evi.plateverb~_inside_gen~",
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
                                    "patching_rect": [ 52.0, 478.0, 124.0, 40.0 ],
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
                                    "patching_rect": [ 178.0, 597.0, 45.0, 45.0 ],
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
                                    "patching_rect": [ 225.0, 607.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontface": 1,
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 323.0, 188.0, 153.0, 21.0 ],
                                    "text": "EQ"
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "border": 2,
                                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "grad1": [ 0.290196, 0.309804, 0.301961, 0.0 ],
                                    "grad2": [ 0.290196, 0.309804, 0.301961, 0.0 ],
                                    "id": "obj-22",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 323.0, 188.0, 434.0, 98.0 ],
                                    "proportion": 0.39,
                                    "rounded": 2
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 615.5, 475.234375, 187.5, 475.234375 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "source": [ "obj-16", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "source": [ "obj-18", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 499.5, 417.5, 615.5, 417.5 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 1 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 1 ],
                                    "midpoints": [ 444.5, 553.0, 213.5, 553.0 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "midpoints": [ 243.5, 462.7578125, 444.5, 462.7578125 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 1 ],
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 2 ],
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 4 ],
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 3 ],
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 707.5, 377.78125, 707.28515625, 377.78125, 707.28515625, 417.765625, 615.5, 417.765625 ],
                                    "source": [ "obj-71", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "midpoints": [ 616.5, 377.5, 499.5, 377.5 ],
                                    "order": 1,
                                    "source": [ "obj-71", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "order": 0,
                                    "source": [ "obj-71", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 433.0, 336.0, 50.0, 23.0 ],
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
                        "rect": [ 55.0, 126.0, 802.0, 669.0 ],
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
                                    "text": "There are other reverb objects in evieve. Here is an overview.",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 1,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-6",
                                    "lockeddragscroll": 2,
                                    "lockedsize": 1,
                                    "maxclass": "bpatcher",
                                    "name": "areas_help_reverb.maxhelp",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 10.0, 94.0, 660.0, 568.0 ],
                                    "varname": "evieveObjectAreas",
                                    "viewvisibility": 1
                                }
                            }
                        ],
                        "lines": [],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 543.0, 336.0, 110.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p \"evieve: reverb\"",
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
                    "destination": [ "obj-15", 0 ],
                    "hidden": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "hidden": 1,
                    "source": [ "obj-15", 0 ]
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
                    "destination": [ "obj-14", 0 ],
                    "hidden": 1,
                    "source": [ "obj-34", 0 ]
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
            "obj-10::obj-38": [ "number[4]", "number[4]", 0 ],
            "obj-10::obj-66": [ "number[5]", "number[5]", 0 ],
            "obj-10::obj-70": [ "number[6]", "number[6]", 0 ],
            "obj-12::obj-21": [ "number[3]", "number[3]", 0 ],
            "obj-12::obj-34": [ "number", "number", 0 ],
            "obj-12::obj-35": [ "number[1]", "number[1]", 0 ],
            "obj-12::obj-37": [ "number[2]", "number[2]", 0 ],
            "obj-12::obj-3::obj-54::obj-10": [ "eqHighGain[6]", "eqHighGain", 0 ],
            "obj-12::obj-3::obj-54::obj-12": [ "wetGain[5]", "wetGain", 0 ],
            "obj-12::obj-3::obj-54::obj-15": [ "eqLowGain[6]", "eqLowGain", 0 ],
            "obj-12::obj-3::obj-54::obj-16": [ "eqLowFreq[6]", "eqLowFreq", 0 ],
            "obj-12::obj-3::obj-54::obj-2": [ "reverbSize[5]", "reverbSize", 0 ],
            "obj-12::obj-3::obj-54::obj-33": [ "decay[5]", "decay", 0 ],
            "obj-12::obj-3::obj-54::obj-35": [ "bypass[7]", "bypass", 0 ],
            "obj-12::obj-3::obj-54::obj-36": [ "diffusion[4]", "diffusion", 0 ],
            "obj-12::obj-3::obj-54::obj-4": [ "dryGain[6]", "dryGain", 0 ],
            "obj-12::obj-3::obj-54::obj-42": [ "inputPan[4]", "inputPan", 0 ],
            "obj-12::obj-3::obj-54::obj-43": [ "stereo[5]", "stereo", 0 ],
            "obj-12::obj-3::obj-54::obj-5": [ "damping[5]", "damping", 0 ],
            "obj-12::obj-3::obj-54::obj-7": [ "eqHighFreq[6]", "eqHighFreq", 0 ],
            "obj-12::obj-3::obj-54::obj-8": [ "smoothTime[7]", "smoothTime", 0 ],
            "obj-12::obj-49": [ "toggle", "toggle", 0 ],
            "obj-2::obj-5::obj-54::obj-10": [ "eqHighGain", "eqHighGain", 0 ],
            "obj-2::obj-5::obj-54::obj-12": [ "wetGain", "wetGain", 0 ],
            "obj-2::obj-5::obj-54::obj-15": [ "eqLowGain", "eqLowGain", 0 ],
            "obj-2::obj-5::obj-54::obj-16": [ "eqLowFreq", "eqLowFreq", 0 ],
            "obj-2::obj-5::obj-54::obj-2": [ "reverbSize", "reverbSize", 0 ],
            "obj-2::obj-5::obj-54::obj-33": [ "decay", "decay", 0 ],
            "obj-2::obj-5::obj-54::obj-35": [ "bypass", "bypass", 0 ],
            "obj-2::obj-5::obj-54::obj-36": [ "diffusion", "diffusion", 0 ],
            "obj-2::obj-5::obj-54::obj-4": [ "dryGain", "dryGain", 0 ],
            "obj-2::obj-5::obj-54::obj-42": [ "inputPan", "inputPan", 0 ],
            "obj-2::obj-5::obj-54::obj-43": [ "stereo", "stereo", 0 ],
            "obj-2::obj-5::obj-54::obj-5": [ "damping", "damping", 0 ],
            "obj-2::obj-5::obj-54::obj-7": [ "eqHighFreq", "eqHighFreq", 0 ],
            "obj-2::obj-5::obj-54::obj-8": [ "smoothTime", "smoothTime", 0 ],
            "obj-5::obj-3::obj-54::obj-10": [ "eqHighGain[5]", "eqHighGain", 0 ],
            "obj-5::obj-3::obj-54::obj-12": [ "wetGain[4]", "wetGain", 0 ],
            "obj-5::obj-3::obj-54::obj-15": [ "eqLowGain[5]", "eqLowGain", 0 ],
            "obj-5::obj-3::obj-54::obj-16": [ "eqLowFreq[5]", "eqLowFreq", 0 ],
            "obj-5::obj-3::obj-54::obj-2": [ "reverbSize[4]", "reverbSize", 0 ],
            "obj-5::obj-3::obj-54::obj-33": [ "decay[4]", "decay", 0 ],
            "obj-5::obj-3::obj-54::obj-35": [ "bypass[6]", "bypass", 0 ],
            "obj-5::obj-3::obj-54::obj-36": [ "diffusion[3]", "diffusion", 0 ],
            "obj-5::obj-3::obj-54::obj-4": [ "dryGain[5]", "dryGain", 0 ],
            "obj-5::obj-3::obj-54::obj-42": [ "inputPan[3]", "inputPan", 0 ],
            "obj-5::obj-3::obj-54::obj-43": [ "stereo[4]", "stereo", 0 ],
            "obj-5::obj-3::obj-54::obj-5": [ "damping[4]", "damping", 0 ],
            "obj-5::obj-3::obj-54::obj-7": [ "eqHighFreq[5]", "eqHighFreq", 0 ],
            "obj-5::obj-3::obj-54::obj-8": [ "smoothTime[6]", "smoothTime", 0 ],
            "obj-9::obj-41": [ "number[7]", "number[7]", 0 ],
            "obj-9::obj-42": [ "number[8]", "number[8]", 0 ],
            "obj-9::obj-5::obj-54::obj-10": [ "eqHighGain[1]", "eqHighGain", 0 ],
            "obj-9::obj-5::obj-54::obj-12": [ "wetGain[1]", "wetGain", 0 ],
            "obj-9::obj-5::obj-54::obj-15": [ "eqLowGain[1]", "eqLowGain", 0 ],
            "obj-9::obj-5::obj-54::obj-16": [ "eqLowFreq[1]", "eqLowFreq", 0 ],
            "obj-9::obj-5::obj-54::obj-2": [ "reverbSize[1]", "reverbSize", 0 ],
            "obj-9::obj-5::obj-54::obj-33": [ "decay[1]", "decay", 0 ],
            "obj-9::obj-5::obj-54::obj-35": [ "bypass[1]", "bypass", 0 ],
            "obj-9::obj-5::obj-54::obj-36": [ "diffusion[1]", "diffusion", 0 ],
            "obj-9::obj-5::obj-54::obj-4": [ "dryGain[1]", "dryGain", 0 ],
            "obj-9::obj-5::obj-54::obj-42": [ "inputPan[1]", "inputPan", 0 ],
            "obj-9::obj-5::obj-54::obj-43": [ "stereo[1]", "stereo", 0 ],
            "obj-9::obj-5::obj-54::obj-5": [ "damping[1]", "damping", 0 ],
            "obj-9::obj-5::obj-54::obj-7": [ "eqHighFreq[1]", "eqHighFreq", 0 ],
            "obj-9::obj-5::obj-54::obj-8": [ "smoothTime[1]", "smoothTime", 0 ],
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