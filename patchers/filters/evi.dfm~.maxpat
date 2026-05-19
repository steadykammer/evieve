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
        "rect": [ 60.0, 100.0, 616.0, 404.0 ],
        "bglocked": 1,
        "gridonopen": 2,
        "boxanimatetime": 100,
        "subpatcher_template": "PeteSub12",
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "fontlink": 1,
                    "hint": "read License...",
                    "id": "obj-26",
                    "maxclass": "textbutton",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 35.0, 125.0, 67.3515625, 21.40625 ],
                    "text": "License",
                    "texton": "LICENSE",
                    "textovercolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "usetextovercolor": 1
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 68.0, 234.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [ "signal", "bang", "int", "float", "", "" ],
                    "patching_rect": [ 225.0, 180.0, 71.5, 22.0 ],
                    "text": "typeroute~"
                }
            },
            {
                "box": {
                    "comment": "(signal) Dirty MS20 Output Mono/Right",
                    "id": "obj-4",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 237.0, 338.0, 30.0, 30.0 ],
                    "varname": "EffectOutR"
                }
            },
            {
                "box": {
                    "comment": "(signal/float) Cutoff (in Pitch)",
                    "id": "obj-2",
                    "index": 3,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 405.0, 117.0, 30.0, 30.0 ],
                    "varname": "Cutoff"
                }
            },
            {
                "box": {
                    "comment": "(signal) Dirty MS20 Output Mono/Left",
                    "id": "obj-44",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 137.0, 338.0, 30.0, 30.0 ],
                    "varname": "EffectOutL"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "reset", "signal", "signal", "" ],
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
                        "rect": [ 151.0, 213.0, 795.0, 450.0 ],
                        "gridonopen": 2,
                        "lefttoolbarpinned": 2,
                        "toptoolbarpinned": 2,
                        "righttoolbarpinned": 2,
                        "bottomtoolbarpinned": 2,
                        "toolbars_unpinned_last_save": 15,
                        "boxanimatetime": 0,
                        "subpatcher_template": "PeteSub12",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
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
                                        "rect": [ 63.0, 103.0, 693.0, 434.0 ],
                                        "gridonopen": 2,
                                        "lefttoolbarpinned": 2,
                                        "toptoolbarpinned": 2,
                                        "righttoolbarpinned": 2,
                                        "bottomtoolbarpinned": 2,
                                        "toolbars_unpinned_last_save": 15,
                                        "subpatcher_template": "PeteSub12",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 106.0, 219.0, 79.0, 22.0 ],
                                                    "text": "speedlim 118"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-23",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 255.0, 167.0, 22.0, 22.0 ],
                                                    "text": "t 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-22",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 205.0, 167.0, 22.0, 22.0 ],
                                                    "text": "t 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 156.0, 167.0, 22.0, 22.0 ],
                                                    "text": "t 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 106.0, 293.0, 79.0, 22.0 ],
                                                    "text": "prepend filter"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 106.0, 256.0, 47.0, 22.0 ],
                                                    "text": "clip 0 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 11,
                                                    "numoutlets": 11,
                                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                                    "patching_rect": [ 106.0, 115.0, 515.0, 22.0 ],
                                                    "text": "route int bypass lowpass highpass Bypass Lowpass Highpass BYPASS LOWPASS HIGHPASS"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 34.0, 78.0, 91.0, 22.0 ],
                                                    "text": "route float state"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-25",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 34.0, 31.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-26",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 106.0, 375.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-27",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 152.0, 375.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-28",
                                                    "index": 3,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 198.0, 375.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-29",
                                                    "index": 4,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 602.0, 375.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-5",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 188.0, 220.0, 433.0, 20.0 ],
                                                    "text": "limit by same amount of milliseconds hardwired to 'eviLine()' in main gen~"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "midpoints": [ 115.5, 106.0, 115.5, 106.0 ],
                                                    "source": [ "obj-1", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "midpoints": [ 43.5, 349.5, 161.5, 349.5 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "midpoints": [ 79.5, 332.5, 207.5, 332.5 ],
                                                    "source": [ "obj-1", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                                    "destination": [ "obj-2", 0 ],
                                                    "midpoints": [ 115.5, 176.5, 115.5, 176.5 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "midpoints": [ 462.7, 143.5, 165.5, 143.5 ],
                                                    "source": [ "obj-16", 7 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "midpoints": [ 313.9, 143.5, 165.5, 143.5 ],
                                                    "source": [ "obj-16", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "midpoints": [ 165.1, 150.5, 165.5, 150.5 ],
                                                    "source": [ "obj-16", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "midpoints": [ 512.3, 150.5, 214.5, 150.5 ],
                                                    "source": [ "obj-16", 8 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "midpoints": [ 363.5, 150.5, 214.5, 150.5 ],
                                                    "source": [ "obj-16", 5 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "midpoints": [ 214.7, 150.5, 214.5, 150.5 ],
                                                    "source": [ "obj-16", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 0 ],
                                                    "midpoints": [ 561.9, 157.5, 264.5, 157.5 ],
                                                    "source": [ "obj-16", 9 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 0 ],
                                                    "midpoints": [ 413.1, 157.5, 264.5, 157.5 ],
                                                    "source": [ "obj-16", 6 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 0 ],
                                                    "midpoints": [ 264.3, 150.5, 264.5, 150.5 ],
                                                    "source": [ "obj-16", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-29", 0 ],
                                                    "source": [ "obj-16", 10 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                                    "destination": [ "obj-20", 0 ],
                                                    "midpoints": [ 115.5, 284.0, 115.5, 284.0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 115.5, 247.0, 115.5, 247.0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                                    "destination": [ "obj-26", 0 ],
                                                    "midpoints": [ 115.5, 343.5, 115.5, 343.5 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                                    "destination": [ "obj-2", 0 ],
                                                    "midpoints": [ 165.5, 202.5, 115.5, 202.5 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                                    "destination": [ "obj-2", 0 ],
                                                    "midpoints": [ 214.5, 202.5, 115.5, 202.5 ],
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                                    "destination": [ "obj-2", 0 ],
                                                    "midpoints": [ 264.5, 202.5, 115.5, 202.5 ],
                                                    "source": [ "obj-23", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "midpoints": [ 43.5, 69.0, 43.5, 69.0 ],
                                                    "source": [ "obj-25", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "transport", "audiosolo", "audiomute" ],
                                        "toolbarexclusions": [ "audiopowerctrl", "browsebeap", "browsevizzie", "lessonbrowser" ]
                                    },
                                    "patching_rect": [ 50.0, 87.0, 93.0, 22.0 ],
                                    "text": "p catch"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 591.333313, 213.0, 39.5, 22.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 347.714294, 213.0, 39.5, 22.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "hidden": 1,
                                    "id": "obj-6",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 113.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "reset", "", "" ],
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
                                        "rect": [ 100.0, 138.0, 450.0, 270.0 ],
                                        "gridonopen": 2,
                                        "lefttoolbarpinned": 2,
                                        "toptoolbarpinned": 2,
                                        "righttoolbarpinned": 2,
                                        "bottomtoolbarpinned": 2,
                                        "toolbars_unpinned_last_save": 15,
                                        "subpatcher_template": "PeteSub12",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 271.0, 143.0, 101.0, 22.0 ],
                                                    "text": "routepass extend"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-7",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 97.5, 195.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
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
                                                        "rect": [ 100.0, 138.0, 134.0, 330.0 ],
                                                        "gridonopen": 2,
                                                        "lefttoolbarpinned": 2,
                                                        "toptoolbarpinned": 2,
                                                        "righttoolbarpinned": 2,
                                                        "bottomtoolbarpinned": 2,
                                                        "toolbars_unpinned_last_save": 15,
                                                        "boxanimatetime": 0,
                                                        "subpatcher_template": "PeteSub12",
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
                                                                    "patching_rect": [ 30.5, 257.0, 30.0, 30.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-1",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 30.5, 138.0, 36.0, 22.0 ],
                                                                    "text": "defer"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-11",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 30.5, 175.0, 57.0, 22.0 ],
                                                                    "text": "tosymbol"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "id": "obj-9",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "reload" ],
                                                                    "patching_rect": [ 30.5, 101.0, 49.0, 22.0 ],
                                                                    "text": "t reload"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-10",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 30.5, 31.0, 30.0, 30.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-11", 0 ],
                                                                    "midpoints": [ 40.0, 166.0, 40.0, 166.0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-9", 0 ],
                                                                    "midpoints": [ 40.0, 80.5, 40.0, 80.5 ],
                                                                    "source": [ "obj-10", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "midpoints": [ 40.0, 210.5, 40.0, 210.5 ],
                                                                    "source": [ "obj-11", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-1", 0 ],
                                                                    "midpoints": [ 40.0, 129.0, 40.0, 129.0 ],
                                                                    "source": [ "obj-9", 0 ]
                                                                }
                                                            }
                                                        ],
                                                        "toolbaradditions": [ "transport", "audiosolo", "audiomute" ],
                                                        "toolbarexclusions": [ "audiopowerctrl", "browsebeap", "browsevizzie", "lessonbrowser" ]
                                                    },
                                                    "patching_rect": [ 97.5, 143.0, 93.0, 22.0 ],
                                                    "text": "p messageUser"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 158.0, 106.0, 132.0, 22.0 ],
                                                    "text": "routepass reset_param"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-5",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 37.0, 195.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-4",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 37.0, 22.0, 30.0, 30.0 ]
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
                                                    "patching_rect": [ 353.0, 195.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 37.0, 69.0, 140.0, 22.0 ],
                                                    "text": "route reset reload"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "reset" ],
                                                    "patching_rect": [ 37.0, 106.0, 42.0, 22.0 ],
                                                    "text": "t reset"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 189.0, 144.0, 97.0, 20.0 ],
                                                    "text": "block 'reload'"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-1", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-1", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-11", 0 ]
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
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "midpoints": [ 167.5, 179.0, 46.5, 179.0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-6", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-9", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "midpoints": [ 280.5, 179.5, 46.5, 179.5 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "transport", "audiosolo", "audiomute" ],
                                        "toolbarexclusions": [ "audiopowerctrl", "browsebeap", "browsevizzie", "lessonbrowser" ]
                                    },
                                    "patching_rect": [ 640.0, 213.0, 127.450073, 22.0 ],
                                    "text": "p gen"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-51",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 237.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-50",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 175.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
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
                                        "rect": [ 306.0, 81.0, 799.0, 420.0 ],
                                        "gridonopen": 2,
                                        "lefttoolbarpinned": 2,
                                        "toptoolbarpinned": 2,
                                        "righttoolbarpinned": 2,
                                        "bottomtoolbarpinned": 2,
                                        "toolbars_unpinned_last_save": 15,
                                        "boxanimatetime": 0,
                                        "subpatcher_template": "PeteSub12",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "bang" ],
                                                    "patching_rect": [ 259.0, 120.0, 65.0, 22.0 ],
                                                    "text": "onebang 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 259.0, 215.0, 157.0, 22.0 ],
                                                    "text": "s #0-evi.dfm.loadbang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "bang" ],
                                                    "patching_rect": [ 259.0, 157.0, 32.0, 22.0 ],
                                                    "text": "t b b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 143.0, 252.0, 85.0, 22.0 ],
                                                    "text": "prepend state:"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "ignoreclick": 1,
                                                    "linecount": 2,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 434.0, 289.0, 144.0, 35.0 ],
                                                    "text": "$1 message to gen~ not available in evi.dfm~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "ignoreclick": 1,
                                                    "linecount": 2,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 24.0, 289.0, 114.0, 35.0 ],
                                                    "text": "evi.dfm~ does not accept arguments!"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 607.0, 120.0, 62.0, 22.0 ],
                                                    "text": "route float"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 607.0, 157.0, 38.0, 22.0 ],
                                                    "text": "t float"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-5",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 434.0, 36.0, 30.0, 30.0 ]
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
                                                    "patching_rect": [ 143.0, 36.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 259.0, 36.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-44",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 24.0, 36.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-45",
                                                    "index": 5,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 607.0, 36.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 24.0, 252.0, 22.0, 22.0 ],
                                                    "text": "t b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 272.0, 352.0, 81.0, 22.0 ],
                                                    "text": "print evi.dfm~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 607.0, 215.0, 57.0, 22.0 ],
                                                    "text": "tosymbol"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "ignoreclick": 1,
                                                    "linecount": 2,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 607.0, 289.0, 111.0, 35.0 ],
                                                    "text": "evi.dfm~ does not understand $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-37",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 623.0, 67.0, 92.0, 20.0 ],
                                                    "text": "anything else"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 448.5, 67.0, 174.0, 20.0 ],
                                                    "text": "catch gen~ 'reload' message"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 274.0, 67.0, 104.0, 20.0 ],
                                                    "text": "final done bang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-24",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 158.0, 67.0, 91.0, 20.0 ],
                                                    "text": "state request"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-23",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 39.0, 67.0, 112.0, 20.0 ],
                                                    "text": "patcherargs args"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-2",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 326.0, 121.0, 116.0, 20.0 ],
                                                    "text": "once on load only"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 268.5, 92.5, 268.5, 92.5 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 33.5, 280.0, 33.5, 280.0 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 268.5, 195.5, 268.5, 195.5 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 268.5, 148.0, 268.5, 148.0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "midpoints": [ 152.5, 335.5, 281.5, 335.5 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "midpoints": [ 443.5, 335.5, 281.5, 335.5 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "midpoints": [ 616.5, 210.5, 616.5, 210.5 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "midpoints": [ 616.5, 148.0, 616.5, 148.0 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "midpoints": [ 659.5, 192.0, 616.5, 192.0 ],
                                                    "source": [ "obj-21", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "midpoints": [ 152.5, 158.5, 152.5, 158.5 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "midpoints": [ 33.5, 158.5, 33.5, 158.5 ],
                                                    "source": [ "obj-44", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "midpoints": [ 616.5, 92.5, 616.5, 92.5 ],
                                                    "source": [ "obj-45", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "midpoints": [ 443.5, 177.0, 443.5, 177.0 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "midpoints": [ 616.5, 335.5, 281.5, 335.5 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "midpoints": [ 616.5, 261.5, 616.5, 261.5 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "midpoints": [ 33.5, 335.5, 281.5, 335.5 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "transport", "audiosolo", "audiomute" ],
                                        "toolbarexclusions": [ "audiopowerctrl", "browsebeap", "browsevizzie", "lessonbrowser" ]
                                    },
                                    "patching_rect": [ 640.0, 317.0, 91.300049, 22.0 ],
                                    "text": "p console"
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
                                    "patching_rect": [ 50.0, 369.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
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
                                        "rect": [ 116.0, 122.0, 404.0, 537.0 ],
                                        "gridonopen": 2,
                                        "lefttoolbarpinned": 2,
                                        "toptoolbarpinned": 2,
                                        "righttoolbarpinned": 2,
                                        "bottomtoolbarpinned": 2,
                                        "toolbars_unpinned_last_save": 15,
                                        "boxanimatetime": 0,
                                        "subpatcher_template": "PeteSub12",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "hidden": 1,
                                                    "id": "obj-1",
                                                    "index": 3,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 307.0, 210.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "hidden": 1,
                                                    "id": "obj-2",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 213.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "hidden": 1,
                                                    "id": "obj-3",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 213.0, 451.0, 30.0, 30.0 ]
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
                                                    "patching_rect": [ 49.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "hidden": 1,
                                                    "id": "obj-7",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 101.0, 451.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-8",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 245.0, 40.0, 89.0, 20.0 ],
                                                    "text": "'state' request"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-9",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 81.0, 40.0, 88.0, 20.0 ],
                                                    "text": "aux attributes"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-10",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 245.0, 457.0, 52.0, 20.0 ],
                                                    "text": "to print"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-11",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 18.0, 457.0, 81.0, 20.0 ],
                                                    "text": "to thispatcher",
                                                    "textjustification": 2
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-12",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 298.0, 242.0, 48.0, 20.0 ],
                                                    "text": "errors",
                                                    "textjustification": 1
                                                }
                                            }
                                        ],
                                        "lines": [],
                                        "toolbaradditions": [ "transport", "audiosolo", "audiomute" ],
                                        "toolbarexclusions": [ "audiopowerctrl", "browsebeap", "browsevizzie", "lessonbrowser" ]
                                    },
                                    "patching_rect": [ 299.0, 265.0, 107.0, 22.0 ],
                                    "text": "p InOutLetsChiChi"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 8,
                                    "numoutlets": 8,
                                    "outlettype": [ "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 299.0, 176.0, 360.0, 22.0 ],
                                    "text": "routepass filter io tune smooth gain noiselevel oversampling"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 676.150024, 124.0, 66.0, 22.0 ],
                                    "text": "route done"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-38",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-39",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 676.150024, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-40",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 175.0, 369.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-41",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 237.0, 369.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "hidden": 1,
                                    "id": "obj-42",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 299.0, 369.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-56",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 331.0, 375.0, 146.5, 20.0 ],
                                    "text": "thispatcher"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 218.0, 401.0, 68.0, 20.0 ],
                                    "text": "resonance",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 156.0, 401.0, 68.0, 20.0 ],
                                    "text": "cutoff",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 19.0, 401.0, 92.0, 20.0 ],
                                    "text": "parameters",
                                    "textcolor": [ 0.6, 0.4, 0.2, 1.0 ],
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 19.0, 20.0, 92.0, 20.0 ],
                                    "text": "inlet 1 list input",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 19.0, 414.0, 92.0, 20.0 ],
                                    "text": "(to [gen~])",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 591.333313, 46.0, 82.816711, 20.0 ],
                                    "text": "@ttributes",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
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
                                        "rect": [ 132.0, 82.0, 627.0, 404.0 ],
                                        "gridonopen": 2,
                                        "lefttoolbarpinned": 2,
                                        "toptoolbarpinned": 2,
                                        "righttoolbarpinned": 2,
                                        "bottomtoolbarpinned": 2,
                                        "toolbars_unpinned_last_save": 15,
                                        "boxanimatetime": 0,
                                        "subpatcher_template": "PeteSub12",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 49.0, 81.0, 62.0, 22.0 ],
                                                    "text": "route filter"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-23",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 198.0, 170.0, 22.0, 22.0 ],
                                                    "text": "t 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-22",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 148.0, 170.0, 22.0, 22.0 ],
                                                    "text": "t 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 99.0, 170.0, 22.0, 22.0 ],
                                                    "text": "t 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 49.0, 259.0, 79.0, 22.0 ],
                                                    "text": "prepend filter"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 49.0, 222.0, 47.0, 22.0 ],
                                                    "text": "clip 0 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 11,
                                                    "numoutlets": 11,
                                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                                    "patching_rect": [ 49.0, 118.0, 515.0, 22.0 ],
                                                    "text": "route int bypass lowpass highpass Bypass Lowpass Highpass BYPASS LOWPASS HIGHPASS"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 49.0, 296.0, 51.0, 22.0 ],
                                                    "text": "t l l"
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
                                                    "patching_rect": [ 49.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-7",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 49.0, 348.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-8",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 81.0, 348.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                                    "destination": [ "obj-2", 0 ],
                                                    "midpoints": [ 58.5, 72.0, 58.5, 72.0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 58.5, 179.5, 58.5, 179.5 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "midpoints": [ 405.7, 146.5, 108.5, 146.5 ],
                                                    "source": [ "obj-16", 7 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "midpoints": [ 256.9, 146.5, 108.5, 146.5 ],
                                                    "source": [ "obj-16", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "midpoints": [ 108.1, 153.5, 108.5, 153.5 ],
                                                    "source": [ "obj-16", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "midpoints": [ 455.3, 153.5, 157.5, 153.5 ],
                                                    "source": [ "obj-16", 8 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "midpoints": [ 306.5, 153.5, 157.5, 153.5 ],
                                                    "source": [ "obj-16", 5 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "midpoints": [ 157.7, 153.5, 157.5, 153.5 ],
                                                    "source": [ "obj-16", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 0 ],
                                                    "midpoints": [ 504.9, 160.5, 207.5, 160.5 ],
                                                    "source": [ "obj-16", 9 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 0 ],
                                                    "midpoints": [ 356.1, 160.5, 207.5, 160.5 ],
                                                    "source": [ "obj-16", 6 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 0 ],
                                                    "midpoints": [ 207.3, 153.5, 207.5, 153.5 ],
                                                    "source": [ "obj-16", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                                    "destination": [ "obj-20", 0 ],
                                                    "midpoints": [ 58.5, 250.0, 58.5, 250.0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                                    "destination": [ "obj-16", 0 ],
                                                    "midpoints": [ 58.5, 109.0, 58.5, 109.0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                                    "destination": [ "obj-5", 0 ],
                                                    "midpoints": [ 58.5, 287.0, 58.5, 287.0 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 108.5, 205.5, 58.5, 205.5 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 157.5, 205.5, 58.5, 205.5 ],
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 207.5, 205.5, 58.5, 205.5 ],
                                                    "source": [ "obj-23", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                                    "destination": [ "obj-7", 0 ],
                                                    "midpoints": [ 58.5, 331.5, 58.5, 331.5 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                                    "destination": [ "obj-8", 0 ],
                                                    "midpoints": [ 90.5, 331.5, 90.5, 331.5 ],
                                                    "source": [ "obj-5", 1 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "transport", "audiosolo", "audiomute" ],
                                        "toolbarexclusions": [ "audiopowerctrl", "browsebeap", "browsevizzie", "lessonbrowser" ]
                                    },
                                    "patching_rect": [ 299.0, 213.0, 39.5, 22.0 ],
                                    "text": "p filt"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 377.714294, 346.0, 59.5, 346.0 ],
                                    "source": [ "obj-13", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-36", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 357.214294, 248.5, 308.5, 248.5 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 552.0714285714286, 346.0, 59.5, 346.0 ],
                                    "source": [ "obj-14", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 503.3571428571429, 346.0, 59.5, 346.0 ],
                                    "source": [ "obj-14", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 454.6428571428571, 346.0, 59.5, 346.0 ],
                                    "source": [ "obj-14", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 405.92857142857144, 346.0, 59.5, 346.0 ],
                                    "source": [ "obj-14", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                    "destination": [ "obj-13", 0 ],
                                    "midpoints": [ 357.2142857142857, 204.0, 357.214294, 204.0 ],
                                    "source": [ "obj-14", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-14", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-14", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                    "destination": [ "obj-9", 0 ],
                                    "midpoints": [ 308.5, 204.0, 308.5, 204.0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 621.333313, 346.0, 59.5, 346.0 ],
                                    "source": [ "obj-15", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-36", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 600.833313, 248.5, 308.5, 248.5 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 649.5, 257.5, 59.5, 257.5 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-49", 4 ],
                                    "hidden": 1,
                                    "midpoints": [ 757.950073, 293.5, 721.800049, 293.5 ],
                                    "source": [ "obj-3", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-49", 3 ],
                                    "hidden": 1,
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "midpoints": [ 133.5, 159.0, 308.5, 159.0 ],
                                    "source": [ "obj-30", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                    "destination": [ "obj-14", 0 ],
                                    "midpoints": [ 59.5, 159.0, 308.5, 159.0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-36", 1 ],
                                    "hidden": 1,
                                    "midpoints": [ 108.83333333333334, 204.5, 396.5, 204.5 ],
                                    "source": [ "obj-30", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-49", 4 ],
                                    "hidden": 1,
                                    "midpoints": [ 84.16666666666667, 293.5, 721.800049, 293.5 ],
                                    "source": [ "obj-30", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-42", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 308.5, 319.0, 308.5, 319.0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-49", 4 ],
                                    "hidden": 1,
                                    "midpoints": [ 396.5, 293.5, 721.800049, 293.5 ],
                                    "source": [ "obj-36", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-49", 1 ],
                                    "hidden": 1,
                                    "midpoints": [ 352.5, 302.5, 667.57501225, 302.5 ],
                                    "source": [ "obj-36", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "midpoints": [ 59.5, 78.0, 59.5, 78.0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "midpoints": [ 685.650024, 96.5, 685.650024, 96.5 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "midpoints": [ 732.650024, 159.5, 308.5, 159.5 ],
                                    "source": [ "obj-4", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-49", 2 ],
                                    "hidden": 1,
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.5, 0.0, 0.5, 0.5 ],
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 1.0, 0.0, 1.0, 0.5 ],
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-49", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 122.5, 309.0, 649.5, 309.0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 329.0, 346.5, 59.5, 346.5 ],
                                    "source": [ "obj-9", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-36", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "transport", "audiosolo", "audiomute" ],
                        "toolbarexclusions": [ "audiopowerctrl", "browsebeap", "browsevizzie", "lessonbrowser" ]
                    },
                    "patching_rect": [ 278.0, 234.0, 273.0, 22.0 ],
                    "text": "p parseInputs"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 532.0, 286.0, 67.0, 22.0 ],
                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                    "text": "thispatcher"
                }
            },
            {
                "box": {
                    "comment": "(signal/float) Resonance 0..1++",
                    "id": "obj-19",
                    "index": 4,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 468.0, 117.0, 30.0, 30.0 ],
                    "varname": "Resonance"
                }
            },
            {
                "box": {
                    "comment": "(signal) Audio Input nothing/Right",
                    "id": "obj-18",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 225.0, 117.0, 30.0, 30.0 ],
                    "varname": "AudioR"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [ "signal", "bang", "int", "float", "", "" ],
                    "patching_rect": [ 137.0, 180.0, 71.5, 22.0 ],
                    "text": "typeroute~"
                }
            },
            {
                "box": {
                    "comment": "(signal) Audio Input Mono/Left / messages to evi.dfm~",
                    "id": "obj-15",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 137.0, 117.0, 30.0, 30.0 ],
                    "varname": "AudioL"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "linecount": 3,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 342.0, 169.0, 210.0, 49.0 ],
                    "text": "patcherargs @filter 1 @io 0 @tune 0. @smooth 22.666 @gain 3. @noiselevel 0.33 @oversampling 1"
                }
            },
            {
                "box": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 137.0, 286.0, 119.0, 22.0 ],
                    "text": "gen~ evi_dfm"
                }
            },
            {
                "box": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-59",
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
                        "rect": [ 134.0, 172.0, 540.0, 285.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "PeteSub12",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 79.0, 69.0, 58.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-4",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 166.0, 69.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "hint": "",
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
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
                                        "rect": [ 60.0, 143.0, 702.0, 404.0 ],
                                        "gridonopen": 2,
                                        "statusbarvisible": 0,
                                        "subpatcher_template": "PeteSub12",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontface": 0,
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "evi_dfm_LUT.wav" ],
                                                    "patching_rect": [ 51.0, 168.0, 120.0, 22.0 ],
                                                    "text": "t b evi_dfm_LUT.wav"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 51.0, 232.0, 36.0, 22.0 ],
                                                    "text": "defer"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 565.0, 307.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 152.0, 232.0, 80.0, 22.0 ],
                                                    "text": "prepend read"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 565.0, 232.0, 66.0, 22.0 ],
                                                    "text": "prepend sr"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-75",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "bang", "wave", "float32", "int" ],
                                                    "patching_rect": [ 51.0, 99.0, 533.0, 22.0 ],
                                                    "text": "t b wave float32 96000"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 416.0, 232.0, 90.0, 22.0 ],
                                                    "text": "prepend format"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-84",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 266.0, 232.0, 94.0, 22.0 ],
                                                    "text": "prepend filetype"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-11",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 51.0, 37.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-12",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 152.0, 307.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-10",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 517.5, 339.0, 125.0, 20.0 ],
                                                    "text": "pass out loadbang",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "hidden": 1,
                                                    "id": "obj-8",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 173.0, 169.0, 333.0, 20.0 ],
                                                    "text": "96/32 32bit floats .wav file containing precalculated tables"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-15",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 128.5, 339.0, 77.0, 20.0 ],
                                                    "text": "to buffer~",
                                                    "textjustification": 1
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 1.0, 1.0, 0.0 ],
                                                    "destination": [ "obj-75", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 1.0, 1.0, 0.0 ],
                                                    "destination": [ "obj-1", 0 ],
                                                    "midpoints": [ 60.5, 291.0, 574.5, 291.0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 1.0, 1.0, 0.0 ],
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 1.0, 1.0, 0.0 ],
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-14", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.494565, 0.494565, 0.494565, 1.0 ],
                                                    "destination": [ "obj-12", 0 ],
                                                    "midpoints": [ 425.5, 271.5, 161.5, 271.5 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.494565, 0.494565, 0.494565, 1.0 ],
                                                    "destination": [ "obj-12", 0 ],
                                                    "midpoints": [ 574.5, 271.5, 161.5, 271.5 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.494565, 0.494565, 0.494565, 1.0 ],
                                                    "destination": [ "obj-12", 0 ],
                                                    "midpoints": [ 161.5, 271.5, 161.5, 271.5 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 1.0, 1.0, 0.0 ],
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-75", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 1.0, 1.0, 0.0 ],
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-75", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 1.0, 1.0, 0.0 ],
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-75", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 1.0, 1.0, 1.0, 0.0 ],
                                                    "destination": [ "obj-84", 0 ],
                                                    "source": [ "obj-75", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.494565, 0.494565, 0.494565, 1.0 ],
                                                    "destination": [ "obj-12", 0 ],
                                                    "midpoints": [ 275.5, 271.5, 161.5, 271.5 ],
                                                    "source": [ "obj-84", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 79.0, 103.0, 71.0, 22.0 ],
                                    "text": "p load_LUT"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-20",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 374.0, 137.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-36",
                                    "ignoreclick": 1,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 353.0, 171.0, 132.0, 22.0 ],
                                    "text": "list.reg dfm #0-dfm"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 79.0, 137.0, 293.0, 22.0 ],
                                    "text": "buffer~ #0-dfm evi_dfm_LUT.wav @samps 1536"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-39",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 24.0, 138.0, 53.0, 22.0 ],
                                    "text": "clearlow"
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
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 79.0, 27.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-58",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 353.0, 219.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 79.0, 172.0, 206.0, 33.0 ],
                                    "text": "measurements by Tony Hardie-Bick, 2005, GPLv2"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "midpoints": [ 140.5, 164.5, 362.5, 164.5 ],
                                    "source": [ "obj-16", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 383.5, 163.5, 362.5, 163.5 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-38", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 175.5, 95.5, 88.5, 95.5 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 81.0, 286.0, 41.0, 22.0 ],
                    "text": "p LUT"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 287.0, 44.0, 20.0 ],
                    "text": "table",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 220.0, 97.0, 140.0, 20.0 ],
                    "text": "audio input nothing/R"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 445.0, 97.0, 75.0, 20.0 ],
                    "text": "resonance",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 396.0, 97.0, 48.0, 20.0 ],
                    "text": "cutoff",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 97.0, 137.166687, 20.0 ],
                    "text": "audio input Mono/L",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 269.0, 343.0, 136.0, 20.0 ],
                    "text": "audio output Mono/R"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 8.0, 343.0, 128.0, 20.0 ],
                    "text": "audio output Mono/L",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 258.0, 287.0, 147.0, 20.0 ],
                    "text": "evi_dfm.gendsp"
                }
            },
            {
                "box": {
                    "background": 1,
                    "hidden": 1,
                    "id": "obj-25",
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
                        "rect": [ 100.0, 138.0, 253.0, 270.0 ],
                        "gridonopen": 2,
                        "lefttoolbarpinned": 2,
                        "toptoolbarpinned": 2,
                        "righttoolbarpinned": 2,
                        "bottomtoolbarpinned": 2,
                        "toolbars_unpinned_last_save": 15,
                        "boxanimatetime": 0,
                        "subpatcher_template": "PeteSub12",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "bang", "" ],
                                    "patching_rect": [ 34.0, 81.0, 132.0, 22.0 ],
                                    "text": "sel 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 125.0, 155.0, 72.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "close", "int" ],
                                    "patching_rect": [ 91.0, 118.0, 53.0, 22.0 ],
                                    "text": "t close 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "open" ],
                                    "patching_rect": [ 34.0, 118.0, 42.0, 22.0 ],
                                    "text": "t open"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 34.0, 155.0, 51.0, 22.0 ],
                                    "text": "pcontrol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
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
                                        "rect": [ 68.0, 275.0, 440.0, 311.0 ],
                                        "openinpresentation": 1,
                                        "gridonopen": 2,
                                        "lefttoolbarpinned": 2,
                                        "toptoolbarpinned": 2,
                                        "righttoolbarpinned": 2,
                                        "bottomtoolbarpinned": 2,
                                        "toolbars_unpinned_last_save": 15,
                                        "boxanimatetime": 0,
                                        "subpatcher_template": "PeteSub12",
                                        "integercoordinates": 1,
                                        "title": "DFM LICENSE",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-36",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 205.0, 216.585938, 105.0, 22.0 ],
                                                    "text": "prepend underline"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.290196, 0.309804, 0.301961, 0.0 ],
                                                    "fontlink": 1,
                                                    "hint": "read License...",
                                                    "id": "obj-33",
                                                    "maxclass": "textbutton",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "int" ],
                                                    "parameter_enable": 0,
                                                    "parameter_mappable": 0,
                                                    "patching_rect": [ 205.0, 259.0, 165.408203125, 21.40625 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 202.0, 259.0, 165.408203125, 21.40625 ],
                                                    "text": "http://www.gnu.org/licenses/",
                                                    "textcolor": [ 0.0, 0.0, 1.0, 1.0 ],
                                                    "texton": "http://www.gnu.org/licenses/",
                                                    "textoncolor": [ 0.0, 0.0, 1.0, 1.0 ],
                                                    "textovercolor": [ 0.0, 0.0, 1.0, 1.0 ],
                                                    "usetextovercolor": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-12",
                                                    "ignoreclick": 1,
                                                    "linecount": 2,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 5.0, 271.0, 129.0, 35.0 ],
                                                    "text": ";\rmax launchbrowser $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-9",
                                                    "linecount": 3,
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 5.0, 61.0, 125.0, 49.0 ],
                                                    "text": "r #0-evi.dfm.loadbang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 5.0, 179.0, 67.0, 22.0 ],
                                                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                                                    "text": "thispatcher"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-6",
                                                    "linecount": 2,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 144.0, 54.5, 241.0, 35.0 ],
                                                    "text": "window flags grow, window flags minimize, window flags nofloat, window exec"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-5",
                                                    "linecount": 2,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 5.0, 120.0, 254.0, 35.0 ],
                                                    "text": "window flags nogrow, window flags nominimize, window flags float, window exec"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "hidden": 1,
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 352.0, 179.0, 63.0, 22.0 ],
                                                    "text": "closebang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "hidden": 1,
                                                    "id": "obj-2",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 352.0, 216.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "hidden": 1,
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 352.0, 5.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "background": 1,
                                                    "id": "obj-8",
                                                    "linecount": 21,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 5.0, 5.0, 431.0, 301.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 21,
                                                    "presentation_rect": [ 5.0, 5.0, 431.0, 301.0 ],
                                                    "text": "/* -------------------------------------------------------------------------------\n * DFM-1 Digital Filter Module\n * Copyright (C) 2005, 2010, 2013\n *\n * Tony Hardie-Bick <tony@entitysynth.net> - Java version (original)\n * Jonny Stutters <jstutters@jeremah.co.uk> - SuperCollider port\n * fat Pete <hello@fatpete.net> - Gen port\n *\n * This program is free software: you can redistribute it and/or modify\n * it under the terms of the GNU General Public License as published by\n * the Free Software Foundation, either version 2 of the License, or\n * (at your option) any later version.\n *\n * This program is distributed in the hope that it will be useful,\n * but WITHOUT ANY WARRANTY; without even the implied warranty of\n * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the\n * GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License\n * along with this program. If not, see\n * ------------------------------------------------------------------------------ */\n"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 361.5, 207.0, 361.5, 207.0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-33", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-36", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-33", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-33", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-36", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "transport", "audiosolo", "audiomute" ],
                                        "toolbarexclusions": [ "audiopowerctrl", "browsebeap", "browsevizzie", "lessonbrowser" ]
                                    },
                                    "patching_rect": [ 34.0, 192.0, 70.0, 22.0 ],
                                    "text": "p LICENSE"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-23",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 34.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-24",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 125.0, 187.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "midpoints": [ 43.5, 222.0, 206.0, 222.0, 206.0, 107.0, 100.5, 107.0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 43.5, 183.0, 43.5, 183.0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 43.5, 146.0, 43.5, 146.0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 100.5, 146.0, 43.5, 146.0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "midpoints": [ 134.5, 146.0, 134.5, 146.0 ],
                                    "source": [ "obj-13", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "midpoints": [ 134.5, 180.5, 134.5, 180.5 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "midpoints": [ 43.5, 109.0, 43.5, 109.0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "midpoints": [ 100.0, 109.0, 100.5, 109.0 ],
                                    "source": [ "obj-22", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "midpoints": [ 43.5, 72.0, 43.5, 72.0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "transport", "audiosolo", "audiomute" ],
                        "toolbarexclusions": [ "audiopowerctrl", "browsebeap", "browsevizzie", "lessonbrowser" ]
                    },
                    "patching_rect": [ 35.0, 180.0, 84.0, 22.0 ],
                    "text": "p readLicense"
                }
            },
            {
                "box": {
                    "background": 1,
                    "fontface": 1,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-9",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 4.833313, 5.0, 493.0, 60.0 ],
                    "text": "- Deluxe but dirty MS20-inspired old-school-style filter emulation,\n- 12dB lowpass or 6dB highpass\n- Based on a classic by Tony Hardie-Bick (\"DFM-1 Digital Filter Module\"), 2010\n- All potential errors in this version by fat Pete, 2013"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "color": [ 1.0, 1.0, 0.0, 1.0 ],
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 1.0, 0.0, 1.0 ],
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 1.0, 0.0, 1.0 ],
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 1.0, 0.0, 1.0 ],
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 146.5, 241.921875, 146.5, 241.921875 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "midpoints": [ 199.0, 215.921875, 287.5, 215.921875 ],
                    "source": [ "obj-16", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "midpoints": [ 188.5, 215.921875, 287.5, 215.921875 ],
                    "source": [ "obj-16", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "midpoints": [ 178.0, 215.921875, 287.5, 215.921875 ],
                    "source": [ "obj-16", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "midpoints": [ 167.5, 215.921875, 287.5, 215.921875 ],
                    "source": [ "obj-16", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "midpoints": [ 157.0, 223.921875, 77.5, 223.921875 ],
                    "source": [ "obj-16", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 1.0, 0.0, 1.0 ],
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.0, 1.0, 0.5 ],
                    "destination": [ "obj-43", 3 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.5, 0.0, 0.5, 0.5 ],
                    "destination": [ "obj-43", 2 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "hidden": 1,
                    "midpoints": [ 44.5, 211.671875, 25.5, 211.671875, 25.5, 116.0, 44.5, 116.0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "hidden": 1,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 4 ],
                    "source": [ "obj-3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 1 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.0, 1.0, 0.5 ],
                    "destination": [ "obj-1", 3 ],
                    "midpoints": [ 456.83333333333337, 278.49609375, 246.5, 278.49609375 ],
                    "source": [ "obj-43", 2 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.5, 0.0, 0.5, 0.5 ],
                    "destination": [ "obj-1", 2 ],
                    "midpoints": [ 372.1666666666667, 271.0, 213.16666666666669, 271.0 ],
                    "source": [ "obj-43", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.6, 0.4, 0.2, 1.0 ],
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 287.5, 260.671875, 146.5, 260.671875 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "hidden": 1,
                    "source": [ "obj-43", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "midpoints": [ 77.5, 263.671875, 59.083327999999995, 263.671875, 59.083327999999995, 159.171875, 351.5, 159.171875 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "hidden": 1,
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 1.0, 0.0, 1.0 ],
                    "destination": [ "obj-1", 1 ],
                    "midpoints": [ 234.5, 244.0, 179.83333333333334, 244.0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "midpoints": [ 287.0, 215.921875, 287.5, 215.921875 ],
                    "source": [ "obj-7", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "midpoints": [ 276.5, 215.921875, 287.5, 215.921875 ],
                    "source": [ "obj-7", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "midpoints": [ 266.0, 215.921875, 287.5, 215.921875 ],
                    "source": [ "obj-7", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "midpoints": [ 255.5, 215.921875, 287.5, 215.921875 ],
                    "source": [ "obj-7", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "midpoints": [ 245.0, 223.921875, 77.5, 223.921875 ],
                    "source": [ "obj-7", 1 ]
                }
            }
        ],
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}