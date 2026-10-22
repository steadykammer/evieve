{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 2,
            "revision": 1,
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
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
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
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 86.0, 356.0, 156.0, 25.0 ],
                                    "text": "list for MSP biquad~",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 378.0, 290.0, 173.0, 25.0 ],
                                    "text": "rnbo~ biquad~ internally",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 474.0, 130.0, 50.0, 21.0 ],
                                    "text": "Q",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 369.0, 130.0, 50.0, 21.0 ],
                                    "text": "dB",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 263.0, 130.0, 50.0, 21.0 ],
                                    "text": "Hz",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-25",
                                    "maxclass": "flonum",
                                    "maximum": 10000.0,
                                    "minimum": 0.1,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 474.0, 153.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 2.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[9]",
                                            "parameter_mmax": 10000.0,
                                            "parameter_mmin": 0.1,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-24",
                                    "maxclass": "flonum",
                                    "maximum": 24.0,
                                    "minimum": -24.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 369.0, 153.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[10]",
                                            "parameter_mmax": 24.0,
                                            "parameter_mmin": -24.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number[1]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number[1]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-23",
                                    "maxclass": "flonum",
                                    "maximum": 18000.0,
                                    "minimum": 10.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 263.0, 153.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 2000.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[11]",
                                            "parameter_mmax": 18000.0,
                                            "parameter_mmin": 10.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number[2]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number[2]"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 525.0, 207.0, 173.0, 25.0 ],
                                    "text": "40 different filter types",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 369.0, 450.0, 300.0, 100.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 146.0, 395.0, 47.0, 23.0 ],
                                    "text": "noise~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 222.0, 395.0, 72.0, 23.0 ],
                                    "text": "biquad~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 369.0, 319.0, 300.0, 100.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-3",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 211.0, 210.0, 20.0, 20.0 ],
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
                                    "id": "obj-45",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 200.0, 524.0, 20.0, 20.0 ],
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
                                    "channels": 1,
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-26",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "orientation": 1,
                                    "outlettype": [ "signal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 222.0, 518.0, 123.0, 32.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ -30.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.gain~[4]",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.gain~",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "showname": 0,
                                    "varname": "live.gain~[4]"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-20",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 200.0, 595.0, 20.0, 20.0 ],
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
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpname.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "evi.biquadcoeff", 660 ],
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
                                    "text": "An evi.biquadcoeff abstraction is also available inside the rnbo~ environment",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "autosave": 1,
                                    "id": "obj-5",
                                    "inletInfo": {
                                        "IOInfo": [
                                            {
                                                "type": "event",
                                                "index": 1,
                                                "tag": "in1",
                                                "comment": "Cutoff or Center"
                                            },
                                            {
                                                "type": "event",
                                                "index": 2,
                                                "tag": "in2",
                                                "comment": "Gain"
                                            },
                                            {
                                                "type": "event",
                                                "index": 3,
                                                "tag": "in3",
                                                "comment": "Q or S"
                                            }
                                        ]
                                    },
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outletInfo": {
                                        "IOInfo": [
                                            {
                                                "type": "event",
                                                "index": 1,
                                                "tag": "out1",
                                                "comment": ""
                                            },
                                            {
                                                "type": "signal",
                                                "index": 2,
                                                "tag": "out2",
                                                "comment": ""
                                            }
                                        ]
                                    },
                                    "outlettype": [ "", "signal", "list" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 2,
                                            "revision": 1,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "rnbo",
                                        "rect": [ 59.0, 115.0, 783.0, 571.0 ],
                                        "default_fontname": "Lato",
                                        "title": "using_evi.biquadcoeff_inside_rnbo~",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-12",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 455.0, 18.0, 129.0000000000001, 25.0 ],
                                                    "text": "audio rate version",
                                                    "textjustification": 1
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
                                                                "revision": 1,
                                                                "architecture": "x64",
                                                                "modernui": 1
                                                            },
                                                            "classnamespace": "dsp.gen",
                                                            "rect": [ 49.0, 100.0, 911.0, 848.0 ],
                                                            "gridonopen": 2,
                                                            "subpatcher_template": "sub",
                                                            "integercoordinates": 1,
                                                            "boxes": [
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 5 b2 (FB2)",
                                                                        "patching_rect": [ 802.0, 811.0, 85.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "id": "obj-9"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 4 b1 (FB1)",
                                                                        "patching_rect": [ 614.0, 811.0, 85.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "id": "obj-8"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 3 a2 (FF2)",
                                                                        "patching_rect": [ 426.0, 811.0, 85.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "id": "obj-7"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 2 a1 (FF1)",
                                                                        "patching_rect": [ 238.0, 811.0, 85.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "id": "obj-6"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 3 (signal/float) Q or S @default 0.707107",
                                                                        "patching_rect": [ 649.0, 19.0, 239.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-5",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 1 (signal/float) Cutoff or Center @default 1000",
                                                                        "patching_rect": [ 50.0, 19.0, 267.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-1",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "in 2 (signal/float) Gain @default 0",
                                                                        "patching_rect": [ 426.0, 19.0, 187.0, 22.0 ],
                                                                        "numinlets": 0,
                                                                        "numoutlets": 1,
                                                                        "id": "obj-2",
                                                                        "outlettype": [ "" ]
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "codebox",
                                                                        "patching_rect": [ 50.0, 58.0, 771.0, 736.0 ],
                                                                        "numinlets": 3,
                                                                        "fontface": 0,
                                                                        "numoutlets": 5,
                                                                        "id": "obj-3",
                                                                        "outlettype": [ "", "", "", "", "" ],
                                                                        "fontsize": 12.0,
                                                                        "fontname": "<Monospaced>",
                                                                        "code": "\r\n// evieve Biquad Coefficients Calculators\r\n\r\nrequire(\"evi_biquads_union\");\n\r\n// eviBiquadCoeff(index, cutoff, gain, Q)\n/*\n    index   calculator                              \tparameters\n    0       bypass                                  \tnone\n\t1\t\teviBiquadCoeffLowpass \t\t\t\t\t\tcutoff, Q\n\t2\t\teviBiquadCoeffHighpass \t\t\t\t\t\tcutoff, Q\n\t3\t\teviBiquadCoeffBandpass \t\t\t\t\t\tcutoff, Q\n\t4\t\teviBiquadCoeffNotch \t\t\t\t\t\tcutoff, Q\n\t5\t\teviBiquadCoeffPeakNotch \t\t\t\t\tcutoff, gain, Q\n\t6\t\teviBiquadCoeffLowshelfMSP \t\t\t\t\tcutoff, gain, Q\n\t7\t\teviBiquadCoeffLowshelfCookbook \t\t\t\tcutoff, gain, Q\n\t8\t\teviBiquadCoeffHighshelfMSP \t\t\t\t\tcutoff, gain, Q\n\t9\t\teviBiquadCoeffHighshelfCookbook \t\t\tcutoff, gain, Q\n\t10\t\teviBiquadCoeffResonant \t\t\t\t\t\tcutoff, Q\n\t11\t\teviBiquadCoeffBp \t\t\t\t\t\t\tcutoff, Q\n\t12\t\teviBiquadCoeffAllpass \t\t\t\t\t\tcutoff, Q\n\t13\t\teviBiquadCoeffLowpassGain \t\t\t\t\tcutoff, gain, Q\n\t14\t\teviBiquadCoeffHighpassGain \t\t\t\t\tcutoff, gain, Q\n\t15\t\teviBiquadCoeffBandpassGain \t\t\t\t\tcutoff, gain, Q\n\t16\t\teviBiquadCoeffNotchGain \t\t\t\t\tcutoff, gain, Q\n\t17\t\teviBiquadCoeffResonantGain \t\t\t\t\tcutoff, gain, Q\n\t18\t\teviBiquadCoeffBpGain \t\t\t\t\t\tcutoff, gain, Q\n\t19\t\teviBiquadCoeffAllpassGain \t\t\t\t\tcutoff, gain, Q\n\t20\t\teviBiquadCoeffLowpassAnalog1\t\t\t\tcutoff, Q\n\t21 \t\teviBiquadCoeffLowpassAnalog2\t\t\t\tcutoff, Q\n\t22 \t\teviBiquadCoeffHighpassAnalog\t\t\t\tcutoff, Q\n\t23\t\teviBiquadCoeffBandpassAnalog \t\t\t\tcutoff, Q\n\t24\t\teviBiquadCoeffBandpassGainAnalog \t\t\tcutoff, gain, Q\n\t25 \t\teviBiquadCoeffNotchAnalog \t\t\t\t\tcutoff, Q\n\t26\t\teviBiquadCoeffPeakNotchAnalog1 \t\t\t\tcutoff, gain, Q\n\t27\t\teviBiquadCoeffPeakNotchAnalog2 \t\t\t\tcutoff, gain, Q\n\t28 \t\teviBiquadCoeffLowshelfAnalog1\t\t\t\tcutoff, gain, Q\n\t29\t\teviBiquadCoeffLowshelfAnalog2 \t\t\t\tcutoff, gain\n\t30 \t\teviBiquadCoeffHighshelfAnalog1\t\t\t\tcutoff, gain, Q\n\t31\t\teviBiquadCoeffHighshelfAnalog2 \t\t\t\tcutoff, gain\n\t32 \t\teviBiquadCoeffResonantAnalog\t\t\t\tcutoff, Q\n\t33\t\teviBiquadCoeffButterworthLowpass \t\t\tcutoff\n\t34\t\teviBiquadCoeffButterworthHighpass \t\t\tcutoff\n\t35\t\teviBiquadCoeffButterworthBandpass \t\t\tcutoff, Q\n\t36\t\teviBiquadCoeffButterworthBandreject \t\tcutoff, Q\n\t37\t\teviBiquadCoeffButterworthLowpassGain \t\tcutoff, gain\n\t38\t\teviBiquadCoeffButterworthHighpassGain \t\tcutoff, gain\n\t39\t\teviBiquadCoeffButterworthBandpassGain \t\tcutoff, gain, Q\n\t40\t\teviBiquadCoeffButterworthBandrejectGain \tcutoff, gain, Q\n*/\n\nParam   cutoffunits(0, min=0, max=1);   // 0 = in Hz (default), 1 = in Pitch\r\nParam   gainunits(1, min=0, max=1);     // 0 = linear gain, 1 = gain in dB (default)\r\nParam   filter(0, min=0, max=40);\r\nfilt    = int(filter);\r\ngunits  = int(gainunits);\r\ncfunits = int(cutoffunits);\r\n\r\nQ       = maximum(in3, 0.1);            // standard biquad clipping\r\n\r\ngain    = 1;\r\nif (gunits) {\r\n    gain    = dbtoa(in2);\r\n} else {\r\n    gain    = in2;\r\n}\r\n//gain  = clip(gain, 0.0625, 16);       // like [filtergraph~] ±24dB\r\n\r\ncutoff  = 1000;\r\nif (cfunits) {\r\n    cutoff  = mtof(in1);\r\n} else {\r\n    cutoff  = in1;\r\n}\r\ncutoff  = maximum(cutoff, 10);\r\n\r\nout1, out2, out3, out4, out5    = eviBiquadCoeff(filt, cutoff, gain, Q);\r\n\r\n"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "newobj",
                                                                        "text": "out 1 a0 (FF0)",
                                                                        "patching_rect": [ 50.0, 811.0, 85.0, 22.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "id": "obj-4"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "comment",
                                                                        "text": "default Hz",
                                                                        "patching_rect": [ 252.0, 39.0, 67.0, 20.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "textjustification": 2,
                                                                        "id": "obj-12"
                                                                    }
                                                                },
                                                                {
                                                                    "box": {
                                                                        "maxclass": "comment",
                                                                        "text": "default dB",
                                                                        "patching_rect": [ 548.0, 39.0, 67.0, 20.0 ],
                                                                        "numinlets": 1,
                                                                        "numoutlets": 0,
                                                                        "textjustification": 2,
                                                                        "id": "obj-11"
                                                                    }
                                                                }
                                                            ],
                                                            "lines": [
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-5", 0 ],
                                                                        "destination": [ "obj-3", 2 ],
                                                                        "midpoints": [ 658.5, 49.5, 811.5, 49.5 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-3", 4 ],
                                                                        "destination": [ "obj-9", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-3", 3 ],
                                                                        "destination": [ "obj-8", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-3", 2 ],
                                                                        "destination": [ "obj-7", 0 ]
                                                                    }
                                                                },
                                                                {
                                                                    "patchline": {
                                                                        "source": [ "obj-3", 1 ],
                                                                        "destination": [ "obj-6", 0 ]
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
                                                                        "destination": [ "obj-3", 1 ]
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
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 5,
                                                    "outlettype": [ "signal", "signal", "signal", "signal", "signal" ],
                                                    "patching_rect": [ 294.0, 19.0, 156.0, 23.0 ],
                                                    "rnbo_classname": "gen~",
                                                    "rnbo_extra_attributes": {
                                                        "exposeparams": 0
                                                    },
                                                    "rnbo_serial": 1,
                                                    "rnbo_uniqueid": "gen~_obj-8",
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
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "symbol",
                                                                "doNotShowInMaxInspector": 1
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
                                                            },
                                                            {
                                                                "name": "out2",
                                                                "type": "signal"
                                                            },
                                                            {
                                                                "name": "out3",
                                                                "type": "signal"
                                                            },
                                                            {
                                                                "name": "out4",
                                                                "type": "signal"
                                                            },
                                                            {
                                                                "name": "out5",
                                                                "type": "signal"
                                                            }
                                                        ],
                                                        "helpname": "gen~",
                                                        "aliasOf": "gen~",
                                                        "classname": "gen~",
                                                        "operator": 0,
                                                        "versionId": 179904306,
                                                        "changesPatcherIO": 0
                                                    },
                                                    "text": "gen~ @file evi_biquad_coeff"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "linecount": 9,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 34.0, 19.0, 199.0, 136.0 ],
                                                    "text": "This is message rate coefficients calculations of all the evieve Biquad calculators.\n\nFor audio rate inside rnbo~ simply instantiate:\n[gen~ @file evi_biquad_coeff],\nor with a filter included:\n[gen~ @file evi_biquad_filter]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-6",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 586.0, 366.0, 111.0, 25.0 ],
                                                    "text": "rnbo~ biquad~",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 380.0, 367.0, 43.0, 23.0 ],
                                                    "rnbo_classname": "noise~",
                                                    "rnbo_serial": 1,
                                                    "rnbo_uniqueid": "noise~_obj-5",
                                                    "rnboinfo": {
                                                        "needsInstanceInfo": 1,
                                                        "argnames": {
                                                            "input": {
                                                                "attrOrProp": 1,
                                                                "digest": "bang to output",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 0,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "inlet": 1,
                                                                "type": "bang"
                                                            },
                                                            "seed": {
                                                                "attrOrProp": 1,
                                                                "digest": "Seed to get predictable results",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 1,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "number"
                                                            },
                                                            "out": {
                                                                "attrOrProp": 1,
                                                                "digest": "noise",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "outlet": 1,
                                                                "type": "signal"
                                                            },
                                                            "reset": {
                                                                "attrOrProp": 1,
                                                                "digest": "reset",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "attachable": 1,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "bang"
                                                            }
                                                        },
                                                        "inputs": [
                                                            {
                                                                "name": "input",
                                                                "type": "bang",
                                                                "digest": "bang to output",
                                                                "hot": 1,
                                                                "docked": 0
                                                            }
                                                        ],
                                                        "outputs": [
                                                            {
                                                                "name": "out",
                                                                "type": "signal",
                                                                "digest": "noise",
                                                                "docked": 0
                                                            }
                                                        ],
                                                        "helpname": "noise~",
                                                        "aliasOf": "noise",
                                                        "classname": "noise~",
                                                        "operator": 0,
                                                        "versionId": 977565274,
                                                        "changesPatcherIO": 0
                                                    },
                                                    "text": "noise~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 455.0, 482.0, 43.0, 23.0 ],
                                                    "rnbo_classname": "out~",
                                                    "rnbo_extra_attributes": {
                                                        "comment": "",
                                                        "meta": ""
                                                    },
                                                    "rnbo_serial": 1,
                                                    "rnbo_uniqueid": "out~_obj-4",
                                                    "rnboinfo": {
                                                        "needsInstanceInfo": 1,
                                                        "argnames": {
                                                            "in1": {
                                                                "attrOrProp": 1,
                                                                "digest": "signal sent to outlet with index 2",
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
                                                                "digest": "signal sent to outlet with index 2",
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
                                                        "changesPatcherIO": 1
                                                    },
                                                    "text": "out~ 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 455.0, 367.0, 129.0000000000001, 23.0 ],
                                                    "rnbo_classname": "biquad~",
                                                    "rnbo_serial": 1,
                                                    "rnbo_uniqueid": "biquad~_obj-3",
                                                    "text": "biquad~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 404.0, 212.0, 127.0, 23.0 ],
                                                    "rnbo_classname": "in",
                                                    "rnbo_extra_attributes": {
                                                        "meta": ""
                                                    },
                                                    "rnbo_serial": 1,
                                                    "rnbo_uniqueid": "in_obj-9",
                                                    "rnboinfo": {
                                                        "needsInstanceInfo": 1,
                                                        "argnames": {
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
                                                                "type": [ "bang", "number", "list" ],
                                                                "digest": "value from inlet with index 3",
                                                                "displayName": "Q or S",
                                                                "docked": 0
                                                            }
                                                        ],
                                                        "helpname": "in",
                                                        "aliasOf": "in",
                                                        "classname": "in",
                                                        "operator": 0,
                                                        "versionId": 475235762,
                                                        "changesPatcherIO": 1
                                                    },
                                                    "text": "in 3 @comment Q or S"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 294.0, 132.0, 180.0, 23.0 ],
                                                    "rnbo_classname": "in",
                                                    "rnbo_extra_attributes": {
                                                        "meta": ""
                                                    },
                                                    "rnbo_serial": 2,
                                                    "rnbo_uniqueid": "in_obj-10",
                                                    "rnboinfo": {
                                                        "needsInstanceInfo": 1,
                                                        "argnames": {
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
                                                                "type": [ "bang", "number", "list" ],
                                                                "digest": "value from inlet with index 1",
                                                                "displayName": "Cutoff or Center",
                                                                "docked": 0
                                                            }
                                                        ],
                                                        "helpname": "in",
                                                        "aliasOf": "in",
                                                        "classname": "in",
                                                        "operator": 0,
                                                        "versionId": 475235762,
                                                        "changesPatcherIO": 1
                                                    },
                                                    "text": "in 1 @comment Cutoff or Center"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 349.0, 172.0, 118.0, 23.0 ],
                                                    "rnbo_classname": "in",
                                                    "rnbo_extra_attributes": {
                                                        "meta": ""
                                                    },
                                                    "rnbo_serial": 3,
                                                    "rnbo_uniqueid": "in_obj-13",
                                                    "rnboinfo": {
                                                        "needsInstanceInfo": 1,
                                                        "argnames": {
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
                                                                "type": [ "bang", "number", "list" ],
                                                                "digest": "value from inlet with index 2",
                                                                "displayName": "Gain",
                                                                "docked": 0
                                                            }
                                                        ],
                                                        "helpname": "in",
                                                        "aliasOf": "in",
                                                        "classname": "in",
                                                        "operator": 0,
                                                        "versionId": 475235762,
                                                        "changesPatcherIO": 1
                                                    },
                                                    "text": "in 2 @comment Gain"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 294.0, 482.0, 36.0, 23.0 ],
                                                    "rnbo_classname": "out",
                                                    "rnbo_extra_attributes": {
                                                        "comment": "",
                                                        "meta": ""
                                                    },
                                                    "rnbo_serial": 1,
                                                    "rnbo_uniqueid": "out_obj-1",
                                                    "rnboinfo": {
                                                        "needsInstanceInfo": 1,
                                                        "argnames": {
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
                                                                "type": [ "bang", "number", "list" ],
                                                                "digest": "value sent to outlet with index 1",
                                                                "displayName": "",
                                                                "hot": 1,
                                                                "docked": 0
                                                            }
                                                        ],
                                                        "outputs": [],
                                                        "helpname": "out",
                                                        "aliasOf": "out",
                                                        "classname": "out",
                                                        "operator": 0,
                                                        "versionId": 1131826829,
                                                        "changesPatcherIO": 1
                                                    },
                                                    "text": "out 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 6,
                                                    "outlettype": [ "", "", "", "", "", "" ],
                                                    "patching_rect": [ 294.0, 252.0, 129.0, 23.0 ],
                                                    "rnbo_classname": "p",
                                                    "rnbo_extra_attributes": {
                                                        "uidstyle": "auto",
                                                        "polyphony": -1.0,
                                                        "exposevoiceparams": 0,
                                                        "args": [],
                                                        "receivemode": "local",
                                                        "notecontroller": 0,
                                                        "voicecontrol": "simple"
                                                    },
                                                    "rnbo_serial": 1,
                                                    "rnbo_uniqueid": "evi_coeff",
                                                    "rnboinfo": {
                                                        "needsInstanceInfo": 1,
                                                        "argnames": {
                                                            "filter": {
                                                                "attrOrProp": 1,
                                                                "digest": "filter",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 1,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "number"
                                                            },
                                                            "cutoffunits": {
                                                                "attrOrProp": 1,
                                                                "digest": "cutoffunits",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 1,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "number"
                                                            },
                                                            "gainunits": {
                                                                "attrOrProp": 1,
                                                                "digest": "gainunits",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 1,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "number"
                                                            },
                                                            "target": {
                                                                "attrOrProp": 1,
                                                                "digest": "target",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 0,
                                                                "attachable": 1,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "number",
                                                                "defaultValue": "0"
                                                            },
                                                            "mute": {
                                                                "attrOrProp": 1,
                                                                "digest": "mute",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "attachable": 1,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "number"
                                                            },
                                                            "__probingout1": {
                                                                "attrOrProp": 1,
                                                                "digest": "__probingout1",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "signal"
                                                            },
                                                            "polyphony": {
                                                                "attrOrProp": 2,
                                                                "digest": "Polyphony of the subpatcher.",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "number",
                                                                "defaultValue": "-1"
                                                            },
                                                            "exposevoiceparams": {
                                                                "attrOrProp": 2,
                                                                "digest": "Expose per voice versions of the contained parameters (only valid in polyphonic subpatchers).",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "type": "bool",
                                                                "defaultValue": "false"
                                                            },
                                                            "title": {
                                                                "attrOrProp": 2,
                                                                "digest": "Title of the subpatcher",
                                                                "defaultarg": 1,
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
                                                                "digest": "rnbo file to load",
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
                                                            "voicecontrol": {
                                                                "attrOrProp": 2,
                                                                "digest": "Chooses the way that polyphonic voices are controlled. 'simple' (or 'midi') will automatically allocate voices for \tincoming MIDI notes. Setting it to 'user' (or 'none') will switch off MIDI \tvoice allocation and start with all voices unmuted.",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "enum": [ "simple", "user" ],
                                                                "type": "enum",
                                                                "defaultValue": "simple"
                                                            },
                                                            "notecontroller": {
                                                                "attrOrProp": 2,
                                                                "digest": "DEPRECATED. Use voicecontrol instead.",
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
                                                            "receivemode": {
                                                                "attrOrProp": 2,
                                                                "digest": "Do receive~ objects get the signal from a send~ inside the patcher directly (without latency), or compensated (with latency, aligned with all other voices).",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "enum": [ "local", "compensated" ],
                                                                "type": "enum",
                                                                "defaultValue": "local"
                                                            },
                                                            "args": {
                                                                "attrOrProp": 2,
                                                                "digest": "Replacement args for the subpatcher, everything named #1, #2 etc. will be replaced with the according argument.",
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
                                                            "uidstyle": {
                                                                "attrOrProp": 2,
                                                                "digest": "Behavior of #0 unique ID. auto (default) means abstractions get a local UID, local: start a new local UID, parent: use the one from the parent patcher",
                                                                "isalias": 0,
                                                                "aliases": [],
                                                                "settable": 1,
                                                                "attachable": 0,
                                                                "isparam": 0,
                                                                "deprecated": 0,
                                                                "touched": 0,
                                                                "enum": [ "auto", "local", "parent", "global" ],
                                                                "type": "enum",
                                                                "defaultValue": "auto"
                                                            }
                                                        },
                                                        "inputs": [
                                                            {
                                                                "name": "in1",
                                                                "type": [ "bang", "number", "list" ],
                                                                "digest": "in1",
                                                                "displayName": "Cutoff or Center",
                                                                "hot": 1,
                                                                "docked": 0
                                                            },
                                                            {
                                                                "name": "in2",
                                                                "type": [ "bang", "number", "list" ],
                                                                "digest": "in2",
                                                                "displayName": "Gain",
                                                                "hot": 1,
                                                                "docked": 0
                                                            },
                                                            {
                                                                "name": "in3",
                                                                "type": [ "bang", "number", "list" ],
                                                                "digest": "in3",
                                                                "displayName": "Q or S",
                                                                "hot": 1,
                                                                "docked": 0
                                                            }
                                                        ],
                                                        "outputs": [
                                                            {
                                                                "name": "out1",
                                                                "type": [ "bang", "number", "list" ],
                                                                "digest": "out1",
                                                                "displayName": "(list) 5 coefficients",
                                                                "docked": 0
                                                            },
                                                            {
                                                                "name": "out2",
                                                                "type": [ "bang", "number", "list" ],
                                                                "digest": "out2",
                                                                "displayName": "a0 (FF0)",
                                                                "docked": 0
                                                            },
                                                            {
                                                                "name": "out3",
                                                                "type": [ "bang", "number", "list" ],
                                                                "digest": "out3",
                                                                "displayName": "a1 (FF1)",
                                                                "docked": 0
                                                            },
                                                            {
                                                                "name": "out4",
                                                                "type": [ "bang", "number", "list" ],
                                                                "digest": "out4",
                                                                "displayName": "a2 (FF2)",
                                                                "docked": 0
                                                            },
                                                            {
                                                                "name": "out5",
                                                                "type": [ "bang", "number", "list" ],
                                                                "digest": "out5",
                                                                "displayName": "b1 (FB1)",
                                                                "docked": 0
                                                            },
                                                            {
                                                                "name": "out6",
                                                                "type": [ "bang", "number", "list" ],
                                                                "digest": "out6",
                                                                "displayName": "b2 (FB2)",
                                                                "docked": 0
                                                            }
                                                        ],
                                                        "helpname": "patcher",
                                                        "aliasOf": "rnbo",
                                                        "classname": "p",
                                                        "operator": 0,
                                                        "versionId": 426236520,
                                                        "changesPatcherIO": 0
                                                    },
                                                    "text": "p @file evi.biquadcoeff",
                                                    "varname": "evi_coeff"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 3,
                                                    "id": "obj-7",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 133.0, 251.0, 159.0, 25.0 ],
                                                    "text": "evi.biquadcoeff.rnbopat",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 136.0, 483.0, 156.0, 21.0 ],
                                                    "text": "list",
                                                    "textjustification": 2
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
                                                    "destination": [ "obj-2", 1 ],
                                                    "source": [ "obj-13", 0 ]
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
                                                    "destination": [ "obj-3", 5 ],
                                                    "source": [ "obj-2", 5 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 4 ],
                                                    "source": [ "obj-2", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 3 ],
                                                    "source": [ "obj-2", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 2 ],
                                                    "source": [ "obj-2", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 1 ],
                                                    "source": [ "obj-2", 1 ]
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
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 2 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 233.0, 263.0, 290.0, 23.0 ],
                                    "rnboattrcache": {
                                        "evi_coeff/biquad_calculator/filter": {
                                            "label": "filter",
                                            "isEnum": 0,
                                            "parsestring": ""
                                        },
                                        "evi_coeff/filter": {
                                            "label": "filter",
                                            "isEnum": 1,
                                            "parsestring": "\"bypass\" \"lowpass\" \"highpass\" \"bandpass\" \"bandstop\" \"peaknotch\" \"lowshelf\" \"lowshelfcookbook\" \"highshelf\" \"highshelfcookbook\" \"resonant\" \"bp\" \"allpass\" \"gainlpass\" \"gainhpass\" \"gainbpass\" \"gainbstop\" \"gainresonant\" \"gainbp\" \"gainapass\" \"lowpassanalog1\" \"lowpassanalog2\" \"highpassanalog\" \"bandpassanalog\" \"gainbpassanalog\" \"notchanalog\" \"peaknotchanalog1\" \"peaknotchanalog2\" \"lowshelfanalog1\" \"lowshelfanalog2\" \"highshelfanalog1\" \"highshelfanalog2\" \"resonantanalog\" \"butterlowpass\" \"butterhighpass\" \"butterbandpass\" \"butterbandreject\" \"buttergainlpass\" \"buttergainhpass\" \"buttergainbpass\" \"buttergainbreject\""
                                        },
                                        "evi_coeff/cutoffunits": {
                                            "label": "cutoffunits",
                                            "isEnum": 1,
                                            "parsestring": "\"Hz\" \"Pitch\""
                                        },
                                        "evi_coeff/gainunits": {
                                            "label": "gainunits",
                                            "isEnum": 1,
                                            "parsestring": "\"Linear\" \"dB\""
                                        },
                                        "evi_coeff/biquad_calculator/cutoffunits": {
                                            "label": "cutoffunits",
                                            "isEnum": 1,
                                            "parsestring": "\"Hz\" \"Pitch\""
                                        },
                                        "evi_coeff/biquad_calculator/gainunits": {
                                            "label": "gainunits",
                                            "isEnum": 1,
                                            "parsestring": "\"Linear\" \"dB\""
                                        }
                                    },
                                    "rnboversion": "1.4.6-beta.1",
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_invisible": 1,
                                            "parameter_longname": "evieveObjectRnbo",
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "evieveObjectRnbo",
                                            "parameter_type": 3
                                        }
                                    },
                                    "saved_object_attributes": {
                                        "optimization": "O1",
                                        "parameter_enable": 1,
                                        "uuid": "e55382e3-c800-11f1-82e3-f2763d8d8369"
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
                                            "__sps": {
                                                "evi_coeff": {
                                                    "gainunits": {
                                                        "value": 1.0
                                                    },
                                                    "cutoffunits": {
                                                        "value": 0.0
                                                    },
                                                    "__sps": {
                                                        "biquad_calculator": {
                                                            "gainunits": {
                                                                "value": 1.0
                                                            },
                                                            "cutoffunits": {
                                                                "value": 0.0
                                                            },
                                                            "filter": {
                                                                "value": 13.0
                                                            }
                                                        }
                                                    },
                                                    "filter": {
                                                        "value": 13.0
                                                    }
                                                }
                                            },
                                            "__presetid": "using_evi.biquadcoeff_inside_rnbo~"
                                        },
                                        "snapshotlist": {
                                            "current_snapshot": 0,
                                            "entries": [
                                                {
                                                    "filetype": "C74Snapshot",
                                                    "version": 2,
                                                    "minorversion": 0,
                                                    "name": "using_evi.freezeverb~_inside_rnbo~",
                                                    "origin": "using_evi.biquadcoeff_inside_rnbo~",
                                                    "type": "rnbo",
                                                    "subtype": "",
                                                    "embed": 0,
                                                    "snapshot": {
                                                        "__sps": {
                                                            "evi_coeff": {
                                                                "gainunits": {
                                                                    "value": 1.0
                                                                },
                                                                "cutoffunits": {
                                                                    "value": 0.0
                                                                },
                                                                "__sps": {
                                                                    "biquad_calculator": {
                                                                        "gainunits": {
                                                                            "value": 1.0
                                                                        },
                                                                        "cutoffunits": {
                                                                            "value": 0.0
                                                                        },
                                                                        "filter": {
                                                                            "value": 13.0
                                                                        }
                                                                    }
                                                                },
                                                                "filter": {
                                                                    "value": 13.0
                                                                }
                                                            }
                                                        },
                                                        "__presetid": "using_evi.biquadcoeff_inside_rnbo~"
                                                    },
                                                    "fileref": {
                                                        "name": "using_evi.freezeverb~_inside_rnbo~",
                                                        "filename": "using_evi.freezeverb~_inside_rnbo~_20261021.maxsnap",
                                                        "filepath": "~/Documents/Max 9/Snapshots",
                                                        "filepos": -1,
                                                        "snapshotfileid": "8a3fd1c318c90a796a0df33bb03bcbfe"
                                                    }
                                                }
                                            ]
                                        }
                                    },
                                    "text": "rnbo~ @title using_evi.biquadcoeff_inside_rnbo~",
                                    "varname": "evieveObjectRnbo"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 138.0, 208.0, 82.0, 23.0 ],
                                    "text": "loadmess 13"
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
                                    "patching_rect": [ 107.0, 255.0, 124.0, 40.0 ],
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
                                    "patching_rect": [ 222.0, 582.0, 45.0, 45.0 ],
                                    "varname": "rnbo_dac"
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
                                    "patching_rect": [ 269.0, 592.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            },
                            {
                                "box": {
                                    "attr": "evi_coeff/filter",
                                    "id": "obj-12",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 233.0, 208.0, 290.0, 23.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 2 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 1 ],
                                    "order": 0,
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 1,
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 1 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "order": 0,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "order": 1,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 424.99999999999994, 336.0, 53.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p rnbo~",
                    "varname": "rnbo_tab"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
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
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-22",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 328.0, 531.0, 20.0, 20.0 ],
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
                                    "id": "obj-26",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 348.0, 518.0, 45.0, 45.0 ],
                                    "varname": "basic_dac"
                                }
                            },
                            {
                                "box": {
                                    "attr": "logfreq",
                                    "id": "obj-21",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 590.0, 435.0, 159.0, 23.0 ],
                                    "text_width": 52.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 33.0, 380.0, 47.0, 23.0 ],
                                    "text": "noise~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 501.0, 490.0, 200.0, 100.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 101.0, 490.0, 200.0, 100.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-16",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 396.0, 327.0, 99.0, 25.0 ],
                                    "text": "the same",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 382.0, 327.0, 99.0, 25.0 ],
                                    "text": "the same",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "attr": "edit_analog",
                                    "id": "obj-10",
                                    "ignoreclick": 1,
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 213.0, 235.0, 99.0, 23.0 ],
                                    "text_width": 77.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 101.0, 435.0, 72.0, 23.0 ],
                                    "text": "biquad~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 501.0, 435.0, 72.0, 23.0 ],
                                    "text": "biquad~"
                                }
                            },
                            {
                                "box": {
                                    "attr": "edit_mode",
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-12",
                                    "ignoreclick": 1,
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "orientation": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 112.0, 212.0, 98.0, 46.0 ],
                                    "text_width": 83.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 6,
                                    "outlettype": [ "", "float", "float", "float", "float", "float" ],
                                    "patching_rect": [ 512.0, 328.0, 206.0, 23.0 ],
                                    "text": "evi.biquadcoeff gainbpassanalog"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 315.0, 235.0, 41.0, 23.0 ],
                                    "text": "dbtoa"
                                }
                            },
                            {
                                "box": {
                                    "edit_analog": 1,
                                    "edit_gainmode": 1,
                                    "edit_mode": 3,
                                    "fontface": 0,
                                    "frozen_box_attributes": [ "edit_analog", "edit_gainmode", "edit_mode" ],
                                    "id": "obj-3",
                                    "ignoreclick": 1,
                                    "maxclass": "filtergraph~",
                                    "nfilters": 1,
                                    "numinlets": 8,
                                    "numoutlets": 7,
                                    "outlettype": [ "list", "float", "float", "float", "float", "list", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 112.0, 275.0, 256.0, 128.0 ],
                                    "setfilter": [ 0, 3, 1, 1, 0, 2000.0, 3.981071710586548, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
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
                                    "patching_rect": [ 621.0, 123.0, 20.0, 20.0 ],
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
                                    "id": "obj-29",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 699.0, 160.0, 50.0, 21.0 ],
                                    "text": "Q",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 606.0, 160.0, 50.0, 21.0 ],
                                    "text": "dB",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 512.0, 160.0, 50.0, 21.0 ],
                                    "text": "Hz",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-25",
                                    "maxclass": "flonum",
                                    "maximum": 10000.0,
                                    "minimum": 0.1,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 699.0, 183.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 1.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[6]",
                                            "parameter_mmax": 10000.0,
                                            "parameter_mmin": 0.1,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-24",
                                    "maxclass": "flonum",
                                    "maximum": 24.0,
                                    "minimum": -24.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 606.0, 183.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 12.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[7]",
                                            "parameter_mmax": 24.0,
                                            "parameter_mmin": -24.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number[1]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number[1]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-23",
                                    "maxclass": "flonum",
                                    "maximum": 18000.0,
                                    "minimum": 10.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 512.0, 183.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 2000.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[8]",
                                            "parameter_mmax": 18000.0,
                                            "parameter_mmin": 10.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number[2]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number[2]"
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
                                    "jsarguments": [ "evi.biquadcoeff", 660 ],
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
                                    "patching_rect": [ 10.0, 70.0, 661.0, 38.0 ],
                                    "text": "evi.biquadcoeff provides all the same filters as filtergraph~ (and more) and can be used as a substitute when the UI is not required.",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 395.0, 528.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 222.5, 266.5, 121.5, 266.5 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "midpoints": [ 42.5, 419.0, 510.5, 419.0 ],
                                    "order": 0,
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "midpoints": [ 42.5, 419.0, 110.5, 419.0 ],
                                    "order": 1,
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "midpoints": [ 599.5, 474.0, 110.5, 474.0 ],
                                    "order": 1,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "midpoints": [ 599.5, 474.0, 510.5, 474.0 ],
                                    "order": 0,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 5 ],
                                    "midpoints": [ 521.5, 213.3203125, 290.7857142857143, 213.3203125 ],
                                    "order": 1,
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "order": 0,
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 615.5, 220.0, 324.5, 220.0 ],
                                    "order": 1,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 1 ],
                                    "order": 0,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 7 ],
                                    "midpoints": [ 708.5, 261.875, 358.5, 261.875 ],
                                    "order": 1,
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 2 ],
                                    "order": 0,
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 1 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 6 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 1 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 155.33333333333331, 336.0, 77.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p filtergraph",
                    "varname": "filtergraph_tab"
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
                        "embed": 0,
                        "parameter_enable": 0
                    },
                    "text": "v8 evi.helpstarter.js evi.biquadcoeff 2 0 0 1 0 biquad",
                    "textfile": {
                        "filename": "evi.helpstarter.js",
                        "flags": 0,
                        "embed": 0,
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
                            "revision": 1,
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
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
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
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 2,
                                            "revision": 1,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 59.0, 115.0, 193.0, 391.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 50.0, 180.0, 30.0, 22.0 ],
                                                    "text": "t 13"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 50.0, 140.0, 36.0, 22.0 ],
                                                    "text": "sel 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "int", "float", "int", "int" ],
                                                    "patching_rect": [ 50.0, 100.0, 65.0, 22.0 ],
                                                    "text": "dspstate~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-20",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 50.0, 263.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 409.0, 207.0, 19.0, 23.0 ],
                                    "text": "p"
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
                                    "patching_rect": [ 37.0, 257.0, 20.0, 20.0 ],
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
                                    "patching_rect": [ 385.0, 257.0, 20.0, 20.0 ],
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
                                    "id": "obj-1",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 190.0, 490.0, 20.0, 20.0 ],
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
                                    "id": "obj-41",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 409.0, 232.0, 129.0, 21.0 ],
                                    "text": "Filter",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 308.0, 232.0, 50.0, 21.0 ],
                                    "text": "Q",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 198.0, 232.0, 50.0, 21.0 ],
                                    "text": "dB",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 88.0, 232.0, 50.0, 21.0 ],
                                    "text": "Hz",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-25",
                                    "maxclass": "flonum",
                                    "maximum": 10000.0,
                                    "minimum": 0.1,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 308.0, 255.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.707107 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number",
                                            "parameter_mmax": 10000.0,
                                            "parameter_mmin": 0.1,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-24",
                                    "maxclass": "flonum",
                                    "maximum": 24.0,
                                    "minimum": -24.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 198.0, 255.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[1]",
                                            "parameter_mmax": 24.0,
                                            "parameter_mmin": -24.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number[1]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number[1]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-23",
                                    "maxclass": "flonum",
                                    "maximum": 18000.0,
                                    "minimum": 10.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 88.0, 255.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 1000.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[2]",
                                            "parameter_mmax": 18000.0,
                                            "parameter_mmin": 10.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number[2]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number[2]"
                                }
                            },
                            {
                                "box": {
                                    "attr": "logfreq",
                                    "id": "obj-21",
                                    "lock": 1,
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 608.0, 488.0, 156.0, 23.0 ],
                                    "text_width": 57.0
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 540.0, 254.0, 173.0, 25.0 ],
                                    "text": "40 different filter types",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 210.0, 477.0, 45.0, 45.0 ],
                                    "varname": "basic_dac"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-55",
                                    "items": [ "bypass", ",", "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "lowshelfcookbook", ",", "highshelf", ",", "highshelfcookbook", ",", "resonant", ",", "bp", ",", "allpass", ",", "gainlpass", ",", "gainhpass", ",", "gainbpass", ",", "gainbstop", ",", "gainresonant", ",", "gainbp", ",", "gainapass", ",", "lowpassanalog1", ",", "lowpassanalog2", ",", "highpassanalog", ",", "bandpassanalog", ",", "gainbpassanalog", ",", "notchanalog", ",", "peaknotchanalog1", ",", "peaknotchanalog2", ",", "lowshelfanalog1", ",", "lowshelfanalog2", ",", "highshelfanalog1", ",", "highshelfanalog2", ",", "resonantanalog", ",", "butterlowpass", ",", "butterhighpass", ",", "butterbandpass", ",", "butterbandreject", ",", "buttergainlpass", ",", "buttergainhpass", ",", "buttergainbpass", ",", "buttergainbreject" ],
                                    "labelclick": 1,
                                    "maxclass": "umenu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 409.0, 255.0, 129.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "bypass", "lowpass", "highpass", "bandpass", "bandstop", "peaknotch", "lowshelf", "lowshelfcookbook", "highshelf", "highshelfcookbook", "resonant", "bp", "allpass", "gainlpass", "gainhpass", "gainbpass", "gainbstop", "gainresonant", "gainbp", "gainapass", "lowpassanalog1", "lowpassanalog2", "highpassanalog", "bandpassanalog", "gainbpassanalog", "notchanalog", "peaknotchanalog1", "peaknotchanalog2", "lowshelfanalog1", "lowshelfanalog2", "highshelfanalog1", "highshelfanalog2", "resonantanalog", "butterlowpass", "butterhighpass", "butterbandpass", "butterbandreject", "buttergainlpass", "buttergainhpass", "buttergainbpass", "buttergainbreject" ],
                                            "parameter_initial": [ 13.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "umenu",
                                            "parameter_mmax": 40,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "umenu",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "umenu"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 464.0, 543.0, 300.0, 100.0 ],
                                    "range": [ 0.0, 3.981071949005127 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 77.0, 543.0, 300.0, 100.0 ],
                                    "range": [ 0.0, 3.981071949005127 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 10.0, 408.0, 47.0, 23.0 ],
                                    "text": "noise~"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.01,
                                    "bubbleside": 3,
                                    "id": "obj-11",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 308.0, 400.0, 173.0, 40.0 ],
                                    "text": "...or individual coefficients outputs (2..6)",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.01,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 108.0, 407.0, 150.0, 25.0 ],
                                    "text": "use list output (1)...",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 6,
                                    "outlettype": [ "", "float", "float", "float", "float", "float" ],
                                    "patching_rect": [ 464.0, 335.0, 100.0, 23.0 ],
                                    "text": "evi.biquadcoeff",
                                    "varname": "evieveObject[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 464.0, 488.0, 100.0, 23.0 ],
                                    "text": "biquad~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 77.0, 488.0, 72.0, 23.0 ],
                                    "text": "biquad~"
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
                                    "jsarguments": [ "evi.biquadcoeff", "pants:/Users/stkr/Dev/evieve/help/abstractions/evi.biquadcoeff.maxhelp" ],
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
                                    "numoutlets": 6,
                                    "outlettype": [ "", "float", "float", "float", "float", "float" ],
                                    "patching_rect": [ 88.0, 335.0, 100.0, 23.0 ],
                                    "text": "evi.biquadcoeff",
                                    "varname": "evieveObject"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 257.0, 487.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "border": 0,
                                    "filename": "helpargs.js",
                                    "id": "obj-7",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "evi.biquadcoeff" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 190.0, 336.0, 194.61048889160156, 39.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 19.5, 459.5, 86.5, 459.5 ],
                                    "order": 1,
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "midpoints": [ 19.5, 459.5, 473.5, 459.5 ],
                                    "order": 0,
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 617.5, 527.0, 86.5, 527.0 ],
                                    "order": 1,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 617.5, 527.0, 473.5, 527.0 ],
                                    "order": 0,
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "order": 1,
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "order": 0,
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "order": 1,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 1 ],
                                    "order": 0,
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 2 ],
                                    "order": 1,
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 2 ],
                                    "order": 0,
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 473.5, 327.69921875, 97.5, 327.69921875 ],
                                    "order": 1,
                                    "source": [ "obj-55", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "order": 0,
                                    "source": [ "obj-55", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 5 ],
                                    "source": [ "obj-8", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 4 ],
                                    "source": [ "obj-8", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 3 ],
                                    "source": [ "obj-8", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 2 ],
                                    "source": [ "obj-8", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 1 ],
                                    "source": [ "obj-8", 1 ]
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
                    "id": "obj-6",
                    "ignoreclick": 1,
                    "jsarguments": [ "evi.biquadcoeff" ],
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 10.0, 333.5920104980469, 57.599853515625 ],
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
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 1,
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
                                    "patching_rect": [ 414.0, 257.0, 20.0, 20.0 ],
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
                                    "id": "obj-1",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 725.0, 257.0, 20.0, 20.0 ],
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
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 223.0, 333.0, 30.0, 23.0 ],
                                    "text": "t b l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 588.0, 291.0, 84.0, 23.0 ],
                                    "text": "prepend filter"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 588.0, 232.0, 135.0, 21.0 ],
                                    "text": "Filter",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 524.0, 232.0, 50.0, 21.0 ],
                                    "text": "Q",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 462.0, 232.0, 50.0, 21.0 ],
                                    "text": "dB",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 332.0, 232.0, 50.0, 21.0 ],
                                    "text": "Hz",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-25",
                                    "maxclass": "flonum",
                                    "maximum": 10000.0,
                                    "minimum": 0.1,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 524.0, 255.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.707107 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number[3]",
                                            "parameter_mmax": 10000.0,
                                            "parameter_mmin": 0.1,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "number",
                                            "parameter_type": 0
                                        }
                                    },
                                    "varname": "number"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-24",
                                    "maxclass": "flonum",
                                    "maximum": 24.0,
                                    "minimum": -24.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 462.0, 255.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[4]",
                                            "parameter_mmax": 24.0,
                                            "parameter_mmin": -24.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number[1]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number[1]"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-23",
                                    "maxclass": "flonum",
                                    "maximum": 18000.0,
                                    "minimum": 10.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 332.0, 255.0, 50.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 1000.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 1,
                                            "parameter_longname": "number[5]",
                                            "parameter_mmax": 18000.0,
                                            "parameter_mmin": 10.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "number[2]",
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "number[2]"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-55",
                                    "items": [ "bypass", ",", "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "lowshelfcookbook", ",", "highshelf", ",", "highshelfcookbook", ",", "resonant", ",", "bp", ",", "allpass", ",", "gainlpass", ",", "gainhpass", ",", "gainbpass", ",", "gainbstop", ",", "gainresonant", ",", "gainbp", ",", "gainapass", ",", "lowpassanalog1", ",", "lowpassanalog2", ",", "highpassanalog", ",", "bandpassanalog", ",", "gainbpassanalog", ",", "notchanalog", ",", "peaknotchanalog1", ",", "peaknotchanalog2", ",", "lowshelfanalog1", ",", "lowshelfanalog2", ",", "highshelfanalog1", ",", "highshelfanalog2", ",", "resonantanalog", ",", "butterlowpass", ",", "butterhighpass", ",", "butterbandpass", ",", "butterbandreject", ",", "buttergainlpass", ",", "buttergainhpass", ",", "buttergainbpass", ",", "buttergainbreject" ],
                                    "labelclick": 1,
                                    "maxclass": "umenu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 588.0, 255.0, 135.0, 23.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "bypass", "lowpass", "highpass", "bandpass", "bandstop", "peaknotch", "lowshelf", "lowshelfcookbook", "highshelf", "highshelfcookbook", "resonant", "bp", "allpass", "gainlpass", "gainhpass", "gainbpass", "gainbstop", "gainresonant", "gainbp", "gainapass", "lowpassanalog1", "lowpassanalog2", "highpassanalog", "bandpassanalog", "gainbpassanalog", "notchanalog", "peaknotchanalog1", "peaknotchanalog2", "lowshelfanalog1", "lowshelfanalog2", "highshelfanalog1", "highshelfanalog2", "resonantanalog", "butterlowpass", "butterhighpass", "butterbandpass", "butterbandreject", "buttergainlpass", "buttergainhpass", "buttergainbpass", "buttergainbreject" ],
                                            "parameter_initial": [ 26.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "umenu[1]",
                                            "parameter_mmax": 40,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "umenu",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "umenu"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-17",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 29.0, 200.0, 139.0, 54.0 ],
                                    "text": "must pass in real audio samplerate into a gen-no-tilde",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "dontreplace": 1,
                                    "id": "obj-14",
                                    "ignoreclick": 1,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 471.0, 500.0, 72.0, 23.0 ],
                                    "text": "0.926117"
                                }
                            },
                            {
                                "box": {
                                    "dontreplace": 1,
                                    "id": "obj-13",
                                    "ignoreclick": 1,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 396.0, 500.0, 72.0, 23.0 ],
                                    "text": "-1.909639"
                                }
                            },
                            {
                                "box": {
                                    "dontreplace": 1,
                                    "id": "obj-12",
                                    "ignoreclick": 1,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 321.0, 500.0, 72.0, 23.0 ],
                                    "text": "0.926117"
                                }
                            },
                            {
                                "box": {
                                    "dontreplace": 1,
                                    "id": "obj-11",
                                    "ignoreclick": 1,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 245.0, 500.0, 72.0, 23.0 ],
                                    "text": "-1.909639"
                                }
                            },
                            {
                                "box": {
                                    "dontreplace": 1,
                                    "id": "obj-10",
                                    "ignoreclick": 1,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 170.0, 500.0, 72.0, 23.0 ],
                                    "text": "1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "int" ],
                                    "patching_rect": [ 170.0, 215.0, 72.0, 23.0 ],
                                    "text": "adstatus sr"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 223.0, 255.0, 102.0, 23.0 ],
                                    "text": "prepend audiosr"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubblepoint": 0.1,
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 236.0, 421.0, 150.0, 25.0 ],
                                    "text": "Note, [gen] (no tilde)"
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
                                    "jsarguments": [ "evi.biquadcoeff", 660 ],
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
                                    "text": "The evi.biquadcoeff algorithm is also available inside the gen environment",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 5,
                                    "outlettype": [ "float", "float", "float", "float", "float" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 2,
                                            "revision": 1,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "dsp.gen",
                                        "rect": [ 59.0, 119.0, 600.0, 450.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubbleside": 3,
                                                    "id": "obj-17",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 17.0, 106.0, 139.0, 51.0 ],
                                                    "text": "must pass in real audio samplerate into a gen-no-tilde",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-16",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 420.0, 245.0, 139.0, 37.0 ],
                                                    "text": "note slightly different name inside gen",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 158.0, 120.0, 85.0, 22.0 ],
                                                    "text": "param audiosr"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 117.0, 213.0, 69.0, 22.0 ],
                                                    "text": "param filter"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 158.0, 159.0, 151.0, 22.0 ],
                                                    "text": "setparam audiosamplerate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 117.0, 252.0, 85.0, 22.0 ],
                                                    "text": "setparam filter"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 325.0, 69.0, 28.0, 22.0 ],
                                                    "text": "in 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 399.0, 388.0, 35.0, 22.0 ],
                                                    "text": "out 5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 362.0, 388.0, 35.0, 22.0 ],
                                                    "text": "out 4"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 325.0, 388.0, 35.0, 22.0 ],
                                                    "text": "out 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 288.0, 388.0, 35.0, 22.0 ],
                                                    "text": "out 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 5,
                                                    "outlettype": [ "", "", "", "", "" ],
                                                    "patching_rect": [ 251.0, 252.0, 167.0, 22.0 ],
                                                    "text": "evi_biquadcoeff_notilde"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 251.0, 69.0, 28.0, 22.0 ],
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
                                                    "patching_rect": [ 399.0, 69.0, 28.0, 22.0 ],
                                                    "text": "in 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 251.0, 388.0, 35.0, 22.0 ],
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
                                                    "destination": [ "obj-5", 1 ],
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
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 2 ],
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
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-5", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-5", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-5", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-5", 4 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 223.0, 396.0, 320.0, 23.0 ],
                                    "text": "gen @title using_evi.biquadcoeff_inside_gen @hot 1",
                                    "varname": "evieveObjectGen"
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
                                    "patching_rect": [ 97.0, 388.0, 124.0, 40.0 ],
                                    "text": "Double-Click to see the example",
                                    "textjustification": 1,
                                    "varname": "comment_gen"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-16", 1 ]
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
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 2 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 1 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 1 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 1 ],
                                    "source": [ "obj-5", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 1 ],
                                    "source": [ "obj-5", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 1 ],
                                    "source": [ "obj-5", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-8", 1 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 303.66666666666663, 336.0, 50.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p gen",
                    "varname": "gen_tab"
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
                            "revision": 1,
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
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpname.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "evieve: biquad", 660 ],
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
                                    "text": "There are other biquad objects in evieve. Here is an overview.",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 1,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-6",
                                    "lockeddragscroll": 2,
                                    "lockedsize": 1,
                                    "maxclass": "bpatcher",
                                    "name": "areas_help_biquad.maxhelp",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 10.0, 94.0, 660.0, 568.0 ],
                                    "varname": "evieveObjectAreas",
                                    "viewvisibility": 1
                                }
                            }
                        ],
                        "lines": [],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 543.0, 336.0, 109.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p \"evieve biquad\"",
                    "varname": "areas_tab"
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
            "obj-15::obj-23": [ "number[11]", "number[2]", 0 ],
            "obj-15::obj-24": [ "number[10]", "number[1]", 0 ],
            "obj-15::obj-25": [ "number[9]", "number", 0 ],
            "obj-15::obj-26": [ "live.gain~[4]", "live.gain~", 0 ],
            "obj-15::obj-5": [ "evieveObjectRnbo", "evieveObjectRnbo", 0 ],
            "obj-2::obj-23": [ "number[2]", "number[2]", 0 ],
            "obj-2::obj-24": [ "number[1]", "number[1]", 0 ],
            "obj-2::obj-25": [ "number", "number", 0 ],
            "obj-2::obj-55": [ "umenu", "umenu", 0 ],
            "obj-5::obj-23": [ "number[8]", "number[2]", 0 ],
            "obj-5::obj-24": [ "number[7]", "number[1]", 0 ],
            "obj-5::obj-25": [ "number[6]", "number", 0 ],
            "obj-9::obj-23": [ "number[5]", "number[2]", 0 ],
            "obj-9::obj-24": [ "number[4]", "number[1]", 0 ],
            "obj-9::obj-25": [ "number[3]", "number", 0 ],
            "obj-9::obj-55": [ "umenu[1]", "umenu", 0 ],
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