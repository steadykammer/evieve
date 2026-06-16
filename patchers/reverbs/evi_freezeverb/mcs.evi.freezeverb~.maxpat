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
        "rect": [ 143.0, 178.0, 855.0, 510.0 ],
        "bglocked": 1,
        "gridonopen": 2,
        "lefttoolbarpinned": 2,
        "toptoolbarpinned": 2,
        "righttoolbarpinned": 2,
        "bottomtoolbarpinned": 1,
        "toolbars_unpinned_last_save": 7,
        "subpatcher_template": "PeteSub12",
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "dump" ],
                    "patching_rect": [ 623.0, 232.0, 45.0, 22.0 ],
                    "text": "t dump"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 623.0, 154.0, 52.0, 22.0 ],
                    "text": "gate 1 1"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 623.0, 100.0, 85.0, 22.0 ],
                    "text": "route init done"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 3,
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
                        "rect": [ 0.0, 66.0, 615.0, 794.0 ],
                        "gridonopen": 2,
                        "toolbarvisible": 0,
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
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "int", "int" ],
                                    "patching_rect": [ 361.0, 250.0, 58.0, 22.0 ],
                                    "text": "change 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 246.0, 448.0, 134.0, 20.0 ],
                                    "text": "milliseconds"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 232.0, 368.0, 148.0, 20.0 ],
                                    "text": "samples"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 249.0, 694.0, 326.5, 47.0 ],
                                    "text": "for an audio rate exact triggering solution rather than this very silly message rate version, @see the more expensive: evi_freezeverbtrigger.gendsp"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
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
                                        "rect": [ 293.0, 66.0, 645.0, 721.0 ],
                                        "gridonopen": 2,
                                        "toolbarvisible": 0,
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
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "int" ],
                                                    "patching_rect": [ 49.0, 345.0, 43.0, 22.0 ],
                                                    "text": "t i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 465.0, 546.0, 120.0, 22.0 ],
                                                    "text": "list.lookup ms samps"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 465.0, 585.0, 101.0, 22.0 ],
                                                    "text": "list.change stupid"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 390.0, 462.0, 94.0, 22.0 ],
                                                    "text": "gate 2 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "int" ],
                                                    "patching_rect": [ 96.0, 120.0, 29.5, 22.0 ],
                                                    "text": "t l 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "int" ],
                                                    "patching_rect": [ 49.0, 120.0, 29.5, 22.0 ],
                                                    "text": "t i 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 139.0, 306.0, 52.0, 22.0 ],
                                                    "text": "route int"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 49.0, 174.0, 47.0, 22.0 ],
                                                    "text": "clip 0 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 49.0, 81.0, 66.0, 22.0 ],
                                                    "text": "route int"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "int", "int" ],
                                                    "patching_rect": [ 390.0, 585.0, 58.0, 22.0 ],
                                                    "text": "change 2"
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
                                                    "patching_rect": [ 465.0, 639.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-51",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 181.0, 586.0, 91.0, 20.0 ],
                                                    "text": "default ms"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-40",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 191.0, 462.0, 34.0, 22.0 ],
                                                    "text": "sel 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-39",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 139.0, 462.0, 34.0, 22.0 ],
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
                                                    "patching_rect": [ 191.0, 546.0, 41.0, 22.0 ],
                                                    "text": "i 7840"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-37",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 139.0, 546.0, 35.0, 22.0 ],
                                                    "text": "i 164"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-36",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "int" ],
                                                    "patching_rect": [ 73.0, 423.0, 63.0, 22.0 ],
                                                    "text": "t i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-35",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 73.0, 384.0, 29.5, 22.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 49.0, 267.0, 109.0, 22.0 ],
                                                    "text": "substitute samps 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 49.0, 228.0, 89.0, 22.0 ],
                                                    "text": "substitute ms 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 117.0, 585.0, 62.0, 22.0 ],
                                                    "text": "switch 2 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-53",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 465.0, 19.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-54",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 345.0, 19.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-55",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 313.0, 19.0, 30.0, 30.0 ]
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
                                                    "patching_rect": [ 117.0, 639.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-35", 0 ],
                                                    "source": [ "obj-12", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                                                    "destination": [ "obj-9", 1 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                                                    "destination": [ "obj-1", 0 ],
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
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-3", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-56", 0 ],
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "source": [ "obj-31", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "source": [ "obj-31", 0 ]
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
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-32", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-36", 0 ],
                                                    "source": [ "obj-35", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 0 ],
                                                    "source": [ "obj-36", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-39", 0 ],
                                                    "midpoints": [ 82.5, 453.0, 148.5, 453.0 ],
                                                    "order": 1,
                                                    "source": [ "obj-36", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 0 ],
                                                    "midpoints": [ 82.5, 453.0, 200.5, 453.0 ],
                                                    "order": 0,
                                                    "source": [ "obj-36", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 1 ],
                                                    "source": [ "obj-37", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 2 ],
                                                    "source": [ "obj-38", 0 ]
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
                                                    "destination": [ "obj-31", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-38", 0 ],
                                                    "source": [ "obj-40", 0 ]
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
                                                    "destination": [ "obj-3", 0 ],
                                                    "midpoints": [ 474.5, 64.5, 58.5, 64.5 ],
                                                    "source": [ "obj-53", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-37", 0 ],
                                                    "midpoints": [ 354.5, 509.0, 148.5, 509.0 ],
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-38", 0 ],
                                                    "midpoints": [ 322.5, 527.0, 200.5, 527.0 ],
                                                    "source": [ "obj-55", 0 ]
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
                                                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-7", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-31", 0 ],
                                                    "midpoints": [ 105.5, 210.5, 58.5, 210.5 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-8", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-9", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "transport", "audiosolo", "audiomute" ],
                                        "toolbarexclusions": [ "audiopowerctrl", "browsebeap", "browsevizzie", "lessonbrowser" ]
                                    },
                                    "patching_rect": [ 173.0, 540.0, 94.0, 22.0 ],
                                    "text": "p report_units"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 248.0, 579.0, 159.0, 22.0 ],
                                    "text": "prepend freezeretriggerunits"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 211.0, 447.0, 33.0, 22.0 ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 372.0, 157.0, 64.0, 22.0 ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 173.0, 367.0, 57.0, 22.0 ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 248.0, 118.0, 143.0, 22.0 ],
                                    "text": "route freezeretriggerunits"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 211.0, 408.0, 225.0, 22.0 ],
                                    "text": "expr int( ( $i1 * 1000. * (1. / $i2) ) + 1 )"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 173.0, 328.0, 301.0, 22.0 ],
                                    "text": "expr max( int(($f1 * 3.333333 * 0.001) * $i2 + 0.5)\\, $i3 )"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 50.0, 579.0, 45.0, 22.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-14",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 173.0, 702.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "int", "int" ],
                                    "patching_rect": [ 173.0, 579.0, 58.0, 22.0 ],
                                    "text": "change 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 173.0, 618.0, 157.0, 22.0 ],
                                    "text": "prepend freezeretriggertime"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-34",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 248.0, 71.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 81.0, 289.0, 60.0, 22.0 ],
                                    "text": "t i 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 81.0, 328.0, 29.5, 22.0 ],
                                    "text": "- 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 173.0, 289.0, 207.0, 22.0 ],
                                    "text": "pak 49. 48000 64"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 81.0, 486.0, 163.0, 22.0 ],
                                    "text": "pipe 164"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 50.0, 250.0, 50.0, 22.0 ],
                                    "text": "split 0 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "int" ],
                                    "patching_rect": [ 295.0, 211.0, 85.0, 22.0 ],
                                    "text": "adstatus sigvs"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 540.0, 89.0, 22.0 ],
                                    "text": "prepend freeze"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 157.0, 47.0, 22.0 ],
                                    "text": "clip 0 4"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-21",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 50.0, 71.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-22",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 173.0, 71.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-23",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 76.0, 702.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 246.0, 487.0, 329.0, 20.0 ],
                                    "text": "wait for smooth time of internal ramps, minimum sigvs"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 199.0, 35.0, 275.0, 20.0 ],
                                    "text": "3=retrigger on + dry,     4=retrigger on solo freeze"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 19.0, 424.0, 20.0 ],
                                    "text": "freeze message :: 0=off,      1=on + dry,                   2=on solo freeze"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 332.0, 619.0, 243.0, 20.0 ],
                                    "text": "in case user wants to match a delay~ / etc"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 382.0, 293.0, 176.0, 33.0 ],
                                    "text": "this mirrors what is happening in the GenExpr code"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "color": [ 0.99, 0.5, 0.033, 1.0 ],
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.99, 0.5, 0.033, 1.0 ],
                                    "destination": [ "obj-15", 0 ],
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
                                    "color": [ 0.99, 0.5, 0.033, 1.0 ],
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-15", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-16", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.99, 0.5, 0.033, 1.0 ],
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-2", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.99, 0.5, 0.033, 1.0 ],
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-24", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 2 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-25", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 1 ],
                                    "midpoints": [ 381.5, 196.0, 276.5, 196.0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 1 ],
                                    "source": [ "obj-26", 1 ]
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
                                    "midpoints": [ 131.5, 524.5, 59.5, 524.5 ],
                                    "source": [ "obj-29", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "midpoints": [ 90.5, 524.0, 59.5, 524.0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "source": [ "obj-49", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 1 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 2 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "source": [ "obj-57", 1 ]
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
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "transport", "audiosolo", "audiomute" ],
                        "toolbarexclusions": [ "audiopowerctrl", "browsebeap", "browsevizzie", "lessonbrowser" ]
                    },
                    "patching_rect": [ 280.0, 286.0, 67.0, 22.0 ],
                    "text": "p freeze"
                }
            },
            {
                "box": {
                    "color": [ 0.990415692329407, 0.500269114971161, 0.032865822315216, 1.0 ],
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 34.0, 340.0, 143.0, 22.0 ],
                    "text": "mcs.gen~ evi_freezeverb"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 304.0, 232.0, 185.0, 22.0 ],
                    "text": "getattr smoothtime @listen 1"
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "" ],
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
                        "rect": [ 0.0, 181.0, 601.0, 675.0 ],
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
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 211.0, 267.0, 72.0, 22.0 ],
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
                                    "patching_rect": [ 198.0, 189.0, 32.0, 22.0 ],
                                    "text": "t b 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 198.0, 150.0, 66.0, 22.0 ],
                                    "text": "route reset"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "int", "int" ],
                                    "patching_rect": [ 293.0, 321.0, 58.0, 22.0 ],
                                    "text": "change 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "int" ],
                                    "patching_rect": [ 245.0, 228.0, 67.0, 22.0 ],
                                    "text": "adstatus sr"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-16",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 303.0, 286.0, 177.0, 33.0 ],
                                    "text": "only on load or change (or gen~ reset). is this ok?"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.0, 120.0, 51.0, 47.0 ],
                                    "text": "not saved in pattr"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 49.0, 96.0, 168.0, 22.0 ],
                                    "text": "routepass freezeretriggerunits"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 293.0, 537.0, 22.0, 22.0 ],
                                    "text": "t 0"
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
                                    "patching_rect": [ 488.0, 591.0, 30.0, 30.0 ]
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
                                    "patching_rect": [ 293.0, 591.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 293.0, 483.0, 66.0, 22.0 ],
                                    "text": "route done"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 340.0, 537.0, 120.0, 22.0 ],
                                    "text": "s #0_toFreezev"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 293.0, 375.0, 115.0, 22.0 ],
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
                                    "patching_rect": [ 293.0, 429.0, 183.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "filename": "evi_reverbs_inits.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js evi_reverbs_inits.js freezeverb"
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
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "midpoints": [ 302.5, 359.73046875, 497.5, 359.73046875 ],
                                    "order": 0,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "order": 1,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-14", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-15", 0 ]
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
                                    "destination": [ "obj-4", 0 ],
                                    "midpoints": [ 58.5, 134.5, 497.5, 134.5 ],
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
                                    "destination": [ "obj-14", 0 ],
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
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-84", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-9", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
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
                    "patching_rect": [ 689.0, 232.0, 64.0, 22.0 ],
                    "text": "p init"
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
                    "patching_rect": [ 54.0, 286.0, 68.0, 22.0 ],
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
                    "patching_rect": [ 202.0, 46.5, 24.0, 24.0 ]
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
                    "patching_rect": [ 623.0, 340.0, 155.0, 22.0 ],
                    "saved_object_attributes": {
                        "client_rect": [ 100, 172, 458, 650 ],
                        "parameter_enable": 0,
                        "parameter_mappable": 0,
                        "storage_rect": [ 100, 172, 1047, 686 ]
                    },
                    "text": "pattrstorage evi_freezeverb",
                    "varname": "evi_freezeverb"
                }
            },
            {
                "box": {
                    "comment": "dumpout (pattrstorage)",
                    "id": "obj-58",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 623.0, 423.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(multichannelsignal) Audio Out Left & Right",
                    "id": "obj-56",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 34.0, 423.0, 30.0, 30.0 ]
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
                        "rect": [ 100.0, 138.0, 1231.0, 644.0 ],
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
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 1083.75, 174.0, 40.0, 22.0 ],
                                    "text": "evi.pz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 937.5, 174.0, 40.0, 22.0 ],
                                    "text": "evi.pz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 642.1428571428571, 174.0, 40.0, 22.0 ],
                                    "text": "evi.pz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 592.7142857142857, 252.0, 40.0, 22.0 ],
                                    "text": "evi.pz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 478.42857142857144, 174.0, 40.0, 22.0 ],
                                    "text": "evi.pz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 423.42857142857144, 213.0, 40.0, 22.0 ],
                                    "text": "evi.pz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 374.0, 250.75, 40.0, 22.0 ],
                                    "text": "evi.pz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 197.0, 135.0, 40.0, 22.0 ],
                                    "text": "evi.pz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 147.85714285714286, 174.0, 40.0, 22.0 ],
                                    "text": "evi.pz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 98.42857142857143, 213.5, 40.0, 22.0 ],
                                    "text": "evi.pz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 49.0, 252.0, 40.0, 22.0 ],
                                    "text": "evi.pz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 782.0, 81.0, 143.0, 22.0 ],
                                    "text": "route freezeretriggerunits"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 692.0, 477.0, 44.5, 22.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 5,
                                    "outlettype": [ "", "", "", "", "" ],
                                    "patching_rect": [ 692.0, 438.0, 339.0, 22.0 ],
                                    "text": "routepass reset freeze freezeretriggertime freezeretriggerunits"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1083.75, 269.0, 100.0, 20.0 ],
                                    "text": "% ± 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 937.5, 269.0, 100.0, 20.0 ],
                                    "text": "% ± 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1052.75, 237.0, 100.0, 20.0 ],
                                    "text": "Hz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 921.75, 237.0, 100.0, 20.0 ],
                                    "text": "Hz"
                                }
                            },
                            {
                                "box": {
                                    "frozen_object_attributes": {
                                        "autorestore": 0
                                    },
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1083.75, 291.0, 97.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "eqLowGain",
                                            "parameter_mmax": 1.0,
                                            "parameter_mmin": -1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "eqLowGain",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "saved_object_attributes": {
                                        "initial": [ 0.0 ],
                                        "parameter_enable": 1,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr eqLowGain",
                                    "varname": "eqLowGain"
                                }
                            },
                            {
                                "box": {
                                    "frozen_object_attributes": {
                                        "autorestore": 0
                                    },
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1052.75, 213.0, 96.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 500.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "eqLowFreq",
                                            "parameter_mmax": 4000.0,
                                            "parameter_mmin": 63.5,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "eqLowFreq",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 3
                                        }
                                    },
                                    "saved_object_attributes": {
                                        "initial": [ 500.0 ],
                                        "parameter_enable": 1,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr eqLowFreq",
                                    "varname": "eqLowFreq"
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
                                    "patching_rect": [ 937.5, 291.0, 99.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "eqHighGain",
                                            "parameter_mmax": 1.0,
                                            "parameter_mmin": -1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "eqHighGain",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "saved_object_attributes": {
                                        "initial": [ 0.0 ],
                                        "parameter_enable": 1,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr eqHighGain",
                                    "varname": "eqHighGain"
                                }
                            },
                            {
                                "box": {
                                    "frozen_object_attributes": {
                                        "autorestore": 0
                                    },
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 921.75, 213.0, 99.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 2000.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "eqHighFreq",
                                            "parameter_mmax": 15000.0,
                                            "parameter_mmin": 500.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "eqHighFreq",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 3
                                        }
                                    },
                                    "saved_object_attributes": {
                                        "initial": [ 2000.0 ],
                                        "parameter_enable": 1,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr eqHighFreq",
                                    "varname": "eqHighFreq"
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
                                                    "outlettype": [ "" ],
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
                                    "patching_rect": [ 906.0, 360.0, 82.0, 22.0 ],
                                    "text": "p eq_for_Gen"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 906.0, 399.0, 125.0, 22.0 ],
                                    "text": "s #0_toFreezev"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 745.1428571428571, 214.0, 150.0, 20.0 ],
                                    "text": "in milliseconds"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 558.4285714285714, 214.0, 100.0, 20.0 ],
                                    "text": "dB"
                                }
                            },
                            {
                                "box": {
                                    "frozen_object_attributes": {
                                        "autorestore": 0
                                    },
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 642.1428571428571, 213.0, 101.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 49.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "smoothTime",
                                            "parameter_mmax": 500.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "smoothTime",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "saved_object_attributes": {
                                        "initial": [ 49.0 ],
                                        "parameter_enable": 1,
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
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 478.42857142857144, 213.0, 78.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ -12 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "dryGain",
                                            "parameter_mmax": 0.0,
                                            "parameter_mmin": -90.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "dryGain",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "saved_object_attributes": {
                                        "initial": [ -12 ],
                                        "parameter_enable": 1,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr dryGain",
                                    "varname": "dryGain"
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
                                    "patching_rect": [ 692.0, 561.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 9,
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
                                        "rect": [ 26.0, 450.0, 1080.0, 450.0 ],
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
                                                    "id": "obj-4",
                                                    "index": 9,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 919.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-7",
                                                    "index": 8,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 808.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 919.0, 96.0, 118.0, 22.0 ],
                                                    "text": "prepend smoothtime"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 808.0, 96.0, 94.0, 22.0 ],
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
                                                    "patching_rect": [ 673.0, 96.0, 73.0, 22.0 ],
                                                    "text": "prepend dry"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 482.0, 96.0, 82.0, 22.0 ],
                                                    "text": "prepend early"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 581.0, 96.0, 75.0, 22.0 ],
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
                                                    "patching_rect": [ 336.0, 96.0, 84.0, 22.0 ],
                                                    "text": "prepend width"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 139.0, 96.0, 77.0, 22.0 ],
                                                    "text": "prepend size"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 233.0, 96.0, 86.0, 22.0 ],
                                                    "text": "prepend damp"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 49.0, 96.0, 73.0, 22.0 ],
                                                    "text": "prepend pre"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-36",
                                                    "index": 7,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 673.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-37",
                                                    "index": 6,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 581.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-38",
                                                    "index": 5,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 482.0, 34.0, 30.0, 30.0 ]
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
                                                    "patching_rect": [ 336.0, 34.0, 30.0, 30.0 ]
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
                                                    "patching_rect": [ 139.0, 34.0, 30.0, 30.0 ]
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
                                                    "patching_rect": [ 233.0, 34.0, 30.0, 30.0 ]
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
                                                    "linecount": 17,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 177.0, 180.0, 562.0000000000001, 234.0 ],
                                                    "text": "// reverb\nParam\tpre(9, min=0, max=143);\t\t\t\t\t\t// pre delay time in ms\nParam\tsize(0.78, min=0, max=1);\t\t\t\t\t// % 0..1 \"roomsize\" (comb filters feedback)\nParam\tdamp(0.42, min=0, max=1);\t\t\t\t\t// % 0..1, comb filters damping\nParam\twidth(0.7, min=0, max=1);\t\t\t\t\t// % 0..1\n// gains\nParam\tearly(-20, min=-90, max=0);\t\t\t\t\t// dB (or init off?)\nParam\twet(-9.542434, min=-90, max=0);\t\t\t\t// dB (init 1/scalewet)\nParam\tdry(-12, min=-90, max=0);\t\t\t\t\t// dB\n// eq (compute coefficients externally)\nParam\thighshelfG(0.134148, min=0.35, max=1.32);\t// post-warped frequency (g / (1 + g))\nParam\thighshelfK(0, min=-3, max=1);\t\t\t\t// -3=shelfboost..0=bypass..shelf..1=pass\nParam\tlowshelfG(0.035016, min=0, max=0.9);\t\t// post-warped frequency (g / (1 + g))\nParam\tlowshelfK(0, min=-3, max=1);\t\t\t\t// -3=shelfboost..0=bypass..shelf..1=pass\n// special\nParam\tbypass(0, min=0, max=1);\t\t\t\t\t// also cpu-off, but no reset in gen~ !!\nParam\t\tsmoothtime(49, min=1, max=500);\t\t\t// ms"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "midpoints": [ 928.5, 148.5, 58.5, 148.5 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
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
                                                    "midpoints": [ 242.5, 148.5, 58.5, 148.5 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "midpoints": [ 148.5, 148.5, 58.5, 148.5 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "midpoints": [ 817.5, 148.5, 58.5, 148.5 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "midpoints": [ 345.5, 148.5, 58.5, 148.5 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "midpoints": [ 590.5, 148.5, 58.5, 148.5 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "midpoints": [ 491.5, 148.5, 58.5, 148.5 ],
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
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-4", 0 ]
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
                                                    "midpoints": [ 682.5, 148.5, 58.5, 148.5 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-7", 0 ]
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
                                    "patching_rect": [ 49.0, 360.0, 414.4285714285714, 22.0 ],
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
                                    "patching_rect": [ 592.7142857142857, 291.0, 74.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "bypass",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "bypass",
                                            "parameter_type": 1,
                                            "parameter_unitstyle": 0
                                        }
                                    },
                                    "saved_object_attributes": {
                                        "initial": [ 0.0 ],
                                        "parameter_enable": 1,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr bypass",
                                    "varname": "bypass"
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
                                    "patching_rect": [ 423.42857142857144, 252.0, 80.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ -9.542434 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "wetGain",
                                            "parameter_mmax": 0.0,
                                            "parameter_mmin": -90.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "wetGain",
                                            "parameter_type": 0
                                        }
                                    },
                                    "saved_object_attributes": {
                                        "initial": [ -9.542434 ],
                                        "parameter_enable": 1,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr wetGain",
                                    "varname": "wetGain"
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
                                    "patching_rect": [ 374.0, 291.0, 87.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ -20.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "earlyGain",
                                            "parameter_mmax": 0.0,
                                            "parameter_mmin": -90.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "earlyGain",
                                            "parameter_type": 0
                                        }
                                    },
                                    "saved_object_attributes": {
                                        "initial": [ -20.0 ],
                                        "parameter_enable": 1,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr earlyGain",
                                    "varname": "earlyGain"
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
                                    "patching_rect": [ 147.85714285714286, 213.0, 82.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.42 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "damping",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "damping",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "saved_object_attributes": {
                                        "initial": [ 0.42 ],
                                        "parameter_enable": 1,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr damping",
                                    "varname": "damping"
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
                                    "patching_rect": [ 197.28571428571428, 174.0, 64.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.7 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "width",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "width",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "saved_object_attributes": {
                                        "initial": [ 0.7 ],
                                        "parameter_enable": 1,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr width",
                                    "varname": "width"
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
                                    "patching_rect": [ 98.42857142857143, 252.0, 93.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.78 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "reverbSize",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "reverbSize",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "saved_object_attributes": {
                                        "initial": [ 0.78 ],
                                        "parameter_enable": 1,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr reverbSize",
                                    "varname": "reverbSize"
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
                                    "patching_rect": [ 49.0, 291.0, 84.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 9.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "preDelay",
                                            "parameter_mmax": 143.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "preDelay",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "saved_object_attributes": {
                                        "initial": [ 9.0 ],
                                        "parameter_enable": 1,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr preDelay",
                                    "varname": "preDelay"
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
                                    "patching_rect": [ 1012.0, 561.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 14,
                                    "numoutlets": 14,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 49.0, 81.0, 661.5714285714286, 22.0 ],
                                    "text": "route predelay size damping width early wet dry highfrequency highgain lowfrequency lowgain bypass smoothtime"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.0, 399.0, 121.0, 22.0 ],
                                    "text": "s #0_toFreezev"
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
                                    "patching_rect": [ 782.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 814.0, 39.0, 58.0, 20.0 ],
                                    "text": "init SR"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 668.1428571428573, 292.0, 150.0, 20.0 ],
                                    "text": "int 0/1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 506.42857142857144, 253.0, 100.0, 20.0 ],
                                    "text": "dB"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 463.0, 292.0, 100.0, 20.0 ],
                                    "text": "dB"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 263.2857142857143, 175.0, 150.0, 20.0 ],
                                    "text": "% 0..1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 231.85714285714286, 214.0, 150.0, 20.0 ],
                                    "text": "% 0..1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 193.42857142857144, 253.0, 150.0, 20.0 ],
                                    "text": "% 0..1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 135.0, 292.0, 150.0, 20.0 ],
                                    "text": "in milliseconds"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1044.0, 566.0, 136.75, 20.0 ],
                                    "text": "overflow to gen~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 942.0, 460.0, 51.0, 47.0 ],
                                    "text": "not saved in pattr"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 852.5, 460.0, 18.0, 20.0 ],
                                    "text": "X"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 775.0, 460.0, 18.0, 20.0 ],
                                    "text": "X"
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
                                    "patching_rect": [ 858.0, 195.5, 153.0, 20.0 ],
                                    "text": "EQ"
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
                                    "patching_rect": [ 359.0, 195.5, 153.0, 20.0 ],
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
                                    "patching_rect": [ 858.0, 195.5, 346.0, 132.5 ],
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
                                    "patching_rect": [ 359.0, 195.5, 452.0, 132.5 ],
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
                                    "destination": [ "obj-6", 2 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 4 ],
                                    "midpoints": [ 383.5, 328.5, 256.21428571428567, 328.5 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 4 ],
                                    "midpoints": [ 1093.25, 347.0, 978.5, 347.0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 3 ],
                                    "midpoints": [ 1062.25, 341.0, 962.75, 341.0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 727.0, 514.5, 1021.5, 514.5 ],
                                    "source": [ "obj-18", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-19", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "midpoints": [ 941.5, 542.0, 701.5, 542.0 ],
                                    "source": [ "obj-19", 3 ]
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
                                    "destination": [ "obj-6", 0 ],
                                    "midpoints": [ 915.5, 340.5, 915.5, 340.5 ],
                                    "source": [ "obj-25", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
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
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 5 ],
                                    "midpoints": [ 432.92857142857144, 333.0, 305.6428571428571, 333.0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 7 ],
                                    "midpoints": [ 602.2142857142857, 344.0, 404.49999999999994, 344.0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 6 ],
                                    "midpoints": [ 487.92857142857144, 338.5, 355.07142857142856, 338.5 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-44", 0 ]
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
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-49", 0 ]
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
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 503.35714285714283, 141.5, 1062.25, 141.5 ],
                                    "source": [ "obj-50", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-50", 13 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-50", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 0 ],
                                    "source": [ "obj-50", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-50", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "source": [ "obj-50", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-50", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "source": [ "obj-50", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "source": [ "obj-50", 11 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "source": [ "obj-50", 12 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 0 ],
                                    "midpoints": [ 453.92857142857144, 152.5, 947.0, 152.5 ],
                                    "source": [ "obj-50", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "midpoints": [ 552.7857142857142, 136.5, 1093.25, 136.5 ],
                                    "source": [ "obj-50", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "midpoints": [ 404.5, 157.5, 931.25, 157.5 ],
                                    "source": [ "obj-50", 7 ]
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
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 1 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 8 ],
                                    "midpoints": [ 651.6428571428571, 354.0, 453.9285714285714, 354.0 ],
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
                    "patching_rect": [ 689.0, 193.0, 110.0, 22.0 ],
                    "text": "p parseAndPattr",
                    "varname": "eviFreezeverb"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 219.0, 154.0, 140.0, 22.0 ],
                    "text": "route pattrstorage freeze"
                }
            },
            {
                "box": {
                    "comment": "(messages) controls to mcs.evi.freezeverb~",
                    "id": "obj-47",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 167.0, 43.5, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(multichannelsignal) Audio In Mono or Left & Right",
                    "id": "obj-46",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 34.0, 43.5, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 167.0, 100.0, 71.0, 22.0 ],
                    "text": "route signal"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 232.0, 48.0, 410.0, 22.0 ],
                    "text": "patcherargs"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 520.0, 286.0, 35.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 131.0, 286.0, 119.0, 22.0 ],
                    "text": "r #0_toFreezev"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 473.0, 341.0, 148.0, 20.0 ],
                    "text": "store and recall",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-6",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 219.0, 422.0, 402.0, 33.0 ],
                    "text": "quasi-stereo-in / stereo-out basic Schroeder / Moorer reverb model based on famous Jezar 'freeverb' tuning, with buttery freeze"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 655.0, 428.0, 105.0, 20.0 ],
                    "text": "dumpout"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 349.0, 280.0, 167.0, 33.0 ],
                    "text": "freeze message :: 0=off, 1=on + dry, 2=on solo freeze"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 167.0, 124.0, 83.0, 20.0 ],
                    "text": "(just in case)"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 5.0, 26.0, 88.0, 20.0 ],
                    "text": "mcs version",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 328.0, 26.0, 314.0, 20.0 ],
                    "text": "@ttributes or messages to mcs.evi.freezeverb~",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "background": 1,
                    "hidden": 1,
                    "id": "obj-37",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 242.0, 81.0, 381.0, 60.0 ],
                    "text": "evievedoc @predelay 9. @size 0.78 @damping 0.42 @width 0.7 @early -20. @wet -9.542434 @dry -12. @highfrequency 2000. @highgain 0. @lowfrequency 500. @lowgain 0. @bypass 0 @smoothtime 49.",
                    "varname": "evievedoc"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 1 ],
                    "source": [ "obj-11", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "source": [ "obj-11", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "midpoints": [ 529.5, 323.5, 43.5, 323.5 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 396.5, 323.5, 43.5, 323.5 ],
                    "source": [ "obj-2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 1 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.99, 0.5, 0.033, 1.0 ],
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 289.5, 323.5, 43.5, 323.5 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.99, 0.5, 0.033, 1.0 ],
                    "destination": [ "obj-58", 0 ],
                    "midpoints": [ 337.5, 384.25, 632.5, 384.25 ],
                    "source": [ "obj-24", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 140.5, 323.5, 43.5, 323.5 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "midpoints": [ 63.5, 323.5, 43.5, 323.5 ],
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
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-40", 1 ]
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
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-46", 0 ]
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
                    "color": [ 0.99, 0.5, 0.033, 1.0 ],
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-48", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "midpoints": [ 349.5, 184.5, 698.5, 184.5 ],
                    "source": [ "obj-48", 2 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.600000023841858, 0.400000035762787, 0.199999943375587, 1.0 ],
                    "destination": [ "obj-59", 0 ],
                    "midpoints": [ 228.5, 331.32421875, 632.5, 331.32421875 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 789.5, 323.5, 43.5, 323.5 ],
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
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 2 ],
                    "midpoints": [ 743.5, 275.078125, 337.5, 275.078125 ],
                    "order": 1,
                    "source": [ "obj-85", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "midpoints": [ 698.5, 266.5, 289.5, 266.5 ],
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 1 ],
                    "midpoints": [ 743.5, 264.0, 810.5859375, 264.0, 810.5859375, 183.0, 789.5, 183.0 ],
                    "order": 0,
                    "source": [ "obj-85", 1 ]
                }
            }
        ],
        "parameters": {
            "obj-54::obj-10": [ "eqHighGain", "eqHighGain", 0 ],
            "obj-54::obj-12": [ "earlyGain", "earlyGain", 0 ],
            "obj-54::obj-15": [ "eqLowGain", "eqLowGain", 0 ],
            "obj-54::obj-16": [ "eqLowFreq", "eqLowFreq", 0 ],
            "obj-54::obj-2": [ "preDelay", "preDelay", 0 ],
            "obj-54::obj-3": [ "reverbSize", "reverbSize", 0 ],
            "obj-54::obj-33": [ "wetGain", "wetGain", 0 ],
            "obj-54::obj-35": [ "bypass", "bypass", 0 ],
            "obj-54::obj-4": [ "dryGain", "dryGain", 0 ],
            "obj-54::obj-5": [ "width", "width", 0 ],
            "obj-54::obj-7": [ "eqHighFreq", "eqHighFreq", 0 ],
            "obj-54::obj-8": [ "smoothTime", "smoothTime", 0 ],
            "obj-54::obj-9": [ "damping", "damping", 0 ],
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
    }
}