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
                                    "hidden": 1,
                                    "id": "obj-46",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 64.0, 582.0, 130.0, 23.0 ],
                                    "text": "prepend coeffsmooth"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 64.0, 527.0, 161.0, 23.0 ],
                                    "text": "getattr ramptime @listen 1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 561.0, 154.0, 151.0, 23.0 ],
                                    "text": "loadmess 0 1 2 3 0 1 2 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 298.0, 527.0, 43.0, 23.0 ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 338.0, 234.0, 24.0, 24.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_initial": [ 1.0 ],
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
                                    "id": "obj-34",
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
                                        "rect": [ 59.0, 119.0, 339.0, 318.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 95.0, 87.0, 30.0, 22.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 95.0, 141.0, 78.0, 22.0 ],
                                                    "text": "selector~ 2 2"
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
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 95.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 154.0, 87.0, 45.0, 22.0 ],
                                                    "text": "trunc~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-32",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 33.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-33",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 95.0, 195.0, 30.0, 30.0 ]
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
                                                    "destination": [ "obj-2", 2 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-33", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-32", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-32", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 298.0, 272.0, 59.0, 23.0 ],
                                    "text": "p t"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-31",
                                    "maxclass": "flonum",
                                    "maximum": 10.0,
                                    "minimum": -10.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 232.0, 154.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.41 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number",
                                            "parameter_mmax": 10.0,
                                            "parameter_mmin": -10.0,
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
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-24",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 134.0, 295.0, 57.0, 55.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 92.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[2]",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Res",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "varname": "live.dial[1]"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-27",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 64.0, 295.0, 51.0, 55.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 4.0,
                                            "parameter_initial": [ 300.00000000000017 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[3]",
                                            "parameter_mmax": 10000.0,
                                            "parameter_mmin": 10.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Cutoff",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 3
                                        }
                                    },
                                    "varname": "live.dial"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 172.0, 382.0, 78.0, 23.0 ],
                                    "text": "prepend res"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 64.0, 382.0, 91.0, 23.0 ],
                                    "text": "prepend cutoff"
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
                                        "rect": [ 59.0, 119.0, 642.0, 351.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-2",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 67.0, 266.0, 30.0, 30.0 ]
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
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 67.0, 58.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 11.595187,
                                                    "hidden": 1,
                                                    "id": "obj-22",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "", "", "", "" ],
                                                    "patching_rect": [ 497.0, 63.0, 56.0, 21.0 ],
                                                    "restore": {
                                                        "dave": [ 3, 20, 1, 0.4, 0.223529, 0, 1, 1, 0.690196, 0.203922, 0.84, 0, 0.603922, 0.388235, 1, 0.901961, 0.635294, 0, 0.51, 1, 0.631373, 0.156863, 0.63, 0, 0.643137, 0.611765, 0.43, 0.466667, 0.596078, 0, 1, 0.984314, 1, 0.305882, 0.69, 1, 1, 1, 1, 8, 11.521718, 9.947185, 0.165217, 103.826172, 6.140005, 0, 6.536923, 13.617448, 0.638298, 311.126984, 27.849762, 0.165, 23.916531, 16.089909, 0.914894, 349.228241, 6.768014, 0.25, 14.012414, 11.965401, 0.510638, 138.591309, 3.591375, 0.415, 16.186777, 13.571617, 0.882353, 233.081879, 6.089889, 0.5, 9.578101, 6.584519, 0.798319, 349.228241, 11.817867, 0.665, 5.358491, 13.57742, 0.89916, 174.61412, 5.907635, 0.75, 10.780475, 12.173083, 0.773913, 698.456482, 8.58241, 0.829218 ]
                                                    },
                                                    "restore_extra": {
                                                        "dave": {
                                                            "id": "obj-41"
                                                        }
                                                    },
                                                    "text": "autopattr",
                                                    "varname": "u494006226"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "filename": "technoui.js",
                                                    "id": "obj-41",
                                                    "maxclass": "jsui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 67.0, 112.0, 486.0, 115.0 ],
                                                    "varname": "dave"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-41", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-41", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 338.0, 194.0, 33.0, 23.0 ],
                                    "text": "p tui",
                                    "varname": "tui"
                                }
                            },
                            {
                                "box": {
                                    "attr": "logfreq",
                                    "id": "obj-25",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 445.0, 487.0, 300.0, 23.0 ],
                                    "text_width": 75.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 232.0, 327.0, 52.0, 23.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
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
                                        "rect": [ 198.0, 216.0, 255.0, 218.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 103.0, 39.0, 95.0, 20.0 ],
                                                    "text": "homage to bbn"
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
                                                    "patching_rect": [ 62.0, 165.0, 30.0, 30.0 ]
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
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-1", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
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
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 232.0, 272.0, 40.0, 23.0 ],
                                    "text": "p osc"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-5",
                                    "ignoreclick": 1,
                                    "maxclass": "number~",
                                    "mode": 2,
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "float" ],
                                    "patching_rect": [ 313.0, 299.0, 44.0, 23.0 ],
                                    "sig": 0.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 232.0, 194.0, 85.0, 23.0 ],
                                    "text": "phasor~ 0.41"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "signal", "signal" ],
                                    "patching_rect": [ 232.0, 234.0, 85.0, 23.0 ],
                                    "text": "techno~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "multislider",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 561.0, 234.0, 184.0, 61.0 ],
                                    "setminmax": [ 0.0, 3.0 ],
                                    "settype": 0,
                                    "size": 8,
                                    "spacing": 1,
                                    "thickness": 4
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "list" ],
                                    "patching_rect": [ 561.0, 327.0, 60.0, 23.0 ],
                                    "text": "listfunnel"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 561.0, 382.0, 80.0, 23.0 ],
                                    "text": "peek~ gatey"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 561.0, 437.0, 184.0, 23.0 ],
                                    "text": "buffer~ gatey -1 1 @samps 8"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 298.0, 327.0, 83.0, 23.0 ],
                                    "text": "index~ gatey"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "logfreq": 1,
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 445.0, 527.0, 300.0, 100.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 298.0, 437.0, 188.0, 23.0 ],
                                    "text": "evi.svfinputmix~ @mixenable 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "signal", "signal" ],
                                    "patching_rect": [ 298.0, 382.0, 188.0, 23.0 ],
                                    "text": "gate~ 3 0 @ramptime 11"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 298.0, 582.0, 45.0, 45.0 ],
                                    "varname": "mcs_dac"
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
                                    "jsarguments": [ "evi.svfinputmix~", 660 ],
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
                                    "text": "With @mixenable off (0) the output filter is determined by the inlet to which the source audio is routed.",
                                    "varname": "digest_comment"
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
                                    "patching_rect": [ 345.0, 592.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "id": "obj-48",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 80.0, 238.0, 91.0, 55.0 ],
                                    "text": "change filter params",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "id": "obj-40",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 592.0, 176.0, 122.0, 55.0 ],
                                    "text": "change the gates sequence",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "id": "obj-38",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 364.0, 236.0, 68.0, 25.0 ],
                                    "text": "cut 0/1",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 461.0, 283.0, 97.0, 21.0 ],
                                    "text": "Off 0",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 461.0, 264.0, 97.0, 21.0 ],
                                    "text": "LP 1",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 461.0, 245.0, 97.0, 21.0 ],
                                    "text": "BP 2",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "id": "obj-18",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 461.0, 225.0, 97.0, 21.0 ],
                                    "text": "HP 3",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "arrows": 1,
                                    "background": 1,
                                    "id": "obj-16",
                                    "justification": 4,
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 383.0, 299.0, 175.0, 81.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubbleside": 0,
                                    "id": "obj-30",
                                    "linecount": 5,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 70.0, 412.0, 186.0, 98.0 ],
                                    "text": "notice how in the svfinputmix filter, resonance flattens off in high frequency ranges. @see evi.skfinputmix~ for an alternative",
                                    "textjustification": 1
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 2 ],
                                    "source": [ "obj-1", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
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
                                    "destination": [ "obj-10", 0 ],
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
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 1 ],
                                    "source": [ "obj-14", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-14", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 1 ],
                                    "midpoints": [ 241.5, 361.48046875, 476.5, 361.48046875 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-24", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 347.5, 225.5, 241.5, 225.5 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 181.5, 421.0, 307.5, 421.0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 73.5, 421.0, 307.5, 421.0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "order": 1,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "midpoints": [ 307.5, 515.8984375, 454.5, 515.8984375 ],
                                    "order": 0,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "order": 0,
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 1,
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 1 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 1 ],
                                    "order": 0,
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 1,
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 144.5, 560.0, 276.9609375, 560.0, 276.9609375, 372.0, 307.5, 372.0 ],
                                    "source": [ "obj-45", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 73.5, 615.0, 287.51171875, 615.0, 287.51171875, 427.0, 307.5, 427.0 ],
                                    "source": [ "obj-46", 0 ]
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
                    "patching_rect": [ 183.0, 336.0, 76.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p sequence",
                    "varname": "sequence_tab"
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
                                    "bubble": 1,
                                    "bubblepoint": 0.2,
                                    "bubbleside": 0,
                                    "id": "obj-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 33.0, 488.0, 58.0, 40.0 ],
                                    "text": "switch",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 0,
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 586.0, 433.0, 185.0, 40.0 ],
                                    "text": "@mixenable is on by default",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "id": "obj-10",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 308.0, 210.0, 203.0, 55.0 ],
                                    "text": "smooth the internal filter coefficients by this amount in ms",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 636.0, 226.0, 137.0, 25.0 ],
                                    "text": "morph filters 0..1",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-25",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 584.0, 227.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 584.0, 267.0, 80.0, 23.0 ],
                                    "text": "prepend mix"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 584.0, 408.0, 188.0, 23.0 ],
                                    "text": "evi.svfinputmix~ @mixenable 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-14",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 172.0, 195.0, 57.0, 55.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 70.7107 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[1]",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Res",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "varname": "live.dial[1]"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-13",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 102.0, 195.0, 51.0, 55.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 4.0,
                                            "parameter_initial": [ 1000.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial",
                                            "parameter_mmax": 10000.0,
                                            "parameter_mmin": 10.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Cutoff",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 3
                                        }
                                    },
                                    "varname": "live.dial"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.75,
                                    "bubbleside": 0,
                                    "id": "obj-12",
                                    "linecount": 5,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 243.0, 448.0, 253.0, 98.0 ],
                                    "text": "With @mixenable off, all inlets contribute to the filter output. This is most useful for sequencing (see the 'sequence' tab). Notice the strange effect when sweeping the @cutoff attribute above.",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 210.0, 267.0, 78.0, 23.0 ],
                                    "text": "prepend res"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 102.0, 267.0, 91.0, 23.0 ],
                                    "text": "prepend cutoff"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 126.0, 517.0, 50.0, 23.0 ],
                                    "text": "*~ 0.25"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 34.0, 462.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 75.0, 462.0, 30.0, 23.0 ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 126.0, 462.0, 83.0, 23.0 ],
                                    "text": "selector~ 2 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 327.0, 352.0, 56.0, 23.0 ],
                                    "text": "tri~ 440."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 243.0, 352.0, 67.0, 23.0 ],
                                    "text": "rect~ 220."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 158.0, 352.0, 67.0, 23.0 ],
                                    "text": "saw~ 110."
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-5",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 348.0, 392.0, 237.0, 54.0 ],
                                    "text": "@mixenable attribute turns on (default) or off (0) the 'mix' feature demonstrated in the 'basic' tab",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 158.0, 407.0, 188.0, 23.0 ],
                                    "text": "evi.svfinputmix~ @mixenable 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 126.0, 572.0, 45.0, 45.0 ],
                                    "varname": "mcs_dac"
                                }
                            },
                            {
                                "box": {
                                    "attr": "coeffsmooth",
                                    "id": "obj-26",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 327.0, 267.0, 150.0, 23.0 ],
                                    "text_width": 82.0
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
                                    "jsarguments": [ "evi.svfinputmix~", 660 ],
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
                                    "text": "Cutoff and Resonance are available via attributes. Coefficients can be smoothed via the @coeffsmooth attribute. @mix functionality is on by default but can be turned off with the @mixenable attribute.",
                                    "varname": "digest_comment"
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
                                    "patching_rect": [ 173.0, 582.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-14", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 2 ],
                                    "midpoints": [ 593.5, 450.375, 199.5, 450.375 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 167.5, 391.5, 593.5, 391.5 ],
                                    "order": 0,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "order": 1,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 1 ],
                                    "midpoints": [ 252.5, 387.23046875, 678.0, 387.23046875 ],
                                    "order": 0,
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "order": 1,
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 2 ],
                                    "midpoints": [ 336.5, 382.96875, 762.5, 382.96875 ],
                                    "order": 0,
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 2 ],
                                    "order": 1,
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
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
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "order": 0,
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "order": 1,
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 1 ],
                                    "source": [ "obj-3", 0 ]
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
                                    "destination": [ "obj-15", 0 ],
                                    "order": 0,
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "order": 1,
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "order": 0,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "order": 1,
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 102.0, 336.0, 65.0, 23.0 ],
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
                        "embed": 0,
                        "parameter_enable": 0
                    },
                    "text": "v8 evi.helpstarter.js evi.svfinputmix~ 1 1 0 1 0 none",
                    "textfile": {
                        "filename": "evi.helpstarter.js",
                        "flags": 0,
                        "embed": 0,
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
                                    "bubblepoint": 0.2,
                                    "bubbleside": 0,
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 134.0, 545.0, 58.0, 40.0 ],
                                    "text": "switch",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 228.0, 560.0, 50.0, 23.0 ],
                                    "text": "*~ 0.25"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.2,
                                    "bubbleside": 2,
                                    "fontsize": 13.0,
                                    "id": "obj-28",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 211.0, 415.0, 79.0, 40.0 ],
                                    "text": "highpass",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "fontsize": 13.0,
                                    "id": "obj-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 132.0, 415.0, 79.0, 40.0 ],
                                    "text": "bandpass",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.8,
                                    "bubbleside": 2,
                                    "fontsize": 13.0,
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 53.0, 415.0, 79.0, 40.0 ],
                                    "text": "lowpass",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 393.0, 361.0, 137.0, 25.0 ],
                                    "text": "morph filters 0..1",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 136.0, 520.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 177.0, 520.0, 30.0, 23.0 ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 228.0, 520.0, 83.0, 23.0 ],
                                    "text": "selector~ 2 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 661.0, 402.0, 56.0, 23.0 ],
                                    "text": "tri~ 440."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 605.0, 362.0, 67.0, 23.0 ],
                                    "text": "rect~ 220."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 549.0, 322.0, 67.0, 23.0 ],
                                    "text": "saw~ 110."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 549.0, 457.0, 131.0, 23.0 ],
                                    "text": "evi.svfinputmix~",
                                    "varname": "evieveObject[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 341.0, 297.0, 90.0, 21.0 ],
                                    "text": "LP, BP, HP",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 405.0, 322.0, 30.0, 23.0 ],
                                    "text": "1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 373.0, 322.0, 30.0, 23.0 ],
                                    "text": "0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 341.0, 322.0, 30.0, 23.0 ],
                                    "text": "0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 162.0, 362.0, 78.0, 23.0 ],
                                    "text": "tri~ 220. 0.4"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-8",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 341.0, 362.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 341.0, 402.0, 80.0, 23.0 ],
                                    "text": "prepend mix"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 106.0, 457.0, 131.0, 23.0 ],
                                    "text": "evi.svfinputmix~",
                                    "varname": "evieveObject[2]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 228.0, 600.0, 45.0, 45.0 ],
                                    "varname": "basic_dac"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 470.0, 458.0, 60.0, 21.0 ],
                                    "text": "in ms"
                                }
                            },
                            {
                                "box": {
                                    "attr": "mixsmooth",
                                    "id": "obj-29",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 341.0, 457.0, 127.0, 23.0 ],
                                    "text_width": 73.0
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
                                    "jsarguments": [ "evi.svfinputmix~", "pants:/Users/stkr/Dev/evieve/help/defines/evi.svfinputmix~.maxhelp" ],
                                    "maxclass": "v8ui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 660.0, 260.0 ],
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
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 275.0, 610.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 350.5, 448.5, 558.5, 448.5 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "midpoints": [ 350.5, 448.5, 115.5, 448.5 ],
                                    "order": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 2 ],
                                    "midpoints": [ 558.5, 500.0, 301.5, 500.0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 1 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 2 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
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
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 350.5, 490.0, 520.53515625, 490.0, 520.53515625, 448.390625, 558.5, 448.390625 ],
                                    "order": 0,
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "midpoints": [ 350.5, 490.0, 302.453125, 490.0, 302.453125, 448.8671875, 115.5, 448.8671875 ],
                                    "order": 1,
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 2 ],
                                    "midpoints": [ 171.5, 401.0, 227.5, 401.0 ],
                                    "order": 0,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 1 ],
                                    "midpoints": [ 171.5, 401.0, 171.5, 401.0 ],
                                    "order": 1,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "midpoints": [ 171.5, 401.0, 115.5, 401.0 ],
                                    "order": 2,
                                    "source": [ "obj-3", 0 ]
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
                                    "destination": [ "obj-19", 1 ],
                                    "midpoints": [ 115.5, 500.0, 269.5, 500.0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
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
                    "jsarguments": [ "evi.svfinputmix~" ],
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 10.0, 356.3680114746094, 57.599853515625 ],
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
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpname.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "mc.evi.svfinputmix~", 660 ],
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
                                    "text": "evi.svfinputmix~ is also available as an 'mc' Object",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 140.0, 336.0, 122.0, 23.0 ],
                                    "text": "mc.evi.svfinputmix~",
                                    "varname": "evieveObjectMc"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 140.0, 537.0, 45.0, 45.0 ],
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
                                    "patching_rect": [ 187.0, 547.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            }
                        ],
                        "lines": [],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 281.0, 336.0, 37.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p mc",
                    "varname": "mc_tab"
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
                                    "attr": "logfreq",
                                    "id": "obj-17",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 343.0, 399.0, 300.0, 23.0 ],
                                    "text_width": 75.0
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-15",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 293.0, 203.0, 57.0, 55.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 80.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[4]",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Res",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "varname": "live.dial[1]"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-27",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 223.0, 203.0, 51.0, 55.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 4.0,
                                            "parameter_initial": [ 1000.0000000000003 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.dial[5]",
                                            "parameter_mmax": 10000.0,
                                            "parameter_mmin": 10.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Cutoff",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 3
                                        }
                                    },
                                    "varname": "live.dial"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "logfreq": 1,
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 343.0, 424.0, 300.0, 100.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 223.0, 424.0, 50.0, 23.0 ],
                                    "text": "*~ 0.25"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 482.0, 218.0, 137.0, 25.0 ],
                                    "text": "morph filters 0..1",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 430.0, 154.0, 90.0, 21.0 ],
                                    "text": "LP, BP, HP",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 494.0, 179.0, 30.0, 23.0 ],
                                    "text": "1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 462.0, 179.0, 30.0, 23.0 ],
                                    "text": "0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 430.0, 179.0, 30.0, 23.0 ],
                                    "text": "0."
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-8",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 430.0, 219.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 430.0, 259.0, 80.0, 23.0 ],
                                    "text": "prepend mix"
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
                                    "jsarguments": [ "evi.svfinputmix~", 660 ],
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
                                    "text": "The evi.svfinputmix~ algorithm is also available inside the gen~ environment",
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
                                        "rect": [ 59.0, 119.0, 712.0, 440.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 509.0, 215.0, 37.0, 22.0 ],
                                                    "text": "noise"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 509.0, 254.0, 40.0, 22.0 ],
                                                    "text": "* 0.34"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 189.0, 122.0, 79.0, 22.0 ],
                                                    "text": "setparam res"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 81.0, 122.0, 91.0, 22.0 ],
                                                    "text": "setparam cutoff"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 189.0, 254.0, 81.0, 22.0 ],
                                                    "text": "setparam mix"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 189.0, 215.0, 65.0, 22.0 ],
                                                    "text": "param mix"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 371.0, 122.0, 28.0, 22.0 ],
                                                    "text": "110"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 440.0, 122.0, 29.0, 22.0 ],
                                                    "text": "220"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 508.0, 122.0, 29.0, 22.0 ],
                                                    "text": "440"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 324.0, 254.0, 91.0, 22.0 ],
                                                    "text": "evi_svfinputmix"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 508.0, 161.0, 41.0, 22.0 ],
                                                    "text": "evi_tri"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 440.0, 161.0, 51.0, 22.0 ],
                                                    "text": "evi_rect"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 371.0, 161.0, 52.0, 22.0 ],
                                                    "text": "evi_saw"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 81.0, 83.0, 28.0, 22.0 ],
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
                                                    "patching_rect": [ 189.0, 83.0, 28.0, 22.0 ],
                                                    "text": "in 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 324.0, 325.0, 35.0, 22.0 ],
                                                    "text": "out 1"
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
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-10", 0 ]
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
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 2 ],
                                                    "order": 0,
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 1 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 2 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-8", 0 ]
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
                                    "patching_rect": [ 223.0, 336.0, 287.0, 23.0 ],
                                    "text": "gen~ @title using_evi.svfinputmix~_inside_gen~",
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
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "source": [ "obj-15", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-27", 0 ]
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
                                    "destination": [ "obj-13", 0 ],
                                    "order": 0,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "order": 1,
                                    "source": [ "obj-5", 0 ]
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
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 373.0, 336.0, 50.0, 23.0 ],
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
            "obj-10::obj-15": [ "live.dial[4]", "Res", 0 ],
            "obj-10::obj-27": [ "live.dial[5]", "Cutoff", 0 ],
            "obj-12::obj-24": [ "live.dial[2]", "Res", 0 ],
            "obj-12::obj-27": [ "live.dial[3]", "Cutoff", 0 ],
            "obj-12::obj-31": [ "number", "number", 0 ],
            "obj-12::obj-36": [ "toggle", "toggle", 0 ],
            "obj-5::obj-13": [ "live.dial", "Cutoff", 0 ],
            "obj-5::obj-14": [ "live.dial[1]", "Res", 0 ],
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