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
        "rect": [ 34.0, 100.0, 1306.0, 808.0 ],
        "gridonopen": 2,
        "subpatcher_template": "sub",
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 758.0, 20.0, 114.0, 20.0 ],
                    "text": "off or setup"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 427.0, 20.0, 172.0, 20.0 ],
                    "text": "on/off & setup",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 654.0, 611.0, 249.0, 33.0 ],
                    "text": "main env controls CPU and locked to 'smoothtime' & 'feedback' (on/clear) of FDN",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 427.0, 175.0, 125.0, 20.0 ],
                    "text": "velocity only",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 609.0, 291.0, 29.0, 22.0 ],
                    "text": "sqrt"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 728.0, 252.0, 25.0, 22.0 ],
                    "text": "t 0."
                }
            },
            {
                "box": {
                    "id": "obj-123",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 874.0, 214.0, 186.0, 20.0 ],
                    "text": "input sampletime (hold) in ms"
                }
            },
            {
                "box": {
                    "id": "obj-116",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 603.0, 135.0, 25.0, 22.0 ],
                    "text": "t 1."
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 609.0, 252.0, 39.0, 22.0 ],
                    "text": "/ 127."
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 609.0, 213.0, 93.0, 22.0 ],
                    "text": "route int float"
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 603.0, 58.0, 92.0, 22.0 ],
                    "text": "route bang float"
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 768.0, 213.0, 104.0, 22.0 ],
                    "text": "route sample hold"
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 788.0, 136.0, 147.0, 20.0 ],
                    "text": "for global offs"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 728.0, 135.0, 59.0, 22.0 ],
                    "text": "route 0 0."
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 517.0, 135.0, 55.0, 22.0 ],
                    "text": "zl.slice 1"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 517.0, 97.0, 70.0, 22.0 ],
                    "text": "zl.slice 2"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 553.0, 213.0, 30.0, 22.0 ],
                    "text": "> 0."
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 728.0, 19.0, 28.0, 22.0 ],
                    "saved_object_attributes": {
                        "attr_comment": [ "Off", "or", "Setup", ",", "Global", "or", "per", "Voice" ],
                        "c": [ "Off", "or", "Setup", ",", "Global", "or", "per", "Voice" ]
                    },
                    "text": "in 2"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 553.0, 174.0, 75.0, 22.0 ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 553.0, 252.0, 47.0, 22.0 ],
                    "text": "clip 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 553.0, 291.0, 34.0, 22.0 ],
                    "text": "sel 1"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 603.0, 19.0, 28.0, 22.0 ],
                    "saved_object_attributes": {
                        "attr_comment": [ "(bang", ",", "float", ",", "list)", "Play", "the", "Sustainer", "(incl.", "Pitch/Velocity", "midinote))" ],
                        "c": [ "(bang", ",", "float", ",", "list)", "Play", "the", "Sustainer", "(incl.", "Pitch/Velocity", "midinote))" ]
                    },
                    "text": "in 1"
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 427.0, 98.0, 88.0, 20.0 ],
                    "text": "\"midinote\"",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "id": "obj-93",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 853.0, 292.0, 132.0, 22.0 ],
                    "text": "routepass gain"
                }
            },
            {
                "box": {
                    "id": "obj-97",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 987.0, 293.0, 170.0, 20.0 ],
                    "text": "gain is in dB"
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 905.0, 523.0, 30.0, 22.0 ],
                    "text": "f 1."
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 1020.0, 484.0, 81.0, 22.0 ],
                    "text": "maximum 50."
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1020.0, 445.0, 32.0, 22.0 ],
                    "text": "/ 10."
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 728.0, 346.0, 45.0, 22.0 ],
                    "text": "t f b"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "bang" ],
                    "patching_rect": [ 553.0, 346.0, 57.0, 22.0 ],
                    "text": "t b b b"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 966.0, 406.0, 30.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 1009.0, 406.0, 30.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 992.0, 523.0, 47.0, 22.0 ],
                    "text": "f 50."
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 949.0, 445.0, 47.0, 22.0 ],
                    "text": "f 10."
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 966.0, 346.0, 191.0, 22.0 ],
                    "text": "route attack release decay sustain"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1084.0, 709.0, 33.0, 22.0 ],
                    "text": "== 0"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 949.0, 562.0, 118.0, 22.0 ],
                    "text": "prepend smoothtime"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1183.0, 616.0, 100.0, 22.0 ],
                    "text": "loadmess mute 1"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "int" ],
                    "patching_rect": [ 1066.0, 670.0, 56.0, 22.0 ],
                    "text": "thispoly~"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "", "" ],
                    "patching_rect": [ 905.0, 616.0, 261.0, 22.0 ],
                    "text": "adsr~ 10. 0. 1. 500. @legato 1 @maxsustain -1"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1084.0, 748.0, 105.0, 22.0 ],
                    "text": "prepend feedback"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 916.0, 653.0, 150.0, 20.0 ],
                    "text": "^^ voice busy with signal"
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 143.0, 400.0, 25.0, 22.0 ],
                    "text": "t 1."
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 132.0, 508.0, 30.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 164.0, 478.0, 240.0, 33.0 ],
                    "text": "ADR env, held for D ms, only 'on' (1.) required for activation (does auto release)"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 235.0, 400.0, 81.0, 22.0 ],
                    "text": "maximum 50."
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "", "" ],
                    "patching_rect": [ 143.0, 454.0, 202.0, 22.0 ],
                    "text": "adsr~ 10. 50. 1. 50. @maxsustain 0."
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 166.0, 562.0, 30.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 100.0, 562.0, 30.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 177.0, 400.0, 35.0, 22.0 ],
                    "saved_object_attributes": {
                        "attr_comment": [ "Right", "Audio", "In", "for", "Sustaining" ],
                        "c": [ "Right", "Audio", "In", "for", "Sustaining" ]
                    },
                    "text": "in~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 100.0, 400.0, 35.0, 22.0 ],
                    "saved_object_attributes": {
                        "attr_comment": [ "Left", "Audio", "In", "for", "Sustaining" ],
                        "c": [ "Left", "Audio", "In", "for", "Sustaining" ]
                    },
                    "text": "in~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 221.0, 724.0, 42.0, 22.0 ],
                    "saved_object_attributes": {
                        "attr_comment": [ "Sustain", "Audio", "Out", "Right" ],
                        "c": [ "Sustain", "Audio", "Out", "Right" ]
                    },
                    "text": "out~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 100.0, 724.0, 42.0, 22.0 ],
                    "saved_object_attributes": {
                        "attr_comment": [ "Sustain", "Audio", "Out", "Left" ],
                        "c": [ "Sustain", "Audio", "Out", "Left" ]
                    },
                    "text": "out~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 221.0, 670.0, 30.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 100.0, 670.0, 30.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 253.0, 611.0, 299.0, 33.0 ],
                    "text": "@see: [evi.sustainverb~] or \"evi_sustainverb.gendsp\" for the real reverb from which this FDN was extracted"
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
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
                        "rect": [ 530.0, 283.0, 410.0, 570.0 ],
                        "gridonopen": 2,
                        "lefttoolbarpinned": 2,
                        "toptoolbarpinned": 2,
                        "righttoolbarpinned": 2,
                        "bottomtoolbarpinned": 1,
                        "toolbars_unpinned_last_save": 7,
                        "boxanimatetime": 0,
                        "subpatcher_template": "PeteSubDefault10",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-18",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 139.0, 95.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 62.0, 213.0, 72.0, 22.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "int" ],
                                    "patching_rect": [ 49.0, 135.0, 32.0, 22.0 ],
                                    "text": "t b 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 49.0, 96.0, 66.0, 22.0 ],
                                    "text": "route reset"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "int", "int" ],
                                    "patching_rect": [ 144.0, 267.0, 58.0, 22.0 ],
                                    "text": "change 0"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-4",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 341.0, 479.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-3",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 144.0, 479.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 144.0, 429.0, 66.0, 22.0 ],
                                    "text": "route done"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "int" ],
                                    "patching_rect": [ 96.0, 174.0, 67.0, 22.0 ],
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
                                    "patching_rect": [ 144.0, 321.0, 115.0, 22.0 ],
                                    "text": "prepend samplerate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 144.0, 375.0, 187.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "filename": "evi_reverbs_inits.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js evi_reverbs_inits.js sustainverb"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-84",
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
                                    "hidden": 1,
                                    "id": "obj-15",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 154.0, 232.0, 177.0, 33.0 ],
                                    "text": "only on load or change (or gen~ reset). is this ok?"
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
                                    "midpoints": [ 200.5, 465.0, 350.5, 465.0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-11", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-18", 0 ]
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
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-7", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-84", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-9", 1 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "transport", "audiosolo", "audiomute" ],
                        "toolbarexclusions": [ "audiopowerctrl", "browsebeap", "browsevizzie", "lessonbrowser" ]
                    },
                    "patching_rect": [ 49.0, 616.0, 34.0, 22.0 ],
                    "text": "p init"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 100.0, 616.0, 151.0, 22.0 ],
                    "text": "gen~ @gen evi_sustainfdn"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 612.0, 347.0, 57.0, 20.0 ],
                    "text": "on"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 681.0, 347.0, 45.0, 20.0 ],
                    "text": "off",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 235.0, 380.0, 186.0, 20.0 ],
                    "text": "input sampletime (hold) in ms"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.75,
                    "hidden": 1,
                    "id": "obj-45",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 635.0, 278.0, 68.0, 24.0 ],
                    "text": "cheeky",
                    "textjustification": 1
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
                    "destination": [ "obj-6", 1 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.1491314173, 0.0, 1.0 ],
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 0 ],
                    "source": [ "obj-104", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "midpoints": [ 649.0, 165.5, 562.5, 165.5 ],
                    "source": [ "obj-104", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "midpoints": [ 685.5, 88.0, 526.5, 88.0 ],
                    "source": [ "obj-104", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 1 ],
                    "midpoints": [ 655.5, 322.41796875, 925.5, 322.41796875 ],
                    "source": [ "obj-107", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.094336, 0.718, 0.013021, 1.0 ],
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "midpoints": [ 612.5, 165.0, 562.5, 165.0 ],
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.1491314173, 0.0, 1.0 ],
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-12", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-13", 2 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.5, 0.0, 1.0 ],
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 914.5, 653.25, 1075.5, 653.25 ],
                    "order": 0,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.5, 0.0, 1.0 ],
                    "destination": [ "obj-5", 1 ],
                    "midpoints": [ 914.5, 654.0, 120.5, 654.0 ],
                    "order": 2,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.5, 0.0, 1.0 ],
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 914.5, 654.0, 230.5, 654.0 ],
                    "order": 1,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 958.5, 600.0, 109.5, 600.0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 1 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.1491314173, 0.0, 1.0 ],
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 1147.5, 608.0, 914.5, 608.0 ],
                    "source": [ "obj-22", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 3 ],
                    "source": [ "obj-22", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 2 ],
                    "source": [ "obj-22", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-22", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-22", 0 ]
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
                    "destination": [ "obj-19", 0 ],
                    "midpoints": [ 1001.5, 553.0, 958.5, 553.0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 4 ],
                    "midpoints": [ 1018.5, 436.5, 1156.5, 436.5 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 0 ],
                    "source": [ "obj-25", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 1 ],
                    "order": 0,
                    "source": [ "obj-26", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 1 ],
                    "midpoints": [ 986.5, 436.25390625, 198.25, 436.25390625 ],
                    "order": 1,
                    "source": [ "obj-26", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 1192.5, 653.25, 1075.5, 653.25 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.1491314173, 0.0, 1.0 ],
                    "destination": [ "obj-101", 0 ],
                    "midpoints": [ 562.5, 379.9375, 152.5, 379.9375 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.5, 0.0, 1.0 ],
                    "destination": [ "obj-109", 0 ],
                    "midpoints": [ 581.5, 510.0, 914.5, 510.0 ],
                    "source": [ "obj-29", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "midpoints": [ 600.5, 378.49609375, 958.5, 378.49609375 ],
                    "source": [ "obj-29", 2 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.1491314173, 0.0, 1.0 ],
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 1093.5, 780.0, 39.421875, 780.0, 39.421875, 599.8125, 109.5, 599.8125 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 1 ],
                    "midpoints": [ 618.5, 322.29296875, 925.5, 322.29296875 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.5, 0.0, 1.0 ],
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 737.5, 572.5, 914.5, 572.5 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "midpoints": [ 763.5, 494.0, 1001.5, 494.0 ],
                    "source": [ "obj-31", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "midpoints": [ 577.5, 332.7734375, 737.5, 332.7734375 ],
                    "source": [ "obj-32", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "source": [ "obj-35", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "midpoints": [ 577.5, 202.21875, 777.5, 202.21875 ],
                    "source": [ "obj-39", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-40", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.1491314173, 0.0, 1.0 ],
                    "destination": [ "obj-76", 1 ],
                    "order": 0,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.1491314173, 0.0, 1.0 ],
                    "destination": [ "obj-76", 0 ],
                    "order": 1,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 2 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "midpoints": [ 757.5, 178.640625, 737.5, 178.640625 ],
                    "source": [ "obj-61", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "source": [ "obj-61", 2 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.1491314173, 0.0, 1.0 ],
                    "destination": [ "obj-10", 1 ],
                    "midpoints": [ 141.5, 545.25, 120.5, 545.25 ],
                    "order": 1,
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.1491314173, 0.0, 1.0 ],
                    "destination": [ "obj-9", 0 ],
                    "midpoints": [ 141.5, 545.25, 175.5, 545.25 ],
                    "order": 0,
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-85", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-92", 0 ],
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 1 ],
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 862.5, 599.7421875, 109.5, 599.7421875 ],
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-93", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "midpoints": [ 820.0, 244.7421875, 244.5, 244.7421875 ],
                    "source": [ "obj-98", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "midpoints": [ 777.5, 244.3125, 244.5, 244.3125 ],
                    "source": [ "obj-98", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "source": [ "obj-98", 2 ]
                }
            }
        ],
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}