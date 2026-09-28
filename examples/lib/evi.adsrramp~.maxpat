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
        "rect": [ 79.0, 126.0, 840.0, 840.0 ],
        "gridonopen": 2,
        "subpatcher_template": "sub",
        "boxes": [
            {
                "box": {
                    "id": "obj-6",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 49.0, 395.0, 92.0, 87.0 ],
                    "text": "N.B. - uses signals to envs so cannot be used for thispoly~ retriggering"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 49.0, 14.0, 763.0, 74.0 ],
                    "text": "This abstraction wraps an [adsr~] object and synchronously creates a new piecewise ramped segments envelope which is optionally curved. There are no dependencies and it is all in MSP. Because it wraps [adsr~] we can use the [adsr~] outputs to perfectly control [thispoly~] etc. Various compromises mean that it cannot do everything [adsr~] can do, bit it is still usable (sadly no @legato, @retrigger, @maxsustain at the moment). See: [evi.adsrcurve~] and [evi.adsrpoly~] for alternative solutions. See: [evi.adsr~] for a proper envelope (and one that can be used in gen~)."
                }
            },
            {
                "box": {
                    "id": "obj-210",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 124.0, 808.0, 113.0, 20.0 ],
                    "text": "adsr envelope",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-209",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 528.0, 808.0, 113.0, 20.0 ],
                    "text": "new env trigger",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-208",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 621.0, 808.0, 113.0, 20.0 ],
                    "text": "mute outlet",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 559.0, 135.0, 66.0, 22.0 ],
                    "text": "route done"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 310.0, 96.0, 268.0, 22.0 ],
                    "text": "patcherargs 10. 100. 0.707946 200. @curve -0.5"
                }
            },
            {
                "box": {
                    "comment": "dumpout",
                    "id": "obj-202",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 757.0, 776.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(message) mute outlet",
                    "id": "obj-201",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 663.0, 776.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(signal) new env trigger",
                    "id": "obj-200",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 569.0, 776.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-199",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
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
                        "rect": [ 279.0, 92.0, 556.0, 391.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 410.5, 34.0, 113.0, 20.0 ],
                                    "text": "current ramp value",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-7",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 452.0, 56.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 246.33333333333334, 148.0, 55.0, 22.0 ],
                                    "text": "sah~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 277.5, 34.0, 113.0, 20.0 ],
                                    "text": "curve",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 121.0, 34.0, 113.0, 20.0 ],
                                    "text": "release",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 205.0, 34.0, 113.0, 20.0 ],
                                    "text": "sustain",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 319.0, 56.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-116",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 163.0, 148.0, 58.0, 22.0 ],
                                    "text": "sig~ 200."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-123",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 79.0, 231.0, 270.0, 22.0 ],
                                    "text": "ramp~ @reset 0 @mode 1 @retrigger 1 @end 0."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-195",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 79.0, 56.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-196",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 163.0, 56.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-197",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 247.0, 56.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-198",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 79.0, 315.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-178",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 217.0, 209.0, 142.0, 20.0 ],
                                    "text": "should be float input ??"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-123", 0 ],
                                    "midpoints": [ 328.5, 205.24609375, 88.5, 205.24609375 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-123", 1 ],
                                    "source": [ "obj-116", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-198", 0 ],
                                    "source": [ "obj-123", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-123", 0 ],
                                    "order": 1,
                                    "source": [ "obj-195", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 1 ],
                                    "midpoints": [ 88.5, 131.83984375, 291.83333333333337, 131.83984375 ],
                                    "order": 0,
                                    "source": [ "obj-195", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-116", 0 ],
                                    "source": [ "obj-196", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-123", 2 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "midpoints": [ 461.5, 101.37109375, 255.83333333333334, 101.37109375 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 327.0, 644.0, 76.0, 22.0 ],
                    "text": "p r_ramp"
                }
            },
            {
                "box": {
                    "id": "obj-194",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
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
                        "rect": [ 730.0, 92.0, 586.0, 673.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 462.5, 12.0, 113.0, 20.0 ],
                                    "text": "curve",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 254.5, 12.0, 113.0, 20.0 ],
                                    "text": "sustain",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 199.5, 12.0, 113.0, 20.0 ],
                                    "text": "decay",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 144.5, 12.0, 113.0, 20.0 ],
                                    "text": "attack",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-187",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 352.0, 96.0, 44.0, 22.0 ],
                                    "text": "t f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-186",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "signal", "signal" ],
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
                                        "rect": [ 296.0, 199.0, 855.0, 328.0 ],
                                        "gridonopen": 2,
                                        "subpatcher_template": "sub",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 678.0, 34.0, 113.0, 20.0 ],
                                                    "text": "sustain",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 185.0, 34.0, 113.0, 20.0 ],
                                                    "text": "decay",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 117.0, 34.0, 113.0, 20.0 ],
                                                    "text": "attack",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-210",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 49.0, 273.0, 113.0, 20.0 ],
                                                    "text": "ramp time",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-209",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 314.0, 273.0, 113.0, 20.0 ],
                                                    "text": "start value",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-208",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 543.0, 273.0, 113.0, 20.0 ],
                                                    "text": "end value",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-57",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 227.0, 103.0, 58.0, 22.0 ],
                                                    "text": "sig~ 100."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-58",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 91.0, 187.0, 155.0, 22.0 ],
                                                    "text": "selector~ 2 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-59",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 159.0, 103.0, 51.0, 22.0 ],
                                                    "text": "sig~ 10."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-53",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 720.0, 103.0, 84.0, 22.0 ],
                                                    "text": "sig~ 0.707946"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-54",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 584.0, 187.0, 155.0, 22.0 ],
                                                    "text": "selector~ 2 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-55",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 652.0, 103.0, 44.0, 22.0 ],
                                                    "text": "sig~ 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-52",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 491.0, 103.0, 44.0, 22.0 ],
                                                    "text": "sig~ 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-51",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 355.0, 187.0, 155.0, 22.0 ],
                                                    "text": "selector~ 2 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-50",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 423.0, 103.0, 44.0, 22.0 ],
                                                    "text": "sig~ 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-179",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 91.0, 125.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-180",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 159.0, 56.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-181",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 227.0, 56.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-182",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 720.0, 56.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-183",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 91.0, 241.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-184",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 355.0, 241.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-185",
                                                    "index": 3,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 584.0, 241.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-51", 0 ],
                                                    "midpoints": [ 100.5, 171.0, 364.5, 171.0 ],
                                                    "order": 1,
                                                    "source": [ "obj-179", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-54", 0 ],
                                                    "midpoints": [ 100.5, 171.0, 593.5, 171.0 ],
                                                    "order": 0,
                                                    "source": [ "obj-179", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-58", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-179", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-59", 0 ],
                                                    "source": [ "obj-180", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-57", 0 ],
                                                    "source": [ "obj-181", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-53", 0 ],
                                                    "source": [ "obj-182", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-51", 1 ],
                                                    "source": [ "obj-50", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-184", 0 ],
                                                    "source": [ "obj-51", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-51", 2 ],
                                                    "source": [ "obj-52", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-54", 2 ],
                                                    "source": [ "obj-53", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-185", 0 ],
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-54", 1 ],
                                                    "source": [ "obj-55", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-58", 2 ],
                                                    "source": [ "obj-57", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-183", 0 ],
                                                    "source": [ "obj-58", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-58", 1 ],
                                                    "source": [ "obj-59", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 131.0, 462.0, 184.0, 22.0 ],
                                    "text": "p ads_values"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-140",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 131.0, 384.0, 40.0, 22.0 ],
                                    "text": "%~ 2."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-92",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 49.0, 345.0, 64.0, 22.0 ],
                                    "text": "delay~ 2 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-72",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 352.0, 252.0, 66.0, 22.0 ],
                                    "text": "prepend 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-73",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 377.0, 135.0, 75.0, 22.0 ],
                                    "text": "pak 10. 100."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-76",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 377.0, 174.0, 42.0, 22.0 ],
                                    "text": "+ 100."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-77",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 352.0, 213.0, 44.0, 22.0 ],
                                    "text": "/ 100."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-69",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 108.0, 213.0, 57.0, 22.0 ],
                                    "text": "sig~ 110."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-66",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 49.0, 252.0, 196.0, 22.0 ],
                                    "text": "ramp~ @start 0. @end 1. @reset 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "int" ],
                                    "patching_rect": [ 49.0, 291.0, 41.0, 22.0 ],
                                    "text": "what~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 131.0, 423.0, 36.0, 22.0 ],
                                    "text": "+~ 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 131.0, 345.0, 45.0, 22.0 ],
                                    "text": "+=~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 49.0, 516.0, 266.0, 22.0 ],
                                    "text": "ramp~ @reset 0 @mode 0 @retrigger 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-188",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 49.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-189",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 504.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-190",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 186.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-191",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 241.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-192",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 296.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-193",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.0, 598.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-2",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.0, 369.0, 64.0, 60.0 ],
                                    "text": "^^ AAARRRGGGHHH!!!"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "source": [ "obj-140", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 3 ],
                                    "source": [ "obj-186", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 2 ],
                                    "source": [ "obj-186", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 1 ],
                                    "source": [ "obj-186", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-73", 0 ],
                                    "source": [ "obj-187", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 0 ],
                                    "source": [ "obj-187", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 1 ],
                                    "midpoints": [ 58.5, 117.86328125, 166.5, 117.86328125 ],
                                    "order": 0,
                                    "source": [ "obj-188", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "order": 1,
                                    "source": [ "obj-188", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "midpoints": [ 513.5, 503.28125, 58.5, 503.28125 ],
                                    "source": [ "obj-189", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-186", 1 ],
                                    "order": 1,
                                    "source": [ "obj-190", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-187", 0 ],
                                    "midpoints": [ 195.5, 80.0, 361.5, 80.0 ],
                                    "order": 0,
                                    "source": [ "obj-190", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-186", 2 ],
                                    "order": 1,
                                    "source": [ "obj-191", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-73", 1 ],
                                    "midpoints": [ 250.5, 71.73046875, 442.5, 71.73046875 ],
                                    "order": 0,
                                    "source": [ "obj-191", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-186", 3 ],
                                    "source": [ "obj-192", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-140", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-186", 0 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-193", 0 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "midpoints": [ 58.5, 329.0, 140.5, 329.0 ],
                                    "order": 0,
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-92", 0 ],
                                    "order": 1,
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 1 ],
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "midpoints": [ 361.5, 282.5, 58.5, 282.5 ],
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-76", 0 ],
                                    "source": [ "obj-73", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "midpoints": [ 386.5, 204.5, 117.5, 204.5 ],
                                    "order": 1,
                                    "source": [ "obj-76", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 1 ],
                                    "order": 0,
                                    "source": [ "obj-76", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-77", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "source": [ "obj-92", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 405.0, 605.0, 74.0, 22.0 ],
                    "text": "p ad_ramp"
                }
            },
            {
                "box": {
                    "id": "obj-176",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 476.0, 313.0, 44.25, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "obj-175",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 421.0, 313.0, 44.25, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "obj-174",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 366.0, 313.0, 44.25, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "obj-173",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 310.0, 313.0, 44.25, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "comment": "(signal) adsr envelope",
                    "id": "obj-172",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 166.0, 776.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-149",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 250.0, 644.0, 64.0, 22.0 ],
                    "text": "delay~ 2 1"
                }
            },
            {
                "box": {
                    "id": "obj-147",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 166.0, 722.0, 103.33333333333331, 22.0 ],
                    "text": "*~ 0."
                }
            },
            {
                "box": {
                    "id": "obj-144",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 250.0, 605.0, 36.0, 22.0 ],
                    "text": "+~ 1."
                }
            },
            {
                "box": {
                    "id": "obj-141",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 250.0, 566.0, 40.0, 22.0 ],
                    "text": "%~ 2."
                }
            },
            {
                "box": {
                    "id": "obj-142",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 250.0, 527.0, 30.0, 22.0 ],
                    "text": "+=~"
                }
            },
            {
                "box": {
                    "id": "obj-133",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 250.0, 683.0, 174.0, 22.0 ],
                    "text": "selector~ 2 1"
                }
            },
            {
                "box": {
                    "id": "obj-111",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 166.0, 395.0, 55.0, 22.0 ],
                    "text": "sah~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 202.0, 356.0, 36.0, 22.0 ],
                    "text": ">~ 0."
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 49.0, 313.0, 45.0, 22.0 ],
                    "text": "+~ 0."
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [ "signal", "bang", "int", "float", "", "" ],
                    "patching_rect": [ 49.0, 274.0, 85.0, 22.0 ],
                    "text": "typeroute~"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 599.0, 313.0, 94.0, 22.0 ],
                    "text": "routepass curve"
                }
            },
            {
                "box": {
                    "comment": "(float) release",
                    "id": "obj-36",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 253.0, 224.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(float) sustain",
                    "id": "obj-35",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 206.0, 224.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(float) decay",
                    "id": "obj-34",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 158.0, 224.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(signal/float) trigger/gate",
                    "id": "obj-33",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 49.0, 224.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "(float) attack",
                    "id": "obj-32",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 111.0, 224.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 310.0, 174.0, 61.0, 22.0 ],
                    "text": "unjoin 4"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 310.0, 135.0, 61.0, 22.0 ],
                    "text": "list.slice 4"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 6,
                    "outlettype": [ "", "", "", "", "", "" ],
                    "patching_rect": [ 401.0, 174.0, 217.0, 22.0 ],
                    "text": "route attack hold decay sustain release"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 620.0, 175.0, 191.0, 20.0 ],
                    "text": "@attributes win out over args"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 253.0, 202.0, 30.0, 20.0 ],
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
                    "patching_rect": [ 206.0, 202.0, 30.0, 20.0 ],
                    "text": "S",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 158.0, 202.0, 30.0, 20.0 ],
                    "text": "D",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 111.0, 202.0, 30.0, 20.0 ],
                    "text": "A",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 166.0, 434.0, 108.0, 22.0 ],
                    "text": "*~ 0."
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 255.0, 395.0, 36.0, 22.0 ],
                    "text": ">~ 0."
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 405.0, 473.0, 36.0, 22.0 ],
                    "text": ">~ 0."
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 328.0, 473.0, 36.0, 22.0 ],
                    "text": "<~ 0."
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 328.0, 434.0, 42.0, 22.0 ],
                    "text": "delta~"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "", "" ],
                    "patching_rect": [ 255.0, 356.0, 240.5, 22.0 ],
                    "text": "adsr~ 10. 100. 0.707946 200."
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.0,
                    "bubbleside": 2,
                    "hidden": 1,
                    "id": "obj-212",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 677.0, 717.0, 127.0, 52.0 ],
                    "text": "the need for this this is why we are here",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-214",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 87.0, 645.0, 161.0, 20.0 ],
                    "text": "AAARRRGGGHHH!!! >>>",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-215",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 757.0, 808.0, 52.0, 20.0 ],
                    "text": "^ to do"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-204",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 443.0, 196.0, 52.0, 20.0 ],
                    "text": "^ to do"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 49.0, 96.0, 172.0, 47.0 ],
                    "text": "N.B. - this abstraction is an abomination and should probably not be used"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.0,
                    "bubbleside": 2,
                    "hidden": 1,
                    "id": "obj-1",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 614.0, 256.0, 127.0, 52.0 ],
                    "text": "the need for this this is why we are here",
                    "textjustification": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "order": 1,
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 0 ],
                    "midpoints": [ 337.5, 464.5, 414.5, 464.5 ],
                    "order": 0,
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 0 ],
                    "midpoints": [ 337.5, 511.0, 259.5, 511.0 ],
                    "order": 1,
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-199", 0 ],
                    "order": 0,
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 1 ],
                    "midpoints": [ 414.5, 519.1875, 270.5, 519.1875 ],
                    "order": 1,
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-142", 0 ],
                    "midpoints": [ 414.5, 511.0, 259.5, 511.0 ],
                    "order": 2,
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 0 ],
                    "order": 0,
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-106", 1 ],
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 0 ],
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 1 ],
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-106", 0 ],
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-174", 0 ],
                    "source": [ "obj-13", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-175", 0 ],
                    "source": [ "obj-13", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-176", 0 ],
                    "source": [ "obj-13", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-13", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 1 ],
                    "source": [ "obj-133", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 0 ],
                    "source": [ "obj-141", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-141", 0 ],
                    "source": [ "obj-142", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-149", 0 ],
                    "source": [ "obj-144", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-172", 0 ],
                    "source": [ "obj-147", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-133", 0 ],
                    "source": [ "obj-149", 0 ]
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
                    "destination": [ "obj-194", 1 ],
                    "source": [ "obj-173", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 1 ],
                    "source": [ "obj-173", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 2 ],
                    "source": [ "obj-174", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 2 ],
                    "source": [ "obj-174", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 3 ],
                    "order": 0,
                    "source": [ "obj-175", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-199", 2 ],
                    "order": 1,
                    "source": [ "obj-175", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 3 ],
                    "source": [ "obj-175", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-199", 1 ],
                    "source": [ "obj-176", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 4 ],
                    "source": [ "obj-176", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 615.5, 165.5, 410.5, 165.5 ],
                    "source": [ "obj-18", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-133", 2 ],
                    "order": 0,
                    "source": [ "obj-194", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-199", 4 ],
                    "order": 1,
                    "source": [ "obj-194", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-133", 1 ],
                    "source": [ "obj-199", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "midpoints": [ 58.5, 345.5, 211.5, 345.5 ],
                    "order": 1,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 0 ],
                    "midpoints": [ 58.5, 345.33984375, 175.5, 345.33984375 ],
                    "order": 2,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 58.5, 345.5, 264.5, 345.5 ],
                    "order": 0,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-100", 0 ],
                    "order": 1,
                    "source": [ "obj-3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-105", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-200", 0 ],
                    "midpoints": [ 338.3333333333333, 417.2890625, 578.5, 417.2890625 ],
                    "order": 0,
                    "source": [ "obj-3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-201", 0 ],
                    "midpoints": [ 412.16666666666663, 394.2109375, 672.5, 394.2109375 ],
                    "source": [ "obj-3", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-174", 0 ],
                    "source": [ "obj-31", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-175", 0 ],
                    "source": [ "obj-31", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-176", 0 ],
                    "source": [ "obj-31", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 0 ],
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
                    "destination": [ "obj-174", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-175", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-176", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-194", 4 ],
                    "midpoints": [ 608.5, 583.90625, 469.5, 583.90625 ],
                    "order": 0,
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-199", 3 ],
                    "midpoints": [ 608.5, 583.9921875, 379.25, 583.9921875 ],
                    "order": 1,
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 683.5, 345.5, 264.5, 345.5 ],
                    "source": [ "obj-46", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 124.5, 358.6484375, 31.94921875, 358.6484375, 31.94921875, 165.484375, 410.5, 165.484375 ],
                    "source": [ "obj-63", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "source": [ "obj-63", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "source": [ "obj-63", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-63", 0 ]
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
        ],
        "autosave": 0
    }
}