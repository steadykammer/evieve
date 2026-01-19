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
        "rect": [ 34.0, 100.0, 1125.0, 361.0 ],
        "gridonopen": 2,
        "subpatcher_template": "sub",
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-28",
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
                        "rect": [ 208.0, 201.0, 630.0, 478.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-13",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 115.0, 394.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 115.0, 81.0, 185.0, 22.0 ],
                                    "text": "routepass reset reset_param rfhz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 281.0, 310.0, 154.0, 22.0 ],
                                    "text": "print evi.lpg.core~ @level 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 281.0, 120.0, 57.0, 22.0 ],
                                    "text": "tosymbol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "ignoreclick": 1,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 281.0, 159.0, 206.0, 22.0 ],
                                    "text": "evi.lpg.core~ does not understand $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.0, 310.0, 154.0, 22.0 ],
                                    "text": "print evi.lpg.core~ @level 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "ignoreclick": 1,
                                    "linecount": 2,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 49.0, 213.0, 505.0, 35.0 ],
                                    "text": "\\\"localresample\\\" is not available in the [poly~]-wrapped version of \\\"evi_lpg_buchla.gendsp\\\", use the in-gen~ version to access local resampling."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-2",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 115.0, 34.0, 30.0, 30.0 ]
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
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-12", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-12", 1 ]
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
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-12", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-4", 0 ]
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
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 331.0, 271.0, 50.0, 22.0 ],
                    "text": "p errors"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 837.0, 295.0, 44.0, 20.0 ],
                    "text": "HP",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 738.0, 295.0, 44.0, 20.0 ],
                    "text": "BP",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 838.0, 271.0, 42.0, 22.0 ],
                    "saved_object_attributes": {
                        "attr_comment": "",
                        "c": ""
                    },
                    "text": "out~ 3"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 739.0, 271.0, 42.0, 22.0 ],
                    "saved_object_attributes": {
                        "attr_comment": "",
                        "c": ""
                    },
                    "text": "out~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 639.0, 295.0, 44.0, 20.0 ],
                    "text": "LPG",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 838.0, 51.0, 37.0, 20.0 ],
                    "text": "Res",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 739.0, 51.0, 37.0, 20.0 ],
                    "text": "Rf",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 639.0, 51.0, 37.0, 20.0 ],
                    "text": "Input",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 378.0, 127.0, 191.0, 22.0 ],
                    "text": "routepass controlrate rf resonance"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1004.0, 166.0, 61.0, 22.0 ],
                    "text": "join 4"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "int", "float", "int", "int" ],
                    "patching_rect": [ 1004.0, 127.0, 61.0, 22.0 ],
                    "text": "dspstate~"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 49.0, 34.0, 28.0, 22.0 ],
                    "saved_object_attributes": {
                        "attr_comment": [ "rfsmooth", "smooth", "boom", "multi" ],
                        "c": [ "rfsmooth", "smooth", "boom", "multi" ]
                    },
                    "text": "in 1"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1004.0, 271.0, 35.0, 22.0 ],
                    "saved_object_attributes": {
                        "attr_comment": [ "(list)", "dspstate~" ],
                        "c": [ "(list)", "dspstate~" ]
                    },
                    "text": "out 1"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 8,
                    "outlettype": [ "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 49.0, 73.0, 348.0, 22.0 ],
                    "text": "routepass rfsmooth smooth boom vca lpg nonlin localresample"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 639.0, 271.0, 44.0, 22.0 ],
                    "saved_object_attributes": {
                        "attr_comment": "LPG",
                        "c": "LPG"
                    },
                    "text": "out~ 1"
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
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 838.0, 73.0, 35.0, 22.0 ],
                    "saved_object_attributes": {
                        "attr_comment": "",
                        "c": ""
                    },
                    "text": "in~ 3"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 739.0, 73.0, 37.0, 22.0 ],
                    "saved_object_attributes": {
                        "attr_comment": [ "Rf", "(if", "controlrate", "==", "0)" ],
                        "c": [ "Rf", "(if", "controlrate", "==", "0)" ]
                    },
                    "text": "in~ 2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 639.0, 73.0, 37.0, 22.0 ],
                    "saved_object_attributes": {
                        "attr_comment": [ "Audio", "Input" ],
                        "c": [ "Audio", "Input" ]
                    },
                    "text": "in~ 1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "signal" ],
                    "patching_rect": [ 639.0, 217.0, 218.0, 22.0 ],
                    "text": "gen~ evi_lpg_buchla @localresample 0"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 859.0, 218.0, 150.0, 20.0 ],
                    "text": "evi_lpg_buchla.gendsp"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 49.0, 310.0, 542.0, 33.0 ],
                    "text": "TPT emulation of the Buchla Lowpass-Gate, unique version of a two-pole Sallen & Key filter, based on \"A Digital Model of the Buchla Lowpass-Gate\" by Julian Parker and Stefano D’Angelo, 2013"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 378.0, 95.0, 213.0, 33.0 ],
                    "text": "if controlrate == 1, control filter using messages (default controlrate == 0)"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 711.0, 23.0, 210.0, 33.0 ],
                    "text": "___ only if \"controlrate\" == 0 ___\n|                                                   |"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "hidden": 1,
                    "id": "obj-6",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 878.0, 39.0, 217.0, 91.0 ],
                    "text": "[in~ 2] & [in~ 3] pose a big problem, the [poly~] conundrum, as the resampling filters smooth these values, but we do not want them smoothed (we only really want [in~ 1] resampled)"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-1", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 2 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 3 ],
                    "source": [ "obj-18", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 2 ],
                    "source": [ "obj-18", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 1 ],
                    "source": [ "obj-18", 1 ]
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
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "midpoints": [ 340.5, 303.0, 612.80859375, 303.0, 612.80859375, 200.16796875, 648.5, 200.16796875 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 293.5, 200.421875, 648.5, 200.421875 ],
                    "source": [ "obj-4", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 246.5, 200.5, 648.5, 200.5 ],
                    "source": [ "obj-4", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 199.5, 200.5, 648.5, 200.5 ],
                    "source": [ "obj-4", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 152.5, 200.5, 648.5, 200.5 ],
                    "source": [ "obj-4", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 105.5, 200.5, 648.5, 200.5 ],
                    "source": [ "obj-4", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 58.5, 200.5, 648.5, 200.5 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "hidden": 1,
                    "source": [ "obj-4", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-4", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 502.1666666666667, 175.0, 648.5, 175.0 ],
                    "source": [ "obj-5", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 444.83333333333337, 175.0, 648.5, 175.0 ],
                    "source": [ "obj-5", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 387.5, 175.0, 648.5, 175.0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 1 ],
                    "hidden": 1,
                    "midpoints": [ 559.5, 254.42578125, 371.5, 254.42578125 ],
                    "source": [ "obj-5", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            }
        ],
        "autosave": 0,
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}