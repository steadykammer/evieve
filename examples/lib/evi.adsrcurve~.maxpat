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
        "rect": [ 135.0, 116.0, 870.0, 750.0 ],
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
                    "patching_rect": [ 49.0, 401.0, 92.0, 87.0 ],
                    "text": "N.B. - uses signals to envs so cannot be used for thispoly~ retriggering"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 49.0, 19.0, 760.0, 60.0 ],
                    "text": "This abstraction tracks an [adsr~] envelope and turns it into an optionally curved envelope with optional additional delay and hold segments. Because it wraps [adsr~] we can use the [adsr~] outputs to perfectly control [thispoly~] etc. Various compromises mean that it cannot do everything [adsr~] can do, bit it is still usable (sadly no @legato, @retrigger, @maxsustain at the moment). See: [evi.adsrramp~] and [evi.adsrpoly~] for alternative solutions. See: [evi.adsr~] for a proper envelope (and one that can be used in gen~)."
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "linecount": 11,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 698.0, 527.0, 152.0, 154.0 ],
                    "text": "sample accurate envelope segment #s for synchronisation processes\n0 = off\n1 = delay\n2 = attack\n3 = hold\n4 = decay\n5 = sustain\n6 = release\n0 = off"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 641.0, 715.0, 113.0, 20.0 ],
                    "text": "segment #s ~",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
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
                        "rect": [ 640.0, 340.0, 359.0, 209.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-64",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
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
                                        "rect": [ 237.0, 128.0, 496.0, 328.0 ],
                                        "gridonopen": 2,
                                        "subpatcher_template": "sub",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 49.0, 19.0, 103.0, 22.0 ],
                                                    "text": "in 1 (float) sustain"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "code": "\r\nrequire(\"evi_utilities.genexpr\");\r\n\r\nParam   curve(-0.5, min=-1, max=1);\r\n\r\nout1 = warpExp(in1, curve);\r\n\r\n",
                                                    "fontface": 0,
                                                    "fontname": "<Monospaced>",
                                                    "fontsize": 12.0,
                                                    "id": "obj-3",
                                                    "maxclass": "codebox",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 49.0, 58.0, 381.0, 199.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 49.0, 274.0, 35.0, 22.0 ],
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
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 49.0, 81.0, 151.0, 22.0 ],
                                    "text": "gen @title schedular_warp"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-6",
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
                                    "comment": "",
                                    "id": "obj-7",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.0, 135.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 202.0, 76.0, 128.0, 33.0 ],
                                    "text": "modify sustain because curves base"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-64", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 421.0, 343.0, 25.0, 22.0 ],
                    "text": "p s"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 3,
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
                        "rect": [ 290.0, 103.0, 868.0, 896.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 628.0, 847.0, 193.0, 22.0 ],
                                    "text": "out 2 (signal) segments 0 1 2 3 4 5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 302.5, 19.0, 229.0, 22.0 ],
                                    "text": "in 2 (signal) zero / delay segment number"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 49.0, 19.0, 217.0, 22.0 ],
                                    "text": "in 1 (signal) adsr envelope from [adsr~]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 568.0, 19.0, 253.0, 22.0 ],
                                    "text": "in 3 (signal) new envelope trigger from [adsr~]"
                                }
                            },
                            {
                                "box": {
                                    "code": "\r\n//require(\"evi_utilities.genexpr\");\r\nrequire(\"evi_approx.genexpr\");\r\n\r\n// todo: some really strange gen~ compile bugs going on, so we need to re-declare here\r\nwarpEnv(x, warp)\n{\n    y = x;\n    if (warp != 0) {\n        wp = warp * 0.88; // mult down because approximations\n        wa = abs(wp);\n        ma = 1 / (1 - wa);\n        if (wp > 0) {\n            y = expApprox(logApprox(x) * ma);\n        }\n        else {\n            y = 1 - expApprox(logApprox(1 - x) * ma);\n        }\n    }\n    return y;\n}\r\n\r\nParam   hold(1., min=1, max=1000); // !! multiplier of attack phase, not timing !!\r\nParam   curve(-0.5, min=-1, max=1);\r\ndown_curve = curve * -1;\r\nis_delay = in2; // 0/1\r\nsegment_count = 0;\r\n\r\nmsp_adsr_env = in1;\r\nadsr_slope = wrap(delta(msp_adsr_env), -0.5, 0.5);\r\nslope_hz = adsr_slope * samplerate;\r\nsegment_dir = sign(adsr_slope); // -1..0..1\r\nsegment_gate = segment_dir + 1;\r\n\r\nnew_env = in3;\r\nnew_env_delta = delta(new_env);\r\nnew_env_on = new_env_delta > 0;;\r\nnew_env_off = new_env_delta < 0;\r\n\r\nadsr_phasor = phasor(slope_hz, new_env_on);\r\n\r\nenv = 0;\r\nif (segment_gate == 2) {        // attack/hold\r\n    attack_phase_expand = adsr_phasor * hold;\r\n    attack_hold_phase = clip(attack_phase_expand, 0, 1);\r\n//  attack_hold_segment = warpExp(attack_hold_phase, curve);\r\n    attack_hold_segment = warpEnv(attack_hold_phase, curve);\r\n    env = attack_hold_segment;\r\n    segment_count = (attack_phase_expand > 1) ? 3 : 2;\r\n}\r\nelse if (segment_gate == 0) {   // decay/release\r\n    // todo: decay is slightly wrong as we are not parsing a full phasor segment\r\n    // but release is fine\r\n//  decay_release_segment = warpExp(adsr_phasor, down_curve);\r\n    decay_release_segment = warpEnv(adsr_phasor, down_curve);\r\n    env = decay_release_segment;\r\n    segment_count = new_env ? 4 : 6;\r\n}\r\nelse {  // (segment_gate == 1)  // sustain/off\r\n    // we must send the static sustain value through same warp to match :-(\r\n    // but we quasi account for this in the Max parent patcher\r\n//  sustain_segment = warpExp(adsr_phasor, down_curve);\r\n    sustain_segment = warpEnv(adsr_phasor, down_curve);\r\n    env = sustain_segment;\r\n    segment_count = new_env ? 5 : 0;\r\n}\r\n\r\nout1 = env;\r\nout2 = is_delay ? is_delay : segment_count;\r\n\r\n",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-3",
                                    "maxclass": "codebox",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 49.0, 58.0, 772.0, 774.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.0, 847.0, 203.0, 22.0 ],
                                    "text": "out 1 (signal) ahdsr curved envelope"
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
                                    "destination": [ "obj-3", 2 ],
                                    "midpoints": [ 577.5, 49.5, 811.5, 49.5 ],
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
                                    "destination": [ "obj-5", 0 ],
                                    "midpoints": [ 811.5, 839.5, 637.5, 839.5 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "midpoints": [ 312.0, 49.5, 435.0, 49.5 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 255.0, 515.0, 92.83333333333331, 22.0 ],
                    "text": "gen~ @t env"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 3,
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
                        "rect": [ 517.0, 94.0, 750.0, 569.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-22",
                                    "linecount": 7,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 569.0, 120.0, 164.0, 100.0 ],
                                    "text": "This is really hacky because if you use the parent patcher 'mute' outlet to control poly~ voices AND you are using the 'delay' attribute (> 0) you will have to unmute the voice in the parent manually"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 537.0, 438.0, 68.0, 22.0 ],
                                    "text": "bitand~ 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 358.0, 81.0, 73.0, 22.0 ],
                                    "text": "clip 0. 1000."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 467.0, 318.0, 133.0, 47.0 ],
                                    "text": "local adsr~ is always 0..1, we scale our env properly externally"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 64.0, 438.0, 68.0, 22.0 ],
                                    "text": "bitand~ 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 113.0, 399.0, 29.5, 22.0 ],
                                    "text": "!=~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 96.0, 491.0, 80.0, 33.0 ],
                                    "text": "to segments\n(is delay?)"
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
                                    "patching_rect": [ 64.0, 492.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 113.0, 120.0, 36.0, 22.0 ],
                                    "text": ">~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 267.0, 39.0, 80.0, 20.0 ],
                                    "text": "trigger/gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 267.0, 497.5, 104.0, 20.0 ],
                                    "text": "output multiplier"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 569.0, 497.0, 80.0, 20.0 ],
                                    "text": "trigger/gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 390.0, 39.0, 108.0, 20.0 ],
                                    "text": "delay time in ms"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 569.0, 39.0, 59.0, 20.0 ],
                                    "text": "[adsr~]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "int" ],
                                    "patching_rect": [ 419.0, 120.0, 67.0, 22.0 ],
                                    "text": "adstatus sr"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 467.0, 237.0, 100.0, 22.0 ],
                                    "text": "prepend maxsize"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 358.0, 120.0, 44.75, 22.0 ],
                                    "text": "t f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 384.0, 159.0, 37.0, 22.0 ],
                                    "text": "sel 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "clear" ],
                                    "patching_rect": [ 384.0, 198.0, 41.0, 22.0 ],
                                    "text": "t clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 271.0, 291.0, 106.25, 22.0 ],
                                    "text": "delay~ 48000 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "float" ],
                                    "patching_rect": [ 358.0, 237.0, 77.0, 22.0 ],
                                    "text": "mstosamps~"
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
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 358.0, 34.0, 30.0, 30.0 ]
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
                                    "patching_rect": [ 537.0, 492.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-111",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 235.0, 399.0, 55.0, 22.0 ],
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
                                    "patching_rect": [ 271.0, 330.0, 36.0, 22.0 ],
                                    "text": ">~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-106",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 235.0, 438.0, 108.0, 22.0 ],
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
                                    "patching_rect": [ 324.0, 399.0, 36.0, 22.0 ],
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
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 235.0, 34.0, 30.0, 30.0 ]
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
                                    "patching_rect": [ 537.0, 34.0, 30.0, 30.0 ]
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
                                    "patching_rect": [ 235.0, 492.5, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "order": 1,
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "order": 2,
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 1 ],
                                    "order": 0,
                                    "source": [ "obj-10", 0 ]
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
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-106", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-111", 1 ],
                                    "order": 1,
                                    "source": [ "obj-110", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 1 ],
                                    "order": 2,
                                    "source": [ "obj-110", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "order": 0,
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
                                    "destination": [ "obj-10", 0 ],
                                    "order": 2,
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-111", 0 ],
                                    "order": 1,
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "order": 0,
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
                                    "destination": [ "obj-23", 1 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 1 ],
                                    "source": [ "obj-3", 0 ]
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
                                    "destination": [ "obj-110", 0 ],
                                    "source": [ "obj-4", 0 ]
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
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-7", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-9", 1 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 166.0, 401.0, 67.0, 22.0 ],
                    "text": "p condition"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "float", "" ],
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
                        "rect": [ 34.0, 100.0, 390.0, 539.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 258.0, 400.0, 79.0, 22.0 ],
                                    "text": "prepend hold"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 111.0, 284.0, 66.0, 20.0 ],
                                    "text": "ms to Hz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 290.0, 284.0, 66.0, 20.0 ],
                                    "text": "ms to Hz"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 217.0, 486.0, 113.0, 33.0 ],
                                    "text": "attack phase multiplier for hold",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 117.0, 486.0, 113.0, 33.0 ],
                                    "text": "fake attack ms for [adsr~]",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 60.0, 166.0, 117.0, 22.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 60.0, 205.0, 61.0, 22.0 ],
                                    "text": "list.slice 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-88",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 60.25, 361.0, 39.0, 22.0 ],
                                    "text": "/ 100."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-87",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 60.0, 322.0, 198.0, 22.0 ],
                                    "text": "pack 100. 100."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-85",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 60.0, 283.0, 49.0, 22.0 ],
                                    "text": "!/ 1000."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-82",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 239.0, 283.0, 49.0, 22.0 ],
                                    "text": "!/ 1000."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 158.0, 244.0, 100.0, 22.0 ],
                                    "text": "t f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 158.0, 88.0, 41.0, 22.0 ],
                                    "text": "abs 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "int" ],
                                    "patching_rect": [ 60.0, 88.0, 81.0, 22.0 ],
                                    "text": "maximum 0.1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 117.0, 19.0, 113.0, 20.0 ],
                                    "text": "hold ms",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 19.0, 19.0, 113.0, 20.0 ],
                                    "text": "attack ms",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 60.0, 127.0, 117.0, 22.0 ],
                                    "text": "pak 10. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 158.0, 205.0, 29.5, 22.0 ],
                                    "text": "+ 0."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-6",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 60.0, 41.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-7",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 158.0, 41.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-8",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 258.0, 454.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-10",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 158.0, 454.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 1 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-82", 0 ],
                                    "source": [ "obj-13", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-85", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-16", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
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
                                    "destination": [ "obj-87", 1 ],
                                    "source": [ "obj-82", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-87", 0 ],
                                    "source": [ "obj-85", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-88", 0 ],
                                    "source": [ "obj-87", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "midpoints": [ 69.75, 391.5, 267.5, 391.5 ],
                                    "source": [ "obj-88", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 310.0, 343.0, 44.25, 22.0 ],
                    "text": "p ah"
                }
            },
            {
                "box": {
                    "id": "obj-210",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 148.0, 715.0, 113.0, 20.0 ],
                    "text": "dahdsr envelope",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-209",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 330.0, 715.0, 113.0, 20.0 ],
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
                    "patching_rect": [ 424.0, 715.0, 113.0, 20.0 ],
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
                    "patching_rect": [ 572.0, 135.0, 66.0, 22.0 ],
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
                    "patching_rect": [ 310.0, 96.0, 281.0, 22.0 ],
                    "text": "patcherargs 10. 100. 0.707946 200. @curve -0.5"
                }
            },
            {
                "box": {
                    "comment": "sample accurate envelope segment #s, 0=off 1=delay 2=attack 3=hold 4=decay 5=sustain 6=release 0=off",
                    "id": "obj-202",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 683.0, 683.0, 30.0, 30.0 ]
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
                    "patching_rect": [ 465.0, 683.0, 30.0, 30.0 ]
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
                    "patching_rect": [ 371.0, 683.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-176",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 476.0, 343.0, 19.0, 22.0 ],
                    "text": "t f"
                }
            },
            {
                "box": {
                    "id": "obj-174",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 366.0, 343.0, 19.0, 22.0 ],
                    "text": "t f"
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
                    "patching_rect": [ 190.0, 683.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-147",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 190.0, 629.0, 84.0, 22.0 ],
                    "text": "*~ 0."
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 49.0, 343.0, 45.0, 22.0 ],
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
                    "patching_rect": [ 49.0, 304.0, 85.0, 22.0 ],
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
                    "patching_rect": [ 619.0, 304.0, 94.0, 22.0 ],
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
                    "patching_rect": [ 253.0, 239.0, 30.0, 30.0 ]
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
                    "patching_rect": [ 206.0, 239.0, 30.0, 30.0 ]
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
                    "patching_rect": [ 158.0, 239.0, 30.0, 30.0 ]
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
                    "patching_rect": [ 49.0, 239.0, 30.0, 30.0 ]
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
                    "patching_rect": [ 111.0, 239.0, 30.0, 30.0 ]
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
                    "numinlets": 7,
                    "numoutlets": 7,
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 389.0, 174.0, 249.0, 22.0 ],
                    "text": "route delay attack hold decay sustain release"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 640.0, 175.0, 169.0, 20.0 ],
                    "text": "@attributes win out over args"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 253.0, 217.0, 30.0, 20.0 ],
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
                    "patching_rect": [ 206.0, 217.0, 30.0, 20.0 ],
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
                    "patching_rect": [ 158.0, 217.0, 30.0, 20.0 ],
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
                    "patching_rect": [ 111.0, 217.0, 30.0, 20.0 ],
                    "text": "A",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "", "" ],
                    "patching_rect": [ 255.0, 401.0, 240.5, 22.0 ],
                    "text": "adsr~ 10. 100. 0.888973 200."
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
                    "patching_rect": [ 479.0, 624.0, 127.0, 52.0 ],
                    "text": "the need for this this is why we are here",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 49.0, 96.0, 171.0, 47.0 ],
                    "text": "N.B. - this abstraction is an abomination and should probably not be used"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-19",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 638.0, 140.0, 172.0, 33.0 ],
                    "text": "todo: @retrigger & @legato at least"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.0,
                    "bubbleside": 2,
                    "hidden": 1,
                    "id": "obj-4",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 634.0, 247.0, 127.0, 52.0 ],
                    "text": "the need for this this is why we are here",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-7",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 311.0, 648.0, 150.0, 33.0 ],
                    "text": "new env trigger does not include delay segment",
                    "textjustification": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-147", 1 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-202", 0 ],
                    "midpoints": [ 338.3333333333333, 571.41015625, 692.5, 571.41015625 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-11", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 1 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 1 ],
                    "source": [ "obj-13", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-13", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 1 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-174", 0 ],
                    "source": [ "obj-13", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-176", 0 ],
                    "source": [ "obj-13", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-13", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-13", 4 ]
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
                    "destination": [ "obj-1", 1 ],
                    "midpoints": [ 175.5, 480.265625, 301.41666666666663, 480.265625 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-147", 0 ],
                    "source": [ "obj-16", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-16", 2 ]
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
                    "destination": [ "obj-3", 2 ],
                    "source": [ "obj-174", 0 ]
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
                    "midpoints": [ 628.5, 165.5, 398.5, 165.5 ],
                    "source": [ "obj-18", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "midpoints": [ 58.5, 378.01171875, 175.5, 378.01171875 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 2 ],
                    "order": 1,
                    "source": [ "obj-3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 0,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 2 ],
                    "order": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-200", 0 ],
                    "midpoints": [ 338.3333333333333, 481.34375, 380.5, 481.34375 ],
                    "order": 0,
                    "source": [ "obj-3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-201", 0 ],
                    "midpoints": [ 412.16666666666663, 456.0859375, 474.5, 456.0859375 ],
                    "source": [ "obj-3", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
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
                    "destination": [ "obj-176", 0 ],
                    "source": [ "obj-31", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-31", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
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
                    "destination": [ "obj-8", 0 ],
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
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 703.5, 385.76953125, 264.5, 385.76953125 ],
                    "source": [ "obj-46", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "order": 0,
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 124.5, 393.05078125, 31.94921875, 393.05078125, 31.94921875, 165.484375, 398.5, 165.484375 ],
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
                    "destination": [ "obj-3", 3 ],
                    "source": [ "obj-8", 0 ]
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