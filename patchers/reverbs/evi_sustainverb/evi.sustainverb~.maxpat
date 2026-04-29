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
        "rect": [ 34.0, 79.0, 856.0, 570.0 ],
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
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "dump" ],
                    "patching_rect": [ 638.0, 208.0, 45.0, 22.0 ],
                    "text": "t dump"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 638.0, 154.0, 52.0, 22.0 ],
                    "text": "gate 1 1"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 638.0, 100.0, 85.0, 22.0 ],
                    "text": "route init done"
                }
            },
            {
                "box": {
                    "id": "obj-85",
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
                        "rect": [ 530.0, 283.0, 410.0, 570.0 ],
                        "gridonopen": 2,
                        "lefttoolbarpinned": 2,
                        "toptoolbarpinned": 2,
                        "righttoolbarpinned": 2,
                        "bottomtoolbarpinned": 1,
                        "toolbars_unpinned_last_save": 7,
                        "boxanimatetime": 0,
                        "subpatcher_template": "PeteSubDefault10",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-18",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 139.0, 95.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 62.0, 213.0, 72.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "int" ],
                                    "patching_rect": [ 49.0, 135.0, 32.0, 22.0 ],
                                    "text": "t b 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 49.0, 96.0, 66.0, 22.0 ],
                                    "text": "route reset"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "int", "int" ],
                                    "patching_rect": [ 144.0, 267.0, 58.0, 22.0 ],
                                    "text": "change 0"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-4",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 341.0, 479.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-3",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 144.0, 479.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 144.0, 429.0, 66.0, 22.0 ],
                                    "text": "route done"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "int" ],
                                    "patching_rect": [ 96.0, 174.0, 67.0, 22.0 ],
                                    "text": "adstatus sr"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 191.0, 483.0, 103.0, 22.0 ],
                                    "text": "s #0_toSusv"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 144.0, 321.0, 115.0, 22.0 ],
                                    "text": "prepend samplerate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 144.0, 375.0, 187.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "filename": "evi_reverbs_inits.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js evi_reverbs_inits.js sustainverb"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-84",
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
                                    "hidden": 1,
                                    "id": "obj-15",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 154.0, 232.0, 177.0, 33.0 ],
                                    "text": "only on load or change (or gen~ reset). is this ok?"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
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
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-11", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-7", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-84", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-9", 1 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "transport", "audiosolo", "audiomute" ],
                        "toolbarexclusions": [ "audiopowerctrl", "browsebeap", "browsevizzie", "lessonbrowser" ]
                    },
                    "patching_rect": [ 704.0, 262.0, 34.0, 22.0 ],
                    "text": "p init"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 305.21428571428567, 473.0, 203.00000000000006, 20.0 ],
                    "text": "(for surround effects, etc)",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 165.21428571428572, 473.0, 140.0, 20.0 ],
                    "text": "(pure 16x16 Matrix)",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.5, 495.0, 140.0, 20.0 ],
                    "text": "(with Dry/Wet, etc)",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 305.21428571428567, 451.0, 203.00000000000006, 20.0 ],
                    "text": "|____ 4 decorrelated Taps ____|",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 165.21428571428572, 451.0, 140.0, 20.0 ],
                    "text": "|___ FDN only ___|",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.5, 473.0, 140.0, 20.0 ],
                    "text": "|____ REVERB ____|",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 458.2142857142858, 429.0, 50.0, 20.0 ],
                    "text": "4",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 407.2142857142858, 429.0, 50.0, 20.0 ],
                    "text": "3",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 356.21428571428567, 429.0, 50.0, 20.0 ],
                    "text": "2",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 305.21428571428567, 429.0, 50.0, 20.0 ],
                    "text": "1",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 235.21428571428567, 429.0, 50.0, 20.0 ],
                    "text": "Right",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 184.5, 429.0, 50.0, 20.0 ],
                    "text": "Left",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 104.5, 451.0, 50.0, 20.0 ],
                    "text": "Right",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 33.5, 451.0, 50.0, 20.0 ],
                    "text": "Left"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-24",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 557.5, 488.5, 292.0, 33.0 ],
                    "text": "stereo in / stereo (or multi) out 16x16 feedback delay network with extras reverb"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 403.5, 18.5, 254.0, 20.0 ],
                    "text": "@ttributes or messages to evi.sustainverb~",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 127.5, 261.5, 68.0, 22.0 ],
                    "text": "exportcode"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-64",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 240.5, 46.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.600000023841858, 0.400000035762787, 0.199999943375587, 1.0 ],
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 639.0, 315.5, 168.5, 22.0 ],
                    "saved_object_attributes": {
                        "client_rect": [ 1057, 45, 1440, 407 ],
                        "parameter_enable": 0,
                        "parameter_mappable": 0,
                        "storage_rect": [ 583, 69, 1034, 197 ]
                    },
                    "text": "pattrstorage evi_sustainverb",
                    "varname": "evi_sustainverb"
                }
            },
            {
                "box": {
                    "comment": "dumpout (pattrstorage)",
                    "id": "obj-58",
                    "index": 9,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 638.5, 399.5, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 2,
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
                        "rect": [ 0.0, 94.0, 1035.0, 526.0 ],
                        "bglocked": 1,
                        "gridonopen": 2,
                        "lefttoolbarpinned": 2,
                        "toptoolbarpinned": 2,
                        "righttoolbarpinned": 2,
                        "bottomtoolbarpinned": 1,
                        "toolbars_unpinned_last_save": 7,
                        "boxanimatetime": 0,
                        "subpatcher_template": "PeteSubDefault10",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 558.7142857142857, 213.0, 40.0, 22.0 ],
                                    "text": "evi.pz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 603.7142857142857, 174.0, 40.0, 22.0 ],
                                    "text": "evi.pz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 247.0, 135.0, 40.0, 22.0 ],
                                    "text": "evi.pz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 98.42857142857143, 213.5, 40.0, 22.0 ],
                                    "text": "evi.pz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 513.7142857142857, 213.0, 40.0, 22.0 ],
                                    "text": "evi.pz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 49.0, 252.0, 40.0, 22.0 ],
                                    "text": "evi.pz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 493.8571428571429, 384.0, 44.5, 22.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 493.8571428571429, 345.0, 91.0, 22.0 ],
                                    "text": "routepass reset"
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
                                    "patching_rect": [ 384.0, 438.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 8,
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
                                        "rect": [ 322.0, 559.0, 1139.0, 375.0 ],
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
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 974.0, 96.0, 118.0, 22.0 ],
                                                    "text": "prepend smoothtime"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 709.0, 96.0, 95.0, 22.0 ],
                                                    "text": "prepend outgain"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 821.0, 96.0, 91.0, 22.0 ],
                                                    "text": "prepend drywet"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 543.0, 96.0, 104.0, 22.0 ],
                                                    "text": "prepend highpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 440.0, 96.0, 86.0, 22.0 ],
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
                                                    "patching_rect": [ 148.0, 96.0, 105.0, 22.0 ],
                                                    "text": "prepend feedback"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 315.0, 96.0, 108.0, 22.0 ],
                                                    "text": "prepend crossover"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 49.0, 96.0, 82.0, 22.0 ],
                                                    "text": "prepend early"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-36",
                                                    "index": 8,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 974.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-37",
                                                    "index": 7,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 821.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-38",
                                                    "index": 6,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 709.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-39",
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
                                                    "id": "obj-40",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 440.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-41",
                                                    "index": 5,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 543.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-42",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 148.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-43",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 315.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-44",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 49.0, 180.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "linecount": 12,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 148.0, 180.0, 488.8571428571428, 181.0 ],
                                                    "text": "// global controls\nParam\t  smoothtime(43, min=1, max=500);\t\t// ms\n// reverb controls\nParam\t  early(0, min=0, max=1);\t\t\t\t// % 0..1 ( OR 0/1 )\nParam  \tfeedback(sqrt1_2, min=0, max=1);\t// % 0..1\n// damping controls\nParam\t  crossover(3000, min=10, max=10000);\t// Hz\nParam\t  damp(0.2, min=0, max=1);\t\t\t// % 0..1\nParam\t  highpass(0, min=0, max=1);\t\t\t// % 0..1 ( OR 0/1 )\n// mixing controls\nParam\t  outgain(-3, min=-80, max=20);\t\t// dB\nParam\t  drywet(1, min=0, max=1);\t\t\t// % 0..1\n"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "midpoints": [ 58.5, 148.5, 58.5, 148.5 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "midpoints": [ 324.5, 148.5, 58.5, 148.5 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "midpoints": [ 157.5, 148.5, 58.5, 148.5 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "midpoints": [ 449.5, 148.5, 58.5, 148.5 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "midpoints": [ 552.5, 148.5, 58.5, 148.5 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "midpoints": [ 830.5, 148.5, 58.5, 148.5 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "midpoints": [ 718.5, 148.5, 58.5, 148.5 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-36", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-26", 0 ],
                                                    "source": [ "obj-37", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-38", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "source": [ "obj-39", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "source": [ "obj-41", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "source": [ "obj-42", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "source": [ "obj-43", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "midpoints": [ 983.5, 148.5, 58.5, 148.5 ],
                                                    "source": [ "obj-6", 0 ]
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
                                        "toolbaradditions": [ "transport", "audiosolo", "audiomute" ],
                                        "toolbarexclusions": [ "audiopowerctrl", "browsebeap", "browsevizzie", "lessonbrowser" ]
                                    },
                                    "patching_rect": [ 49.0, 345.0, 365.0, 22.0 ],
                                    "text": "p controls_for_Gen"
                                }
                            },
                            {
                                "box": {
                                    "frozen_object_attributes": {
                                        "autorestore": 0
                                    },
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 802.7142857142857, 250.5, 101.0, 22.0 ],
                                    "restore": [ 43.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr smoothTime",
                                    "varname": "smoothTime"
                                }
                            },
                            {
                                "box": {
                                    "frozen_object_attributes": {
                                        "autorestore": 0
                                    },
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 603.7142857142857, 213.0, 74.0, 22.0 ],
                                    "restore": [ 1.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr dryWet",
                                    "varname": "dryWet"
                                }
                            },
                            {
                                "box": {
                                    "frozen_object_attributes": {
                                        "autorestore": 0
                                    },
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 558.7142857142857, 252.0, 78.0, 22.0 ],
                                    "restore": [ -3.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr fdnGain",
                                    "varname": "fdnGain"
                                }
                            },
                            {
                                "box": {
                                    "frozen_object_attributes": {
                                        "autorestore": 0
                                    },
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 513.7142857142857, 291.0, 85.0, 22.0 ],
                                    "restore": [ 0.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr highPass",
                                    "varname": "highPass"
                                }
                            },
                            {
                                "box": {
                                    "frozen_object_attributes": {
                                        "autorestore": 0
                                    },
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 196.85714285714286, 213.0, 88.0, 22.0 ],
                                    "restore": [ 3000.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr crossover",
                                    "varname": "crossover"
                                }
                            },
                            {
                                "box": {
                                    "frozen_object_attributes": {
                                        "autorestore": 0
                                    },
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 247.28571428571428, 174.0, 66.0, 22.0 ],
                                    "restore": [ 0.2 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr damp",
                                    "varname": "damp"
                                }
                            },
                            {
                                "box": {
                                    "frozen_object_attributes": {
                                        "autorestore": 0
                                    },
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 98.42857142857143, 252.0, 85.0, 22.0 ],
                                    "restore": [ 0.707107 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr feedback",
                                    "varname": "feedback"
                                }
                            },
                            {
                                "box": {
                                    "frozen_object_attributes": {
                                        "autorestore": 0
                                    },
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 49.0, 291.0, 62.0, 22.0 ],
                                    "restore": [ 0.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr early",
                                    "varname": "early"
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
                                    "patching_rect": [ 519.3571428571429, 438.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 10,
                                    "numoutlets": 10,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 49.0, 81.0, 463.8571428571429, 22.0 ],
                                    "text": "route early feedback late crossover damp highpass gain drywet smoothtime"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.0, 384.0, 98.0, 22.0 ],
                                    "text": "s #0_toSusv"
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
                                    "patching_rect": [ 49.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-53",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 772.7142857142857, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 906.1428571428573, 251.5, 83.0, 20.0 ],
                                    "text": "millseconds"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 679.7142857142857, 214.0, 150.0, 20.0 ],
                                    "text": "% 0 .. 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 638.7142857142857, 253.0, 150.0, 20.0 ],
                                    "text": "dB"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 600.7142857142858, 292.0, 150.0, 20.0 ],
                                    "text": "0/1 OR % 0..1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 286.8571428571429, 214.0, 149.00000000000009, 20.0 ],
                                    "text": "Hz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 314.99999999999994, 175.0, 149.00000000000006, 20.0 ],
                                    "text": "% 0..1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 185.42857142857144, 253.0, 149.00000000000006, 20.0 ],
                                    "text": "% 0..1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 113.0, 292.0, 149.00000000000006, 20.0 ],
                                    "text": "% 0..1 OR 0/1"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontface": 1,
                                    "id": "obj-57",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 772.7142857142857, 195.5, 153.0, 20.0 ],
                                    "text": "Global"
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
                                    "patching_rect": [ 483.71428571428567, 175.0, 153.0, 20.0 ],
                                    "text": "MIX"
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
                                    "patching_rect": [ 34.0, 121.0, 153.0, 20.0 ],
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
                                    "id": "obj-51",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 772.7142857142857, 195.5, 216.0000000000001, 132.5 ],
                                    "proportion": 0.39,
                                    "rounded": 2
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
                                    "patching_rect": [ 483.71428571428567, 174.0, 227.0, 154.0 ],
                                    "proportion": 0.39,
                                    "rounded": 2
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
                                    "patching_rect": [ 34.0, 121.0, 293.0, 207.0 ],
                                    "proportion": 0.39,
                                    "rounded": 2
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 4 ],
                                    "midpoints": [ 523.2142857142857, 323.5, 256.2142857142857, 323.5 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 5 ],
                                    "midpoints": [ 568.2142857142857, 328.5, 305.6428571428571, 328.5 ],
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
                                    "destination": [ "obj-45", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 1 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 6 ],
                                    "midpoints": [ 613.2142857142857, 333.0, 355.07142857142856, 333.0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 7 ],
                                    "midpoints": [ 812.2142857142857, 338.5, 404.5, 338.5 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 575.3571428571429, 419.0, 528.8571428571429, 419.0 ],
                                    "source": [ "obj-4", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 3 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 404.5, 142.5, 613.2142857142857, 142.5 ],
                                    "source": [ "obj-50", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "midpoints": [ 355.0714285714286, 149.0, 568.2142857142857, 149.0 ],
                                    "source": [ "obj-50", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "midpoints": [ 305.6428571428572, 156.5, 523.2142857142857, 156.5 ],
                                    "source": [ "obj-50", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "midpoints": [ 453.92857142857144, 120.25, 812.2142857142857, 120.25 ],
                                    "source": [ "obj-50", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-50", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-50", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-50", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-50", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-50", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-6", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "midpoints": [ 503.3571428571429, 421.5, 393.5, 421.5 ],
                                    "source": [ "obj-6", 0 ]
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
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 2 ],
                                    "source": [ "obj-9", 0 ]
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
                        "toolbaradditions": [ "transport", "audiosolo", "audiomute" ],
                        "toolbarexclusions": [ "audiopowerctrl", "browsebeap", "browsevizzie", "lessonbrowser" ]
                    },
                    "patching_rect": [ 704.0, 208.0, 103.5, 22.0 ],
                    "text": "p parseAndPattr",
                    "varname": "eviSustainverb"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 259.5, 153.5, 103.0, 22.0 ],
                    "text": "route pattrstorage"
                }
            },
            {
                "box": {
                    "comment": "(signal) Audio In Right / messages to evi.sustainverb~",
                    "id": "obj-47",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 207.5, 43.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(signal) Audio In Left / messages to evi.sustainverb~",
                    "id": "obj-20",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 87.5, 43.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 207.5, 99.5, 71.0, 22.0 ],
                    "text": "route signal"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 87.5, 99.5, 71.0, 22.0 ],
                    "text": "route signal"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 207.5, 207.5, 47.0, 22.0 ],
                    "text": "t signal"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 87.5, 207.5, 47.0, 22.0 ],
                    "text": "t signal"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 270.0, 41.0, 387.0, 35.0 ],
                    "text": "patcherargs @early 0. @feedback 0.707107 @crossover 3000. @damp 0.2 @highpass 0. @gain -3. @drywet 1. @smoothtime 43."
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-21",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 387.5, 261.5, 35.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 259.5, 261.5, 103.0, 22.0 ],
                    "text": "r #0_toSusv"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 502.5, 316.5, 134.0, 20.0 ],
                    "text": "store and recall",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 671.0, 404.5, 126.5, 20.0 ],
                    "text": "dumpout"
                }
            },
            {
                "box": {
                    "comment": "(signal) FDN AUX Tap 4",
                    "id": "obj-16",
                    "index": 8,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 468.2142857142857, 399.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(signal) FDN AUX Tap 3",
                    "id": "obj-13",
                    "index": 7,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 417.2142857142857, 399.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(signal) FDN AUX Tap 2",
                    "id": "obj-12",
                    "index": 6,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 366.2142857142857, 399.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(signal) FDN AUX Tap 1",
                    "id": "obj-11",
                    "index": 5,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 315.2142857142857, 399.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(signal) FDN Out Right",
                    "id": "obj-10",
                    "index": 4,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 245.21428571428572, 399.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(signal) FDN Out Left",
                    "id": "obj-8",
                    "index": 3,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 194.5, 399.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(signal) Rvrb Out Right",
                    "id": "obj-6",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 104.5, 399.0, 50.0, 50.0 ]
                }
            },
            {
                "box": {
                    "comment": "(signal) Rvrb Out Left",
                    "id": "obj-5",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 33.5, 399.0, 50.0, 50.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.990415692329407, 0.500269114971161, 0.032865822315216, 1.0 ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 8,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 87.5, 315.5, 138.0, 22.0 ],
                    "saved_object_attributes": {
                        "autoexport": 0
                    },
                    "text": "gen~ evi_sustainverb"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 1 ],
                    "source": [ "obj-18", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "source": [ "obj-18", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "hidden": 1,
                    "midpoints": [ 397.0, 299.0, 97.0, 299.0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "midpoints": [ 269.0, 299.0, 97.0, 299.0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "hidden": 1,
                    "midpoints": [ 137.0, 299.0, 97.0, 299.0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-40", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 1 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "midpoints": [ 149.0, 137.0, 269.0, 137.0 ],
                    "source": [ "obj-44", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-45", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "midpoints": [ 353.0, 191.0, 713.5, 191.0 ],
                    "source": [ "obj-48", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.600000023841858, 0.400000035762787, 0.199999943375587, 1.0 ],
                    "destination": [ "obj-59", 0 ],
                    "midpoints": [ 269.0, 247.5, 648.5, 247.5 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-52", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-52", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-52", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-52", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-52", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-52", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-52", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "midpoints": [ 798.0, 299.0, 97.0, 299.0 ],
                    "source": [ "obj-54", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.600000023841858, 0.400000035762787, 0.199999943375587, 1.0 ],
                    "destination": [ "obj-58", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-64", 0 ]
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
        "toolbaradditions": [ "audiomute", "audiosolo" ],
        "toolbarexclusions": [ "audiomute" ]
    }
}