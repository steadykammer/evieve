{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 111.0, 114.0, 599.0, 585.0 ],
        "gridonopen": 2,
        "subpatcher_template": "sub",
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-29",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 305.0, 525.0, 150.0, 33.0 ],
                    "text": "create message lists with mcwrapper features"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "zlclear" ],
                    "patching_rect": [ 108.0, 433.0, 50.0, 22.0 ],
                    "text": "t zlclear"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 81.0, 39.0, 162.0, 20.0 ],
                    "text": "any mcwrapper method"
                }
            },
            {
                "box": {
                    "comment": "(list) generated list output",
                    "id": "obj-21",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 166.0, 526.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 436.0, 115.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 326.0, 16.0, 228.0, 20.0 ],
                    "text": "optional arg(s): initial mcwrapper method"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 267.0, 208.0, 70.0, 22.0 ],
                    "text": "route NULL"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 49.0, 325.0, 88.0, 22.0 ],
                    "text": "prepend chans"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "bang" ],
                    "patching_rect": [ 49.0, 286.0, 329.0, 22.0 ],
                    "text": "t i i b"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 483.0, 115.0, 71.0, 22.0 ],
                    "text": "route chans"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 436.0, 76.0, 66.0, 22.0 ],
                    "text": "route done"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 267.0, 169.0, 78.0, 22.0 ],
                    "text": "list.reg NULL"
                }
            },
            {
                "box": {
                    "comment": "(int) # chans (same as @chans) / (bang) output previous list / (anything) any mcwrapper method",
                    "id": "obj-7",
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
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 326.0, 38.0, 129.0, 22.0 ],
                    "text": "patcherargs @chans 2"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 49.0, 247.0, 30.0, 22.0 ],
                    "text": "i 2"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 49.0, 208.0, 137.0, 22.0 ],
                    "text": "route int float clear bang"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 166.0, 472.0, 57.0, 22.0 ],
                    "text": "list.group"
                }
            },
            {
                "box": {
                    "data": {
                        "patcher": {
                            "fileversion": 1,
                            "appversion": {
                                "major": 9,
                                "minor": 1,
                                "revision": 0,
                                "architecture": "x64",
                                "modernui": 1
                            },
                            "classnamespace": "dsp.gen",
                            "rect": [ 84.0, 131.0, 600.0, 450.0 ],
                            "integercoordinates": 1,
                            "boxes": [
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "in 1",
                                        "patching_rect": [ 176.0, 96.0, 28.0, 22.0 ],
                                        "numinlets": 0,
                                        "numoutlets": 1,
                                        "id": "obj-1",
                                        "outlettype": [ "" ]
                                    }
                                },
                                {
                                    "box": {
                                        "maxclass": "newobj",
                                        "text": "out 1",
                                        "patching_rect": [ 176.0, 293.0, 35.0, 22.0 ],
                                        "numinlets": 1,
                                        "numoutlets": 0,
                                        "id": "obj-4"
                                    }
                                }
                            ],
                            "lines": [
                                {
                                    "patchline": {
                                        "source": [ "obj-1", 0 ],
                                        "destination": [ "obj-4", 0 ]
                                    }
                                }
                            ]
                        }
                    },
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 166.0, 379.0, 105.0, 22.0 ],
                    "text": "mc.gen @chans 2",
                    "wrapper_uniquekey": "u080002764"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 0.0 ],
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-10", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 0.0 ],
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 0.0 ],
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 492.5, 158.109375, 58.5, 158.109375 ],
                    "source": [ "obj-11", 0 ]
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
                    "color": [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 0.0 ],
                    "destination": [ "obj-25", 0 ],
                    "midpoints": [ 368.5, 419.0234375, 117.5, 419.0234375 ],
                    "source": [ "obj-12", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 1 ],
                    "source": [ "obj-12", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.572549, 0.27451, 0.027451, 1.0 ],
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-14", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 0.0 ],
                    "destination": [ "obj-25", 0 ],
                    "midpoints": [ 458.5, 418.3515625, 117.5, 418.3515625 ],
                    "source": [ "obj-19", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 0.0 ],
                    "destination": [ "obj-8", 0 ],
                    "midpoints": [ 445.5, 144.37890625, 276.5, 144.37890625 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.572549, 0.27451, 0.027451, 1.0 ],
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-3", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-3", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-3", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-3", 1 ]
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
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 0.0 ],
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.572549, 0.27451, 0.027451, 1.0 ],
                    "destination": [ "obj-8", 1 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.572549, 0.27451, 0.027451, 1.0 ],
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.572549, 0.27451, 0.027451, 1.0 ],
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}