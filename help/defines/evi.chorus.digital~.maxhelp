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
        "openrect": [ 55.0, 122.0, 802.0, 695.0 ],
        "openrectmode": 0,
        "bglocked": 1,
        "default_fontsize": 13.0,
        "gridonopen": 2,
        "digest": "evieve helpfile",
        "showrootpatcherontab": 0,
        "showontab": 0,
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 0,
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
                        "rect": [ 0.0, 26.0, 802.0, 669.0 ],
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-64",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 373.0, 164.0, 162.0, 25.0 ],
                                    "text": "feedback loop lowpass",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-63",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 265.0, 189.0, 270.0, 25.0 ],
                                    "text": "above apply chorus, below mono saturate",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.8,
                                    "id": "obj-62",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 671.0, 247.0, 112.0, 40.0 ],
                                    "text": "tap 1st stage / last stage",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.6,
                                    "id": "obj-61",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 671.0, 288.0, 112.0, 25.0 ],
                                    "text": "swap left/right",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 626.0, 340.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.01,
                                    "id": "obj-58",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 652.0, 357.0, 131.0, 25.0 ],
                                    "text": "invert wet output",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.3,
                                    "id": "obj-57",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 652.0, 315.0, 142.0, 40.0 ],
                                    "text": "sum input pre/post feedback saturation",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-52",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 386.0, 139.0, 149.0, 25.0 ],
                                    "text": "linear makeup gain",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-51",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 361.0, 114.0, 174.0, 25.0 ],
                                    "text": "nonlinear saturation gain",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 652.0, 191.0, 85.0, 21.0 ],
                                    "text": "Hz 10..1000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 652.0, 166.0, 85.0, 21.0 ],
                                    "text": "0..1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 652.0, 141.0, 85.0, 21.0 ],
                                    "text": "dB -10..10"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 652.0, 116.0, 85.0, 21.0 ],
                                    "text": "dB -10..10"
                                }
                            },
                            {
                                "box": {
                                    "attr": "invert",
                                    "id": "obj-41",
                                    "ignoreclick": 1,
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 537.0, 340.0, 87.0, 23.0 ],
                                    "text_width": 49.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "inject",
                                    "id": "obj-37",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 537.0, 315.0, 113.0, 23.0 ],
                                    "text_width": 66.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "feedbackcross",
                                    "id": "obj-38",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 537.0, 290.0, 133.0, 23.0 ],
                                    "text_width": 94.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "feedbackmix",
                                    "id": "obj-39",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 537.0, 265.0, 133.0, 23.0 ],
                                    "text_width": 94.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "crossover",
                                    "id": "obj-36",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 537.0, 190.0, 113.0, 23.0 ],
                                    "text_width": 66.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "tone",
                                    "id": "obj-35",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 537.0, 165.0, 113.0, 23.0 ],
                                    "text_width": 66.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "postgain",
                                    "id": "obj-27",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 537.0, 140.0, 113.0, 23.0 ],
                                    "text_width": 66.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "pregain",
                                    "id": "obj-19",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 537.0, 115.0, 113.0, 23.0 ],
                                    "text_width": 66.0
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-55",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 236.0, 137.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "3",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-54",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 145.0, 100.0, 75.0, 23.0 ],
                                    "text": "loadmess 3"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_outlinecolor": [ 0.922234290352602, 0.7100720052641699, 0.3297583419657164, 1.0 ],
                                    "bubbleside": 3,
                                    "id": "obj-53",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 46.0, 134.0, 97.0, 25.0 ],
                                    "saved_attribute_attributes": {
                                        "bubble_outlinecolor": {
                                            "expression": "themecolor.theme_selectioncolor"
                                        }
                                    },
                                    "text": "try Presets",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubblesize": 13,
                                    "id": "obj-50",
                                    "maxclass": "preset",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                                    "patching_rect": [ 145.0, 128.0, 89.0, 38.0 ],
                                    "preset_data": [
                                        {
                                            "number": 1,
                                            "data": [ 5, "obj-5", "gen~", "feedbackcross", 0.0, 5, "obj-5", "gen~", "maxtime", 9.0, 5, "obj-5", "gen~", "tone", 0.5, 5, "obj-5", "gen~", "duty", 0.4, 5, "obj-5", "gen~", "inject", 0.5, 5, "obj-5", "gen~", "skew", 1.2, 5, "obj-5", "gen~", "mintime", 1.0, 5, "obj-5", "gen~", "depth", 0.5, 5, "obj-5", "gen~", "shape", 0.5, 5, "obj-5", "gen~", "drywet", 0.7, 5, "obj-5", "gen~", "invert", 0.0, 5, "obj-5", "gen~", "zeroreset", 0.0, 5, "obj-5", "gen~", "warp", 0.5, 5, "obj-5", "gen~", "drydelay", 0.0, 5, "obj-5", "gen~", "spread", 0.44, 5, "obj-5", "gen~", "pregain", 3.0, 5, "obj-5", "gen~", "feedback", 0.6, 5, "obj-5", "gen~", "crossover", 104.0, 5, "obj-5", "gen~", "feedbackmix", 0.5, 5, "obj-5", "gen~", "maxhz", 2.69, 5, "obj-5", "gen~", "postgain", 0.0, 5, "obj-5", "gen~", "stages", 4.0, 5, "obj-5", "gen~", "smooth", 30.222, 5, "obj-5", "gen~", "rate", 0.55 ]
                                        },
                                        {
                                            "number": 2,
                                            "data": [ 5, "obj-5", "gen~", "feedbackcross", 0.0, 5, "obj-5", "gen~", "maxtime", 19.0, 5, "obj-5", "gen~", "tone", 0.7500000000000001, 5, "obj-5", "gen~", "duty", 0.4, 5, "obj-5", "gen~", "inject", 0.5, 5, "obj-5", "gen~", "skew", 1.2, 5, "obj-5", "gen~", "mintime", 1.7700000000000002, 5, "obj-5", "gen~", "depth", 0.7900000000000001, 5, "obj-5", "gen~", "shape", 0.5, 5, "obj-5", "gen~", "drywet", 0.7400000000000001, 5, "obj-5", "gen~", "invert", 0.0, 5, "obj-5", "gen~", "zeroreset", 0.0, 5, "obj-5", "gen~", "warp", -0.9200000000000002, 5, "obj-5", "gen~", "drydelay", 129.0, 5, "obj-5", "gen~", "spread", 0.8000000000000002, 5, "obj-5", "gen~", "pregain", 3.0, 5, "obj-5", "gen~", "feedback", 0.5, 5, "obj-5", "gen~", "crossover", 104.0, 5, "obj-5", "gen~", "feedbackmix", 0.5, 5, "obj-5", "gen~", "maxhz", 3.0600000000000005, 5, "obj-5", "gen~", "postgain", 0.0, 5, "obj-5", "gen~", "stages", 14.0, 5, "obj-5", "gen~", "smooth", 30.222, 5, "obj-5", "gen~", "rate", 0.6300000000000001 ]
                                        },
                                        {
                                            "number": 3,
                                            "data": [ 5, "obj-5", "gen~", "feedbackcross", 0.9, 5, "obj-5", "gen~", "maxtime", 6.0, 5, "obj-5", "gen~", "tone", 0.39000000000000007, 5, "obj-5", "gen~", "duty", 0.4, 5, "obj-5", "gen~", "inject", 1.0, 5, "obj-5", "gen~", "skew", 1.2500000000000002, 5, "obj-5", "gen~", "mintime", 2.0, 5, "obj-5", "gen~", "depth", 0.29000000000000004, 5, "obj-5", "gen~", "shape", 0.6800000000000002, 5, "obj-5", "gen~", "drywet", 0.8200000000000002, 5, "obj-5", "gen~", "invert", 1.0, 5, "obj-5", "gen~", "zeroreset", 0.0, 5, "obj-5", "gen~", "warp", 0.7700000000000001, 5, "obj-5", "gen~", "drydelay", 9.0, 5, "obj-5", "gen~", "spread", 0.6900000000000002, 5, "obj-5", "gen~", "pregain", 6.0, 5, "obj-5", "gen~", "feedback", 0.8400000000000002, 5, "obj-5", "gen~", "crossover", 80.0, 5, "obj-5", "gen~", "feedbackmix", 0.4, 5, "obj-5", "gen~", "maxhz", 5.250000000000001, 5, "obj-5", "gen~", "postgain", -3.0, 5, "obj-5", "gen~", "stages", 6.0, 5, "obj-5", "gen~", "smooth", 30.222, 5, "obj-5", "gen~", "rate", 0.5400000000000001 ]
                                        },
                                        {
                                            "number": 4,
                                            "data": [ 5, "obj-5", "gen~", "feedbackcross", 0.1, 5, "obj-5", "gen~", "maxtime", 17.0, 5, "obj-5", "gen~", "tone", 0.6200000000000001, 5, "obj-5", "gen~", "duty", 0.9570000000000002, 5, "obj-5", "gen~", "inject", 0.20000000000000004, 5, "obj-5", "gen~", "skew", 1.7300000000000004, 5, "obj-5", "gen~", "mintime", 5.400000000000001, 5, "obj-5", "gen~", "depth", 0.8800000000000001, 5, "obj-5", "gen~", "shape", 0.0, 5, "obj-5", "gen~", "drywet", 0.56, 5, "obj-5", "gen~", "invert", 0.0, 5, "obj-5", "gen~", "zeroreset", 0.0, 5, "obj-5", "gen~", "warp", 0.6300000000000001, 5, "obj-5", "gen~", "drydelay", 37.0, 5, "obj-5", "gen~", "spread", 0.4900000000000001, 5, "obj-5", "gen~", "pregain", 0.0, 5, "obj-5", "gen~", "feedback", 0.7100000000000002, 5, "obj-5", "gen~", "crossover", 104.0, 5, "obj-5", "gen~", "feedbackmix", 0.4, 5, "obj-5", "gen~", "maxhz", 2.2900000000000005, 5, "obj-5", "gen~", "postgain", 6.0, 5, "obj-5", "gen~", "stages", 9.0, 5, "obj-5", "gen~", "smooth", 30.222, 5, "obj-5", "gen~", "rate", 0.4200000000000001 ]
                                        },
                                        {
                                            "number": 5,
                                            "data": [ 5, "obj-5", "gen~", "feedbackcross", 0.2, 5, "obj-5", "gen~", "maxtime", 15.100000000000001, 5, "obj-5", "gen~", "tone", 0.22000000000000003, 5, "obj-5", "gen~", "duty", 0.5400000000000001, 5, "obj-5", "gen~", "inject", 0.10000000000000002, 5, "obj-5", "gen~", "skew", 0.9400000000000002, 5, "obj-5", "gen~", "mintime", 5.400000000000001, 5, "obj-5", "gen~", "depth", 0.7300000000000001, 5, "obj-5", "gen~", "shape", 0.7400000000000001, 5, "obj-5", "gen~", "drywet", 0.8000000000000002, 5, "obj-5", "gen~", "invert", 0.0, 5, "obj-5", "gen~", "zeroreset", 0.0, 5, "obj-5", "gen~", "warp", -0.020000000000000004, 5, "obj-5", "gen~", "drydelay", 7.0, 5, "obj-5", "gen~", "spread", 0.8000000000000002, 5, "obj-5", "gen~", "pregain", 6.0, 5, "obj-5", "gen~", "feedback", -0.9600000000000002, 5, "obj-5", "gen~", "crossover", 104.0, 5, "obj-5", "gen~", "feedbackmix", 0.4, 5, "obj-5", "gen~", "maxhz", 14.100000000000001, 5, "obj-5", "gen~", "postgain", -2.0, 5, "obj-5", "gen~", "stages", 16.0, 5, "obj-5", "gen~", "smooth", 30.222, 5, "obj-5", "gen~", "rate", 0.7700000000000001 ]
                                        }
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 652.0, 396.0, 85.0, 21.0 ],
                                    "text": "ms"
                                }
                            },
                            {
                                "box": {
                                    "attr": "drydelay",
                                    "id": "obj-48",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 537.0, 395.0, 113.0, 23.0 ],
                                    "text_width": 66.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "duty",
                                    "id": "obj-44",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 392.0, 240.0, 113.0, 23.0 ],
                                    "text_width": 54.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "shape",
                                    "id": "obj-18",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 392.0, 265.0, 113.0, 23.0 ],
                                    "text_width": 54.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "skew",
                                    "id": "obj-45",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 392.0, 290.0, 113.0, 23.0 ],
                                    "text_width": 54.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 153.0, 266.0, 60.0, 21.0 ],
                                    "text": "Hz",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 153.0, 241.0, 60.0, 21.0 ],
                                    "text": "ms",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 153.0, 216.0, 60.0, 21.0 ],
                                    "text": "ms",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "attr": "mintime",
                                    "id": "obj-31",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 215.0, 215.0, 113.0, 23.0 ],
                                    "text_width": 60.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "maxtime",
                                    "id": "obj-30",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 215.0, 240.0, 113.0, 23.0 ],
                                    "text_width": 60.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "maxhz",
                                    "id": "obj-28",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 215.0, 265.0, 113.0, 23.0 ],
                                    "text_width": 60.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "warp",
                                    "id": "obj-25",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 392.0, 315.0, 113.0, 23.0 ],
                                    "text_width": 66.0
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.999,
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 652.0, 222.0, 61.0, 25.0 ],
                                    "text": "-1..1",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 341.0, 113.0, 21.0 ],
                                    "text": "Spread 0..1",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 316.0, 113.0, 21.0 ],
                                    "text": "Depth 0..1",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 291.0, 113.0, 21.0 ],
                                    "text": "Rate 0..1",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 494.0, 521.0, 130.0, 21.0 ],
                                    "text": "0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 494.0, 434.0, 130.0, 21.0 ],
                                    "text": "1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 494.0, 479.0, 130.0, 21.0 ],
                                    "text": "internal LFOs"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-66",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 46.0, 371.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-8",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 230.0, 635.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 392.0, 555.0, 300.0, 100.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 26.0, 340.0, 75.0, 23.0 ],
                                    "text": "loadmess 4"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 57.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "duduk.aif",
                                                "filename": "duduk.aif",
                                                "filekind": "audiofile",
                                                "id": "u869006276",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "eroica.aiff",
                                                "filename": "eroica.aiff",
                                                "filekind": "audiofile",
                                                "id": "u490006605",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "sacre.aiff",
                                                "filename": "sacre.aiff",
                                                "filekind": "audiofile",
                                                "id": "u878006904",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "evicheeseslice.wav",
                                                "filename": "evicheeseslice.wav",
                                                "filekind": "audiofile",
                                                "id": "u051010444",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-3",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 26.0, 395.0, 157.0, 232.0 ],
                                    "quality": "basic",
                                    "saved_attribute_attributes": {
                                        "candicane2": {
                                            "expression": ""
                                        },
                                        "candicane3": {
                                            "expression": ""
                                        },
                                        "candicane4": {
                                            "expression": ""
                                        },
                                        "candicane5": {
                                            "expression": ""
                                        },
                                        "candicane6": {
                                            "expression": ""
                                        },
                                        "candicane7": {
                                            "expression": ""
                                        },
                                        "candicane8": {
                                            "expression": ""
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "calccount": 64,
                                    "id": "obj-11",
                                    "maxclass": "scope~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 392.0, 439.0, 100.0, 100.0 ],
                                    "range": [ 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "calccount": 64,
                                    "id": "obj-10",
                                    "maxclass": "scope~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 278.0, 439.0, 100.0, 100.0 ],
                                    "range": [ 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 215.0, 581.0, 50.0, 50.0 ],
                                    "varname": "basic_dac"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 215.0, 395.0, 113.0, 23.0 ],
                                    "text": "evi.chorus.digital~",
                                    "varname": "evieveObject"
                                }
                            },
                            {
                                "box": {
                                    "attr": "spread",
                                    "id": "obj-13",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 215.0, 340.0, 113.0, 23.0 ],
                                    "text_width": 60.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "depth",
                                    "id": "obj-14",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 215.0, 315.0, 113.0, 23.0 ],
                                    "text_width": 60.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "rate",
                                    "id": "obj-15",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 215.0, 290.0, 113.0, 23.0 ],
                                    "text_width": 60.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "stages",
                                    "id": "obj-16",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 392.0, 340.0, 113.0, 23.0 ],
                                    "text_width": 66.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "feedback",
                                    "id": "obj-17",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 537.0, 240.0, 113.0, 23.0 ],
                                    "text_width": 66.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "drywet",
                                    "id": "obj-21",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 392.0, 395.0, 113.0, 23.0 ],
                                    "text_width": 66.0
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpname.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "evi.chorus.digital~", 660 ],
                                    "maxclass": "v8ui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 660.0, 57.599853515625 ],
                                    "textfile": {
                                        "filename": "evi.helpname.js",
                                        "flags": 0,
                                        "embed": 0,
                                        "autowatch": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-4",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 66.0, 660.0, 38.0 ],
                                    "text": "Many attributes control tone and saturation in the effect. Use gains and filter attributes to set clean or dirty behaviour, use five feedback attributes to set saturation and sustain.",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 265.0, 594.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac[1]"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 401.5, 385.47265625, 224.5, 385.47265625 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 546.5, 385.49609375, 224.5, 385.49609375 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 401.5, 384.6171875, 224.5, 384.6171875 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 546.5, 384.77734375, 224.5, 384.77734375 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 401.5, 428.0, 357.95703125, 428.0, 357.95703125, 385.0, 224.5, 385.0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 401.5, 385.5390625, 224.5, 385.5390625 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 546.5, 385.09375, 224.5, 385.09375 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "midpoints": [ 70.0, 637.0, 195.25, 637.0, 195.25, 379.05859375, 271.5, 379.05859375 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 35.5, 643.171875, 202.64453125, 643.171875, 202.64453125, 385.0, 224.5, 385.0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 546.5, 384.63671875, 224.5, 384.63671875 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 546.5, 385.78515625, 224.5, 385.78515625 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 546.5, 385.74609375, 224.5, 385.74609375 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 546.5, 385.53125, 224.5, 385.53125 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 546.5, 384.61328125, 224.5, 384.61328125 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 546.5, 385.43359375, 224.5, 385.43359375 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 401.5, 385.765625, 224.5, 385.765625 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 401.5, 385.41796875, 224.5, 385.41796875 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 546.5, 428.33203125, 358.03125, 428.33203125, 358.03125, 385.109375, 224.5, 385.109375 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 224.5, 548.51171875, 401.5, 548.51171875 ],
                                    "order": 0,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-5", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 318.5, 433.35546875, 401.5, 433.35546875 ],
                                    "source": [ "obj-5", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 1 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 1,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-50", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 191.0, 336.0, 55.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p sound",
                    "varname": "controls_tab[1]"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 0,
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
                        "rect": [ 55.0, 126.0, 802.0, 669.0 ],
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "arrows": 3,
                                    "id": "obj-56",
                                    "justification": 4,
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 328.0, 257.0, 30.0, 21.0 ]
                                }
                            },
                            {
                                "box": {
                                    "arrows": 3,
                                    "id": "obj-52",
                                    "justification": 1,
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 380.0, 257.0, 26.0, 9.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hint": "Reset phases, useful if 'zeroreset' on and rate very very slow",
                                    "id": "obj-51",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 355.0, 250.0, 24.0, 24.0 ],
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 355.0, 325.0, 41.0, 23.0 ],
                                    "text": "click~"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-55",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 251.0, 122.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "3",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-54",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 160.0, 85.0, 75.0, 23.0 ],
                                    "text": "loadmess 3"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubble_outlinecolor": [ 0.922234290352602, 0.7100720052641699, 0.3297583419657164, 1.0 ],
                                    "bubbleside": 3,
                                    "id": "obj-53",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 61.0, 119.0, 97.0, 25.0 ],
                                    "saved_attribute_attributes": {
                                        "bubble_outlinecolor": {
                                            "expression": "themecolor.theme_selectioncolor"
                                        }
                                    },
                                    "text": "try Presets",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubblesize": 13,
                                    "id": "obj-50",
                                    "maxclass": "preset",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                                    "patching_rect": [ 160.0, 113.0, 89.0, 38.0 ],
                                    "preset_data": [
                                        {
                                            "number": 1,
                                            "data": [ 5, "obj-5", "gen~", "feedbackcross", 0.0, 5, "obj-5", "gen~", "maxtime", 9.0, 5, "obj-5", "gen~", "tone", 0.5, 5, "obj-5", "gen~", "duty", 0.4, 5, "obj-5", "gen~", "inject", 0.5, 5, "obj-5", "gen~", "skew", 1.2, 5, "obj-5", "gen~", "mintime", 1.0, 5, "obj-5", "gen~", "depth", 0.5, 5, "obj-5", "gen~", "shape", 0.5, 5, "obj-5", "gen~", "drywet", 0.7, 5, "obj-5", "gen~", "invert", 0.0, 5, "obj-5", "gen~", "zeroreset", 0.0, 5, "obj-5", "gen~", "warp", 0.5, 5, "obj-5", "gen~", "drydelay", 0.0, 5, "obj-5", "gen~", "spread", 0.44, 5, "obj-5", "gen~", "pregain", 3.0, 5, "obj-5", "gen~", "feedback", 0.6, 5, "obj-5", "gen~", "crossover", 104.0, 5, "obj-5", "gen~", "feedbackmix", 0.5, 5, "obj-5", "gen~", "maxhz", 2.69, 5, "obj-5", "gen~", "postgain", 0.0, 5, "obj-5", "gen~", "stages", 4.0, 5, "obj-5", "gen~", "smooth", 30.222, 5, "obj-5", "gen~", "rate", 0.55 ]
                                        },
                                        {
                                            "number": 2,
                                            "data": [ 5, "obj-5", "gen~", "shape", 0.5, 5, "obj-5", "gen~", "spread", 0.8000000000000002, 5, "obj-5", "gen~", "maxtime", 19.0, 5, "obj-5", "gen~", "drywet", 0.7400000000000001, 5, "obj-5", "gen~", "pregain", 3.0, 5, "obj-5", "gen~", "feedback", 0.5, 5, "obj-5", "gen~", "stages", 14.0, 5, "obj-5", "gen~", "inject", 0.5, 5, "obj-5", "gen~", "depth", 0.7900000000000001, 5, "obj-5", "gen~", "tone", 0.5, 5, "obj-5", "gen~", "rate", 0.6300000000000001, 5, "obj-5", "gen~", "smooth", 30.222, 5, "obj-5", "gen~", "mintime", 1.7700000000000002, 5, "obj-5", "gen~", "skew", 1.2, 5, "obj-5", "gen~", "maxhz", 3.0600000000000005, 5, "obj-5", "gen~", "feedbackmix", 0.5, 5, "obj-5", "gen~", "crossover", 104.0, 5, "obj-5", "gen~", "duty", 0.4, 5, "obj-5", "gen~", "invert", 0.0, 5, "obj-5", "gen~", "postgain", 0.0, 5, "obj-5", "gen~", "zeroreset", 0.0, 5, "obj-5", "gen~", "drydelay", 129.0, 5, "obj-5", "gen~", "feedbackcross", 0.0, 5, "obj-5", "gen~", "warp", -0.9200000000000002 ]
                                        },
                                        {
                                            "number": 3,
                                            "data": [ 5, "obj-5", "gen~", "shape", 0.6800000000000002, 5, "obj-5", "gen~", "spread", 0.6900000000000002, 5, "obj-5", "gen~", "maxtime", 6.0, 5, "obj-5", "gen~", "drywet", 0.8200000000000002, 5, "obj-5", "gen~", "pregain", 3.0, 5, "obj-5", "gen~", "feedback", 0.8300000000000002, 5, "obj-5", "gen~", "stages", 6.0, 5, "obj-5", "gen~", "inject", 0.5, 5, "obj-5", "gen~", "depth", 0.29000000000000004, 5, "obj-5", "gen~", "tone", 0.5, 5, "obj-5", "gen~", "rate", 0.5400000000000001, 5, "obj-5", "gen~", "smooth", 30.222, 5, "obj-5", "gen~", "mintime", 2.0, 5, "obj-5", "gen~", "skew", 1.2500000000000002, 5, "obj-5", "gen~", "maxhz", 5.250000000000001, 5, "obj-5", "gen~", "feedbackmix", 0.5, 5, "obj-5", "gen~", "crossover", 104.0, 5, "obj-5", "gen~", "duty", 0.4, 5, "obj-5", "gen~", "invert", 0.0, 5, "obj-5", "gen~", "postgain", 0.0, 5, "obj-5", "gen~", "zeroreset", 0.0, 5, "obj-5", "gen~", "drydelay", 9.0, 5, "obj-5", "gen~", "feedbackcross", 0.0, 5, "obj-5", "gen~", "warp", 0.7200000000000002 ]
                                        },
                                        {
                                            "number": 4,
                                            "data": [ 5, "obj-5", "gen~", "feedbackcross", 0.0, 5, "obj-5", "gen~", "maxtime", 17.0, 5, "obj-5", "gen~", "tone", 0.5, 5, "obj-5", "gen~", "duty", 0.9570000000000002, 5, "obj-5", "gen~", "inject", 0.5, 5, "obj-5", "gen~", "skew", 1.7300000000000004, 5, "obj-5", "gen~", "mintime", 5.400000000000001, 5, "obj-5", "gen~", "depth", 0.4700000000000001, 5, "obj-5", "gen~", "shape", 0.0, 5, "obj-5", "gen~", "drywet", 0.6200000000000001, 5, "obj-5", "gen~", "invert", 0.0, 5, "obj-5", "gen~", "zeroreset", 0.0, 5, "obj-5", "gen~", "warp", -0.7200000000000002, 5, "obj-5", "gen~", "drydelay", 91.0, 5, "obj-5", "gen~", "spread", 0.33000000000000007, 5, "obj-5", "gen~", "pregain", 3.0, 5, "obj-5", "gen~", "feedback", 0.7400000000000001, 5, "obj-5", "gen~", "crossover", 104.0, 5, "obj-5", "gen~", "feedbackmix", 0.5, 5, "obj-5", "gen~", "maxhz", 2.2900000000000005, 5, "obj-5", "gen~", "postgain", 0.0, 5, "obj-5", "gen~", "stages", 11.0, 5, "obj-5", "gen~", "smooth", 30.222, 5, "obj-5", "gen~", "rate", 0.9800000000000002 ]
                                        },
                                        {
                                            "number": 5,
                                            "data": [ 5, "obj-5", "gen~", "feedbackcross", 0.0, 5, "obj-5", "gen~", "maxtime", 15.100000000000001, 5, "obj-5", "gen~", "tone", 0.5, 5, "obj-5", "gen~", "duty", 0.5400000000000001, 5, "obj-5", "gen~", "inject", 0.5, 5, "obj-5", "gen~", "skew", 0.9400000000000002, 5, "obj-5", "gen~", "mintime", 5.400000000000001, 5, "obj-5", "gen~", "depth", 0.7300000000000001, 5, "obj-5", "gen~", "shape", 0.7400000000000001, 5, "obj-5", "gen~", "drywet", 0.8600000000000002, 5, "obj-5", "gen~", "invert", 0.0, 5, "obj-5", "gen~", "zeroreset", 0.0, 5, "obj-5", "gen~", "warp", -0.22000000000000003, 5, "obj-5", "gen~", "drydelay", 121.0, 5, "obj-5", "gen~", "spread", 0.8000000000000002, 5, "obj-5", "gen~", "pregain", 3.0, 5, "obj-5", "gen~", "feedback", 0.9200000000000002, 5, "obj-5", "gen~", "crossover", 104.0, 5, "obj-5", "gen~", "feedbackmix", 0.5, 5, "obj-5", "gen~", "maxhz", 19.200000000000003, 5, "obj-5", "gen~", "postgain", 0.0, 5, "obj-5", "gen~", "stages", 16.0, 5, "obj-5", "gen~", "smooth", 30.222, 5, "obj-5", "gen~", "rate", 0.7700000000000001 ]
                                        }
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 652.0, 355.0, 60.0, 21.0 ],
                                    "text": "ms"
                                }
                            },
                            {
                                "box": {
                                    "attr": "drydelay",
                                    "id": "obj-48",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 537.0, 354.0, 113.0, 23.0 ],
                                    "text_width": 66.0
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 2,
                                    "id": "obj-37",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 416.0, 112.0, 91.0, 40.0 ],
                                    "text": "LFOs",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-38",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 539.0, 250.0, 88.0, 25.0 ],
                                    "text": "sync",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-39",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 539.0, 201.0, 88.0, 25.0 ],
                                    "text": "exponent",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-40",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 539.0, 177.0, 88.0, 25.0 ],
                                    "text": "tri..sine",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-41",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 539.0, 153.0, 88.0, 25.0 ],
                                    "text": "tri duty",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 513.0, 250.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "zeroreset",
                                    "id": "obj-43",
                                    "ignoreclick": 1,
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 407.0, 250.0, 100.0, 23.0 ],
                                    "text_width": 67.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "duty",
                                    "id": "obj-44",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 407.0, 154.0, 113.0, 23.0 ],
                                    "text_width": 54.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "shape",
                                    "id": "obj-18",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 407.0, 178.0, 113.0, 23.0 ],
                                    "text_width": 54.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "skew",
                                    "id": "obj-45",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 407.0, 202.0, 113.0, 23.0 ],
                                    "text_width": 54.0
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-36",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 61.0, 182.0, 167.0, 40.0 ],
                                    "text": "@depth maps using these time values",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 345.0, 229.0, 60.0, 21.0 ],
                                    "text": "Hz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 345.0, 204.0, 60.0, 21.0 ],
                                    "text": "ms"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 345.0, 179.0, 60.0, 21.0 ],
                                    "text": "ms"
                                }
                            },
                            {
                                "box": {
                                    "attr": "mintime",
                                    "id": "obj-31",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 230.0, 178.0, 113.0, 23.0 ],
                                    "text_width": 60.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "maxtime",
                                    "id": "obj-30",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 230.0, 203.0, 113.0, 23.0 ],
                                    "text_width": 60.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "maxhz",
                                    "id": "obj-28",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 230.0, 228.0, 113.0, 23.0 ],
                                    "text_width": 60.0
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-27",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 522.0, 292.0, 193.0, 40.0 ],
                                    "text": "-1..1, warp the LFOs spread across the active stages",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "attr": "warp",
                                    "id": "obj-25",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 407.0, 300.0, 113.0, 23.0 ],
                                    "text_width": 66.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 652.0, 381.0, 60.0, 21.0 ],
                                    "text": "-1..1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 115.0, 326.0, 113.0, 21.0 ],
                                    "text": "Spread 0..1",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 115.0, 301.0, 113.0, 21.0 ],
                                    "text": "Depth 0..1",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 115.0, 276.0, 113.0, 21.0 ],
                                    "text": "Rate 0..1",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 509.0, 506.0, 141.0, 21.0 ],
                                    "text": "0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 509.0, 419.0, 141.0, 21.0 ],
                                    "text": "1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 509.0, 464.0, 141.0, 21.0 ],
                                    "text": "internal LFOs"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-66",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 61.0, 356.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-8",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 245.0, 620.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 407.0, 540.0, 300.0, 100.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 41.0, 290.0, 75.0, 23.0 ],
                                    "text": "loadmess 4"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 57.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "duduk.aif",
                                                "filename": "duduk.aif",
                                                "filekind": "audiofile",
                                                "id": "u869006276",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "eroica.aiff",
                                                "filename": "eroica.aiff",
                                                "filekind": "audiofile",
                                                "id": "u490006605",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "sacre.aiff",
                                                "filename": "sacre.aiff",
                                                "filekind": "audiofile",
                                                "id": "u878006904",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "evicheeseslice.wav",
                                                "filename": "evicheeseslice.wav",
                                                "filekind": "audiofile",
                                                "id": "u051010444",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-3",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 41.0, 380.0, 157.0, 232.0 ],
                                    "quality": "basic",
                                    "saved_attribute_attributes": {
                                        "candicane2": {
                                            "expression": ""
                                        },
                                        "candicane3": {
                                            "expression": ""
                                        },
                                        "candicane4": {
                                            "expression": ""
                                        },
                                        "candicane5": {
                                            "expression": ""
                                        },
                                        "candicane6": {
                                            "expression": ""
                                        },
                                        "candicane7": {
                                            "expression": ""
                                        },
                                        "candicane8": {
                                            "expression": ""
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "calccount": 64,
                                    "id": "obj-11",
                                    "maxclass": "scope~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 407.0, 424.0, 100.0, 100.0 ],
                                    "range": [ 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "calccount": 64,
                                    "id": "obj-10",
                                    "maxclass": "scope~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 293.0, 424.0, 100.0, 100.0 ],
                                    "range": [ 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 230.0, 566.0, 50.0, 50.0 ],
                                    "varname": "basic_dac"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 230.0, 380.0, 113.0, 23.0 ],
                                    "text": "evi.chorus.digital~",
                                    "varname": "evieveObject"
                                }
                            },
                            {
                                "box": {
                                    "attr": "spread",
                                    "id": "obj-13",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 230.0, 325.0, 113.0, 23.0 ],
                                    "text_width": 60.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "depth",
                                    "id": "obj-14",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 230.0, 300.0, 113.0, 23.0 ],
                                    "text_width": 60.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "rate",
                                    "id": "obj-15",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 230.0, 275.0, 113.0, 23.0 ],
                                    "text_width": 60.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "stages",
                                    "id": "obj-16",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 407.0, 325.0, 113.0, 23.0 ],
                                    "text_width": 66.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "feedback",
                                    "id": "obj-17",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 537.0, 380.0, 113.0, 23.0 ],
                                    "text_width": 66.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "drywet",
                                    "id": "obj-21",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 407.0, 380.0, 113.0, 23.0 ],
                                    "text_width": 66.0
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-35",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 28.0, 227.0, 200.0, 25.0 ],
                                    "text": "@rate maps from 0 to this Hz",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "justification": 4,
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 430.0, 227.0, 35.0, 197.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpname.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "evi.chorus.digital~", 660 ],
                                    "maxclass": "v8ui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 660.0, 57.599853515625 ],
                                    "textfile": {
                                        "filename": "evi.helpname.js",
                                        "flags": 0,
                                        "embed": 0,
                                        "autowatch": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-4",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 70.0, 697.0, 38.0 ],
                                    "text": "Set the range of modulation with @mintime, @maxtime and @maxhz. Shape the LFOs with @duty, @shape and @skew. Exponentially scale the LFOs across the delay stages with @warp. Delay the dry signal at the mix stage with @drydelay.",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 280.0, 579.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac[1]"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 416.5, 370.47265625, 239.5, 370.47265625 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 546.5, 413.0, 373.15625, 413.0, 373.15625, 370.0, 239.5, 370.0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 416.5, 369.6171875, 239.5, 369.6171875 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 2 ],
                                    "midpoints": [ 364.5, 359.671875, 333.5, 359.671875 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 416.5, 413.0, 372.95703125, 413.0, 372.95703125, 370.0, 239.5, 370.0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 416.5, 370.5390625, 239.5, 370.5390625 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "midpoints": [ 85.0, 622.0, 210.25, 622.0, 210.25, 364.05859375, 286.5, 364.05859375 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 50.5, 628.171875, 217.64453125, 628.171875, 217.64453125, 370.0, 239.5, 370.0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 416.5, 369.69140625, 239.5, 369.69140625 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 416.5, 370.765625, 239.5, 370.765625 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 416.5, 370.41796875, 239.5, 370.41796875 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 546.5, 413.33203125, 373.03125, 413.33203125, 373.03125, 370.109375, 239.5, 370.109375 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 239.5, 533.51171875, 416.5, 533.51171875 ],
                                    "order": 0,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-5", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 333.5, 418.35546875, 416.5, 418.35546875 ],
                                    "source": [ "obj-5", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 1 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 1,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-50", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-6", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 96.0, 336.0, 83.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p modulation",
                    "varname": "mod_tab"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 169.0, 85.0, 43.0, 23.0 ],
                    "text": "resize"
                }
            },
            {
                "box": {
                    "background": 1,
                    "filename": "evi.helpstarter.js",
                    "id": "obj-1",
                    "ignoreclick": 1,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 229.0, 85.0, 541.0, 23.0 ],
                    "saved_object_attributes": {
                        "embed": 1,
                        "parameter_enable": 0
                    },
                    "text": "v8 evi.helpstarter evi.chorus.digital~ 1 1 0 1 0 none",
                    "textfile": {
                        "text": "\"use strict\";\n/*!\n * This file is automatically transpiled from Typescript - DO NOT EDIT BY HAND\n * This file is part of the 'evieve' Package for Max.\n * evieve is a library of GenExpr audio code by Pete Dowling.\n */\nlet objectNameArgument = \"\";\nlet createDacForHelpfile = false;\nif (jsarguments.length > 1) {\n  objectNameArgument = jsarguments[1];\n  if (objectNameArgument.charAt(objectNameArgument.length - 1) === \"~\") {\n    createDacForHelpfile = true;\n  }\n}\nlet eviType = -1;\nlet eviOption1 = 0;\nlet eviOption2 = 0;\nlet eviOption3 = 0;\nlet eviOption4 = 0;\nlet eviOption5 = \"none\";\nif (jsarguments.length > 2) {\n  eviType = jsarguments[2];\n  eviOption1 = jsarguments[3];\n  eviOption2 = jsarguments[4];\n  eviOption3 = jsarguments[5];\n  eviOption4 = jsarguments[6];\n  eviOption5 = jsarguments[7];\n}\nconst task = new Task(init, this);\ntask.schedule(111);\nconst thisPatcher = patcher;\nconst thisPath = thisPatcher.filepath;\nconst thisHelpObjectName = \"evieveObject\";\nconst textColor = thisPatcher.getattr(\"textcolor\");\nconst descColor = [textColor[0], textColor[1], textColor[2], textColor[3] * 0.555];\nfunction init() {\n  const a = thisPatcher.getnamed(\"basic_tab\");\n  const testBasicTab = a?.valid;\n  if (!testBasicTab) {\n    thisPatcher.message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      \"p basic\",\n      \"@varname\",\n      \"basic_tab\",\n      \"@patching_rect\",\n      34,\n      336,\n      50,\n      23\n    );\n    thisPatcher.wind.size = [1277, 796];\n    thisPatcher.message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `v8ui @filename evi.helpname.js @jsarguments ${objectNameArgument} @patching_rect 10. 10. 500. 50. @background 1 @embed 0`\n    );\n    const basic = thisPatcher.getnamed(\"basic_tab\");\n    basic.subpatcher().setattr(\"openrect\", 22, 55, 837, 796);\n    basic.subpatcher().setattr(\"bglocked\", 1);\n    basic.subpatcher().message(\"wclose\");\n    basic.message(\"showontab\", 1);\n    basic.message(\"gridonopen\", 1);\n    basic.message(\"gridsize\", 15, 15);\n    basic.message(\"fontsize\", 13);\n    basic.message(\"fontname\", \"Arial\");\n    basic.message(\"locked\", 1);\n    basic.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `v8ui @filename evi.helpdetails.js @jsarguments ${objectNameArgument} ${thisPath} @patching_rect 10. 10. 660. 220. @background 1 @embed 0`\n    );\n    const PETER_BPATCHER_FILE = \"evieve_pickup_overview.maxpat\";\n    basic.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `bpatcher`,\n      \"@varname\",\n      \"PeterButton\",\n      \"@patching_position\",\n      11,\n      11\n    );\n    const peterBpatcher = basic.subpatcher().getnamed(\"PeterButton\");\n    peterBpatcher.setboxattr(\"patching_rect\", 11, 11, 98, 98);\n    peterBpatcher.setboxattr(\"lockedsize\", 1);\n    peterBpatcher.setboxattr(\"name\", `${PETER_BPATCHER_FILE}`);\n    basic.subpatcher().bringtofront(\"PeterButton\");\n    basic.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `${objectNameArgument}`,\n      \"@varname\",\n      `${thisHelpObjectName}`,\n      \"@patching_position\",\n      140,\n      336\n    );\n    if (createDacForHelpfile) {\n      const ezdacObj = basic.subpatcher().newdefault(140, 537, \"ezdac~\");\n      ezdacObj.varname = \"basic_dac\";\n      const ezdac = basic.subpatcher().getnamed(\"basic_dac\");\n      ezdac.message(\"local\", 1);\n      ezdac.message(\"patching_rect\", 140, 537, 45, 45);\n      const ezdacComment = basic.subpatcher().newdefault(111, 547, \"comment\");\n      ezdacComment.varname = \"comment_dac\";\n      const comment = basic.subpatcher().getnamed(\"comment_dac\");\n      comment.message(\"set\", \"Audio On\");\n      comment.message(\"bubble\", 1);\n      comment.message(\"bubbleside\", 1);\n      comment.message(\"textjustification\", 1);\n      comment.message(\"fontsize\", 13);\n      comment.message(\"fontname\", \"Arial\");\n      comment.message(\"patching_rect\", 187, 547, 86, 25);\n      comment.message(\"background\", 1);\n    }\n    if (eviType !== 1) {\n      const helpObject = basic.subpatcher().getnamed(thisHelpObjectName);\n      const objectRect = helpObject.getattr(\"patching_rect\");\n      const argsPos = [objectRect[0] + objectRect[2] + 2, objectRect[1] + 1];\n      basic.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        // cannot get my [v8ui] working for now, use Cyling '74 code instead...\n        `v8ui @filename evi.helpargs.js @jsarguments ${objectNameArgument} @patching_position ${argsPos[0]} ${argsPos[1]} @background 1 @embed 0`\n      );\n    }\n    basic.subpatcher().bringtofront(thisHelpObjectName);\n    outlet(0, \"setactivetab\", \"basic\");\n    outlet(0, \"bang\");\n  }\n  if (eviOption1 > 0) {\n    const mc = thisPatcher.getnamed(\"mc_tab\");\n    const testMcTab = mc?.valid;\n    if (!testMcTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        \"p mc\",\n        \"@varname\",\n        \"mc_tab\",\n        \"@patching_rect\",\n        229,\n        336,\n        37,\n        23\n      );\n      const mctab = thisPatcher.getnamed(\"mc_tab\");\n      mctab.subpatcher().setattr(\"bglocked\", 1);\n      mctab.subpatcher().message(\"wclose\");\n      mctab.message(\"showontab\", 1);\n      mctab.message(\"gridonopen\", 1);\n      mctab.message(\"gridsize\", 15, 15);\n      mctab.message(\"fontsize\", 13);\n      mctab.message(\"fontname\", \"Arial\");\n      mctab.message(\"locked\", 1);\n      mctab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `v8ui @filename evi.helpname.js @jsarguments mc.${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n      );\n      const mcDigestComment = mctab.subpatcher().newdefault(10, 70, \"comment\");\n      mcDigestComment.varname = \"digest_comment\";\n      const mcComment = mctab.subpatcher().getnamed(\"digest_comment\");\n      mcComment.message(\"set\", `${objectNameArgument} is also available as an 'mc' Object`);\n      mcComment.message(\"fontsize\", 13);\n      mcComment.message(\"fontname\", \"Lato\");\n      mcComment.message(\"textcolor\", textColor);\n      mcComment.message(\"patching_rect\", 10, 70, 660, 22);\n      mcComment.message(\"background\", 1);\n      mctab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `mc.${objectNameArgument}`,\n        \"@varname\",\n        `${thisHelpObjectName}Mc`,\n        \"@patching_position\",\n        140,\n        336\n      );\n      if (createDacForHelpfile) {\n        const ezdacObj = mctab.subpatcher().newdefault(140, 537, \"mc.ezdac~\");\n        ezdacObj.varname = \"mc_dac\";\n        const ezdac = mctab.subpatcher().getnamed(\"mc_dac\");\n        ezdac.message(\"local\", 1);\n        ezdac.message(\"patching_rect\", 140, 537, 45, 45);\n        const ezdacComment = mctab.subpatcher().newdefault(111, 547, \"comment\");\n        ezdacComment.varname = \"comment_dac\";\n        const comment = mctab.subpatcher().getnamed(\"comment_dac\");\n        comment.message(\"set\", \"Audio On\");\n        comment.message(\"bubble\", 1);\n        comment.message(\"bubbleside\", 1);\n        comment.message(\"textjustification\", 1);\n        comment.message(\"fontsize\", 13);\n        comment.message(\"fontname\", \"Arial\");\n        comment.message(\"patching_rect\", 187, 547, 86, 25);\n        comment.message(\"background\", 1);\n      }\n    }\n  }\n  if (eviOption2 > 0) {\n    const mcs = thisPatcher.getnamed(\"mcs_tab\");\n    const testMcsTab = mcs?.valid;\n    if (!testMcsTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        \"p mcs\",\n        \"@varname\",\n        \"mcs_tab\",\n        \"@patching_rect\",\n        298,\n        336,\n        43,\n        23\n      );\n      const mcstab = thisPatcher.getnamed(\"mcs_tab\");\n      mcstab.subpatcher().setattr(\"bglocked\", 1);\n      mcstab.subpatcher().message(\"wclose\");\n      mcstab.message(\"showontab\", 1);\n      mcstab.message(\"gridonopen\", 1);\n      mcstab.message(\"gridsize\", 15, 15);\n      mcstab.message(\"fontsize\", 13);\n      mcstab.message(\"fontname\", \"Arial\");\n      mcstab.message(\"locked\", 1);\n      mcstab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `v8ui @filename evi.helpname.js @jsarguments mcs.${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n      );\n      const mcsDigestComment = mcstab.subpatcher().newdefault(10, 70, \"comment\");\n      mcsDigestComment.varname = \"digest_comment\";\n      const mcsComment = mcstab.subpatcher().getnamed(\"digest_comment\");\n      mcsComment.message(\"set\", `${objectNameArgument} is also available as an 'mcs' Object`);\n      mcsComment.message(\"fontsize\", 13);\n      mcsComment.message(\"fontname\", \"Lato\");\n      mcsComment.message(\"textcolor\", textColor);\n      mcsComment.message(\"patching_rect\", 10, 70, 660, 22);\n      mcsComment.message(\"background\", 1);\n      mcstab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `mcs.${objectNameArgument}`,\n        \"@varname\",\n        `${thisHelpObjectName}Mcs`,\n        \"@patching_position\",\n        140,\n        336\n      );\n      if (createDacForHelpfile) {\n        const ezdacObj = mcstab.subpatcher().newdefault(140, 537, \"mc.ezdac~\");\n        ezdacObj.varname = \"mcs_dac\";\n        const ezdac = mcstab.subpatcher().getnamed(\"mcs_dac\");\n        ezdac.message(\"local\", 1);\n        ezdac.message(\"patching_rect\", 140, 537, 45, 45);\n        const ezdacComment = mcstab.subpatcher().newdefault(111, 547, \"comment\");\n        ezdacComment.varname = \"comment_dac\";\n        const comment = mcstab.subpatcher().getnamed(\"comment_dac\");\n        comment.message(\"set\", \"Audio On\");\n        comment.message(\"bubble\", 1);\n        comment.message(\"bubbleside\", 1);\n        comment.message(\"textjustification\", 1);\n        comment.message(\"fontsize\", 13);\n        comment.message(\"fontname\", \"Arial\");\n        comment.message(\"patching_rect\", 187, 547, 86, 25);\n        comment.message(\"background\", 1);\n      }\n    }\n  }\n  if (eviOption3 > 0) {\n    const gen = thisPatcher.getnamed(\"gen_tab\");\n    const testGenTab = gen?.valid;\n    if (!testGenTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        \"p gen~\",\n        \"@varname\",\n        \"gen_tab\",\n        \"@patching_rect\",\n        373,\n        336,\n        50,\n        23\n      );\n      const gentab = thisPatcher.getnamed(\"gen_tab\");\n      gentab.subpatcher().setattr(\"bglocked\", 1);\n      gentab.subpatcher().message(\"wclose\");\n      gentab.message(\"showontab\", 1);\n      gentab.message(\"gridonopen\", 1);\n      gentab.message(\"gridsize\", 15, 15);\n      gentab.message(\"fontsize\", 13);\n      gentab.message(\"fontname\", \"Arial\");\n      gentab.message(\"locked\", 1);\n      gentab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `v8ui @filename evi.helpname.js @jsarguments ${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n      );\n      const genDigestComment = gentab.subpatcher().newdefault(10, 70, \"comment\");\n      genDigestComment.varname = \"digest_comment\";\n      const genComment = gentab.subpatcher().getnamed(\"digest_comment\");\n      genComment.message(\"set\", `The ${objectNameArgument} algorithm is also available inside the gen~ environment`);\n      genComment.message(\"fontsize\", 13);\n      genComment.message(\"fontname\", \"Lato\");\n      genComment.message(\"textcolor\", textColor);\n      genComment.message(\"patching_rect\", 10, 70, 660, 22);\n      genComment.message(\"background\", 1);\n      gentab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `gen~ @title using_${objectNameArgument}_inside_gen~`,\n        \"@varname\",\n        `${thisHelpObjectName}Gen`,\n        \"@patching_rect\",\n        223,\n        336,\n        447,\n        23\n      );\n      const genboxComment = gentab.subpatcher().newdefault(97, 328, \"comment\");\n      genboxComment.varname = \"comment_gen\";\n      const gbComment = gentab.subpatcher().getnamed(\"comment_gen\");\n      gbComment.message(\"set\", \"Double-Click to see the example\");\n      gbComment.message(\"bubble\", 1);\n      gbComment.message(\"bubbleside\", 3);\n      gbComment.message(\"textjustification\", 1);\n      gbComment.message(\"fontsize\", 13);\n      gbComment.message(\"fontname\", \"Arial\");\n      gbComment.message(\"patching_rect\", 97, 328, 124, 40);\n      gbComment.message(\"background\", 1);\n      if (createDacForHelpfile) {\n        const ezdacObj = gentab.subpatcher().newdefault(140, 537, \"ezdac~\");\n        ezdacObj.varname = \"mcs_dac\";\n        const ezdac = gentab.subpatcher().getnamed(\"mcs_dac\");\n        ezdac.message(\"local\", 1);\n        ezdac.message(\"patching_rect\", 223, 537, 45, 45);\n        const ezdacComment = gentab.subpatcher().newdefault(270, 547, \"comment\");\n        ezdacComment.varname = \"comment_dac\";\n        const comment = gentab.subpatcher().getnamed(\"comment_dac\");\n        comment.message(\"set\", \"Audio On\");\n        comment.message(\"bubble\", 1);\n        comment.message(\"bubbleside\", 1);\n        comment.message(\"textjustification\", 1);\n        comment.message(\"fontsize\", 13);\n        comment.message(\"fontname\", \"Arial\");\n        comment.message(\"patching_rect\", 270, 547, 86, 25);\n        comment.message(\"background\", 1);\n      }\n    }\n  }\n  if (eviOption4 > 0) {\n    const genexpr = thisPatcher.getnamed(\"genexpr_tab\");\n    const testGenExprTab = genexpr?.valid;\n    if (!testGenExprTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        \"p GenExpr\",\n        \"@varname\",\n        \"genexpr_tab\",\n        \"@patching_rect\",\n        455,\n        336,\n        71,\n        23\n      );\n      const genexprtab = thisPatcher.getnamed(\"genexpr_tab\");\n      genexprtab.subpatcher().setattr(\"bglocked\", 1);\n      genexprtab.subpatcher().message(\"wclose\");\n      genexprtab.message(\"showontab\", 1);\n      genexprtab.message(\"gridonopen\", 1);\n      genexprtab.message(\"gridsize\", 15, 15);\n      genexprtab.message(\"fontsize\", 13);\n      genexprtab.message(\"fontname\", \"Arial\");\n      genexprtab.message(\"locked\", 1);\n      genexprtab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `v8ui @filename evi.helpname.js @jsarguments ${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n      );\n      const genexprDigestComment = genexprtab.subpatcher().newdefault(10, 70, \"comment\");\n      genexprDigestComment.varname = \"digest_comment\";\n      const genComment = genexprtab.subpatcher().getnamed(\"digest_comment\");\n      genComment.message(\"set\", `The ${objectNameArgument} algorithm can also be used inside GenExpr code`);\n      genComment.message(\"fontsize\", 13);\n      genComment.message(\"fontname\", \"Lato\");\n      genComment.message(\"textcolor\", textColor);\n      genComment.message(\"patching_rect\", 10, 70, 660, 22);\n      genComment.message(\"background\", 1);\n      genexprtab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `gen~ @title using_${objectNameArgument}_with_GenExpr`,\n        \"@varname\",\n        `${thisHelpObjectName}GenExpr`,\n        \"@patching_rect\",\n        223,\n        336,\n        447,\n        23\n      );\n      const genboxComment = genexprtab.subpatcher().newdefault(97, 328, \"comment\");\n      genboxComment.varname = \"comment_gen\";\n      const gbComment = genexprtab.subpatcher().getnamed(\"comment_gen\");\n      gbComment.message(\"set\", \"Double-Click to see the example\");\n      gbComment.message(\"bubble\", 1);\n      gbComment.message(\"bubbleside\", 3);\n      gbComment.message(\"textjustification\", 1);\n      gbComment.message(\"fontsize\", 13);\n      gbComment.message(\"fontname\", \"Arial\");\n      gbComment.message(\"patching_rect\", 97, 328, 124, 40);\n      gbComment.message(\"background\", 1);\n      if (createDacForHelpfile) {\n        const ezdacObj = genexprtab.subpatcher().newdefault(140, 537, \"ezdac~\");\n        ezdacObj.varname = \"mcs_dac\";\n        const ezdac = genexprtab.subpatcher().getnamed(\"mcs_dac\");\n        ezdac.message(\"local\", 1);\n        ezdac.message(\"patching_rect\", 223, 537, 45, 45);\n        const ezdacComment = genexprtab.subpatcher().newdefault(270, 547, \"comment\");\n        ezdacComment.varname = \"comment_dac\";\n        const comment = genexprtab.subpatcher().getnamed(\"comment_dac\");\n        comment.message(\"set\", \"Audio On\");\n        comment.message(\"bubble\", 1);\n        comment.message(\"bubbleside\", 1);\n        comment.message(\"textjustification\", 1);\n        comment.message(\"fontsize\", 13);\n        comment.message(\"fontname\", \"Arial\");\n        comment.message(\"patching_rect\", 270, 547, 86, 25);\n        comment.message(\"background\", 1);\n      }\n    }\n  }\n  if (eviOption5 !== \"none\") {\n    const areas = thisPatcher.getnamed(\"areas_tab\");\n    const testAreasTab = areas?.valid;\n    if (!testAreasTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `p \"evieve: ${eviOption5}\"`,\n        \"@varname\",\n        \"areas_tab\",\n        \"@patching_rect\",\n        543,\n        336,\n        107,\n        23\n      );\n      const areastab = thisPatcher.getnamed(\"areas_tab\");\n      areastab.subpatcher().setattr(\"bglocked\", 1);\n      areastab.subpatcher().message(\"wclose\");\n      areastab.message(\"showontab\", 1);\n      areastab.message(\"gridonopen\", 1);\n      areastab.message(\"gridsize\", 15, 15);\n      areastab.message(\"fontsize\", 13);\n      areastab.message(\"fontname\", \"Arial\");\n      areastab.message(\"locked\", 1);\n      let eviOp5extra = eviOption5;\n      if (eviOp5extra === \"msp\") {\n        eviOp5extra = \"msp-substitutions\";\n      }\n      areastab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `v8ui @filename evi.helpname.js @jsarguments \"evieve: ${eviOp5extra}\" ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n      );\n      const areasDigestComment = areastab.subpatcher().newdefault(10, 70, \"comment\");\n      areasDigestComment.varname = \"digest_comment\";\n      const areasComment = areastab.subpatcher().getnamed(\"digest_comment\");\n      areasComment.message(\"set\", `There are other ${eviOp5extra} objects in evieve. Here is an overview.`);\n      areasComment.message(\"fontsize\", 13);\n      areasComment.message(\"fontname\", \"Lato\");\n      areasComment.message(\"textcolor\", textColor);\n      areasComment.message(\"patching_rect\", 10, 70, 660, 22);\n      areasComment.message(\"background\", 1);\n      const AREAS_BPATCHER_NAME = `areas_help_${eviOption5}.maxhelp`;\n      areastab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `bpatcher`,\n        \"@varname\",\n        `${thisHelpObjectName}Areas`,\n        \"@patching_position\",\n        10,\n        94\n      );\n      const areasBpatcher = areastab.subpatcher().getnamed(`${thisHelpObjectName}Areas`);\n      areasBpatcher.setboxattr(\"patching_rect\", 10, 94, 660, 568);\n      areasBpatcher.setboxattr(\"lockedsize\", 1);\n      areasBpatcher.setboxattr(\"lockeddragscroll\", 2);\n      areasBpatcher.setboxattr(\"bgmode\", 0);\n      areasBpatcher.setboxattr(\"clickthrough\", 1);\n      areasBpatcher.setboxattr(\"name\", AREAS_BPATCHER_NAME);\n    }\n  }\n  const b = thisPatcher.getnamed(\"q_tab\");\n  const testQtab = b?.valid;\n  if (!testQtab) {\n    thisPatcher.message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      \"p ?\",\n      \"@varname\",\n      \"q_tab\",\n      \"@patching_rect\",\n      697,\n      336,\n      50,\n      23,\n      \"@background\",\n      1\n    );\n    const q = thisPatcher.getnamed(\"q_tab\");\n    q.subpatcher().message(\"wclose\");\n    q.message(\"showontab\", 1);\n  }\n}\nfunction resize(x, y = 796) {\n  if (x == null) {\n    thisPatcher.wind.size = [1277, 796];\n  } else {\n    thisPatcher.wind.size = [x, y];\n  }\n}\nconst module = {};\nmodule.exports = {};\n",
                        "filename": "evi.helpstarter.js",
                        "flags": 0,
                        "embed": 1,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "background": 1,
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 0,
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
                        "rect": [ 0.0, 26.0, 802.0, 669.0 ],
                        "default_fontsize": 13.0,
                        "showontab": 1,
                        "integercoordinates": 1,
                        "boxes": [],
                        "lines": [],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 697.0, 336.0, 50.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p ?",
                    "varname": "q_tab"
                }
            },
            {
                "box": {
                    "background": 1,
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 281.0, 165.0, 72.0, 23.0 ],
                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                    "text": "thispatcher",
                    "varname": "this_patcher"
                }
            },
            {
                "box": {
                    "background": 1,
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 229.0, 125.0, 71.0, 23.0 ],
                    "text": "route bang"
                }
            },
            {
                "box": {
                    "background": 1,
                    "hidden": 1,
                    "id": "obj-5",
                    "linecount": 10,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 502.0, 110.0, 268.0, 152.0 ],
                    "text": "[v8] auto generated via the template, but if you need to edit by hand, args are:\n.js file\nobject name\ntype (0 = external, 1 = gen, 2 = abstraction)\nmc tab? 0/1\nmcs tab? 0/1\ngen tab? 0/1\ngenexpr tab? 0/1\nobject 'area' (symbol)"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 0,
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
                        "openrect": [ 22.0, 55.0, 837.0, 796.0 ],
                        "openrectmode": 0,
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
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
                                        "rect": [ 644.0, 122.0, 515.0, 323.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 203.0, 192.0, 35.0, 22.0 ],
                                                    "text": "reset"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 50.0, 87.0, 58.0, 22.0 ],
                                                    "text": "loadbang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 145.0, 340.0, 22.0 ],
                                                    "text": "drywet 0.77, rate 0.64, depth 0.59, spread 0.43, feedback 0.56"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-28",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 50.0, 228.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-25", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 97.0, 349.0, 19.0, 23.0 ],
                                    "text": "p"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 522.0, 276.0, 113.0, 21.0 ],
                                    "text": "-1..1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 115.0, 326.0, 113.0, 21.0 ],
                                    "text": "Spread 0..1",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 115.0, 301.0, 113.0, 21.0 ],
                                    "text": "Depth 0..1",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 115.0, 276.0, 113.0, 21.0 ],
                                    "text": "Rate 0..1",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 522.0, 319.0, 175.0, 36.0 ],
                                    "text": "how many serial modulation stages make up the chorus"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 509.0, 506.0, 150.0, 21.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 509.0, 419.0, 150.0, 21.0 ],
                                    "text": "1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 509.0, 464.0, 150.0, 21.0 ],
                                    "text": "internal LFOs"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-67",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 346.0, 302.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "3",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-66",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 61.0, 356.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-8",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 245.0, 620.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 407.0, 540.0, 300.0, 100.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 41.0, 290.0, 75.0, 23.0 ],
                                    "text": "loadmess 4"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 57.0,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "duduk.aif",
                                                "filename": "duduk.aif",
                                                "filekind": "audiofile",
                                                "id": "u869006276",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "eroica.aiff",
                                                "filename": "eroica.aiff",
                                                "filekind": "audiofile",
                                                "id": "u490006605",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "sacre.aiff",
                                                "filename": "sacre.aiff",
                                                "filekind": "audiofile",
                                                "id": "u878006904",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "evicheeseslice.wav",
                                                "filename": "evicheeseslice.wav",
                                                "filekind": "audiofile",
                                                "id": "u051010444",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-3",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 41.0, 380.0, 157.0, 232.0 ],
                                    "quality": "basic",
                                    "saved_attribute_attributes": {
                                        "candicane2": {
                                            "expression": ""
                                        },
                                        "candicane3": {
                                            "expression": ""
                                        },
                                        "candicane4": {
                                            "expression": ""
                                        },
                                        "candicane5": {
                                            "expression": ""
                                        },
                                        "candicane6": {
                                            "expression": ""
                                        },
                                        "candicane7": {
                                            "expression": ""
                                        },
                                        "candicane8": {
                                            "expression": ""
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "calccount": 64,
                                    "id": "obj-11",
                                    "maxclass": "scope~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 407.0, 424.0, 100.0, 100.0 ],
                                    "range": [ 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "calccount": 64,
                                    "id": "obj-10",
                                    "maxclass": "scope~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 293.0, 424.0, 100.0, 100.0 ],
                                    "range": [ 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 230.0, 566.0, 50.0, 50.0 ],
                                    "varname": "basic_dac"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpdetails.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "evi.chorus.digital~", "pants:/Users/stkr/Dev/evieve/help/defines/evi.chorus.digital~.maxhelp" ],
                                    "maxclass": "v8ui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 660.0, 220.0 ],
                                    "textfile": {
                                        "filename": "evi.helpdetails.js",
                                        "flags": 0,
                                        "embed": 0,
                                        "autowatch": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-4",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 1,
                                    "maxclass": "bpatcher",
                                    "name": "evieve_pickup_overview.maxpat",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 11.0, 11.0, 98.0, 98.0 ],
                                    "varname": "PeterButton",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 230.0, 380.0, 113.0, 23.0 ],
                                    "text": "evi.chorus.digital~",
                                    "varname": "evieveObject"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 280.0, 579.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac[1]"
                                }
                            },
                            {
                                "box": {
                                    "attr": "spread",
                                    "id": "obj-13",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 230.0, 325.0, 113.0, 23.0 ],
                                    "text_width": 55.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "depth",
                                    "id": "obj-14",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 230.0, 300.0, 113.0, 23.0 ],
                                    "text_width": 55.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "rate",
                                    "id": "obj-15",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 230.0, 275.0, 113.0, 23.0 ],
                                    "text_width": 55.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "stages",
                                    "id": "obj-16",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 407.0, 325.0, 113.0, 23.0 ],
                                    "text_width": 66.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "feedback",
                                    "id": "obj-17",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 407.0, 275.0, 113.0, 23.0 ],
                                    "text_width": 66.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "drywet",
                                    "id": "obj-21",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 230.0, 225.0, 113.0, 23.0 ],
                                    "text_width": 56.0
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 416.5, 370.47265625, 239.5, 370.47265625 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 416.5, 370.14453125, 239.5, 370.14453125 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "midpoints": [ 85.0, 622.0, 210.25, 622.0, 210.25, 364.05859375, 286.5, 364.05859375 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 50.5, 628.171875, 217.64453125, 628.171875, 217.64453125, 370.0, 239.5, 370.0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 106.5, 376.0, 239.5, 376.0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 239.5, 533.51171875, 416.5, 533.51171875 ],
                                    "order": 0,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-5", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 333.5, 413.5, 416.5, 413.5 ],
                                    "source": [ "obj-5", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 1 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 1,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-6", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 34.0, 336.0, 50.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p basic",
                    "varname": "basic_tab"
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 0,
                    "embed": 0,
                    "filename": "evi.helpname.js",
                    "id": "obj-9",
                    "ignoreclick": 1,
                    "jsarguments": [ "evi.chorus.digital~" ],
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 10.0, 390.8079833984375, 57.599853515625 ],
                    "textfile": {
                        "filename": "evi.helpname.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 0,
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
                        "rect": [ 0.0, 26.0, 802.0, 669.0 ],
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 256.0, 117.0, 115.0, 23.0 ],
                                    "text": "loadmess 6. 0.633"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 256.0, 142.0, 101.0, 23.0 ],
                                    "text": "unpack 6. 0.633"
                                }
                            },
                            {
                                "box": {
                                    "attr": "postgain",
                                    "id": "obj-28",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 256.0, 270.0, 113.0, 23.0 ],
                                    "text_width": 60.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "drywet",
                                    "id": "obj-27",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 256.0, 295.0, 113.0, 23.0 ],
                                    "text_width": 60.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-71",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 629.0, 508.0, 152.0, 21.0 ],
                                    "text": "Crossover 10..1000 Hz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-70",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 625.0, 415.0, 105.0, 21.0 ],
                                    "text": "Tone 0..1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 424.0, 338.0, 101.0, 21.0 ],
                                    "text": "Stages 1..32",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-67",
                                    "maxclass": "newobj",
                                    "numinlets": 10,
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
                                        "rect": [ 120.0, 235.0, 1050.0, 574.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-54",
                                                    "ignoreclick": 1,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 52.0, 385.0, 170.0, 22.0 ],
                                                    "text": "applyvalues feedback $1 $2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-52",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 860.0, 309.0, 116.0, 22.0 ],
                                                    "text": "prepend crossover"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-40",
                                                    "ignoreclick": 1,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 680.0, 112.0, 128.0, 22.0 ],
                                                    "text": "setvalue 2 stages $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-39",
                                                    "ignoreclick": 1,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 591.0, 151.0, 128.0, 22.0 ],
                                                    "text": "setvalue 1 stages $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-38",
                                                    "ignoreclick": 1,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 232.0, 307.0, 112.0, 22.0 ],
                                                    "text": "setvalue 2 rate $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-37",
                                                    "ignoreclick": 1,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 142.0, 346.0, 112.0, 22.0 ],
                                                    "text": "setvalue 1 rate $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "ignoreclick": 1,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 321.0, 268.0, 149.0, 22.0 ],
                                                    "text": "applyvalues depth $1 $2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-28",
                                                    "ignoreclick": 1,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 411.0, 229.0, 145.0, 22.0 ],
                                                    "text": "applyvalues spread $1 $2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "ignoreclick": 1,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 501.0, 190.0, 135.0, 22.0 ],
                                                    "text": "applyvalues warp $1 $2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 770.0, 309.0, 79.0, 22.0 ],
                                                    "text": "prepend tone"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-55",
                                                    "index": 9,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 770.0, 47.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-56",
                                                    "index": 10,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 860.0, 47.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-57",
                                                    "index": 6,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 500.0, 47.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-58",
                                                    "index": 5,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 411.0, 47.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-59",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 141.0, 47.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-60",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 321.0, 47.0, 30.0, 30.0 ]
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
                                                    "patching_rect": [ 52.0, 47.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-62",
                                                    "index": 7,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 590.0, 47.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-63",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 231.0, 47.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-64",
                                                    "index": 8,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 680.0, 47.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-65",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 680.0, 491.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-37", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-38", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-39", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-52", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "source": [ "obj-55", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-52", 0 ],
                                                    "source": [ "obj-56", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-57", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-58", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-37", 0 ],
                                                    "source": [ "obj-59", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 0 ],
                                                    "source": [ "obj-60", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-54", 0 ],
                                                    "source": [ "obj-61", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-39", 0 ],
                                                    "source": [ "obj-62", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-38", 0 ],
                                                    "source": [ "obj-63", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 0 ],
                                                    "source": [ "obj-64", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 526.0, 602.0, 146.0, 23.0 ],
                                    "text": "p attributes"
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-53",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 576.0, 509.0, 51.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 3.333333,
                                            "parameter_initial": [ 104.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.numbox[5]",
                                            "parameter_mmax": 1000.0,
                                            "parameter_mmin": 10.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "live.numbox",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 3
                                        }
                                    },
                                    "varname": "live.numbox[5]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 423.0, 121.0, 101.0, 21.0 ],
                                    "text": "Feedback -1..1",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "floatoutput": 1,
                                    "id": "obj-48",
                                    "listmode": 1,
                                    "maxclass": "rslider",
                                    "min": -1.0,
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "orientation": 1,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 526.0, 117.0, 150.0, 30.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.1095890410958904, 1.6164383561643836 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "rslider[3]",
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "rslider",
                                            "parameter_type": 3
                                        }
                                    },
                                    "size": 2.0,
                                    "varname": "rslider[3]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 41.0, 337.0, 67.0, 21.0 ],
                                    "text": "@chans 2",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-45",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 625.0, 339.0, 51.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 15.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.numbox[4]",
                                            "parameter_mmax": 16.0,
                                            "parameter_mmin": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "live.numbox",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 0
                                        }
                                    },
                                    "varname": "live.numbox[4]"
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-43",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 526.0, 339.0, 51.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 3.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.numbox[3]",
                                            "parameter_mmax": 16.0,
                                            "parameter_mmin": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "live.numbox",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 0
                                        }
                                    },
                                    "varname": "live.numbox[3]"
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-1",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 576.0, 416.0, 51.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.7244094488188966 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.numbox[2]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "live.numbox",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 1
                                        }
                                    },
                                    "varname": "live.numbox[2]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "meter~",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "orientation": 2,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 41.0, 509.0, 20.0, 116.0 ]
                                }
                            },
                            {
                                "box": {
                                    "floatoutput": 1,
                                    "id": "obj-16",
                                    "listmode": 1,
                                    "maxclass": "rslider",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "orientation": 1,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 526.0, 245.0, 150.0, 30.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.6460000000000001, 0.8660000000000001 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "rslider[2]",
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "rslider",
                                            "parameter_type": 3
                                        }
                                    },
                                    "size": 1.0,
                                    "varname": "rslider[2]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 423.0, 249.0, 101.0, 21.0 ],
                                    "text": "Spread 0..1",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-36",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 625.0, 164.0, 51.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.4714960629921258 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.numbox[1]",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "live.numbox",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 1
                                        }
                                    },
                                    "varname": "live.numbox[1]"
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-35",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 526.0, 164.0, 51.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.9242519685039365 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.numbox",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "live.numbox",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 1
                                        }
                                    },
                                    "varname": "live.numbox"
                                }
                            },
                            {
                                "box": {
                                    "floatoutput": 1,
                                    "id": "obj-32",
                                    "listmode": 1,
                                    "maxclass": "rslider",
                                    "min": -1.0,
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "orientation": 1,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 526.0, 292.0, 150.0, 30.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.3287671232876712, 1.6849315068493151 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "rslider[4]",
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "rslider",
                                            "parameter_type": 3
                                        }
                                    },
                                    "size": 2.0,
                                    "varname": "rslider[1]"
                                }
                            },
                            {
                                "box": {
                                    "floatoutput": 1,
                                    "id": "obj-29",
                                    "listmode": 1,
                                    "maxclass": "rslider",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "orientation": 1,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 526.0, 198.0, 150.0, 30.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.7876712328767124, 0.952054794520548 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "rslider",
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "rslider",
                                            "parameter_type": 3
                                        }
                                    },
                                    "size": 1.0,
                                    "varname": "rslider"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 423.0, 296.0, 101.0, 21.0 ],
                                    "text": "Warp -1..1",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 423.0, 202.0, 101.0, 21.0 ],
                                    "text": "Depth 0..1",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 423.0, 162.0, 101.0, 21.0 ],
                                    "text": "Rate 0..1",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "bufsize": 32,
                                    "id": "obj-8",
                                    "maxclass": "scope~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 315.0, 376.0, 100.0, 116.0 ],
                                    "range": [ 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bufsize": 32,
                                    "id": "obj-6",
                                    "maxclass": "scope~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 213.0, 376.0, 100.0, 116.0 ],
                                    "range": [ 0.0, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-66",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 88.0, 204.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-10",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 41.0, 460.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 63.0, 509.0, 353.0, 116.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 63.0, 376.0, 106.0, 23.0 ],
                                    "text": "mc.interleave~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 63.0, 412.0, 151.0, 23.0 ],
                                    "text": "mc.stereo~ @autogain 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "local": 1,
                                    "maxclass": "mc.ezdac~",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 63.0, 447.0, 45.0, 45.0 ],
                                    "varname": "mc_dac[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 416.0, 462.0, 91.0, 21.0 ],
                                    "text": "0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 416.0, 370.0, 91.0, 21.0 ],
                                    "text": "1."
                                }
                            },
                            {
                                "box": {
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "evicheeseslice.wav",
                                                "filename": "evicheeseslice.wav",
                                                "filekind": "audiofile",
                                                "id": "u489010053",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "sacre.aiff",
                                                "filename": "sacre.aiff",
                                                "filekind": "audiofile",
                                                "id": "u713010403",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "evidistortedcrooner.wav",
                                                "filename": "evidistortedcrooner.wav",
                                                "filekind": "audiofile",
                                                "id": "u186010090",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-15",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 110.0, 167.0, 259.0, 93.0 ],
                                    "quality": "basic",
                                    "saved_attribute_attributes": {
                                        "candicane2": {
                                            "expression": ""
                                        },
                                        "candicane3": {
                                            "expression": ""
                                        },
                                        "candicane4": {
                                            "expression": ""
                                        },
                                        "candicane5": {
                                            "expression": ""
                                        },
                                        "candicane6": {
                                            "expression": ""
                                        },
                                        "candicane7": {
                                            "expression": ""
                                        },
                                        "candicane8": {
                                            "expression": ""
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 416.0, 414.0, 91.0, 21.0 ],
                                    "text": "internal LFOs"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 4,
                                    "outlettype": [ "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
                                    "patching_rect": [ 110.0, 336.0, 139.0, 23.0 ],
                                    "text": "mc.evi.chorus.digital~",
                                    "varname": "evieveObjectMc[1]"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpname.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "mc.evi.chorus.digital~", 660 ],
                                    "maxclass": "v8ui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 660.0, 57.599853515625 ],
                                    "textfile": {
                                        "filename": "evi.helpname.js",
                                        "flags": 0,
                                        "embed": 0,
                                        "autowatch": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 70.0, 660.0, 22.0 ],
                                    "text": "evi.chorus.digital~ is also available as an 'mc' Object",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 110.0, 457.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac[1]"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 8 ],
                                    "hidden": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "order": 0,
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "hidden": 1,
                                    "order": 2,
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
                                    "destination": [ "obj-19", 1 ],
                                    "source": [ "obj-15", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 4 ],
                                    "hidden": 1,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 1 ],
                                    "source": [ "obj-19", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-19", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-19", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "midpoints": [ 265.5, 327.0, 119.5, 327.0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "midpoints": [ 265.5, 326.64453125, 119.5, 326.64453125 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 3 ],
                                    "hidden": 1,
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 5 ],
                                    "hidden": 1,
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 2 ],
                                    "hidden": 1,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 6 ],
                                    "hidden": 1,
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 7 ],
                                    "hidden": 1,
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 9 ],
                                    "hidden": 1,
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 535.5, 639.453125, 26.69140625, 639.453125, 26.69140625, 326.0, 119.5, 326.0 ],
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 281.0, 336.0, 37.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p mc",
                    "varname": "mc_tab"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 0,
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
                        "rect": [ 0.0, 26.0, 802.0, 669.0 ],
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "attr": "tone",
                                    "id": "obj-5",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 238.0, 271.0, 150.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpname.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "evi.chorus.digital~", 660 ],
                                    "maxclass": "v8ui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 660.0, 57.599853515625 ],
                                    "textfile": {
                                        "filename": "evi.helpname.js",
                                        "flags": 0,
                                        "embed": 0,
                                        "autowatch": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 70.0, 660.0, 22.0 ],
                                    "text": "The evi.chorus.digital~ algorithm is also available inside the gen~ environment",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-66",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 28.0, 165.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-14",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 216.0, 565.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 30.666666666666668,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "evicheeseslice.wav",
                                                "filename": "evicheeseslice.wav",
                                                "filekind": "audiofile",
                                                "id": "u489010053",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "sacre.aiff",
                                                "filename": "sacre.aiff",
                                                "filekind": "audiofile",
                                                "id": "u713010403",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "evidistortedcrooner.wav",
                                                "filename": "evidistortedcrooner.wav",
                                                "filekind": "audiofile",
                                                "id": "u186010090",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-16",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 50.0, 127.0, 248.0, 95.0 ],
                                    "quality": "basic",
                                    "saved_attribute_attributes": {
                                        "candicane2": {
                                            "expression": ""
                                        },
                                        "candicane3": {
                                            "expression": ""
                                        },
                                        "candicane4": {
                                            "expression": ""
                                        },
                                        "candicane5": {
                                            "expression": ""
                                        },
                                        "candicane6": {
                                            "expression": ""
                                        },
                                        "candicane7": {
                                            "expression": ""
                                        },
                                        "candicane8": {
                                            "expression": ""
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "meter~",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 238.0, 406.0, 80.0, 13.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "meter~",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 518.0, 406.0, 80.0, 13.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 392.0, 497.0, 298.0, 100.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
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
                                        "rect": [ 59.0, 119.0, 729.0, 733.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 431.0, 505.0, 85.0, 22.0 ],
                                                    "text": "setparam tone"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 431.0, 466.0, 189.0, 22.0 ],
                                                    "text": "param tone 0.33 @min 0 @max 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 68.0, 187.0, 97.0, 22.0 ],
                                                    "text": "setparam drywet"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 68.0, 94.0, 111.0, 22.0 ],
                                                    "text": "setparam feedback"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 68.0, 148.0, 201.0, 22.0 ],
                                                    "text": "param drywet 0.76 @min 0 @max 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 68.0, 55.0, 218.0, 22.0 ],
                                                    "text": "param feedback 0.69 @min -1 @max 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 431.0, 280.0, 99.0, 22.0 ],
                                                    "text": "setparam spread"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 431.0, 373.0, 88.0, 22.0 ],
                                                    "text": "setparam warp"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 431.0, 187.0, 92.0, 22.0 ],
                                                    "text": "setparam depth"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 431.0, 94.0, 83.0, 22.0 ],
                                                    "text": "setparam rate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 431.0, 241.0, 202.0, 22.0 ],
                                                    "text": "param spread 0.27 @min 0 @max 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 431.0, 334.0, 196.0, 22.0 ],
                                                    "text": "param warp 0.72 @min -1 @max 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 431.0, 148.0, 196.0, 22.0 ],
                                                    "text": "param depth 0.66 @min 0 @max 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 431.0, 55.0, 186.0, 22.0 ],
                                                    "text": "param rate 0.24 @min 0 @max 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 362.0, 666.0, 35.0, 22.0 ],
                                                    "text": "out 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "", "", "", "" ],
                                                    "patching_rect": [ 232.0, 574.0, 165.0, 22.0 ],
                                                    "text": "evi_chorus_digital @stages 7"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 232.0, 505.0, 28.0, 22.0 ],
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
                                                    "patching_rect": [ 305.0, 505.0, 28.0, 22.0 ],
                                                    "text": "in 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 232.0, 666.0, 35.0, 22.0 ],
                                                    "text": "out 1"
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
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
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
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "source": [ "obj-17", 0 ]
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
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 1 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-5", 1 ]
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
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-6", 0 ]
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
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 238.0, 352.0, 299.0, 23.0 ],
                                    "text": "gen~ @title using_evi.chorus.digital~_inside_gen~",
                                    "varname": "evieveObjectGen[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 238.0, 552.0, 45.0, 45.0 ],
                                    "varname": "mcs_dac[1]"
                                }
                            },
                            {
                                "box": {
                                    "attr": "feedback",
                                    "id": "obj-8",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 238.0, 246.0, 150.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "warp",
                                    "id": "obj-10",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 392.0, 296.0, 150.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "depth",
                                    "id": "obj-12",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 392.0, 246.0, 150.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "drywet",
                                    "id": "obj-17",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 238.0, 296.0, 150.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "rate",
                                    "id": "obj-18",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 392.0, 221.0, 150.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "spread",
                                    "id": "obj-21",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 392.0, 271.0, 150.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-7",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 112.0, 344.0, 124.0, 40.0 ],
                                    "text": "Double-Click to see the example",
                                    "textjustification": 1,
                                    "varname": "comment_gen"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 238.0, 552.0, 45.0, 45.0 ],
                                    "varname": "mcs_dac"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 285.0, 562.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 285.0, 562.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac[1]"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "midpoints": [ 247.5, 487.75, 401.5, 487.75 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "order": 0,
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "order": 2,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "midpoints": [ 527.5, 451.69921875, 273.5, 451.69921875 ],
                                    "order": 1,
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "order": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 401.5, 336.875, 247.5, 336.875 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 401.5, 336.75, 247.5, 336.75 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 1 ],
                                    "midpoints": [ 116.75, 328.88671875, 527.5, 328.88671875 ],
                                    "source": [ "obj-16", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 59.5, 336.29296875, 247.5, 336.29296875 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 401.5, 337.32421875, 247.5, 337.32421875 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 401.5, 336.63671875, 247.5, 336.63671875 ],
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
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 373.0, 336.0, 50.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p gen~",
                    "varname": "gen_tab"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-10::obj-1": [ "live.numbox[2]", "live.numbox", 0 ],
            "obj-10::obj-16": [ "rslider[2]", "rslider", 0 ],
            "obj-10::obj-29": [ "rslider", "rslider", 0 ],
            "obj-10::obj-32": [ "rslider[4]", "rslider", 0 ],
            "obj-10::obj-35": [ "live.numbox", "live.numbox", 0 ],
            "obj-10::obj-36": [ "live.numbox[1]", "live.numbox", 0 ],
            "obj-10::obj-43": [ "live.numbox[3]", "live.numbox", 0 ],
            "obj-10::obj-45": [ "live.numbox[4]", "live.numbox", 0 ],
            "obj-10::obj-48": [ "rslider[3]", "rslider", 0 ],
            "obj-10::obj-53": [ "live.numbox[5]", "live.numbox", 0 ],
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