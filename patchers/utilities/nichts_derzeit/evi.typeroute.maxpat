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
        "rect": [ 146.0, 110.0, 1110.0, 284.0 ],
        "gridonopen": 2,
        "lefttoolbarpinned": 2,
        "toptoolbarpinned": 2,
        "righttoolbarpinned": 2,
        "bottomtoolbarpinned": 1,
        "toolbars_unpinned_last_save": 7,
        "subpatcher_template": "<none>",
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 259.0, 236.0, 66.0, 20.0 ],
                    "text": "texture",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "comment": "(string) Output",
                    "id": "obj-27",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 763.0, 204.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 745.0, 236.0, 66.0, 20.0 ],
                    "text": "string",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 763.0, 120.0, 85.0, 22.0 ],
                    "text": "prepend string"
                }
            },
            {
                "box": {
                    "comment": "(array) Output",
                    "id": "obj-24",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 641.0, 204.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 623.0, 236.0, 66.0, 20.0 ],
                    "text": "array",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 641.0, 120.0, 83.0, 22.0 ],
                    "text": "prepend array"
                }
            },
            {
                "box": {
                    "comment": "(geometry) Output",
                    "id": "obj-23",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 155.0, 204.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "jit_geometry" ],
                    "patching_rect": [ 155.0, 120.0, 81.0, 22.0 ],
                    "text": "t jit_geometry"
                }
            },
            {
                "box": {
                    "comment": "(dictionary) Output",
                    "id": "obj-11",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 520.0, 204.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 502.0, 236.0, 66.0, 20.0 ],
                    "text": "dict",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 520.0, 120.0, 107.0, 22.0 ],
                    "text": "prepend dictionary"
                }
            },
            {
                "box": {
                    "comment": "(list) Output",
                    "id": "obj-9",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 869.0, 204.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(symbol) Output",
                    "id": "obj-8",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 837.0, 204.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(float) Output",
                    "id": "obj-7",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 916.0, 204.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(int) Output",
                    "id": "obj-6",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 948.0, 204.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(bang) Output",
                    "id": "obj-5",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1033.0, 204.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(signal) Output",
                    "id": "obj-4",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 81.0, 204.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(matrix) Output",
                    "id": "obj-3",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 398.0, 204.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(texture) Output",
                    "id": "obj-2",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 277.0, 204.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(multichannelsignal) Output",
                    "id": "obj-1",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 34.0, 204.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "Any Input",
                    "id": "obj-128",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 34.0, 34.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-159",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [ "signal", "bang", "int", "float", "", "" ],
                    "patching_rect": [ 884.0, 120.0, 179.0, 22.0 ],
                    "text": "typeroute~"
                }
            },
            {
                "box": {
                    "id": "obj-157",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 34.0, 120.0, 114.0, 22.0 ],
                    "text": "t multichannelsignal"
                }
            },
            {
                "box": {
                    "id": "obj-154",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "jit_matrix" ],
                    "patching_rect": [ 398.0, 120.0, 63.0, 22.0 ],
                    "text": "t jit_matrix"
                }
            },
            {
                "box": {
                    "id": "obj-153",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "jit_gl_texture" ],
                    "patching_rect": [ 277.0, 120.0, 83.0, 22.0 ],
                    "text": "t jit_gl_texture"
                }
            },
            {
                "box": {
                    "id": "obj-152",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 8,
                    "outlettype": [ "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 34.0, 81.0, 869.0, 22.0 ],
                    "text": "route multichannelsignal jit_geometry jit_gl_texture jit_matrix dictionary array string"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 380.0, 236.0, 66.0, 20.0 ],
                    "text": "matrix",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 137.0, 236.0, 66.0, 20.0 ],
                    "text": "geom",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 63.0, 236.0, 66.0, 20.0 ],
                    "text": "signal",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 16.0, 236.0, 66.0, 20.0 ],
                    "text": "mc",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 851.0, 236.0, 66.0, 20.0 ],
                    "text": "list",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 819.0, 236.0, 66.0, 20.0 ],
                    "text": "symbol",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 898.0, 236.0, 66.0, 20.0 ],
                    "text": "float",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 930.0, 236.0, 66.0, 20.0 ],
                    "text": "int",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1015.0, 236.0, 66.0, 20.0 ],
                    "text": "bang",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-130",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 66.0, 39.0, 82.0, 20.0 ],
                    "text": "any input"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 277.0, 39.0, 626.0, 20.0 ],
                    "text": "this is wishful thinking, mc and geometry do not work (properly), but they might work one day?",
                    "textjustification": 2
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
                    "destination": [ "obj-152", 0 ],
                    "source": [ "obj-128", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-152", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-153", 0 ],
                    "source": [ "obj-152", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-154", 0 ],
                    "source": [ "obj-152", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-157", 0 ],
                    "source": [ "obj-152", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-159", 0 ],
                    "source": [ "obj-152", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-152", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-152", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-152", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-153", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-157", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "midpoints": [ 893.5, 163.31155395507812, 90.5, 163.31155395507812 ],
                    "source": [ "obj-159", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-159", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-159", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-159", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-159", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-159", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-29", 0 ]
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