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
        "rect": [ 396.0, 105.0, 388.0, 418.0 ],
        "gridonopen": 2,
        "lefttoolbarpinned": 2,
        "toptoolbarpinned": 2,
        "righttoolbarpinned": 2,
        "bottomtoolbarpinned": 1,
        "toolbars_unpinned_last_save": 7,
        "subpatcher_template": "sk_bottomtoolbar_arial12",
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 164.5504586984723, 254.5, 144.0, 22.0 ],
                    "text": "evi.listproduct @iterate 1"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
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
                        "rect": [ 786.0, 105.0, 179.0, 210.0 ],
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
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 63.94954130152769, 104.84130859375, 89.0, 22.0 ],
                                    "text": "prepend iterate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 18.949541301527688, 104.84130859375, 22.0, 22.0 ],
                                    "text": "t b"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 18.949541301527688, 158.84130859375, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 18.949541301527688, 65.84130859375, 109.0, 22.0 ],
                                    "text": "route done kiterate"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-26",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 18.949541301527688, 18.84130859375, 30.0, 30.0 ]
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
                                    "patching_rect": [ 63.94954130152769, 158.84130859375, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-22", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 134.5504586984723, 215.5, 49.0, 22.0 ],
                    "text": "p parse"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 16.550458698472312, 176.5, 137.0, 22.0 ],
                    "text": "patcherargs @kiterate 1"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 76.85014950864876, 80.5, 54.0, 22.0 ],
                    "text": "route list"
                }
            },
            {
                "box": {
                    "comment": "(list) List of 2nd Order Filter Coefficients",
                    "id": "obj-13",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 76.85014950864876, 33.5, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(list) List of 2nd Order Filter Coefficients (Pass Through)",
                    "id": "obj-9",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 34.499994913736984, 347.5, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(list) Z :: List of Zero Coordinate Pairs",
                    "id": "obj-86",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 78.18348284198208, 347.5, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(list) P :: List of Pole Coordinate Pairs",
                    "id": "obj-87",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 120.86697077022717, 347.5, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(float) K :: Product of all 2nd Order Filter Gains",
                    "id": "obj-88",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 164.5504586984723, 347.5, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "gridlinecolor": [ 0.349019607843137, 0.349019607843137, 0.349019607843137, 0.0 ],
                    "id": "obj-59",
                    "ignoreclick": 1,
                    "maxclass": "zplane~",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "list", "list", "list", "list" ],
                    "patching_rect": [ 84.35014950864876, 134.5, 10.0, 10.0 ],
                    "polezerocolor": [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ]
                }
            },
            {
                "box": {
                    "fontface": 2,
                    "id": "obj-23",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 224.0, 18.5, 154.0, 74.0 ],
                    "text": "convert list of coefficients (in groups of 5: a0, a1, a2, b1, b2; up to 24 groups) to zeros, poles and gain representations"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 108.85014950864876, 38.5, 75.14985049135124, 20.0 ],
                    "text": "coefficients"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 164.5504586984723, 379.5, 30.0, 20.0 ],
                    "text": "K",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 120.86697077022717, 379.5, 30.0, 20.0 ],
                    "text": "P",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 78.18348284198208, 379.5, 30.0, 20.0 ],
                    "text": "Z",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 134.5504586984723, 123.0, 104.0, 33.0 ],
                    "text": "(sometimes Max is really stupid)"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-10", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-28", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-59", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "source": [ "obj-59", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "source": [ "obj-59", 2 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.701961, 0.701961, 0.701961, 0.0 ],
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            }
        ],
        "autosave": 0,
        "styles": [
            {
                "name": "AudioStatus_Menu",
                "default": {
                    "bgfillcolor": {
                        "angle": 270,
                        "autogradient": 0,
                        "color": [ 0.294118, 0.313726, 0.337255, 1 ],
                        "color1": [ 0.454902, 0.462745, 0.482353, 0 ],
                        "color2": [ 0.290196, 0.309804, 0.301961, 1 ],
                        "proportion": 0.39,
                        "type": "color"
                    }
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "DP.M4L",
                "default": {
                    "bgcolor": [ 0.4, 0.4, 0.4, 1.0 ],
                    "color": [ 0.960784, 0.827451, 0.156863, 1.0 ],
                    "selectioncolor": [ 0.960784, 0.827451, 0.156863, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "DP.M4L-New",
                "default": {
                    "bgcolor": [ 1.0, 1.0, 1.0, 0.15 ],
                    "color": [ 0.960784, 0.827451, 0.156863, 1.0 ],
                    "textcolor_inverse": [ 1.0, 1.0, 1.0, 0.15 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "DP.M4L.Test1",
                "default": {
                    "bgcolor": [ 1.0, 1.0, 1.0, 0.15 ],
                    "color": [ 0.345098, 0.513725, 0.572549, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "Daan_small10",
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "max6box",
                "default": {
                    "accentcolor": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "bgcolor": [ 1.0, 1.0, 1.0, 0.5 ],
                    "textcolor_inverse": [ 0.0, 0.0, 0.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "max6inlet",
                "default": {
                    "color": [ 0.423529, 0.372549, 0.27451, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "max6message",
                "default": {
                    "bgfillcolor": {
                        "angle": 270.0,
                        "autogradient": 0,
                        "color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                        "color1": [ 0.866667, 0.866667, 0.866667, 1.0 ],
                        "color2": [ 0.788235, 0.788235, 0.788235, 1.0 ],
                        "proportion": 0.39,
                        "type": "gradient"
                    },
                    "textcolor_inverse": [ 0.0, 0.0, 0.0, 1.0 ]
                },
                "parentstyle": "max6box",
                "multi": 0
            },
            {
                "name": "max6outlet",
                "default": {
                    "color": [ 0.0, 0.454902, 0.498039, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "newobjBlue-1",
                "default": {
                    "accentcolor": [ 0.317647, 0.654902, 0.976471, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "newobjGreen-1",
                "default": {
                    "accentcolor": [ 0.0, 0.533333, 0.168627, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "newobjYellow-1",
                "default": {
                    "accentcolor": [ 0.82517, 0.78181, 0.059545, 1.0 ],
                    "fontsize": [ 12.059008 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "numberGold-1",
                "default": {
                    "accentcolor": [ 0.764706, 0.592157, 0.101961, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            }
        ],
        "toolbaradditions": [ "audiomute", "audiosolo" ]
    }
}