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
        "rect": [ 93.0, 118.0, 1319.0, 788.0 ],
        "bglocked": 1,
        "gridonopen": 2,
        "tallnewobj": 1,
        "subpatcher_template": "sub",
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 978.0, 142.0, 162.0, 20.0 ],
                    "text": "---->> is the same as ---->>",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 707.0, 142.0, 162.0, 20.0 ],
                    "text": "---->> is the same as ---->>",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 456.0, 142.0, 162.0, 20.0 ],
                    "text": "---->> is the same as ---->>",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 0,
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1124.0, 173.0, 140.0, 39.0 ],
                    "text": "patched inside a rnbo~",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "hint": "Double-Click to See Inside...",
                    "id": "obj-34",
                    "inletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "in1",
                                "comment": ""
                            },
                            {
                                "type": "event",
                                "index": 2,
                                "tag": "in2",
                                "comment": ""
                            },
                            {
                                "type": "event",
                                "index": 3,
                                "tag": "in3",
                                "comment": ""
                            },
                            {
                                "type": "event",
                                "index": 4,
                                "tag": "in4",
                                "comment": ""
                            }
                        ]
                    },
                    "maxclass": "newobj",
                    "numinlets": 4,
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
                        "rect": [ 94.0, 149.0, 597.0, 479.0 ],
                        "default_fontname": "Lato",
                        "integercoordinates": 1,
                        "title": "gen~",
                        "boxes": [
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
                                            "rect": [ 489.0, 100.0, 989.0, 848.0 ],
                                            "gridonopen": 2,
                                            "subpatcher_template": "sub",
                                            "integercoordinates": 1,
                                            "boxes": [
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "out 2 Reset (Param has changed)",
                                                        "patching_rect": [ 756.0, 807.0, 189.0, 22.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-7",
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 2 (signal/float) Shape (linear gain 1..100) @default 1 @min 1 @max 100",
                                                        "patching_rect": [ 539.0, 19.0, 406.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-5",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 1 (signal) Input Signal",
                                                        "patching_rect": [ 49.0, 19.0, 137.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-1",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "codebox",
                                                        "patching_rect": [ 49.0, 58.0, 896.0, 732.0 ],
                                                        "fontface": 0,
                                                        "numoutlets": 2,
                                                        "id": "obj-3",
                                                        "outlettype": [ "", "" ],
                                                        "fontsize": 12.0,
                                                        "fontname": "<Monospaced>",
                                                        "numinlets": 2,
                                                        "code": "\r\n// this is an anti-aliased atan(x) (with gain compensation wrapper)\r\n// for saturating your audio, not for Maths.\r\n\r\natanApprox(x)\n{\r\n\tINVPI = 0.3183098861837907;\n\to = 8 * x;\n\tq = (o + o) * INVPI;\n\ts = 25 + (q * q);\n\tu = 3 + sqrt(s);\n\treturn o / u;\n}\r\n\r\neviLog1p(value)   // :-(\n{\n\tif (value > -1.0e-8 && value < 1.0e-8)\n\t\treturn value - (value * value) * 0.5;\n\n\treturn log(1 + value);\n}\r\n\r\nlog2Approx(x) // sorry\n{\n  return (-0.2119568027628040757e-1 + (-0.38815224340108325886 + (-0.8900051141728954376 + (0.4001641794691007527\n      + (0.79615191430677253059 + 0.10303694407435362078*x)*x)*x)*x)*x) /\n        (0.298115002929551095e-2 + (0.1066700361116609290 + (0.6070463053447878628 + (0.8584931203106122717\n          + (0.30170842595823793523 + 0.16863931436090069014e-1*x)*x)*x)*x)*x);\n}\n\nlogApprox(x)\n{\n  return LN2 * log2Approx(x);\n}\r\n\nlog1pApprox(x)\n{\n  if (x > -1.0e-8 && x < 1.0e-8)\n    return x - (x * x) * 0.5;\n\n  return logApprox(1 + x);\n}\r\n\r\nhermite_sixpoint_interp(f0, ym2, ym1, y0, y1, y2, y3)\n{\n\tf1    =  f0 - 0.5;\n\teven1 = ym2 + y3;\n\todd1  = ym2 - y3;\n\teven2 = ym1 + y2;\n\todd2  = ym1 - y2;\n\teven3 =  y0 + y1;\n\todd3  =  y0 - y1;\n\n\tc0  = 0.01171875*even1\t\t- 0.09765625*even2\t\t+ 0.5859375*even3;\n\tc1  = 0.2109375*odd2\t\t- 1.463541666667*odd3\t- 0.033854166667*odd1;\n\tc2  = 0.40625*even2\t\t\t- 0.354166666667*even3\t- 0.052083333333*even1;\n\tc3  = 0.1875*odd1\t\t\t- 1.104166666667*odd2\t+ 2.375*odd3;\n\tc4  = 0.020833333333*even1\t- 0.0625*even2\t\t\t+ 0.041666666667*even3;\n\tc5  = 1.041666666667*odd2\t- 2.083333333333*odd3\t- 0.208333333333*odd1;\n\n\treturn ((((c5*f1 + c4)*f1 + c3)*f1 + c2)*f1 + c1)*f1 + c0;\n}\r\n\r\n//\r\n\r\natanF00(x)\n{\t\t// 2/PI\n\treturn 0.636619772367581 * atanApprox(x);\n}\n\r\natanF0(x)\n{\n\treturn 0.636619772367581 * atan(x);\n}\n\r\natanF10(x)\n{\r\n\treturn 0.636619772367581 * (x * atanApprox(x) - log1pApprox(x * x) * 0.5);\n}\n\natanF1(x)\n{\r\n\treturn 0.636619772367581 * (x * atan(x) - eviLog1p(x * x) * 0.5);\n}\n\natanF2(x)\n{\n//\tx2 = x * x; <<-- NO !!\t\t\t\t\t\t\t  // /PI\n\treturn (x - x * eviLog1p(x*x) + (x*x - 1) * atan(x)) * 0.3183098861837907;\n}\n\r\natanAdaa1(x0, reset)\n{\n\tHistory x1(0), s1(0);\r\n\teps = 0.00000001;\t// TODO, precision\n\tif (reset) {\r\n\t\tx1 = 0; s1 = 0;\r\n\t}\n\n\ty1 = x0;\n\td0 = x0 - x1;\n\ts0 = atanF10(x0);\t// func1, !! might need to revert to \"...F1\" here !!\n\tif ((x1 == 0 && s1 == 0) || (abs(d0) < eps)) {\t// ill condition\n\t\ty1 = atanF00(0.5 * (x0 + x1));\t// func0\n\t} else {\n\t\ty1 = (s0 - s1) / d0;\n\t}\n\n\ts1 = s0;\n\tx1 = x0;\n\treturn y1;\n}\n\natanAdaa2(x0, reset)\n{\n\tHistory x1(0), x2(0), s1(0);\n\teps = 0.000000001;\t// TODO, this precision is exactly correct ?\n\tif (reset) {\r\n\t\tx1 = 0; x2 = 0; s1 = 0;\r\n\t}\n\n\ts0 = x0;\n\td0 = x0 - x1;\n\tf2_x1 = atanF2(x1);\t// func2\n\tif (abs(d0) < eps) {\t// ill condition\n\t\ts0 = atanF1(0.5 * (x0 + x1));\t// func1\n\t} else {\n\t\ts0 = (atanF2(x0) - f2_x1) / d0;\t// func2\n\t}\n\n\ty1 = x0;\n\td1 = x0 - x2;\n\tif (x1 == 0 && x2 == 0) {\t// ill condition\n\t\ty1 = atanF0(x0 + (x1 + x1) + x2) * 0.25; // func0\n\t} else if (abs(d1) < eps) {\t// ill condition\n\t\tx_bar = 0.5 * (x0 + x2);\n\t\tx_delta = x_bar - x1;\n\t\tif (x_delta < eps) {\t// ill condition\n\t\t\ty1 = atanF0((x_bar + x1) * 0.5);  // func0\n\t\t} else {\n\t\t\ty1 = (2 / x_delta) * (atanF1(x_bar) + (f2_x1 - atanF2(x_bar)) / x_delta);\t// func1, func2\n\t\t}\n\t} else {\n\t\ts0s1 = s0 - s1;\n\t\ty1 = (s0s1 + s0s1) / d1;\n\t}\n\n\ts1 = s0;\n\tx2 = x1;\n\tx1 = x0;\n\treturn y1;\n}\n\n// altTanhAdaa1 oversampling...\n\n// fixed 2x quasi oversampling (hermite6)\natanAdaa1_2x_6POINT(XIN, reset)\n{\t// up 2\n\tHistory umTm2_0(0), umTm1_0(0), umT0_0(0), umT1_0(0), umT2_0(0);\n\t// down 2\n\tHistory dmT3_1(0), dmT2_1(0), dmT1_1(0), dmT0_1(0), dmTm1_1(0);\n\t// align\n\tHistory doX0(0);\n\n\t// up 2x\n\tx0_0_a  = XIN + 0;\n\tx1_0  = hermite_sixpoint_interp(0.5,  umTm2_0, umTm1_0, umT0_0, umT1_0, umT2_0, x0_0_a);\n\tx2_0  = umT2_0 + 0;\n\n\t// process 2x\n\ty1_0  = atanAdaa1(x1_0, reset);\n\ty2_0  = atanAdaa1(x2_0, reset);\n\n\t// down 2x\n\ty2_0_a  = y2_0 + 0;\n\ty2_1  = hermite_sixpoint_interp(0.5,  y2_0_a, dmTm1_1, dmT0_1, dmT1_1, dmT2_1, dmT3_1);\n\n\ty0_0  = (doX0 + y2_1) * 0.5;\n\n\t// update\n\tumTm2_0 = umTm1_0;\n\tumTm1_0 = umT0_0;\n\tumT0_0  = umT1_0;\n\tumT1_0  = umT2_0;\n\tumT2_0  = x0_0_a;\r\n\r\n\tdoX0  = y1_0;\n\n\tdmT3_1  = dmT2_1;\n\tdmT2_1  = dmT1_1;\n\tdmT1_1  = dmT0_1;\n\tdmT0_1  = dmTm1_1;\n\tdmTm1_1 = y2_0;\n\n\treturn dcblock(y0_0);\n}\n\n// fixed 4x quasi oversampling (hermite6)\natanAdaa1_4x_6POINT(XIN, reset)\n{\t// up 2\n\tHistory umTm2_0(0), umTm1_0(0), umT0_0(0), umT1_0(0), umT2_0(0);\n\t// down 2\n\tHistory dmT3_1(0), dmT2_1(0), dmT1_1(0), dmT0_1(0), dmTm1_1(0);\n\t// align\n\tHistory doX0(0);\n\n\t// up 2x\n\tx0_0_a  = XIN + 0;\n\tx1_0  = hermite_sixpoint_interp(0.5,  umTm2_0, umTm1_0, umT0_0, umT1_0, umT2_0, x0_0_a);\n\tx2_0  = umT2_0 + 0;\n\n\t// process 2x\n\ty1_0  = atanAdaa1_2x_6POINT(x1_0, reset);\n\ty2_0  = atanAdaa1_2x_6POINT(x2_0, reset);\n\n\t// down 2x\n\ty2_0_a  = y2_0 + 0;\n\ty2_1  = hermite_sixpoint_interp(0.5,  y2_0_a, dmTm1_1, dmT0_1, dmT1_1, dmT2_1, dmT3_1);\n\n\ty0_0  = (doX0 + y2_1) * 0.5;\n\n\t// update\n\tumTm2_0 = umTm1_0;\n\tumTm1_0 = umT0_0;\n\tumT0_0  = umT1_0;\n\tumT1_0  = umT2_0;\n\tumT2_0  = x0_0_a;\r\n\r\n\tdoX0  = y1_0;\n\n\tdmT3_1  = dmT2_1;\n\tdmT2_1  = dmT1_1;\n\tdmT1_1  = dmT0_1;\n\tdmT0_1  = dmTm1_1;\n\tdmTm1_1 = y2_0;\n\n\treturn dcblock(y0_0);\n}\n\n// altTanhAdaa2 oversampling...\n\n// fixed 2x quasi oversampling (hermite6)\natanAdaa2_2x_6POINT(XIN, reset)\n{\t// up 2\n\tHistory umTm2_0(0), umTm1_0(0), umT0_0(0), umT1_0(0), umT2_0(0);\n\t// down 2\n\tHistory dmT3_1(0), dmT2_1(0), dmT1_1(0), dmT0_1(0), dmTm1_1(0);\n\t// align\n\tHistory doX0(0);\n\n\t// up 2x\n\tx0_0_a  = XIN + 0;\n\tx1_0  = hermite_sixpoint_interp(0.5,  umTm2_0, umTm1_0, umT0_0, umT1_0, umT2_0, x0_0_a);\n\tx2_0  = umT2_0 + 0;\n\n\t// process 2x\n\ty1_0  = atanAdaa2(x1_0, reset);\n\ty2_0  = atanAdaa2(x2_0, reset);\n\n\t// down 2x\n\ty2_0_a  = y2_0 + 0;\n\ty2_1  = hermite_sixpoint_interp(0.5,  y2_0_a, dmTm1_1, dmT0_1, dmT1_1, dmT2_1, dmT3_1);\n\n\ty0_0  = (doX0 + y2_1) * 0.5;\n\n\t// update\n\tumTm2_0 = umTm1_0;\n\tumTm1_0 = umT0_0;\n\tumT0_0  = umT1_0;\n\tumT1_0  = umT2_0;\n\tumT2_0  = x0_0_a;\r\n\r\n\tdoX0  = y1_0;\n\n\tdmT3_1  = dmT2_1;\n\tdmT2_1  = dmT1_1;\n\tdmT1_1  = dmT0_1;\n\tdmT0_1  = dmTm1_1;\n\tdmTm1_1 = y2_0;\n\n\treturn dcblock(y0_0);\n}\n\n// fixed 4x quasi oversampling (hermite6)\natanAdaa2_4x_6POINT(XIN, reset)\n{\t// up 2\n\tHistory umTm2_0(0), umTm1_0(0), umT0_0(0), umT1_0(0), umT2_0(0);\n\t// down 2\n\tHistory dmT3_1(0), dmT2_1(0), dmT1_1(0), dmT0_1(0), dmTm1_1(0);\n\t// align\n\tHistory doX0(0);\n\n\t// up 2x\n\tx0_0_a  = XIN + 0;\n\tx1_0  = hermite_sixpoint_interp(0.5,  umTm2_0, umTm1_0, umT0_0, umT1_0, umT2_0, x0_0_a);\n\tx2_0  = umT2_0 + 0;\n\n\t// process 2x\n\ty1_0  = atanAdaa2_2x_6POINT(x1_0, reset);\n\ty2_0  = atanAdaa2_2x_6POINT(x2_0, reset);\n\n\t// down 2x\n\ty2_0_a  = y2_0 + 0;\n\ty2_1  = hermite_sixpoint_interp(0.5,  y2_0_a, dmTm1_1, dmT0_1, dmT1_1, dmT2_1, dmT3_1);\n\n\ty0_0  = (doX0 + y2_1) * 0.5;\n\n\t// update\n\tumTm2_0 = umTm1_0;\n\tumTm1_0 = umT0_0;\n\tumT0_0  = umT1_0;\n\tumT1_0  = umT2_0;\n\tumT2_0  = x0_0_a;\r\n\r\n\tdoX0  = y1_0;\n\n\tdmT3_1  = dmT2_1;\n\tdmT2_1  = dmT1_1;\n\tdmT1_1  = dmT0_1;\n\tdmT0_1  = dmTm1_1;\n\tdmTm1_1 = y2_0;\n\n\treturn dcblock(y0_0);\n}\n\r\n//\r\n\r\n// This gain compensation wrapper around the atan() function makes a great non-linear\r\n// shaper. Many thanks to Volker Böhm. With no anti-aliasing it sounds like crap, but here\r\n// the atan(x)s in the functions above are anti-aliased and much nicer.\r\natanDrive(drive)\r\n{\n\tpre = maximum(drive, 1);\n\tpost = maximum((1 / atanApprox(drive)), 0.1);\t// approx for control rate\n\treturn pre, post;\r\n}\n\r\n// works for waveshapers too :-)\ndecorelate(x)\n{\n\tHistory\tz1(0);\n\ty = 1.371308261611209 * x + z1;\n\tz1 = 0.08785458027104826 * x - 0.45916284188226 * y;\n\treturn y;\n}\r\n\r\n//\r\n\r\nHistory\treset(1);\r\n\r\n//Param\tshape(1, min=1, max=100);\t\t\t// linear gain, 0..40 dB\r\n//Param\tsmoothshape(22.666, min=0, max=333);// ms\r\nParam\thfcompensate(1, min=0, max=1);\t\t// default on\r\nParam\taa(3, min=0, max=5);\t\t\t\t// default Adaa2\r\nadaaxx\t= int(aa);\r\nhfcomp\t= int(hfcompensate);\r\n//smooth\t= smoothshape * 0.001;\t\t\t// secs\r\n\r\nresetaa\t= delta(change(adaaxx)) < 0;\r\nresethf\t= delta(change(hfcomp)) < 0;\r\nreset\t= resetaa + resethf;\r\n\r\ningain, outgain = atanDrive(in2);\r\nataninput = in1 * ingain;\r\natanoutput\t= 0;\r\nif (adaaxx == 1) {\r\n\tatanoutput = atanAdaa1_2x_6POINT(ataninput, reset);\r\n} else if (adaaxx == 2) {\r\n\tatanoutput = atanAdaa1_4x_6POINT(ataninput, reset);\r\n} else if (adaaxx == 3) {\t// default\r\n\tatanoutput = atanAdaa2(ataninput, reset);\r\n} else if (adaaxx == 4) {\r\n\tatanoutput = atanAdaa2_2x_6POINT(ataninput, reset);\r\n} else if (adaaxx == 5) {\r\n\tatanoutput = atanAdaa2_4x_6POINT(ataninput, reset);\r\n} else {\t\t\t\t\t// (adaaxx == 0)\r\n\tatanoutput = atanAdaa1(ataninput, reset);\r\n}\r\n\r\nif (hfcomp) {\r\n\tatanoutput = decorelate(atanoutput);\r\n}\r\n\r\nout1\t= atanoutput * outgain * HALFPI;\r\nout2\t= reset;\r\n\r\n"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "out 1 (signal) Atan(x) Output - anti-aliased for your audio not for Maths",
                                                        "patching_rect": [ 49.0, 807.0, 381.0, 22.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-4",
                                                        "numinlets": 1
                                                    }
                                                }
                                            ],
                                            "lines": [
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-5", 0 ],
                                                        "destination": [ "obj-3", 1 ],
                                                        "midpoints": [ 548.5, 49.5, 935.5, 49.5 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-3", 1 ],
                                                        "destination": [ "obj-7", 0 ],
                                                        "midpoints": [ 935.5, 798.5, 765.5, 798.5 ]
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
                                                        "source": [ "obj-1", 0 ],
                                                        "destination": [ "obj-3", 0 ]
                                                    }
                                                }
                                            ]
                                        }
                                    },
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 69.0, 324.0, 178.0, 23.0 ],
                                    "rnbo_classname": "gen~",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "gen~_obj-2",
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
                                            }
                                        ],
                                        "helpname": "gen~",
                                        "aliasOf": "gen~",
                                        "classname": "gen~",
                                        "operator": 0,
                                        "versionId": -1869249064,
                                        "objectversion": 0,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "gen~ @file evi_atanwrap.gendsp"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 359.0, 68.0, 28.0, 23.0 ],
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_obj-8",
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
                                                "digest": "value from inlet with index 4",
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in",
                                        "aliasOf": "in",
                                        "classname": "in",
                                        "operator": 0,
                                        "versionId": 475235762,
                                        "objectversion": 0,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 245.0, 68.0, 28.0, 23.0 ],
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "in_obj-7",
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
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in",
                                        "aliasOf": "in",
                                        "classname": "in",
                                        "operator": 0,
                                        "versionId": 475235762,
                                        "objectversion": 0,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 142.0, 68.0, 28.0, 23.0 ],
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "in_obj-6",
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
                                                "displayName": "",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in",
                                        "aliasOf": "in",
                                        "classname": "in",
                                        "operator": 0,
                                        "versionId": 475235762,
                                        "objectversion": 0,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 46.0, 68.0, 35.0, 23.0 ],
                                    "rnbo_classname": "in~",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in~_obj-5",
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
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 69.0, 397.0, 43.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "out~_obj-4",
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
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 380.0, 164.0, 171.0, 64.0 ],
                                    "text": "there are no 'defines' in [rnbo~] so you will have to patch with gen~ @file names (similar to inside [gen~])",
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
                                                "revision": 0,
                                                "architecture": "x64",
                                                "modernui": 1
                                            },
                                            "classnamespace": "dsp.gen",
                                            "rect": [ 34.0, 100.0, 764.0, 600.0 ],
                                            "gridonopen": 2,
                                            "subpatcher_template": "sub",
                                            "integercoordinates": 1,
                                            "boxes": [
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 4 (signal/float) Q @default 0.707107",
                                                        "linecount": 2,
                                                        "patching_rect": [ 637.0, 13.0, 114.0, 35.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-6",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 3 (signal/float) Gain in dB @min -30 @max 30 @default 0",
                                                        "linecount": 2,
                                                        "patching_rect": [ 436.0, 13.0, 179.0, 35.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-5",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 1 (signal) Input",
                                                        "patching_rect": [ 34.0, 19.0, 101.0, 22.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-1",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "in 2 (signal/float) Cutoff in Hz @min 1 @max samplerate*0.5",
                                                        "linecount": 2,
                                                        "patching_rect": [ 235.0, 13.0, 175.0, 35.0 ],
                                                        "numoutlets": 1,
                                                        "id": "obj-2",
                                                        "outlettype": [ "" ],
                                                        "numinlets": 0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "text": "out 1 (signal) Filter Output",
                                                        "patching_rect": [ 34.0, 553.0, 147.0, 22.0 ],
                                                        "numoutlets": 0,
                                                        "id": "obj-4",
                                                        "numinlets": 1
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "codebox",
                                                        "patching_rect": [ 34.0, 58.0, 622.0, 478.0 ],
                                                        "fontface": 0,
                                                        "numoutlets": 1,
                                                        "id": "obj-3",
                                                        "outlettype": [ "" ],
                                                        "fontsize": 12.0,
                                                        "fontname": "<Monospaced>",
                                                        "numinlets": 4,
                                                        "code": "\r\nrequire(\"evi_svf.genexpr\");\r\n\r\nParam   smooth(0, min=0, max=333);\r\nParam   filter(7, min=0, max=12);\r\nfilt    = int(filter);\r\nreset   = delta(change(filt)) < 0;\r\n\r\n/*\n\tIndex\tFilter\n\n\t0 \t\tBypass\n\t1 \t\tLowpass\n\t2 \t\tHighpass\n\t3 \t\tBandpass\n\t4 \t\tPeak\n\t5 \t\tNotch\n\t6 \t\tResonant\n\t7 \t\tBell            // (default)\n\t8 \t\tBellAdaptiveQ\n\t9 \t\tLowshelf\n\t10 \t\tHighshelf\n\t11 \t\tTilt\n\t12 \t\tAllpass\n*/\n\r\n                            //   hz,  db,  Q\r\nout1    = eviFilterTptReset(in1, in2, in3, in4, filt, reset, smooth=smooth);\r\n\r\n"
                                                    }
                                                }
                                            ],
                                            "lines": [
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-6", 0 ],
                                                        "destination": [ "obj-3", 3 ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [ "obj-5", 0 ],
                                                        "destination": [ "obj-3", 2 ]
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
                                    "hint": "Double-Click to See Inside...",
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 69.0, 184.0, 211.0, 23.0 ],
                                    "rnbo_classname": "gen~",
                                    "rnbo_serial": 2,
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
                                            },
                                            {
                                                "name": "in4",
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
                                        "versionId": -1869249064,
                                        "objectversion": 0,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "gen~ @file evi_filter @exposeparams 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "linecount": 5,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 112.0, 201.0, 282.0, 78.0 ],
                                    "text": "|\n|\n|\n|\nNOTE: \"@file\" not \"@gen\" as in MSP! ...because Max"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-2", 0 ]
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
                                    "destination": [ "obj-1", 1 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 2 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 3 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1142.0, 139.0, 104.0, 26.0 ],
                    "rnboattrcache": {
                        "gen~_obj-1/smooth": {
                            "label": "smooth",
                            "isEnum": 0,
                            "parsestring": "",
                            "type": 0
                        },
                        "gen~_obj-1/filter": {
                            "label": "filter",
                            "isEnum": 0,
                            "parsestring": "",
                            "type": 0
                        }
                    },
                    "rnboversion": "1.5.0-dev.77",
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
                        "uuid": "349229b3-e4c7-11f0-a9b3-8630418aacfd"
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
                            "gen~_obj-1/filter": {
                                "value": 0.0
                            },
                            "gen~_obj-1/smooth": {
                                "value": 0.0
                            },
                            "__presetid": "gen~"
                        },
                        "snapshotlist": {
                            "current_snapshot": 0,
                            "entries": [
                                {
                                    "filetype": "C74Snapshot",
                                    "version": 2,
                                    "minorversion": 0,
                                    "name": "untitled",
                                    "origin": "gen~",
                                    "type": "rnbo",
                                    "subtype": "",
                                    "embed": 0,
                                    "snapshot": {
                                        "gen~_obj-1/filter": {
                                            "value": 0.0
                                        },
                                        "gen~_obj-1/smooth": {
                                            "value": 0.0
                                        },
                                        "__presetid": "gen~"
                                    },
                                    "fileref": {
                                        "name": "untitled",
                                        "filename": "untitled_20251229_1.maxsnap",
                                        "filepath": "~/Documents/Max 9/Snapshots",
                                        "filepos": -1,
                                        "snapshotfileid": "02fa489ec014317c256fc017b96af519"
                                    }
                                }
                            ]
                        }
                    },
                    "text": "rnbo~ @title gen~",
                    "varname": "rnbo~"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 68.0, 434.0, 606.0, 20.0 ],
                    "text": "^^ sometimes the [evi.* something] is a patched abstraction, but usually still has a similar gen~ version..."
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 68.0, 356.0, 606.0, 20.0 ],
                    "text": "^^ sometimes the [evi.* something] is an external, but still has a gen~ version..."
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "id": "obj-30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 68.0, 274.0, 290.0, 24.0 ],
                    "text": "Exceptions..."
                }
            },
            {
                "box": {
                    "hint": "Double-Click to See Inside...",
                    "id": "obj-28",
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
                        "rect": [ 34.0, 100.0, 868.0, 579.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "code": "out1 = in1 + in2;",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-5",
                                    "maxclass": "codebox",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 400.0, 149.0, 340.0, 200.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
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
                                    "patching_rect": [ 305.0, 14.0, 28.0, 22.0 ],
                                    "text": "in 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 176.0, 149.0, 29.5, 22.0 ],
                                    "text": "+"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 176.0, 418.0, 35.0, 22.0 ],
                                    "text": "out 1"
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
                                    "destination": [ "obj-3", 1 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 332.0, 411.0, 85.0, 26.0 ],
                    "text": "gen~ @t gen~"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "", "signal" ],
                    "patching_rect": [ 68.0, 411.0, 58.0, 26.0 ],
                    "text": "evi.adsr~"
                }
            },
            {
                "box": {
                    "hint": "Double-Click to See Inside...",
                    "id": "obj-21",
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
                        "rect": [ 34.0, 100.0, 868.0, 579.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "code": "out1 = in1 + in2;",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-5",
                                    "maxclass": "codebox",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 400.0, 149.0, 340.0, 200.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
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
                                    "patching_rect": [ 305.0, 14.0, 28.0, 22.0 ],
                                    "text": "in 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 176.0, 149.0, 29.5, 22.0 ],
                                    "text": "+"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 176.0, 418.0, 35.0, 22.0 ],
                                    "text": "out 1"
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
                                    "destination": [ "obj-3", 1 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 332.0, 333.0, 85.0, 26.0 ],
                    "text": "gen~ @t gen~"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 68.0, 333.0, 94.0, 26.0 ],
                    "text": "pid.expsmooth~"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.0, 456.0, 51.0, 26.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.0, 424.0, 79.0, 26.0 ],
                    "text": "prepend load"
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "hint": "Click...",
                    "id": "obj-24",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.0, 392.0, 157.0, 26.0 ],
                    "text": "evieveGenExprIndex",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 839.0, 316.0, 170.0, 60.0 ],
                    "text": "Launch the evieve GenExpr Index to learn about every function in the evieve .genexpr files system",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "id": "obj-1",
                    "justification": 1,
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "orientation": 0,
                    "patching_rect": [ 917.0, 219.0, 14.0, 93.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 571.0, 26.0, 188.0, 47.0 ],
                    "text": "You can patch inside a gen~ with the same names as in MSP - just substitute the '.' for a '_'",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 833.0, 20.0, 184.0, 60.0 ],
                    "text": "Creating your own processing chains inside GenExpr is always the most efficient as there is no other wrapping going on",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 293.0, 91.0, 161.0, 33.0 ],
                    "text": "In gen~, the naming is always [evi_*something]",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 18.0, 91.0, 161.0, 33.0 ],
                    "text": "In MSP, the naming is always [evi.*something]",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 132.0, 190.0, 159.0, 20.0 ],
                    "text": "....... is a 'define' for .......",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.01,
                    "bubbleside": 2,
                    "id": "obj-16",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 917.0, 86.0, 210.0, 52.0 ],
                    "text": "this is what the evieve package is all about - anything else is a bonus :-)",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 0,
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 845.0, 173.0, 158.0, 39.0 ],
                    "text": "called from GenExpr code",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 0,
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 593.0, 173.0, 140.0, 39.0 ],
                    "text": "patched inside a gen~",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 0,
                    "id": "obj-13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 307.0, 173.0, 134.0, 39.0 ],
                    "text": "as a gen~ file in MSP",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 0,
                    "id": "obj-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 68.0, 173.0, 62.0, 39.0 ],
                    "text": "in MSP",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 70.0, 33.0, 329.0, 24.0 ],
                    "text": "The basic principle of evieve patching:"
                }
            },
            {
                "box": {
                    "hint": "Double-Click to See Inside...",
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 4,
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
                        "rect": [ 521.0, 100.0, 719.0, 762.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 637.0, 19.0, 28.0, 22.0 ],
                                    "text": "in 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 436.0, 19.0, 28.0, 22.0 ],
                                    "text": "in 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 34.0, 19.0, 28.0, 22.0 ],
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
                                    "patching_rect": [ 235.0, 19.0, 28.0, 22.0 ],
                                    "text": "in 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 34.0, 694.0, 35.0, 22.0 ],
                                    "text": "out 1"
                                }
                            },
                            {
                                "box": {
                                    "code": "\r\nrequire(\"evi_svf.genexpr\"); // <<-- evieve is organised by require() files\r\n\r\nParam   smooth(0, min=0, max=333);\r\nParam   filter(7, min=0, max=11);\r\nfilt    = int(filter);\r\nreset   = delta(change(filt)) < 0;\r\n\r\n/*\n\tIndex\tFilter\n\n\t0 \t\tBypass\n\t1 \t\tLowpass\n\t2 \t\tHighpass\n\t3 \t\tBandpass\r\n    4       Peak\n\t5 \t\tNotch\n\t6 \t\tResonant\n\t7 \t\tBell        (default)\n\t8 \t\tLowshelf\n\t9 \t\tHighshelf\n\t10 \t\tTilt\n\t11 \t\tAllpass\n*/\n\r\n\r\n// this 'eviFilterTptReset()' function is inside the \"evi_svf.genexpr\" file\r\n// declared above\r\n\r\n                             //  hz,  db,  Q\r\nout1    = eviFilterTptReset(in1, in2, in3, in4, filt, reset, smooth=smooth);\r\n\r\n\r\n// notice how this is just the same as [evi.filter~] in MSP\r\n// because we have not done anything else with the code !\r\n\r\n",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-3",
                                    "maxclass": "codebox",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 34.0, 58.0, 622.0, 621.0 ]
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
                                    "destination": [ "obj-3", 1 ],
                                    "source": [ "obj-2", 0 ]
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
                                    "destination": [ "obj-3", 2 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 3 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 871.0, 139.0, 105.0, 26.0 ],
                    "text": "gen~ @t GenExpr"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 129.0, 142.0, 162.0, 20.0 ],
                    "text": "---->> is the same as ---->>",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "hint": "Double-Click to See Inside...",
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 4,
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
                        "rect": [ 34.0, 100.0, 1244.0, 579.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 170.0, 251.0, 85.0, 22.0 ],
                                    "text": "setparam filter"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 259.0, 400.0, 82.0, 22.0 ],
                                    "text": "evi_limiterfast"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 845.0, 387.0, 246.0, 47.0 ],
                                    "text": "...but if you look in the Code sidebar you will see that gen~ unpacks the code contained inside the abstraction version...",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 634.0, 468.0, 35.0, 22.0 ],
                                    "text": "out 2"
                                }
                            },
                            {
                                "box": {
                                    "code": "\r\nfilt = evi_filter(in1, in2, in3, in4);\r\nout1 = evi_limiterfast(filt, in5);\r\n\r\n// ^^ this just calls the exact same abstractions\r\n\r\n",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-8",
                                    "maxclass": "codebox",
                                    "numinlets": 5,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 752.0, 185.0, 431.0, 155.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 767.0, 64.0, 28.0, 22.0 ],
                                    "text": "in 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 553.0, 64.0, 28.0, 22.0 ],
                                    "text": "in 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 334.0, 251.0, 101.0, 22.0 ],
                                    "text": "evi_filter @filter 7"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 69.0, 64.0, 28.0, 22.0 ],
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
                                    "patching_rect": [ 339.0, 64.0, 28.0, 22.0 ],
                                    "text": "in 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 195.0, 468.0, 35.0, 22.0 ],
                                    "text": "out 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "linecount": 5,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 351.0, 267.0, 211.0, 74.0 ],
                                    "text": "|\n|\n|\n|\nunderscores inside gen~, dots in MSP"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 402.0, 251.0, 330.0, 20.0 ],
                                    "text": "------->> is the same as ------->>",
                                    "textjustification": 1
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
                                    "destination": [ "obj-8", 0 ],
                                    "order": 0,
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
                                    "destination": [ "obj-5", 1 ],
                                    "order": 1,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 1 ],
                                    "order": 0,
                                    "source": [ "obj-2", 0 ]
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
                                    "destination": [ "obj-5", 2 ],
                                    "order": 1,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 2 ],
                                    "order": 0,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 3 ],
                                    "order": 1,
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 3 ],
                                    "order": 0,
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 620.0, 139.0, 85.0, 26.0 ],
                    "text": "gen~ @t gen~"
                }
            },
            {
                "box": {
                    "hint": "Double-Click to See Inside...",
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 293.0, 139.0, 161.0, 26.0 ],
                    "text": "gen~ @gen evi_filter.gendsp"
                }
            },
            {
                "box": {
                    "hint": "Double-Click to See Inside...",
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 70.0, 139.0, 57.0, 26.0 ],
                    "text": "evi.filter~"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1242.0, 456.0, 54.0, 26.0 ],
                    "text": "onecopy"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 92.0, 206.0, 266.0, 33.0 ],
                    "text": "|\nthe benefit of MSP is we have auto-completion..."
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "border": 1,
                    "bordercolor": [ 0.9, 0.9, 0.9, 1.0 ],
                    "grad1": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                    "grad2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                    "id": "obj-41",
                    "maxclass": "panel",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 18.0, 19.0, 1277.0, 223.0 ],
                    "proportion": 0.5,
                    "rounded": 4,
                    "saved_attribute_attributes": {
                        "bordercolor": {
                            "expression": "themecolor.jed_defaulttext"
                        }
                    }
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "border": 1,
                    "bordercolor": [ 0.9, 0.9, 0.9, 1.0 ],
                    "grad1": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                    "grad2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                    "id": "obj-42",
                    "maxclass": "panel",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 18.0, 259.0, 715.0, 223.0 ],
                    "proportion": 0.5,
                    "rounded": 4,
                    "saved_attribute_attributes": {
                        "bordercolor": {
                            "expression": "themecolor.jed_defaulttext"
                        }
                    }
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "border": 1,
                    "bordercolor": [ 0.9, 0.9, 0.9, 1.0 ],
                    "grad1": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                    "grad2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                    "id": "obj-43",
                    "maxclass": "panel",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 748.0, 259.0, 548.0, 223.0 ],
                    "proportion": 0.5,
                    "rounded": 4,
                    "saved_attribute_attributes": {
                        "bordercolor": {
                            "expression": "themecolor.jed_defaulttext"
                        }
                    }
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "hidden": 1,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "hidden": 1,
                    "source": [ "obj-25", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-34": [ "rnbo~", "rnbo~", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}