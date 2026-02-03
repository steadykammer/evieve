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
        "rect": [ 31.0, 389.0, 960.0, 525.0 ],
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
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "dictionary", "dictionary" ],
                    "patching_rect": [ 308.0, 306.0, 190.0, 22.0 ],
                    "text": "dict.slice @keys cascade"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "dictionary" ],
                    "patching_rect": [ 308.0, 252.0, 448.33331298828125, 22.0 ],
                    "text": "dict.pack schema: filterdesign zeroes: poles: gain: cascade: @triggers 1"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 3,
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
                        "rect": [ 44.0, 84.0, 344.0, 300.0 ],
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
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 228.0, 80.99999982421875, 78.0, 22.0 ],
                                    "text": "route int float"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 34.0, 134.99999982421875, 47.0, 22.0 ],
                                    "text": "clip 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 98.0, 188.99999982421875, 52.0, 22.0 ],
                                    "text": "gate 1 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-18",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 34.0, 33.99999982421875, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-19",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "dictionary" ],
                                    "patching_rect": [ 131.21518987341773, 33.99999982421875, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-20",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 228.43037974683546, 33.99999982421875, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-21",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 98.0, 242.99999982421875, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "color": [ 0.986246049404144, 0.007120788097382, 0.027434188872576, 1.0 ],
                                    "destination": [ "obj-21", 0 ],
                                    "midpoints": [ 107.5, 226.49999982421875, 107.5, 226.49999982421875 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "midpoints": [ 43.5, 172.49999982421875, 107.5, 172.49999982421875 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "midpoints": [ 267.0, 118.49999982421875, 43.5, 118.49999982421875 ],
                                    "source": [ "obj-17", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "midpoints": [ 237.5, 118.49999982421875, 43.5, 118.49999982421875 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "midpoints": [ 43.5, 98.99999982421875, 43.5, 98.99999982421875 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.986246049404144, 0.007120788097382, 0.027434188872576, 1.0 ],
                                    "destination": [ "obj-10", 1 ],
                                    "midpoints": [ 140.71518987341773, 125.99999982421875, 140.5, 125.99999982421875 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "midpoints": [ 237.93037974683546, 71.99999982421875, 237.5, 71.99999982421875 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 446.0, 360.0, 85.0, 22.0 ],
                    "text": "p gate"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 512.0, 306.0, 89.0, 22.0 ],
                    "text": "route plot done"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 414.0, 105.0, 117.0, 22.0 ],
                    "text": "patcherargs @plot 1"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 216.0, 105.0, 111.0, 22.0 ],
                    "text": "route int float list"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 308.0, 414.0, 121.0, 22.0 ],
                    "saved_object_attributes": {
                        "legacy": 1
                    },
                    "text": "dict.unpack cascade:"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 340.0, 473.0, 89.0, 20.0 ],
                    "text": "realtime"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [ "", "", "", "", "", "" ],
                    "patching_rect": [ 446.0, 414.0, 71.5, 22.0 ],
                    "text": "filterdetail"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-1",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 704.3333129882812, 468.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-24",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 308.0, 468.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 380.0, 144.0, 44.5, 22.0 ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "list", "list", "list", "" ],
                    "patching_rect": [ 380.3333282470703, 198.0, 233.66665649414062, 22.0 ],
                    "text": "evi.zpk"
                }
            },
            {
                "box": {
                    "comment": "(list) List of 2nd Order Filter Coefficients",
                    "id": "obj-90",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 119.0, 19.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-91",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 446.0, 468.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 478.0, 473.0, 192.16668701171875, 20.0 ],
                    "text": "list(s) to plot~(s) for visualisation"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 151.0, 24.0, 200.0, 20.0 ],
                    "text": "list of filter coefficients"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 519.5, 415.0, 150.66668701171875, 20.0 ],
                    "text": "get magnitude (from zpk)"
                }
            },
            {
                "box": {
                    "fontface": 2,
                    "id": "obj-13",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 615.5, 192.5, 334.0, 33.0 ],
                    "text": "convert list of coefficients (in groups of 5: a0, a1, a2, b1, b2; up to 24 groups) to zeros, poles and gain representations"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 736.3333129882812, 473.0, 213.16668701171875, 20.0 ],
                    "text": "(store) in filterdesign dictionary format"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 119.0, 66.0, 116.0, 22.0 ],
                    "text": "routepass dictionary"
                }
            },
            {
                "box": {
                    "fontface": 2,
                    "hidden": 1,
                    "id": "obj-8",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 758.3333129882812, 233.0, 193.0, 60.0 ],
                    "text": "!! N.B. - note the stupid spelling required for \"zeroes\" for filterdesign / cascade / filterdetail / etc to work... !!"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 18.5, 60.5, 98.5, 33.0 ],
                    "text": "...or direct dictionary (load)",
                    "textjustification": 2
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "midpoints": [ 521.5, 216.0, 521.5, 216.0 ],
                    "source": [ "obj-11", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986246049404144, 0.007120788097382, 0.027434188872576, 1.0 ],
                    "destination": [ "obj-91", 0 ],
                    "midpoints": [ 455.5, 451.5, 455.5, 451.5 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 128.5, 399.5, 455.5, 399.5 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986246049404144, 0.007120788097382, 0.027434188872576, 1.0 ],
                    "destination": [ "obj-9", 0 ],
                    "midpoints": [ 225.5, 96.0, 225.5, 96.0 ],
                    "source": [ "obj-15", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 2 ],
                    "midpoints": [ 521.5, 343.5, 521.5, 343.5 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986246049404144, 0.007120788097382, 0.027434188872576, 1.0 ],
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986246049404144, 0.007120788097382, 0.027434188872576, 1.0 ],
                    "destination": [ "obj-22", 1 ],
                    "midpoints": [ 488.5, 343.5, 488.5, 343.5 ],
                    "source": [ "obj-28", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "midpoints": [ 317.5, 370.5, 317.5, 370.5 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 4 ],
                    "midpoints": [ 415.0, 183.5, 660.966650390625, 183.5 ],
                    "source": [ "obj-5", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986246049404144, 0.007120788097382, 0.027434188872576, 1.0 ],
                    "destination": [ "obj-89", 0 ],
                    "midpoints": [ 389.5, 181.5, 389.8333282470703, 181.5 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 317.5, 289.5, 713.8333129882812, 289.5 ],
                    "order": 0,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986246049404144, 0.007120788097382, 0.027434188872576, 1.0 ],
                    "destination": [ "obj-28", 0 ],
                    "midpoints": [ 317.5, 289.5, 317.5, 289.5 ],
                    "order": 1,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "midpoints": [ 317.5, 451.5, 317.5, 451.5 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986246049404144, 0.007120788097382, 0.027434188872576, 1.0 ],
                    "destination": [ "obj-58", 3 ],
                    "midpoints": [ 604.4999847412109, 235.5, 575.0999877929687, 235.5 ],
                    "source": [ "obj-89", 3 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986246049404144, 0.007120788097382, 0.027434188872576, 1.0 ],
                    "destination": [ "obj-58", 2 ],
                    "midpoints": [ 532.9444325764974, 235.5, 489.2333251953125, 235.5 ],
                    "source": [ "obj-89", 2 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986246049404144, 0.007120788097382, 0.027434188872576, 1.0 ],
                    "destination": [ "obj-58", 1 ],
                    "midpoints": [ 461.3888804117839, 235.5, 403.3666625976563, 235.5 ],
                    "source": [ "obj-89", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "midpoints": [ 256.1666666666667, 344.0, 455.5, 344.0 ],
                    "source": [ "obj-9", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "midpoints": [ 225.5, 344.0, 455.5, 344.0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986246049404144, 0.007120788097382, 0.027434188872576, 1.0 ],
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 286.83333333333337, 135.0, 389.5, 135.0 ],
                    "source": [ "obj-9", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "midpoints": [ 317.5, 189.0, 317.5, 189.0 ],
                    "source": [ "obj-9", 3 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986246049404144, 0.007120788097382, 0.027434188872576, 1.0 ],
                    "destination": [ "obj-15", 0 ],
                    "midpoints": [ 128.5, 57.0, 128.5, 57.0 ],
                    "source": [ "obj-90", 0 ]
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