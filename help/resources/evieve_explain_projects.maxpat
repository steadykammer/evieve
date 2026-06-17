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
        "rect": [ 63.0, 131.0, 812.0, 720.0 ],
        "bglocked": 1,
        "gridonopen": 2,
        "lefttoolbarpinned": 2,
        "toptoolbarpinned": 2,
        "righttoolbarpinned": 2,
        "bottomtoolbarpinned": 2,
        "toolbars_unpinned_last_save": 15,
        "subpatcher_template": "sub",
        "integercoordinates": 1,
        "title": "evieve: About Projects and AMXDs",
        "boxes": [
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-20",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 140.0, 132.0, 540.0, 38.0 ],
                    "text": "\"Defines\" belong to the evieve Package, so will not be included with your other dependencies when freezing or consolidating."
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 3,
                    "fontsize": 14.0,
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 372.0, 630.0, 86.0, 26.0 ],
                    "text": "Coda 2",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 3,
                    "fontsize": 14.0,
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 312.0, 546.0, 86.0, 26.0 ],
                    "text": "Coda 1",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "id": "obj-16",
                    "inletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "in1",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "in2",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 3,
                                "tag": "in3",
                                "comment": ""
                            }
                        ]
                    },
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "out1",
                                "comment": ""
                            }
                        ]
                    },
                    "outlettype": [ "signal", "list" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "rnbo",
                        "rect": [ 59.0, 119.0, 783.0, 542.0 ],
                        "default_fontname": "Lato",
                        "integercoordinates": 1,
                        "title": "if_you_are_patching_just_inside_rnbo",
                        "boxes": [
                            {
                                "box": {
                                    "fontsize": 14.0,
                                    "id": "obj-8",
                                    "linecount": 5,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 484.0, 303.0, 170.0, 90.0 ],
                                    "text": "Of course, if you are just exporting code then you do not need to do anything regards dependencies anyway"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 14.0,
                                    "id": "obj-7",
                                    "linecount": 5,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 269.0, 303.0, 169.0, 90.0 ],
                                    "text": "If you are patching inside RNBO, dependencies will be found as they normally are for Projects and AMXDs"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 154.0, 425.0, 43.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "out~_obj-5",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 1",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "objectversion": 0,
                                        "changesPatcherIO": 1,
                                        "hasPatcherArgs": 0
                                    },
                                    "text": "out~ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 413.0, 78.0, 35.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in~_obj-4",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 3",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 3",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "objectversion": 0,
                                        "changesPatcherIO": 1,
                                        "hasPatcherArgs": 0
                                    },
                                    "text": "in~ 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 269.0, 78.0, 35.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "in~_obj-3",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 2",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 2",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "objectversion": 0,
                                        "changesPatcherIO": 1,
                                        "hasPatcherArgs": 0
                                    },
                                    "text": "in~ 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 125.0, 78.0, 35.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "in~_obj-2",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 1",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "objectversion": 0,
                                        "changesPatcherIO": 1,
                                        "hasPatcherArgs": 0
                                    },
                                    "text": "in~ 1"
                                }
                            },
                            {
                                "box": {
                                    "genpatcher": {
                                        "patcher": {
                                            "fileversion": 1,
                                            "appversion": {
                                                "major": 9,
                                                "minor": 2,
                                                "revision": 0,
                                                "architecture": "x64",
                                                "modernui": 1
                                            },
                                            "classnamespace": "dsp.gen",
                                            "rect": [ 482.0, 75.0, 871.0, 848.0 ],
                                            "gridonopen": 2,
                                            "lefttoolbarpinned": 2,
                                            "toptoolbarpinned": 2,
                                            "righttoolbarpinned": 2,
                                            "bottomtoolbarpinned": 1,
                                            "toolbars_unpinned_last_save": 7,
                                            "subpatcher_template": "sub",
                                            "integercoordinates": 1,
                                            "boxes": [
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 3 (signal/float) Resonance 0..1 @min 0.01 @max 1 @default 0.88",
                                                        "patching_rect": [ 467.0, 19.0, 372.0, 22.0 ],
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "id": "obj-5",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 1 (signal) Audio Input",
                                                        "patching_rect": [ 49.0, 19.0, 134.0, 22.0 ],
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "id": "obj-1",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 2 (signal/float) Cutoff Frequency in Hz",
                                                        "patching_rect": [ 228.0, 19.0, 222.0, 22.0 ],
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "id": "obj-2",
                                                        "outlettype": [ "" ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "codebox",
                                                        "patching_rect": [ 49.0, 58.0, 775.0, 732.0 ],
                                                        "fontname": "<Monospaced>",
                                                        "numinlets": 3,
                                                        "fontface": 0,
                                                        "numoutlets": 1,
                                                        "id": "obj-3",
                                                        "outlettype": [ "" ],
                                                        "fontsize": 12.0,
                                                        "code": "\r\n// Korg OTA dual-amplifier buffered modified Sallen-Key topology filter.\r\n// The 'KLM' OTA chip was found in the later MS-20s & other Korg synthesisers - it is\r\n// different to the earlier 'Korg 35' single-amplifier unbuffered Korg chip found in the\r\n// earlier MS-20s & MS-10 and also in the 'monotron' series.\r\n// For 'Korg 35' chip 'emulation' @see: \"evi_korgms10.gendsp\". For a more aggressive MS20\r\n// style filter @see: \"evi_korgms20.gendsp\". Thanks to Will Pirkle.\r\n\r\n// This is a fabricated evieve version able to smoothly switch (with a nice 'plop')\r\n// between 12dB LP & 6dB HP filter types, realised in transposed TPT form. With 2x option.\r\n\r\nrequire(\"evi_tanh.genexpr\");\r\nrequire(\"evi_interp.genexpr\");\r\n\r\n// filter 1x\r\nSandKone(X, hz, k1, M1, M2, load)\r\n{\r\n    History\tstate0(0), state1(0), state2(0), state3(0);         // (T) S&K state initialise\r\n\r\n    // prewarp to alpha/beta\r\n    g0      = evi_tan(hz * PI / SAMPLERATE);\r\n    oneg\t=  1 + g0;\t\t\t\t\t\t\t\t\t\t\t// divisor\r\n    alphas\t=  g0 / oneg;\t\t\t\t\t\t\t\t\t\t// G (feedforward)\r\n    k1as\t= mix(k1, -1, M1) * alphas;\r\n    betam\t= mix((k1 - k1as), k1as, M1) / oneg;\t\t\t\t// feedback...\r\n    betas\t= mix(-1, 1, M1) / oneg;\t\t\t\t\t\t\t// ...\r\n    alpha0\t=  1 / (1 - (k1 * alphas) + (k1 * alphas * alphas));// u scalar\r\n    k2\t\t= (1 / k1);\t\t\t\t\t\t\t\t\t\t\t// compensate\r\n\r\n    // 1st low/high-pass integrator\r\n    lp1vn\t= (X - state0) * alphas;\r\n    lp1\t\t= lp1vn + state0;\r\n    state0\t= lp1vn + lp1;\r\n    hp1\t\t=  X - lp1;\r\n\r\n    // s35 from feedbacks\r\n    hp2fb\t= state1 * betam * M1;\r\n    lp2fb\t= state2 * betam * M2;\r\n    bp2fb\t= state3 * betas;\r\n    s35\t\t= bp2fb + (lp2fb + hp2fb);\r\n\r\n    // create nonlinear\r\n    u\t\t= alpha0 * (mix(lp1, hp1, M1) + s35) * mix(1, k1, M1);\r\n    u\t\t= tanhLxA((u * 1.122018), load);\t                // 6 dB HP\r\n\r\n    // 2nd highpass integrator\r\n    hp2vn\t= (u - state1) * alphas;\r\n    bp1\t\t= hp2vn + state1;\r\n    state1\t= hp2vn + bp1;\r\n    hp2\t\t=  u - bp1;\r\n\r\n    // 2nd lowpass integrator\r\n    lp2vn\t= (u - state2) * alphas;\r\n    lp2\t\t= lp2vn + state2;\r\n    state2\t= lp2vn + lp2;\r\n    lp2\t\t= k1 * lp2;\t\t\t\t\t\t                    // 12 dB LP\r\n\r\n    Y\t\t= interp(M1, lp2, u, mode=\"cosine\") * k2;\t        // 12 dB LP || 6 dB HP\r\n\r\n    // feedback loop / 3rd integrator\r\n    bp0\t\t= mix(lp2, hp2, M1);\r\n    bp2vn\t= (bp0 - state3) * alphas;\r\n    bp2\t\t= bp2vn + state3;\r\n    state3\t= bp2vn + bp2;\r\n\r\n    return  dcblock(Y);\r\n}\r\n\r\n// filter 2x\r\nSandKtwo(X0, X1, hz, k1, M1, M2, load)\r\n{\r\n    History\tstate0(0), state1(0), state2(0), state3(0);\r\n\r\n    // prewarp to alpha/beta\r\n    g0      = evi_tan(hz * PI / SAMPLERATE) * 0.5;\r\n    oneg\t=  1 + g0;\r\n    alphas\t=  g0 / oneg;\r\n    k1as\t= mix(k1, -1, M1) * alphas;\r\n    betam\t= mix((k1 - k1as), k1as, M1) / oneg;\r\n    betas\t= mix(-1, 1, M1) / oneg;\r\n    alpha0\t=  1 / (1 - (k1 * alphas) + (k1 * alphas * alphas));\r\n    k2\t\t= (1 / k1);\r\n\r\n    // pass 1\r\n\r\n    // 1st low/high-pass integrator\r\n    lp1vn0\t= (X0 - state0) * alphas;\r\n    lp10\t= lp1vn0 + state0;\r\n    state0\t= lp1vn0 + lp10;\r\n    hp10\t=  X0 - lp10;\r\n\r\n    // s35 from feedbacks\r\n    hp2fb0\t= state1 * betam * M1;\r\n    lp2fb0\t= state2 * betam * M2;\r\n    bp2fb0\t= state3 * betas;\r\n    s350\t= bp2fb0 + (lp2fb0 + hp2fb0);\r\n\r\n    // create nonlinear\r\n    u0\t\t= alpha0 * (mix(lp10, hp10, M1) + s350) * mix(1, k1, M1);\r\n    u0\t\t= tanhLxA((u0 * 1.122018), load);\r\n\r\n    // 2nd highpass integrator\r\n    hp2vn0\t= (u0 - state1) * alphas;\r\n    bp10\t= hp2vn0 + state1;\r\n    state1\t= hp2vn0 + bp10;\r\n    hp20\t=  u0 - bp10;\r\n\r\n    // 2nd lowpass integrator\r\n    lp2vn0\t= (u0 - state2) * alphas;\r\n    lp20\t= lp2vn0 + state2;\r\n    state2\t= lp2vn0 + lp20;\r\n    lp20\t= k1 * lp20;\r\n\r\n    Y0\t\t= interp(M1, lp20, u0, mode=\"cosine\") * k2;\r\n\r\n    // feedback loop / 3rd integrator\r\n    bp00\t= mix(lp20, hp20, M1);\r\n    bp2vn0\t= (bp00 - state3) * alphas;\r\n    bp20\t= bp2vn0 + state3;\r\n    state3\t= bp2vn0 + bp20;\r\n\r\n    // pass 2\r\n\r\n    // 1st low/high-pass integrator\r\n    lp1vn1\t= (X1 - state0) * alphas;\r\n    lp11\t= lp1vn1 + state0;\r\n    state0\t= lp1vn1 + lp11;\r\n    hp11\t=  X1 - lp11;\r\n\r\n    // s35 from feedbacks\r\n    hp2fb1\t= state1 * betam * M1;\r\n    lp2fb1\t= state2 * betam * M2;\r\n    bp2fb1\t= state3 * betas;\r\n    s351\t= bp2fb1 + (lp2fb1 + hp2fb1);\r\n\r\n    // create nonlinear\r\n    u1\t\t= alpha0 * (mix(lp11, hp11, M1) + s351) * mix(1, k1, M1);\r\n    u1\t\t= tanhLxA((u1 * 1.122018), load);\r\n\r\n    // 2nd highpass integrator\r\n    hp2vn1\t= (u1 - state1) * alphas;\r\n    bp11\t= hp2vn1 + state1;\r\n    state1\t= hp2vn1 + bp11;\r\n    hp21\t=  u1 - bp11;\r\n\r\n    // 2nd lowpass integrator\r\n    lp2vn1\t= (u1 - state2) * alphas;\r\n    lp21\t= lp2vn1 + state2;\r\n    state2\t= lp2vn1 + lp21;\r\n    lp21\t= k1 * lp21;\r\n\r\n    Y1\t\t= interp(M1, lp21, u1, mode=\"cosine\") * k2;\r\n\r\n    // feedback loop / 3rd integrator\r\n    bp01\t= mix(lp21, hp21, M1);\r\n    bp2vn1\t= (bp01 - state3) * alphas;\r\n    bp21\t= bp2vn1 + state3;\r\n    state3\t= bp2vn1 + bp21;\r\n\r\n    return  dcblock(Y0), dcblock(Y1);\r\n}\r\n\r\n// fixed 2x quasi oversampling (cubic4)\nSandKtwo_2x4point(XIN, hz, k1, M1, M2, load)\n{\t// up 2\n\tHistory\tumTm1_0(0), umT0_0(0), umT1_0(0);\n\t// down 2\n\tHistory\tdmT2_1(0), dmT1_1(0), dmT0_1(0);\n\t// align\n\tHistory\tdoX0(0);\n\n\t// up 2x\n\tx0_0_a\t= XIN + 0;\n\tx1_0\t= cubic_hermite_interp(0.5,\tumTm1_0, umT0_0, umT1_0, x0_0_a);\n\tx2_0\t= umT1_0 + 0;\n\n\t// process 2x\n\ty1_0, y2_0\t= SandKtwo(x1_0, x2_0, hz, k1, M1, M2, load);\n\n\t// down 2x\n\ty2_0_a\t= y2_0 + 0;\n\ty2_1\t= cubic_hermite_interp(0.5,\ty2_0_a,\tdmT0_1, dmT1_1, dmT2_1);\n\n\ty0_0\t= (doX0 + y2_1) * 0.5;\n\n\t// update\n\tumTm1_0\t= umT0_0;\n\tumT0_0\t= umT1_0;\n\tumT1_0\t= x0_0_a;\n\n\tdoX0\t= y1_0;\n\n\tdmT2_1\t= dmT1_1;\n\tdmT1_1\t= dmT0_1;\n\tdmT0_1\t= y2_0;\n\n\treturn y0_0;\n}\r\n\r\nParam\tfilter(0, min=0, max=1);\t\t\t\t\t\t// switch LP/HP 0/1 flag\r\nParam\tfiltersmooth(92., min=0, max=296);\t\t\t\t// in ms\r\n// do not change load\r\nParam   load(1.333333333333, min=0.25, max=4);\r\nParam   oversample(1, min=0, max=1);                    // default 2x\r\nos      = int(oversample);\r\n\r\nX\t    = in1;\r\nhz\t    = clamp(in2, 1, samplerate*0.5);    // hz, i do not like this clamp, but rod asked\nk1      = in3 + in3;    // 0..1 .. 0..2\r\n\r\nM1\t\t= int(filter);                                  // switch not morph\r\nif (filtersmooth > 0) {\r\n\tM1\t= evi_sline(M1, mstosamps(filtersmooth));\r\n}\r\nM2\t\t= 1 - M1;\r\n\r\n// TPT Korg OTA filter\r\nif (os) {\r\n    // 2x slightly limits resonance for high frequencies, not as useful for highpass\r\n    out1    = SandKtwo_2x4point(X, hz, k1, M1, M2, load);\r\n}\r\nelse {\r\n    // 1x\r\n    out1    = SandKone(X, hz, k1, M1, M2, load);\r\n}\r\n\r\n"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "out 1 (signal) Korg OTA S&K LP or HP Filter",
                                                        "patching_rect": [ 49.0, 807.0, 242.0, 22.0 ],
                                                        "numinlets": 1,
                                                        "numoutlets": 0,
                                                        "id": "obj-4"
                                                    }
                                                }
                                            ],
                                            "lines": [
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-5", 0 ],
                                                        "destination": [ "obj-3", 2 ],
                                                        "midpoints": [ 476.5, 49.5, 814.5, 49.5 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-3", 0 ],
                                                        "destination": [ "obj-4", 0 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-2", 0 ],
                                                        "destination": [ "obj-3", 1 ],
                                                        "midpoints": [ 237.5, 49.5, 436.5, 49.5 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-1", 0 ],
                                                        "destination": [ "obj-3", 0 ]
                                                    }
                                                }
                                            ]
                                        }
                                    },
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 184.0, 233.0, 176.0, 23.0 ],
                                    "rnbo_classname": "gen~",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "gen~_obj-1",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "in1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "reset": {
                                                "attrOrProp": 1,
                                                "digest": "Reset all param and history objects to initial values",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bang"
                                            },
                                            "expr": {
                                                "attrOrProp": 2,
                                                "digest": "a gen expression",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "file": {
                                                "attrOrProp": 2,
                                                "digest": "gendsp file to load",
                                                "isalias": 0,
                                                "aliases": [ "gen" ],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "gen": {
                                                "attrOrProp": 2,
                                                "digest": "gendsp file to load",
                                                "isalias": 1,
                                                "aliasOf": "file",
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "title": {
                                                "attrOrProp": 2,
                                                "digest": "a title",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [ "t" ],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "t": {
                                                "attrOrProp": 2,
                                                "digest": "a title",
                                                "defaultarg": 1,
                                                "isalias": 1,
                                                "aliasOf": "title",
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "exposeparams": {
                                                "attrOrProp": 2,
                                                "digest": "Expose gen params as RNBO params.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bool",
                                                "defaultValue": "false"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "auto",
                                                "digest": "in1",
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "in2",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in3",
                                                "type": "auto"
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal"
                                            }
                                        ],
                                        "helpname": "gen~",
                                        "aliasOf": "gen~",
                                        "classname": "gen~",
                                        "operator": 0,
                                        "versionId": 403863964,
                                        "objectversion": 0,
                                        "changesPatcherIO": 0,
                                        "hasPatcherArgs": 0
                                    },
                                    "text": "gen~ @file evi_korgms20_select"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-1", 0 ]
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
                                    "destination": [ "obj-1", 1 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 2 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 460.0, 632.0, 279.0, 22.0 ],
                    "rnboattrcache": {                    },
                    "rnboversion": "1.5.0-dev.107",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "rnbo~",
                            "parameter_modmode": 0,
                            "parameter_shortname": "rnbo~",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "optimization": "O1",
                        "parameter_enable": 1,
                        "uuid": "4909228b-6a5d-11f1-a28b-8630418aacfd"
                    },
                    "snapshot": {
                        "filetype": "C74Snapshot",
                        "version": 2,
                        "minorversion": 0,
                        "name": "snapshotlist",
                        "origin": "rnbo~",
                        "type": "list",
                        "subtype": "Undefined",
                        "embed": 1,
                        "snapshot": {
                            "__presetid": "if_you_are_patching_just_inside_rnbo"
                        },
                        "snapshotlist": {
                            "current_snapshot": 0,
                            "entries": [
                                {
                                    "filetype": "C74Snapshot",
                                    "version": 2,
                                    "minorversion": 0,
                                    "name": "if_you_are_patching_just_inside_rnbo",
                                    "origin": "if_you_are_patching_just_inside_rnbo",
                                    "type": "rnbo",
                                    "subtype": "",
                                    "embed": 0,
                                    "snapshot": {
                                        "__presetid": "if_you_are_patching_just_inside_rnbo"
                                    },
                                    "fileref": {
                                        "name": "if_you_are_patching_just_inside_rnbo",
                                        "filename": "if_you_are_patching_just_inside_rnbo.maxsnap",
                                        "filepath": "~/Documents/Max 9/Snapshots",
                                        "filepos": -1,
                                        "snapshotfileid": "bab0924331e5beaec47305269d039e6c"
                                    }
                                }
                            ]
                        }
                    },
                    "text": "rnbo~ @title if_you_are_patching_just_inside_rnbo",
                    "varname": "rnbo~"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-15",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 140.0, 46.0, 543.0, 69.0 ],
                    "text": "If you are patching with evieve objects in MSP, and you want to use them in 'Projects' or 'AMXDs', you need to be aware that most of the objects are simply \"defines\", which is a Max technique for making Gen, V8 or Shaders appear like objects with their own helpfiles and reference pages, for easier typing and autocompletion."
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 2,
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
                        "classnamespace": "dsp.gen",
                        "rect": [ 34.0, 100.0, 1211.0, 579.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "code": "\r\nout1 = evi_korgms20_select(in1, in2, in3);\r\n\r\n",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-9",
                                    "maxclass": "codebox",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 718.0, 265.0, 419.0, 120.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 14.0,
                                    "id": "obj-8",
                                    "linecount": 5,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 448.0, 413.0, 264.0, 85.0 ],
                                    "text": "If you are patching with the abstractions inside gen~ (or GenExpr) you do not have to do anything special - Projects and AMXDs will find all the dependencies fine"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 566.0, 72.0, 28.0, 22.0 ],
                                    "text": "in 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 425.0, 314.0, 121.0, 22.0 ],
                                    "text": "evi_korgms20_select"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 84.0, 72.0, 28.0, 22.0 ],
                                    "text": "in 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 339.0, 72.0, 28.0, 22.0 ],
                                    "text": "in 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 210.0, 476.0, 35.0, 22.0 ],
                                    "text": "out 1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "order": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "order": 1,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 1 ],
                                    "order": 0,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 2 ],
                                    "order": 1,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 2 ],
                                    "order": 0,
                                    "source": [ "obj-6", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 400.0, 548.0, 271.0, 22.0 ],
                    "text": "gen~ @title if_you_are_patching_just_inside_gen"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.7,
                    "bubbleside": 2,
                    "fontsize": 14.0,
                    "id": "obj-12",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 574.0, 224.0, 151.0, 57.0 ],
                    "text": "cannot access any help or reference",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.3,
                    "bubbleside": 2,
                    "fontsize": 14.0,
                    "id": "obj-11",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 57.0, 224.0, 250.0, 57.0 ],
                    "text": "can access a helpfile and a reference page just like native Max objects",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.7,
                    "bubbleside": 2,
                    "fontsize": 14.0,
                    "id": "obj-10",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 567.0, 283.0, 158.0, 57.0 ],
                    "text": "annoying to type and with no autocompletion",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.3,
                    "bubbleside": 2,
                    "fontsize": 14.0,
                    "id": "obj-9",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 57.0, 283.0, 146.0, 57.0 ],
                    "text": "easy to type and with autocompletion",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 3,
                    "fontsize": 14.0,
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 206.0, 340.0, 344.0, 26.0 ],
                    "text": "these two object instantiations are 100% identical",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "fontsize": 14.0,
                    "id": "obj-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 192.0, 340.0, 344.0, 26.0 ],
                    "text": "these two object instantiations are 100% identical",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 552.0, 342.0, 187.0, 22.0 ],
                    "text": "gen~ @gen evi_korgms20_select"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 68.0, 342.0, 122.0, 22.0 ],
                    "text": "evi.korgms20.select~"
                }
            },
            {
                "box": {
                    "arrows": 1,
                    "background": 1,
                    "id": "obj-23",
                    "justification": 3,
                    "linecolor": [ 0.922234290352602, 0.7100720052641699, 0.3297583419657164, 1.0 ],
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 68.0, 378.0, 70.0, 68.0 ],
                    "saved_attribute_attributes": {
                        "linecolor": {
                            "expression": "themecolor.theme_selectioncolor"
                        }
                    }
                }
            },
            {
                "box": {
                    "background": 1,
                    "fontsize": 14.0,
                    "id": "obj-21",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 140.0, 401.0, 495.0, 85.0 ],
                    "text": "All you need to do is hover over the left side of an evi.* object, select the little green circle, and choose:\n\"Transform\" >>\n\"Convert Define to Arguments\"\n...then your Project or AMXD will find the file when freezing or consolidating."
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "border": 2,
                    "bordercolor": [ 0.922234290352602, 0.7100720052641699, 0.3297583419657164, 1.0 ],
                    "grad1": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                    "grad2": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                    "id": "obj-22",
                    "maxclass": "panel",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 45.0, 331.0, 45.0, 45.0 ],
                    "proportion": 0.5,
                    "rounded": 2,
                    "saved_attribute_attributes": {
                        "bordercolor": {
                            "expression": "themecolor.theme_selectioncolor"
                        }
                    }
                }
            }
        ],
        "lines": [],
        "parameters": {
            "obj-16": [ "rnbo~", "rnbo~", 0 ],
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
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}