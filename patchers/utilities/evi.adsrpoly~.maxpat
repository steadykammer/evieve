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
        "rect": [ 274.0, 181.0, 1108.0, 614.0 ],
        "gridonopen": 2,
        "subpatcher_template": "sub",
        "boxes": [
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 90.4, 236.0, 29.5, 22.0 ],
                    "text": "f 0."
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 64.0, 19.0, 289.0, 60.0 ],
                    "text": "This is a completely ridiculous abstraction that aims to give the [adsr~] mute message outlet feature to [evi.adsr~]. In the process we lose signal inlets capabilities from the regular [evi.adsr~]."
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
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
                        "rect": [ 377.0, 156.0, 545.0, 321.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-11",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 211.0, 55.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 363.0, 33.0, 56.0, 20.0 ],
                                    "text": "release",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 314.0, 33.0, 56.0, 20.0 ],
                                    "text": "hold2",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 125.0, 33.0, 56.0, 20.0 ],
                                    "text": "hold1",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 83.0, 33.0, 56.0, 20.0 ],
                                    "text": "attack",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 96.0, 115.0, 61.0, 22.0 ],
                                    "text": "pak 10. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 327.0, 115.0, 68.0, 22.0 ],
                                    "text": "pak 0. 200."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 327.0, 154.0, 42.0, 22.0 ],
                                    "text": "+ 200."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 96.0, 154.0, 29.5, 22.0 ],
                                    "text": "+ 0."
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
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 96.0, 55.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-45",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 138.0, 55.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-47",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 327.0, 55.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-48",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 376.0, 55.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-49",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 96.0, 236.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-50",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 327.0, 236.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 125.0, 241.0, 202.0, 20.0 ],
                                    "text": "fake ms times to [adsr~]",
                                    "textjustification": 1
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 1 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 1 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 783.0, 373.0, 250.0, 22.0 ],
                    "text": "p holds"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 311.0, 236.0, 29.5, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "signal" ],
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
                        "rect": [ 462.0, 92.0, 765.0, 555.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 217.0, 291.0, 72.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 217.0, 198.0, 50.0, 22.0 ],
                                    "text": "split 0 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "int", "int", "bang", "int" ],
                                    "patching_rect": [ 64.0, 159.0, 172.00000000000003, 22.0 ],
                                    "text": "t i i b i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 285.0, 198.0, 29.5, 22.0 ],
                                    "text": "f 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 285.0, 81.0, 29.5, 22.0 ],
                                    "text": "t f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 64.0, 408.0, 70.0, 22.0 ],
                                    "text": "pak 0 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 115.0, 330.0, 48.0, 22.0 ],
                                    "text": "pak 0 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 64.0, 120.0, 29.5, 22.0 ],
                                    "text": "> 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 248.0, 408.0, 93.0, 22.0 ],
                                    "text": "switch 2 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 248.0, 252.0, 29.5, 22.0 ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 64.0, 447.0, 29.5, 22.0 ],
                                    "text": "&&"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 115.0, 369.0, 29.5, 22.0 ],
                                    "text": "!="
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 144.0, 291.0, 29.5, 22.0 ],
                                    "text": "> 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 248.0, 447.0, 29.5, 22.0 ],
                                    "text": "> 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "int" ],
                                    "patching_rect": [ 409.0, 81.0, 74.0, 22.0 ],
                                    "text": "maximum 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 280.0, 506.0, 80.0, 20.0 ],
                                    "text": "trigger/gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 96.0, 506.0, 80.0, 20.0 ],
                                    "text": "is delayed ?"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-19",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 64.0, 501.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 317.0, 39.0, 80.0, 20.0 ],
                                    "text": "trigger/gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 672.0, 506.0, 80.0, 20.0 ],
                                    "text": "active"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 441.0, 39.0, 108.0, 20.0 ],
                                    "text": "delay time in ms"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 672.0, 39.0, 59.0, 20.0 ],
                                    "text": "[adsr~]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 409.0, 120.0, 44.75, 22.0 ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 435.0, 159.0, 34.0, 22.0 ],
                                    "text": "sel 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "flush" ],
                                    "patching_rect": [ 435.0, 198.0, 41.0, 22.0 ],
                                    "text": "t flush"
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
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 409.0, 34.0, 30.0, 30.0 ]
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
                                    "patching_rect": [ 640.0, 501.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-105",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 640.0, 408.0, 36.0, 22.0 ],
                                    "text": ">~ 0."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-12",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 285.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-14",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 640.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-15",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 248.0, 501.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 322.0, 252.0, 106.0, 22.0 ],
                                    "text": "pipe 0"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 409.0, 368.0, 213.0, 20.0 ],
                                    "text": "very sad :-("
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-105", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-105", 0 ],
                                    "source": [ "obj-14", 0 ]
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
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 1 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 2 ],
                                    "order": 0,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "order": 1,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 1 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 1 ],
                                    "source": [ "obj-44", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 1 ],
                                    "order": 1,
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "order": 0,
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-46", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "source": [ "obj-46", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "source": [ "obj-46", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-48", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "order": 0,
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "order": 1,
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 1 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 1 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-7", 1 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 627.0, 427.0, 47.0, 22.0 ],
                    "text": "p delay"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 531.0, 236.0, 29.5, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 575.0, 236.0, 29.5, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 910.0, 236.5, 44.0, 22.0 ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 399.0, 236.0, 29.5, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 355.0, 236.0, 29.5, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 487.0, 236.0, 29.5, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 443.0, 236.0, 29.5, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "", "" ],
                    "patching_rect": [ 706.0, 427.0, 327.0, 22.0 ],
                    "text": "adsr~ 10. 100. 0.707946 200."
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-23",
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
                        "rect": [ 34.0, 100.0, 707.0, 378.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.0, 285.0, 156.0, 22.0 ],
                                    "text": "print evi.adsrpoly~ @level 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 501.0, 192.0, 66.0, 22.0 ],
                                    "text": "list.change"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 501.0, 153.0, 61.0, 22.0 ],
                                    "text": "list.slice 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 49.0, 192.0, 66.0, 22.0 ],
                                    "text": "list.change"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 49.0, 153.0, 61.0, 22.0 ],
                                    "text": "list.slice 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "ignoreclick": 1,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 49.0, 231.0, 308.0, 22.0 ],
                                    "text": "$1 is not yet implemented in the current evi.adsrpoly~ :-("
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "ignoreclick": 1,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 501.0, 231.0, 135.0, 22.0 ],
                                    "text": "does not understand $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 501.0, 285.0, 156.0, 22.0 ],
                                    "text": "print evi.adsrpoly~ @level 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 8,
                                    "numoutlets": 8,
                                    "outlettype": [ "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 49.0, 96.0, 471.0, 22.0 ],
                                    "text": "routepass zerophase constantrate maxsustain loopsustain looptrigger loop triggermode"
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
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 49.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.0, 74.0, 471.0, 20.0 ],
                                    "text": "these attributes are not working yet in current evi.adsrpoly~ :-("
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
                                    "patching_rect": [ 504.0, 118.0, 46.0, 33.0 ],
                                    "text": "^ errors"
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
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
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
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-21", 0 ]
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
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 445.92857142857144, 135.5, 58.5, 135.5 ],
                                    "source": [ "obj-6", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 381.35714285714283, 135.5, 58.5, 135.5 ],
                                    "source": [ "obj-6", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 316.7857142857143, 135.5, 58.5, 135.5 ],
                                    "source": [ "obj-6", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 252.21428571428572, 135.5, 58.5, 135.5 ],
                                    "source": [ "obj-6", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 187.64285714285714, 135.5, 58.5, 135.5 ],
                                    "source": [ "obj-6", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 123.07142857142857, 135.5, 58.5, 135.5 ],
                                    "source": [ "obj-6", 1 ]
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
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-6", 7 ]
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
                    "patching_rect": [ 999.0, 236.5, 38.0, 22.0 ],
                    "text": "p info"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 298.0, 540.0, 61.0, 20.0 ],
                    "text": "adsr+"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 527.0, 61.0, 47.0 ],
                    "text": "new envelope trigger"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 116.8, 236.0, 91.0, 22.0 ],
                    "text": "routepass reset"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [ "signal", "bang", "int", "float", "", "" ],
                    "patching_rect": [ 64.0, 197.0, 85.0, 22.0 ],
                    "text": "typeroute~"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 10,
                    "numoutlets": 10,
                    "outlettype": [ "", "", "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 732.0, 190.5, 286.0, 35.0 ],
                    "text": "routepass riseratio fallratio envmax velocitysense velocitycurve wait retrigger legato enable"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 618.0, 151.0, 133.0, 22.0 ],
                    "text": "route delay hold1 hold2"
                }
            },
            {
                "box": {
                    "comment": "(float) release",
                    "id": "obj-36",
                    "index": 5,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 298.0, 147.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(float) sustain",
                    "id": "obj-35",
                    "index": 4,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 251.0, 147.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(float) decay",
                    "id": "obj-34",
                    "index": 3,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 203.0, 147.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(int/float) trigger/gate",
                    "id": "obj-33",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 64.0, 147.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(float) attack",
                    "id": "obj-32",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 156.0, 147.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 355.0, 97.0, 61.0, 22.0 ],
                    "text": "unjoin 4"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 999.0, 58.0, 66.0, 22.0 ],
                    "text": "route done"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 355.0, 58.0, 61.0, 22.0 ],
                    "text": "list.slice 4"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 446.0, 97.0, 191.0, 22.0 ],
                    "text": "route attack decay sustain release"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 355.0, 19.0, 663.0, 22.0 ],
                    "text": "patcherargs 10. 100. 0.707946 200. @delay 0. @hold1 0. @hold2 0. @riseratio 0.3 @fallratio 0.05 @retrigger 5. @legato 0"
                }
            },
            {
                "box": {
                    "comment": "(signal) new envelope trigger",
                    "id": "obj-20",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 370.0, 535.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(signal) adsr+ envelope",
                    "id": "obj-19",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 267.0, 535.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(signal) envelope segment # (0, 1, 2, 3, 4, 5, 6, 7, 8, 0)",
                    "id": "obj-11",
                    "index": 4,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 575.0, 535.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(message) mute outlet",
                    "id": "obj-8",
                    "index": 3,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 472.0, 535.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 267.0, 427.0, 327.0, 22.0 ],
                    "text": "gen~ @gen evi_DAHDSHR @timebase 1 @sustainbase 0"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 639.0, 98.0, 191.0, 20.0 ],
                    "text": "@attributes win out over args"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 298.0, 125.0, 30.0, 20.0 ],
                    "text": "R",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 251.0, 125.0, 30.0, 20.0 ],
                    "text": "S",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 203.0, 125.0, 30.0, 20.0 ],
                    "text": "D",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 156.0, 125.0, 30.0, 20.0 ],
                    "text": "A",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 605.0, 540.0, 225.0, 20.0 ],
                    "text": "segment # (0, 1, 2, 3, 4, 5, 6, 7, 8, 0)"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 480.0, 560.0, 165.0, 33.0 ],
                    "text": "|\nmute message to [thispoly~]"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-16",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 370.0, 451.0, 235.0, 47.0 ],
                    "text": "in this abstraction, new envelope trigger does not include initial delay or 'hold2' - use 'segment #' outlet for those sections",
                    "textjustification": 0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-1", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "midpoints": [ 126.3, 268.67578125, 276.5, 268.67578125 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-13", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-13", 2 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-13", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-13", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 1055.5, 88.5, 455.5, 88.5 ],
                    "source": [ "obj-18", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "midpoints": [ 818.1666666666666, 497.68359375, 379.5, 497.68359375 ],
                    "source": [ "obj-21", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 2 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "midpoints": [ 920.8333333333334, 516.5703125, 481.5, 516.5703125 ],
                    "source": [ "obj-21", 2 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-1", 4 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-21", 2 ],
                    "midpoints": [ 463.0, 350.46875, 869.5, 350.46875 ],
                    "source": [ "obj-24", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-1", 5 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-21", 3 ],
                    "midpoints": [ 507.0, 342.5, 946.5, 342.5 ],
                    "source": [ "obj-25", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-1", 2 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.6679978967, 0.4751212597, 0.2586010993, 1.0 ],
                    "destination": [ "obj-51", 0 ],
                    "midpoints": [ 375.0, 326.265625, 792.5, 326.265625 ],
                    "source": [ "obj-26", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.5, 0.0, 1.0 ],
                    "destination": [ "obj-1", 3 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.6679978967, 0.4751212597, 0.2586010993, 1.0 ],
                    "destination": [ "obj-51", 1 ],
                    "midpoints": [ 419.0, 320.734375, 850.25, 320.734375 ],
                    "source": [ "obj-27", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 919.5, 268.5, 276.5, 268.5 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "midpoints": [ 944.5, 279.60546875, 715.5, 279.60546875 ],
                    "source": [ "obj-28", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-1", 7 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.6679978967, 0.4751212597, 0.2586010993, 1.0 ],
                    "destination": [ "obj-51", 4 ],
                    "midpoints": [ 595.0, 301.9765625, 1023.5, 301.9765625 ],
                    "source": [ "obj-29", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.5, 0.0, 1.0 ],
                    "destination": [ "obj-1", 6 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.6679978967, 0.4751212597, 0.2586010993, 1.0 ],
                    "destination": [ "obj-51", 3 ],
                    "midpoints": [ 551.0, 307.90234375, 965.75, 307.90234375 ],
                    "source": [ "obj-30", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-31", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-31", 2 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-31", 3 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.1491314173, 0.0, 1.0 ],
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-37", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.5, 0.0, 1.0 ],
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.6679978967, 0.4751212597, 0.2586010993, 1.0 ],
                    "destination": [ "obj-37", 1 ],
                    "midpoints": [ 331.0, 358.4375, 650.5, 358.4375 ],
                    "source": [ "obj-39", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.5, 0.0, 1.0 ],
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-40", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.5, 0.0, 1.0 ],
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-40", 2 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.5, 0.0, 1.0 ],
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-40", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 889.8333333333334, 268.5, 276.5, 268.5 ],
                    "source": [ "obj-46", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 860.1666666666667, 268.5, 276.5, 268.5 ],
                    "source": [ "obj-46", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 830.5, 268.5, 276.5, 268.5 ],
                    "source": [ "obj-46", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 800.8333333333334, 268.5, 276.5, 268.5 ],
                    "source": [ "obj-46", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 771.1666666666666, 268.5, 276.5, 268.5 ],
                    "source": [ "obj-46", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 741.5, 268.5, 276.5, 268.5 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "hidden": 1,
                    "source": [ "obj-46", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "midpoints": [ 978.8333333333334, 231.0, 919.5, 231.0 ],
                    "source": [ "obj-46", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "midpoints": [ 949.1666666666666, 231.0, 919.5, 231.0 ],
                    "source": [ "obj-46", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-46", 6 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.1491314173, 0.0, 1.0 ],
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 99.9, 418.86328125, 276.5, 418.86328125 ],
                    "order": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.1491314173, 0.0, 1.0 ],
                    "destination": [ "obj-37", 0 ],
                    "midpoints": [ 99.9, 414.16015625, 636.5, 414.16015625 ],
                    "order": 0,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-21", 4 ],
                    "source": [ "obj-51", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.01680417731, 0.5448567749095891, 1.0, 1.0 ],
                    "destination": [ "obj-21", 1 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "hidden": 1,
                    "source": [ "obj-63", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 139.5, 280.62890625, 46.94921875, 280.62890625, 46.94921875, 88.484375, 455.5, 88.484375 ],
                    "source": [ "obj-63", 5 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.1491314173, 0.0, 1.0 ],
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-63", 3 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.1491314173, 0.0, 1.0 ],
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-63", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "midpoints": [ 86.7, 229.0, 30.38203125000001, 229.0, 30.38203125000001, 9.0, 364.5, 9.0 ],
                    "source": [ "obj-63", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-9", 1 ]
                }
            }
        ]
    }
}