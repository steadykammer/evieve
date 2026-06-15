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
        "rect": [ 149.0, 128.0, 1126.0, 735.0 ],
        "openinpresentation": 1,
        "gridonopen": 2,
        "subpatcher_template": "sub",
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "frozen_box_attributes": [ "varname" ],
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
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
                        "rect": [ 34.0, 100.0, 270.0, 510.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 111.0, 120.0, 30.0, 22.0 ],
                                    "text": "i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 49.0, 120.0, 22.0, 22.0 ],
                                    "text": "t b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 49.0, 81.0, 81.0, 22.0 ],
                                    "text": "route bang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 78.0, 198.0, 52.0, 22.0 ],
                                    "text": "gate 2 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 49.0, 276.0, 45.0, 22.0 ],
                                    "text": "t 1 i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 49.0, 237.0, 81.0, 22.0 ],
                                    "text": "i 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 75.0, 315.0, 49.0, 22.0 ],
                                    "text": "sel 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 105.0, 354.0, 101.0, 22.0 ],
                                    "text": "prepend samples"
                                }
                            },
                            {
                                "box": {
                                    "frozen_object_attributes": {
                                        "autorestore": 1,
                                        "invisible": 1,
                                        "thru": 1
                                    },
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 111.0, 159.0, 129.0, 22.0 ],
                                    "restore": [ 0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr samples @dirty 1",
                                    "varname": "samples"
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
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 49.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-24",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 176.0, 438.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-25",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 105.0, 438.0, 30.0, 30.0 ]
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
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-18", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "midpoints": [ 84.5, 387.5, 185.5, 387.5 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-21", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "midpoints": [ 58.5, 308.0, 37.10546875, 308.0, 37.10546875, 188.0, 87.5, 188.0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 1 ],
                                    "source": [ "obj-22", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "midpoints": [ 87.5, 228.5, 58.5, 228.5 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-23", 0 ]
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
                                    "destination": [ "obj-22", 1 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 998.0, 345.0, 63.0, 22.0 ],
                    "text": "p samples",
                    "varname": "evi_scope_samples"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "bang", "" ],
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
                        "rect": [ 413.0, 100.0, 1065.0, 630.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "sr" ],
                                    "patching_rect": [ 904.0, 174.0, 25.0, 22.0 ],
                                    "text": "t sr"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 666.0, 486.0, 45.0, 22.0 ],
                                    "text": "t 1 i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 705.0, 408.0, 52.0, 22.0 ],
                                    "text": "gate 2 2"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-13",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 904.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 666.0, 213.0, 22.0, 22.0 ],
                                    "text": "t b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 666.0, 447.0, 91.0, 22.0 ],
                                    "text": "i 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 692.0, 525.0, 49.0, 22.0 ],
                                    "text": "sel 0"
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
                                    "patching_rect": [ 722.0, 564.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 409.0, 39.0, 150.0, 20.0 ],
                                    "text": "from patcherargs"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 727.0, 330.0, 54.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 727.0, 369.0, 30.0, 22.0 ],
                                    "text": "t 0 i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "int" ],
                                    "patching_rect": [ 714.0, 291.0, 67.0, 22.0 ],
                                    "text": "adstatus sr"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "int" ],
                                    "patching_rect": [ 714.0, 252.0, 32.0, 22.0 ],
                                    "text": "t b 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 5,
                                    "outlettype": [ "", "", "", "", "" ],
                                    "patching_rect": [ 714.0, 213.0, 215.0, 22.0 ],
                                    "text": "route samplerate SAMPLERATE SR sr"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 666.0, 174.0, 115.0, 22.0 ],
                                    "text": "route done samples"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "newobj",
                                    "numinlets": 11,
                                    "numoutlets": 11,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 49.0, 135.0, 636.0, 22.0 ],
                                    "text": "routepass grid grid_line_width horizontal_divisions vertical_divisions rounded active decay_time smooth interval range"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 5,
                                    "outlettype": [ "", "", "", "", "" ],
                                    "patching_rect": [ 377.0, 81.0, 308.0, 22.0 ],
                                    "text": "routepass activebgcolor bgcolor gridcolor activegridcolor"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-17",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 377.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-18",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.0, 564.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-19",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 974.0, 564.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
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
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-11", 0 ]
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
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 1 ],
                                    "source": [ "obj-14", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 714.5, 438.5, 675.5, 438.5 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "midpoints": [ 675.5, 518.0, 652.48828125, 518.0, 652.48828125, 398.0, 714.5, 398.0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-15", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "midpoints": [ 913.5, 203.81640625, 723.5, 203.81640625 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 1 ],
                                    "midpoints": [ 919.5, 399.58203125, 747.5, 399.58203125 ],
                                    "source": [ "obj-2", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 870.5, 243.5, 723.5, 243.5 ],
                                    "source": [ "obj-2", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 821.5, 243.5, 723.5, 243.5 ],
                                    "source": [ "obj-2", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 772.5, 243.5, 723.5, 243.5 ],
                                    "source": [ "obj-2", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "midpoints": [ 603.25, 111.5, 983.5, 111.5 ],
                                    "source": [ "obj-25", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "midpoints": [ 531.0, 111.5, 983.5, 111.5 ],
                                    "source": [ "obj-25", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "midpoints": [ 458.75, 111.5, 983.5, 111.5 ],
                                    "source": [ "obj-25", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "midpoints": [ 386.5, 111.5, 983.5, 111.5 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "midpoints": [ 675.5, 122.01953125, 58.5, 122.01953125 ],
                                    "source": [ "obj-25", 4 ]
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
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 1 ],
                                    "source": [ "obj-4", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 1 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "midpoints": [ 736.5, 401.0, 715.77734375, 401.0, 715.77734375, 320.0, 736.5, 320.0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-53", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "midpoints": [ 613.8, 185.0, 58.5, 185.0 ],
                                    "source": [ "obj-53", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "midpoints": [ 552.1, 185.0, 58.5, 185.0 ],
                                    "source": [ "obj-53", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "midpoints": [ 490.4, 185.0, 58.5, 185.0 ],
                                    "source": [ "obj-53", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "midpoints": [ 428.7, 185.0, 58.5, 185.0 ],
                                    "source": [ "obj-53", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "midpoints": [ 367.0, 185.0, 58.5, 185.0 ],
                                    "source": [ "obj-53", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "midpoints": [ 305.3, 185.0, 58.5, 185.0 ],
                                    "source": [ "obj-53", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "midpoints": [ 243.6, 185.0, 58.5, 185.0 ],
                                    "source": [ "obj-53", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "midpoints": [ 181.9, 185.0, 58.5, 185.0 ],
                                    "source": [ "obj-53", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "midpoints": [ 120.2, 185.0, 58.5, 185.0 ],
                                    "source": [ "obj-53", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-53", 0 ]
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
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-9", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "midpoints": [ 701.5, 555.5, 731.5, 555.5 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 998.0, 267.0, 93.0, 22.0 ],
                    "text": "p parse_globals"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 537.0, 48.0, 480.0, 35.0 ],
                    "text": "patcherargs @grid 3 @grid_line_width 1. @horizontal_divisions 8 @vertical_divisions 4 @rounded 1. @active 1 @decay_time 0. @smooth 1 @interval 16. @range -1. 1."
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 910.0, 612.0, 130.0, 20.0 ],
                    "text": "backmost",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 64.0, 612.0, 130.0, 20.0 ],
                    "text": "frontmost",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "comment": "(signal) curve4 passthrough",
                    "id": "obj-77",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 865.0, 642.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(signal) curve3 passthrough",
                    "id": "obj-76",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 583.0, 642.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(signal) curve2 passthrough",
                    "id": "obj-75",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 301.0, 642.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(signal) curve1 passthrough",
                    "id": "obj-74",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 19.0, 642.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
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
                        "rect": [ 34.0, 100.0, 1155.0, 526.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-16",
                                    "index": 5,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 745.0, 443.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 745.0, 359.0, 100.0, 22.0 ],
                                    "text": "route samples int"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1007.0, 32.0, 66.0, 33.0 ],
                                    "text": "global attributes",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-11",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1075.0, 33.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 191.0, 475.0, 60.0, 20.0 ],
                                    "text": "curve4",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 140.0, 475.0, 60.0, 20.0 ],
                                    "text": "curve3",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 90.0, 475.0, 60.0, 20.0 ],
                                    "text": "curve2",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 39.0, 475.0, 60.0, 20.0 ],
                                    "text": "curve1",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 172.0, 81.0, 150.0, 20.0 ],
                                    "text": "ignore prepend error"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 63.0, 80.0, 107.0, 22.0 ],
                                    "text": "route curve4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 321.0, 324.0, 20.0 ],
                                    "text": "if any of these messages recieved, they go to all curves"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 228.0, 195.0, 20.0 ],
                                    "text": "messages only for this curve"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 174.0, 165.0, 20.0 ],
                                    "text": "ignore all these messages"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 248.0, 120.0, 453.0, 20.0 ],
                                    "text": "just 'range' goes to all curves, must prepend 'curve4' from 1st inlet for local range"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 95.0, 38.0, 130.0, 20.0 ],
                                    "text": "anything to 4th inlet"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 38.0, 165.0, 20.0 ],
                                    "text": "via 1st inlet 'curve4' prepend"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 151.0, 119.0, 95.0, 22.0 ],
                                    "text": "routepass range"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 54.0, 359.0, 171.0, 22.0 ],
                                    "text": "t l l l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "newobj",
                                    "numinlets": 11,
                                    "numoutlets": 11,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 54.0, 320.0, 710.0, 22.0 ],
                                    "text": "routepass grid grid_line_width horizontal_divisions vertical_divisions rounded active ignoreclick decay_time smooth interval"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 11,
                                    "numoutlets": 11,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 63.0, 173.0, 701.0, 22.0 ],
                                    "text": "route background presentation jspainterfile patching_rect presentation_rect style varname mode trigger_direction trigger_threshold"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 459.0, 266.0, 19.0, 22.0 ],
                                    "text": "t l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 9,
                                    "numoutlets": 9,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 238.0, 227.0, 526.0, 22.0 ],
                                    "text": "routepass activebgcolor bgcolor gridcolor activegridcolor activelinecolor linecolor line_width range"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-61",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 63.0, 33.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-62",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 734.0, 33.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-63",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 206.0, 443.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-64",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 54.0, 443.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-65",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 105.0, 443.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-66",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 155.0, 443.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "midpoints": [ 72.5, 110.5, 160.5, 110.5 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 1084.5, 351.26953125, 63.5, 351.26953125 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 795.0, 412.0, 754.5, 412.0 ],
                                    "source": [ "obj-18", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 691.125, 257.5, 468.5, 257.5 ],
                                    "source": [ "obj-49", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 627.75, 257.5, 468.5, 257.5 ],
                                    "source": [ "obj-49", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 564.375, 257.5, 468.5, 257.5 ],
                                    "source": [ "obj-49", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 501.0, 257.5, 468.5, 257.5 ],
                                    "source": [ "obj-49", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 437.625, 257.5, 468.5, 257.5 ],
                                    "source": [ "obj-49", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 374.25, 257.5, 468.5, 257.5 ],
                                    "source": [ "obj-49", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 310.875, 257.5, 468.5, 257.5 ],
                                    "source": [ "obj-49", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 247.5, 257.5, 468.5, 257.5 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "midpoints": [ 754.5, 303.68359375, 63.5, 303.68359375 ],
                                    "source": [ "obj-49", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "midpoints": [ 468.5, 409.5234375, 215.5, 409.5234375 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "midpoints": [ 754.5, 211.0, 247.5, 211.0 ],
                                    "source": [ "obj-51", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-53", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 685.4, 350.5, 63.5, 350.5 ],
                                    "source": [ "obj-53", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 616.3, 350.5, 63.5, 350.5 ],
                                    "source": [ "obj-53", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 547.2, 350.5, 63.5, 350.5 ],
                                    "source": [ "obj-53", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 478.1, 350.5, 63.5, 350.5 ],
                                    "source": [ "obj-53", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 409.0, 350.5, 63.5, 350.5 ],
                                    "source": [ "obj-53", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 339.9, 350.5, 63.5, 350.5 ],
                                    "source": [ "obj-53", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 270.8, 350.5, 63.5, 350.5 ],
                                    "source": [ "obj-53", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 201.7, 350.5, 63.5, 350.5 ],
                                    "source": [ "obj-53", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 132.6, 350.5, 63.5, 350.5 ],
                                    "source": [ "obj-53", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "source": [ "obj-54", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "source": [ "obj-54", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "source": [ "obj-54", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "midpoints": [ 236.5, 157.0, 72.5, 157.0 ],
                                    "source": [ "obj-60", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 160.5, 350.54296875, 63.5, 350.54296875 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "midpoints": [ 743.5, 156.87109375, 72.5, 156.87109375 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 962.0, 306.0, 55.0, 22.0 ],
                    "text": "p curve4"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
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
                        "rect": [ 34.0, 100.0, 1125.0, 616.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-11",
                                    "index": 5,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 745.0, 536.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 745.0, 452.0, 100.0, 22.0 ],
                                    "text": "route samples int"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 191.0, 568.0, 60.0, 20.0 ],
                                    "text": "curve4",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 140.0, 568.0, 60.0, 20.0 ],
                                    "text": "curve3",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 90.0, 568.0, 60.0, 20.0 ],
                                    "text": "curve2",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 39.0, 568.0, 60.0, 20.0 ],
                                    "text": "curve1",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 172.0, 81.0, 150.0, 20.0 ],
                                    "text": "ignore prepend error"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 63.0, 80.0, 107.0, 22.0 ],
                                    "text": "route curve3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 414.0, 324.0, 20.0 ],
                                    "text": "if any of these messages recieved, they go to all curves"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 321.0, 195.0, 20.0 ],
                                    "text": "messages only for this curve"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 228.0, 273.0, 20.0 ],
                                    "text": "if received in this inlet, divert to 4th curve only"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 174.0, 165.0, 20.0 ],
                                    "text": "ignore all these messages"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 248.0, 120.0, 453.0, 20.0 ],
                                    "text": "just 'range' goes to all curves, must prepend 'curve3' from 1st inlet for local range"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 95.0, 38.0, 130.0, 20.0 ],
                                    "text": "anything to 3rd inlet"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 38.0, 165.0, 20.0 ],
                                    "text": "via 1st inlet 'curve3' prepend"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 151.0, 119.0, 95.0, 22.0 ],
                                    "text": "routepass range"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 54.0, 452.0, 171.0, 22.0 ],
                                    "text": "t l l l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "newobj",
                                    "numinlets": 11,
                                    "numoutlets": 11,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 54.0, 413.0, 710.0, 22.0 ],
                                    "text": "routepass grid grid_line_width horizontal_divisions vertical_divisions rounded active ignoreclick decay_time smooth interval"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 11,
                                    "numoutlets": 11,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 63.0, 173.0, 701.0, 22.0 ],
                                    "text": "route background presentation jspainterfile patching_rect presentation_rect style varname mode trigger_direction trigger_threshold"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 485.0, 359.0, 19.0, 22.0 ],
                                    "text": "t l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 5,
                                    "outlettype": [ "", "", "", "", "" ],
                                    "patching_rect": [ 485.0, 320.0, 279.0, 22.0 ],
                                    "text": "routepass activelinecolor linecolor line_width range"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 528.0, 266.0, 19.0, 22.0 ],
                                    "text": "t l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 5,
                                    "outlettype": [ "", "", "", "", "" ],
                                    "patching_rect": [ 456.0, 227.0, 308.0, 22.0 ],
                                    "text": "routepass activebgcolor bgcolor gridcolor activegridcolor"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-61",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 63.0, 33.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-62",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 734.0, 33.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-63",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 206.0, 536.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-64",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 54.0, 536.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-65",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 105.0, 536.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-66",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 155.0, 536.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "midpoints": [ 72.5, 110.5, 160.5, 110.5 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 682.25, 257.5, 537.5, 257.5 ],
                                    "source": [ "obj-25", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 610.0, 257.5, 537.5, 257.5 ],
                                    "source": [ "obj-25", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-25", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 465.5, 257.5, 537.5, 257.5 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "midpoints": [ 754.5, 302.69140625, 494.5, 302.69140625 ],
                                    "source": [ "obj-25", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "midpoints": [ 537.5, 519.81640625, 215.5, 519.81640625 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 795.0, 505.0, 754.5, 505.0 ],
                                    "source": [ "obj-4", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 689.5, 350.5, 494.5, 350.5 ],
                                    "source": [ "obj-49", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 624.5, 350.5, 494.5, 350.5 ],
                                    "source": [ "obj-49", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 559.5, 350.5, 494.5, 350.5 ],
                                    "source": [ "obj-49", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "midpoints": [ 754.5, 396.68359375, 63.5, 396.68359375 ],
                                    "source": [ "obj-49", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "midpoints": [ 494.5, 502.5234375, 164.5, 502.5234375 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "midpoints": [ 754.5, 211.0, 465.5, 211.0 ],
                                    "source": [ "obj-51", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-53", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 685.4, 443.5, 63.5, 443.5 ],
                                    "source": [ "obj-53", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 616.3, 443.5, 63.5, 443.5 ],
                                    "source": [ "obj-53", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 547.2, 443.5, 63.5, 443.5 ],
                                    "source": [ "obj-53", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 478.1, 443.5, 63.5, 443.5 ],
                                    "source": [ "obj-53", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 409.0, 443.5, 63.5, 443.5 ],
                                    "source": [ "obj-53", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 339.9, 443.5, 63.5, 443.5 ],
                                    "source": [ "obj-53", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 270.8, 443.5, 63.5, 443.5 ],
                                    "source": [ "obj-53", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 201.7, 443.5, 63.5, 443.5 ],
                                    "source": [ "obj-53", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 132.6, 443.5, 63.5, 443.5 ],
                                    "source": [ "obj-53", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "source": [ "obj-54", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "source": [ "obj-54", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "source": [ "obj-54", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "midpoints": [ 236.5, 157.0, 72.5, 157.0 ],
                                    "source": [ "obj-60", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 160.5, 444.14453125, 63.5, 444.14453125 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "midpoints": [ 743.5, 156.87109375, 72.5, 156.87109375 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 680.0, 306.0, 55.0, 22.0 ],
                    "text": "p curve3"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
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
                        "rect": [ 34.0, 100.0, 1125.0, 616.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-11",
                                    "index": 5,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 745.0, 536.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 745.0, 452.0, 100.0, 22.0 ],
                                    "text": "route samples int"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 191.0, 568.0, 60.0, 20.0 ],
                                    "text": "curve4",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 140.0, 568.0, 60.0, 20.0 ],
                                    "text": "curve3",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 90.0, 568.0, 60.0, 20.0 ],
                                    "text": "curve2",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 39.0, 568.0, 60.0, 20.0 ],
                                    "text": "curve1",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 172.0, 81.0, 150.0, 20.0 ],
                                    "text": "ignore prepend error"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 63.0, 80.0, 107.0, 22.0 ],
                                    "text": "route curve2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 414.0, 324.0, 20.0 ],
                                    "text": "if any of these messages recieved, they go to all curves"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 321.0, 195.0, 20.0 ],
                                    "text": "messages only for this curve"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 228.0, 273.0, 20.0 ],
                                    "text": "if received in this inlet, divert to 4th curve only"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 174.0, 165.0, 20.0 ],
                                    "text": "ignore all these messages"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 248.0, 120.0, 453.0, 20.0 ],
                                    "text": "just 'range' goes to all curves, must prepend 'curve2' from 1st inlet for local range"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 95.0, 38.0, 130.0, 20.0 ],
                                    "text": "anything to 2nd inlet"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 38.0, 165.0, 20.0 ],
                                    "text": "via 1st inlet 'curve2' prepend"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 151.0, 119.0, 95.0, 22.0 ],
                                    "text": "routepass range"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 54.0, 452.0, 171.0, 22.0 ],
                                    "text": "t l l l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "newobj",
                                    "numinlets": 11,
                                    "numoutlets": 11,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 54.0, 413.0, 710.0, 22.0 ],
                                    "text": "routepass grid grid_line_width horizontal_divisions vertical_divisions rounded active ignoreclick decay_time smooth interval"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 11,
                                    "numoutlets": 11,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 63.0, 173.0, 701.0, 22.0 ],
                                    "text": "route background presentation jspainterfile patching_rect presentation_rect style varname mode trigger_direction trigger_threshold"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 485.0, 359.0, 19.0, 22.0 ],
                                    "text": "t l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 5,
                                    "outlettype": [ "", "", "", "", "" ],
                                    "patching_rect": [ 485.0, 320.0, 279.0, 22.0 ],
                                    "text": "routepass activelinecolor linecolor line_width range"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 528.0, 266.0, 19.0, 22.0 ],
                                    "text": "t l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 5,
                                    "outlettype": [ "", "", "", "", "" ],
                                    "patching_rect": [ 456.0, 227.0, 308.0, 22.0 ],
                                    "text": "routepass activebgcolor bgcolor gridcolor activegridcolor"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-61",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 63.0, 33.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-62",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 734.0, 33.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-63",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 206.0, 536.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-64",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 54.0, 536.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-65",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 105.0, 536.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-66",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 155.0, 536.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "midpoints": [ 72.5, 110.5, 160.5, 110.5 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 682.25, 257.5, 537.5, 257.5 ],
                                    "source": [ "obj-25", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 610.0, 257.5, 537.5, 257.5 ],
                                    "source": [ "obj-25", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-25", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 465.5, 257.5, 537.5, 257.5 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "midpoints": [ 754.5, 302.69140625, 494.5, 302.69140625 ],
                                    "source": [ "obj-25", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "midpoints": [ 537.5, 519.81640625, 215.5, 519.81640625 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 795.0, 505.0, 754.5, 505.0 ],
                                    "source": [ "obj-4", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 689.5, 350.5, 494.5, 350.5 ],
                                    "source": [ "obj-49", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 624.5, 350.5, 494.5, 350.5 ],
                                    "source": [ "obj-49", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 559.5, 350.5, 494.5, 350.5 ],
                                    "source": [ "obj-49", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "midpoints": [ 754.5, 396.68359375, 63.5, 396.68359375 ],
                                    "source": [ "obj-49", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "midpoints": [ 494.5, 502.5234375, 114.5, 502.5234375 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "midpoints": [ 754.5, 211.0, 465.5, 211.0 ],
                                    "source": [ "obj-51", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-53", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 685.4, 443.5, 63.5, 443.5 ],
                                    "source": [ "obj-53", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 616.3, 443.5, 63.5, 443.5 ],
                                    "source": [ "obj-53", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 547.2, 443.5, 63.5, 443.5 ],
                                    "source": [ "obj-53", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 478.1, 443.5, 63.5, 443.5 ],
                                    "source": [ "obj-53", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 409.0, 443.5, 63.5, 443.5 ],
                                    "source": [ "obj-53", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 339.9, 443.5, 63.5, 443.5 ],
                                    "source": [ "obj-53", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 270.8, 443.5, 63.5, 443.5 ],
                                    "source": [ "obj-53", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 201.7, 443.5, 63.5, 443.5 ],
                                    "source": [ "obj-53", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 132.6, 443.5, 63.5, 443.5 ],
                                    "source": [ "obj-53", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "source": [ "obj-54", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "source": [ "obj-54", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "source": [ "obj-54", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "midpoints": [ 236.5, 157.0, 72.5, 157.0 ],
                                    "source": [ "obj-60", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 160.5, 444.14453125, 63.5, 444.14453125 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "midpoints": [ 743.5, 156.87109375, 72.5, 156.87109375 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 398.0, 306.0, 55.0, 22.0 ],
                    "text": "p curve2"
                }
            },
            {
                "box": {
                    "comment": "(signal) curve4 input / (messages) to curve4",
                    "id": "obj-70",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 910.0, 220.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(signal) curve3 input / (messages) to curve3",
                    "id": "obj-69",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 628.0, 220.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(signal) curve2 input / (messages) to curve2",
                    "id": "obj-68",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 346.0, 220.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
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
                        "rect": [ 175.0, 184.0, 1124.0, 569.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-11",
                                    "index": 5,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 745.0, 497.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 745.0, 413.0, 100.0, 22.0 ],
                                    "text": "route samples int"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 191.0, 529.0, 60.0, 20.0 ],
                                    "text": "curve4",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 140.0, 529.0, 60.0, 20.0 ],
                                    "text": "curve3",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 90.0, 529.0, 60.0, 20.0 ],
                                    "text": "curve2",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 39.0, 529.0, 60.0, 20.0 ],
                                    "text": "curve1",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 375.0, 324.0, 20.0 ],
                                    "text": "if any of these messages recieved, they go to all curves"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 282.0, 195.0, 20.0 ],
                                    "text": "messages only for this curve"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 189.0, 273.0, 20.0 ],
                                    "text": "if received in this inlet, divert to 4th curve only"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 135.0, 165.0, 20.0 ],
                                    "text": "ignore all these messages"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 766.0, 75.0, 324.0, 33.0 ],
                                    "text": "just 'range' goes to all curves, must prepend 'curve' / 'curve1' from 1st inlet for local range"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 701.0, 38.0, 130.0, 20.0 ],
                                    "text": "anything to 1st inlet"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 95.0, 38.0, 216.0, 20.0 ],
                                    "text": "via 1st inlet 'curve' / 'curve1' prepend"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 669.0, 80.0, 95.0, 22.0 ],
                                    "text": "routepass range"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 54.0, 413.0, 171.0, 22.0 ],
                                    "text": "t l l l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "newobj",
                                    "numinlets": 11,
                                    "numoutlets": 11,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 54.0, 374.0, 710.0, 22.0 ],
                                    "text": "routepass grid grid_line_width horizontal_divisions vertical_divisions rounded active ignoreclick decay_time smooth interval"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 11,
                                    "numoutlets": 11,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 63.0, 134.0, 701.0, 22.0 ],
                                    "text": "route background presentation jspainterfile patching_rect presentation_rect style varname mode trigger_direction trigger_threshold"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 292.0, 320.0, 19.0, 22.0 ],
                                    "text": "t l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 8,
                                    "numoutlets": 8,
                                    "outlettype": [ "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 292.0, 281.0, 472.0, 22.0 ],
                                    "text": "routepass hint annotation annotation_name activelinecolor linecolor line_width range"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 456.0, 227.0, 19.0, 22.0 ],
                                    "text": "t l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 5,
                                    "outlettype": [ "", "", "", "", "" ],
                                    "patching_rect": [ 456.0, 188.0, 308.0, 22.0 ],
                                    "text": "routepass activebgcolor bgcolor gridcolor activegridcolor"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-61",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 63.0, 33.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-62",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 669.0, 33.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-63",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 206.0, 497.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-64",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 54.0, 497.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-65",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 105.0, 497.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-66",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 155.0, 497.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 682.25, 218.5, 465.5, 218.5 ],
                                    "source": [ "obj-25", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 610.0, 218.5, 465.5, 218.5 ],
                                    "source": [ "obj-25", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "midpoints": [ 537.75, 218.5, 465.5, 218.5 ],
                                    "source": [ "obj-25", 1 ]
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
                                    "destination": [ "obj-49", 0 ],
                                    "midpoints": [ 754.5, 263.69140625, 301.5, 263.69140625 ],
                                    "source": [ "obj-25", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "midpoints": [ 465.5, 480.81640625, 215.5, 480.81640625 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 689.7857142857142, 311.5, 301.5, 311.5 ],
                                    "source": [ "obj-49", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 625.0714285714286, 311.5, 301.5, 311.5 ],
                                    "source": [ "obj-49", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 560.3571428571429, 311.5, 301.5, 311.5 ],
                                    "source": [ "obj-49", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 495.6428571428571, 311.5, 301.5, 311.5 ],
                                    "source": [ "obj-49", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 430.92857142857144, 311.5, 301.5, 311.5 ],
                                    "source": [ "obj-49", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 366.2142857142857, 311.5, 301.5, 311.5 ],
                                    "source": [ "obj-49", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "midpoints": [ 754.5, 357.02734375, 63.5, 357.02734375 ],
                                    "source": [ "obj-49", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "midpoints": [ 301.5, 463.5234375, 63.5, 463.5234375 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "midpoints": [ 754.5, 172.0, 465.5, 172.0 ],
                                    "source": [ "obj-51", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 685.4, 404.5, 63.5, 404.5 ],
                                    "source": [ "obj-53", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 616.3, 404.5, 63.5, 404.5 ],
                                    "source": [ "obj-53", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 547.2, 404.5, 63.5, 404.5 ],
                                    "source": [ "obj-53", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 478.1, 404.5, 63.5, 404.5 ],
                                    "source": [ "obj-53", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 409.0, 404.5, 63.5, 404.5 ],
                                    "source": [ "obj-53", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 339.9, 404.5, 63.5, 404.5 ],
                                    "source": [ "obj-53", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 270.8, 404.5, 63.5, 404.5 ],
                                    "source": [ "obj-53", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 201.7, 404.5, 63.5, 404.5 ],
                                    "source": [ "obj-53", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 132.6, 404.5, 63.5, 404.5 ],
                                    "source": [ "obj-53", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-53", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "source": [ "obj-54", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "source": [ "obj-54", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "source": [ "obj-54", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 795.0, 466.0, 754.5, 466.0 ],
                                    "source": [ "obj-6", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "midpoints": [ 754.5, 118.0, 72.5, 118.0 ],
                                    "source": [ "obj-60", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 678.5, 404.07421875, 63.5, 404.07421875 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 116.0, 306.0, 55.0, 22.0 ],
                    "text": "p curve1"
                }
            },
            {
                "box": {
                    "comment": "(signal) curve1 input / (messages) to curve1 / (messages) to evi.scope~",
                    "id": "obj-59",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 64.0, 50.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 6,
                    "outlettype": [ "", "", "", "", "", "" ],
                    "patching_rect": [ 116.0, 136.0, 924.0, 22.0 ],
                    "text": "route curve curve1 curve2 curve3 curve4"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.125, 0.125, 0.125, 0.0 ],
                    "activegridcolor": [ 0.22, 0.22, 0.22, 0.0 ],
                    "activelinecolor": [ 0.9, 0.9, 0.9, 1.0 ],
                    "bgcolor": [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 0.0 ],
                    "frozen_box_attributes": [ "activegridcolor", "mode", "activebgcolor", "bgcolor", "gridcolor" ],
                    "grid": 3,
                    "gridcolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
                    "horizonal_divisions": 8,
                    "horizontal_divisions": 8,
                    "id": "obj-4",
                    "maxclass": "live.scope~",
                    "mode": 0,
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 64.0, 480.0, 130.0, 130.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 130.0, 130.0 ],
                    "rounded": 1.0,
                    "samples": 48000.0,
                    "saved_attribute_attributes": {
                        "activelinecolor": {
                            "expression": "themecolor.jed_js_bracket"
                        }
                    },
                    "vertical_divisions": 4
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 910.0, 267.0, 71.0, 22.0 ],
                    "text": "route signal"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 910.0, 306.0, 47.0, 22.0 ],
                    "text": "t signal"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 628.0, 267.0, 71.0, 22.0 ],
                    "text": "route signal"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 628.0, 306.0, 47.0, 22.0 ],
                    "text": "t signal"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 346.0, 267.0, 71.0, 22.0 ],
                    "text": "route signal"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 346.0, 306.0, 47.0, 22.0 ],
                    "text": "t signal"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 64.0, 97.0, 71.0, 22.0 ],
                    "text": "route signal"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 64.0, 306.0, 47.0, 22.0 ],
                    "text": "t signal"
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.125, 0.125, 0.125, 0.0 ],
                    "activegridcolor": [ 0.22, 0.22, 0.22, 0.0 ],
                    "activelinecolor": [ 0.4904921114938933, 0.6819244478854937, 0.5100669514757755, 1.0 ],
                    "bgcolor": [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 0.0 ],
                    "frozen_box_attributes": [ "activegridcolor", "mode", "activebgcolor", "bgcolor", "gridcolor" ],
                    "grid": 3,
                    "gridcolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
                    "horizonal_divisions": 8,
                    "horizontal_divisions": 8,
                    "id": "obj-3",
                    "maxclass": "live.scope~",
                    "mode": 0,
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 346.0, 480.0, 130.0, 130.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 130.0, 130.0 ],
                    "rounded": 1.0,
                    "samples": 48000.0,
                    "saved_attribute_attributes": {
                        "activelinecolor": {
                            "expression": "themecolor.jed_js_comment"
                        }
                    },
                    "vertical_divisions": 4
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.125, 0.125, 0.125, 0.0 ],
                    "activegridcolor": [ 0.22, 0.22, 0.22, 0.0 ],
                    "activelinecolor": [ 0.9565903523274274, 0.7661489178616099, 0.4528340909165927, 1.0 ],
                    "bgcolor": [ 0.156862745098039, 0.156862745098039, 0.156862745098039, 0.0 ],
                    "frozen_box_attributes": [ "activegridcolor", "mode", "activebgcolor", "bgcolor", "gridcolor" ],
                    "grid": 3,
                    "gridcolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
                    "horizonal_divisions": 8,
                    "horizontal_divisions": 8,
                    "id": "obj-2",
                    "maxclass": "live.scope~",
                    "mode": 0,
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 628.0, 480.0, 130.0, 130.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 130.0, 130.0 ],
                    "rounded": 1.0,
                    "samples": 48000.0,
                    "saved_attribute_attributes": {
                        "activelinecolor": {
                            "expression": "themecolor.jed_js_corefunction"
                        }
                    },
                    "vertical_divisions": 4
                }
            },
            {
                "box": {
                    "activebgcolor": [ 0.125, 0.125, 0.125, 1.0 ],
                    "activegridcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                    "activelinecolor": [ 1.0, 0.3140393334794738, 0.2231566311606682, 1.0 ],
                    "bgcolor": [ 0.125, 0.125, 0.125, 1.0 ],
                    "frozen_box_attributes": [ "mode" ],
                    "grid": 3,
                    "gridcolor": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 1.0 ],
                    "horizonal_divisions": 8,
                    "horizontal_divisions": 8,
                    "id": "obj-1",
                    "linecolor": [ 0.4585953500627549, 0.4585952375649011, 0.45859526696238767, 1.0 ],
                    "maxclass": "live.scope~",
                    "mode": 0,
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 910.0, 480.0, 130.0, 130.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 130.0, 130.0 ],
                    "rounded": 1.0,
                    "samples": 48000.0,
                    "saved_attribute_attributes": {
                        "activebgcolor": {
                            "expression": "themecolor.theme_bgcolor"
                        },
                        "activegridcolor": {
                            "expression": "themecolor.theme_locked_bgcolor"
                        },
                        "activelinecolor": {
                            "expression": "themecolor.jed_js_error"
                        },
                        "bgcolor": {
                            "expression": "themecolor.theme_bgcolor"
                        },
                        "gridcolor": {
                            "expression": "themecolor.theme_stripecolor"
                        },
                        "linecolor": {
                            "expression": "themecolor.theme_accentcolor"
                        }
                    },
                    "vertical_divisions": 4
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-10", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
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
                    "destination": [ "obj-71", 0 ],
                    "source": [ "obj-11", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 0,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "order": 1,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "source": [ "obj-13", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "order": 0,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "order": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-15", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 0,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "order": 1,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "midpoints": [ 1044.5, 336.83203125, 1007.5, 336.83203125 ],
                    "source": [ "obj-20", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 1 ],
                    "source": [ "obj-20", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 2 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 1007.5, 453.5, 919.5, 453.5 ],
                    "order": 0,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "midpoints": [ 1007.5, 453.5, 637.5, 453.5 ],
                    "order": 1,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 1 ],
                    "midpoints": [ 1051.5, 377.0, 1101.83203125, 377.0, 1101.83203125, 257.0, 1081.5, 257.0 ],
                    "source": [ "obj-26", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 1007.5, 453.5, 355.5, 453.5 ],
                    "order": 2,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "midpoints": [ 1007.5, 453.5, 73.5, 453.5 ],
                    "order": 3,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 1 ],
                    "midpoints": [ 1030.5, 193.515625, 161.5, 193.515625 ],
                    "source": [ "obj-52", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "source": [ "obj-52", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 1 ],
                    "source": [ "obj-52", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 1 ],
                    "source": [ "obj-52", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 1 ],
                    "source": [ "obj-52", 4 ]
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
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-67", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-67", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "midpoints": [ 161.5, 336.5, 1007.5, 336.5 ],
                    "source": [ "obj-67", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-67", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-71", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-71", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "midpoints": [ 443.5, 336.5, 1007.5, 336.5 ],
                    "source": [ "obj-71", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-71", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-72", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-72", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "midpoints": [ 725.5, 336.5, 1007.5, 336.5 ],
                    "source": [ "obj-72", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-72", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-73", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-73", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-73", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-73", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-8", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 0,
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "order": 1,
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "autosave": 0,
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}