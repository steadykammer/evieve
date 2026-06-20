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
        "rect": [ 34.0, 100.0, 1003.0, 737.0 ],
        "gridonopen": 2,
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 584.0, 202.0, 33.0, 22.0 ],
                    "text": "== 0"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 584.0, 256.0, 183.0, 22.0 ],
                    "text": "prepend script sendbox list2 cool"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 584.0, 295.0, 67.0, 22.0 ],
                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                    "text": "thispatcher"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 357.0, 295.0, 45.0, 22.0 ],
                    "text": "t b l"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 775.0, 202.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 775.0, 148.0, 47.0, 22.0 ],
                    "text": "clip 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 324.0, 256.0, 52.0, 22.0 ],
                    "text": "gate 2 1"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 357.0, 94.0, 54.0, 22.0 ],
                    "text": "route list"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 637.0, 678.0, 319.0, 20.0 ],
                    "text": "based on an abstraction by Vincent Goudard - THANKS!"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 445.0, 295.0, 62.0, 22.0 ],
                    "text": "route float"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 709.0, 202.0, 52.0, 22.0 ],
                    "text": "gate 1 0"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 228.0, 349.0, 47.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 64.0, 565.0, 53.0, 22.0 ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 168.0, 403.0, 78.0, 22.0 ],
                    "text": "list.reg 0."
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 324.0, 403.0, 78.0, 22.0 ],
                    "text": "list.reg 0."
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 64.0, 94.0, 62.0, 22.0 ],
                    "text": "route float"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 107.0, 202.0, 61.0, 22.0 ],
                    "text": "list.slice 1"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 107.0, 148.0, 200.5, 22.0 ],
                    "text": "route xfade list bang"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 445.0, 256.0, 61.0, 22.0 ],
                    "text": "list.slice 1"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 445.0, 18.0, 283.0, 20.0 ],
                    "text": "optional arg#1: initial xfade 0..1"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 445.0, 40.0, 283.0, 22.0 ],
                    "text": "patcherargs @setxfade 0. @init 0 @maxsize 32767"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 709.0000000000001, 94.0, 117.99999999999989, 22.0 ],
                    "text": "route init done hot"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
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
                        "rect": [ 34.0, 100.0, 554.0, 434.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 49.0, 291.0, 67.0, 22.0 ],
                                    "text": "join 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 346.0, 237.0, 87.0, 22.0 ],
                                    "text": "clip 256 32767"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 452.0, 358.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 49.0, 81.0, 422.0, 22.0 ],
                                    "text": "routepass maxsize"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 49.0, 120.0, 61.0, 22.0 ],
                                    "text": "list.slice 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 49.0, 159.0, 316.0, 22.0 ],
                                    "text": "list.slice 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 144.0, 291.0, 221.0, 22.0 ],
                                    "text": "join 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 144.0, 237.0, 179.0, 22.0 ],
                                    "text": "combine zl maxsize @triggers 1"
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
                                    "patching_rect": [ 49.0, 34.0, 30.0, 30.0 ]
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
                                    "patching_rect": [ 49.0, 358.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-12",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 144.0, 358.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-2", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "order": 0,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 1 ],
                                    "order": 1,
                                    "source": [ "obj-3", 0 ]
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
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-6", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 1 ],
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
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 893.0, 295.0, 63.0, 22.0 ],
                    "text": "p maxsize"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 808.0, 202.0, 104.0, 22.0 ],
                    "text": "route set setxfade"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 64.0, 511.0, 53.0, 22.0 ],
                    "text": "f 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 168.0, 457.0, 45.5, 22.0 ],
                    "text": "t b l"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 64.0, 619.0, 280.0, 22.0 ],
                    "text": "vexpr (1. - $f1)*$f2 + $f1*$f3 @scalarmode 1"
                }
            },
            {
                "box": {
                    "comment": "(list) crossfaded list out",
                    "id": "obj-3",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 64.0, 673.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(list) list 2 to crossfade",
                    "cool": 1,
                    "id": "obj-2",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 357.0, 36.0, 30.0, 30.0 ],
                    "varname": "list2"
                }
            },
            {
                "box": {
                    "comment": "(float/list) xfade 0..1 / list 1 to crossfade",
                    "id": "obj-1",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 64.0, 36.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-34",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 346.0, 620.0, 271.0, 20.0 ],
                    "text": "todo: interpolation types other than linear"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "color": [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-10", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-16", 0 ],
                    "midpoints": [ 177.5, 486.5, 73.5, 486.5 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.993228554725647, 0.703426003456116, 0.035798065364361, 1.0 ],
                    "destination": [ "obj-4", 1 ],
                    "source": [ "obj-11", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.993228554725647, 0.703426003456116, 0.035798065364361, 1.0 ],
                    "destination": [ "obj-4", 2 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 924.5, 392.5, 333.5, 392.5 ],
                    "order": 0,
                    "source": [ "obj-13", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                    "destination": [ "obj-17", 0 ],
                    "midpoints": [ 924.5, 392.5, 177.5, 392.5 ],
                    "order": 1,
                    "source": [ "obj-13", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                    "destination": [ "obj-4", 0 ],
                    "midpoints": [ 902.5, 608.5, 73.5, 608.5 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-14", 2 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                    "destination": [ "obj-21", 1 ],
                    "source": [ "obj-14", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-14", 3 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-15", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.993228554725647, 0.703426003456116, 0.035798065364361, 1.0 ],
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 265.5, 386.5, 333.5, 386.5 ],
                    "source": [ "obj-19", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-17", 0 ],
                    "midpoints": [ 237.5, 386.5, 177.5, 386.5 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.993228554725647, 0.703426003456116, 0.035798065364361, 1.0 ],
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                    "destination": [ "obj-22", 0 ],
                    "order": 0,
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "hidden": 1,
                    "midpoints": [ 784.5, 176.5, 593.5, 176.5 ],
                    "order": 1,
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                    "destination": [ "obj-16", 0 ],
                    "midpoints": [ 718.5, 494.0, 73.5, 494.0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 784.5, 231.5, 333.5, 231.5 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 1 ],
                    "midpoints": [ 454.5, 502.5, 107.5, 502.5 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 1 ],
                    "source": [ "obj-24", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "midpoints": [ 366.5, 340.5, 237.5, 340.5 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.993228554725647, 0.703426003456116, 0.035798065364361, 1.0 ],
                    "destination": [ "obj-5", 1 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "hidden": 1,
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "hidden": 1,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.993228554725647, 0.703426003456116, 0.035798065364361, 1.0 ],
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.993228554725647, 0.703426003456116, 0.035798065364361, 1.0 ],
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-5", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.993228554725647, 0.703426003456116, 0.035798065364361, 1.0 ],
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-7", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-7", 2 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                    "destination": [ "obj-9", 0 ],
                    "midpoints": [ 298.0, 185.5, 817.5, 185.5 ],
                    "source": [ "obj-7", 3 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
                    "destination": [ "obj-10", 0 ],
                    "midpoints": [ 116.5, 234.0, 51.0, 234.0, 51.0, 83.0, 73.5, 83.0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-9", 2 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 860.0, 239.5, 454.5, 239.5 ],
                    "source": [ "obj-9", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.701961, 0.701961, 0.702, 0.0 ],
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 817.5, 239.5, 454.5, 239.5 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}