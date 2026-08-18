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
        "rect": [ 96.0, 159.0, 961.0, 721.0 ],
        "bglocked": 1,
        "openinpresentation": 1,
        "gridonopen": 2,
        "subpatcher_template": "sub",
        "integercoordinates": 1,
        "title": "evieve Examples: Polysynth",
        "boxes": [
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 597.0, 576.0, 50.0, 22.0 ],
                    "text": "split 1 1"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 555.0, 537.0, 61.0, 22.0 ],
                    "text": "list.slice 1"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 555.0, 498.0, 63.0, 22.0 ],
                    "text": "route read"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 423.0, 147.0, 54.0, 22.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                    "fontsize": 14.0,
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 463.0, 186.0, 61.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.theme_locked_bgcolor"
                        }
                    },
                    "text": "Presets"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                    "fontsize": 14.0,
                    "id": "obj-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 111.0, 147.0, 69.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.theme_locked_bgcolor"
                        }
                    },
                    "text": "Keyboard"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 555.0, 420.0, 89.0, 22.0 ],
                    "text": "storagewindow"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 268.0, 340.0, 56.0, 22.0 ],
                    "restore": {
                        "synthGlide": [ 20.0 ],
                        "synthReverb": [ 10.0 ],
                        "synthVolume": [ -9.0 ]
                    },
                    "restore_extra": {
                        "synthGlide": {
                            "id": "obj-78"
                        },
                        "synthReverb": {
                            "id": "obj-24"
                        },
                        "synthVolume": {
                            "id": "obj-79"
                        }
                    },
                    "text": "autopattr",
                    "varname": "u275007555"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 555.0, 459.0, 281.0, 22.0 ],
                    "saved_object_attributes": {
                        "client_rect": [ 4, 45, 362, 523 ],
                        "parameter_enable": 0,
                        "parameter_mappable": 0,
                        "storage_rect": [ 333, 69, 1280, 583 ]
                    },
                    "text": "pattrstorage evi_example_polysynth @savemode 3",
                    "varname": "evi_example_polysynth"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.39215686274509803, 0.0, 1.0 ],
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
                    "parameter_mappable": 0,
                    "patching_rect": [ 432.0, 672.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 876.0, 155.0, 20.0, 20.0 ],
                    "rounded": 60.0,
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_key_assignment"
                        }
                    },
                    "text": "2",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "bubblesize": 13,
                    "frozen_box_attributes": [ "pattrstorage" ],
                    "id": "obj-2",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 423.0, 186.0, 38.0, 481.0 ],
                    "pattrstorage": "evi_example_polysynth",
                    "presentation": 1,
                    "presentation_rect": [ 867.0, 177.0, 38.0, 481.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.39215686274509803, 0.0, 1.0 ],
                    "fontname": "Arial Bold",
                    "hint": "",
                    "id": "obj-82",
                    "ignoreclick": 1,
                    "legacytextcolor": 1,
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "parameter_mappable": 0,
                    "patching_rect": [ 95.0, 668.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 768.0, 660.0, 20.0, 20.0 ],
                    "rounded": 60.0,
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.live_key_assignment"
                        }
                    },
                    "text": "1",
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Dry/Wet of post-Synth Reverb",
                    "id": "obj-24",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 195.0, 387.0, 57.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 750.0, 467.0, 57.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 2.0,
                            "parameter_initial": [ 10.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "synthReverb",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Reverb",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "synthReverb"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 233.0, 459.0, 91.0, 22.0 ],
                    "text": "prepend drywet"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                    "fontsize": 14.0,
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 219.0, 237.0, 69.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 62.0, 348.0, 69.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.theme_locked_bgcolor"
                        }
                    },
                    "text": "Oscillator"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                    "fontsize": 14.0,
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 327.0, 237.0, 69.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 62.0, 580.0, 69.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.theme_locked_bgcolor"
                        }
                    },
                    "text": "Envelope"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                    "fontsize": 14.0,
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 289.0, 237.0, 42.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 62.0, 467.0, 42.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.theme_locked_bgcolor"
                        }
                    },
                    "text": "Filter"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "" ],
                    "patching_rect": [ 81.0, 513.0, 76.0, 22.0 ],
                    "text": "evi.zitaverb~",
                    "varname": "evi.zitaverb~"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 144.0, 567.0, 10.0, 100.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 805.0, 557.0, 10.0, 101.0 ],
                    "slidercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 55.0, 567.0, 10.0, 100.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 741.0, 557.0, 10.0, 102.0 ],
                    "slidercolor": [ 0.07934807936557703, 0.07934804057876954, 0.0793480505472888, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 3,
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
                        "rect": [ 34.0, 100.0, 771.0, 422.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 434.0, 97.0, 145.0, 22.0 ],
                                    "text": "r #0_to_poly_synth"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-80",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "", "" ],
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
                                        "rect": [ 34.0, 100.0, 710.0, 660.0 ],
                                        "gridonopen": 2,
                                        "subpatcher_template": "sub",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "id": "obj-15",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 449.0, 475.0, 102.0, 37.0 ],
                                                    "text": "re-enable if you want this",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bubble": 1,
                                                    "bubblepoint": 0.4,
                                                    "bubbleside": 0,
                                                    "id": "obj-16",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 360.5, 304.0, 97.0, 52.0 ],
                                                    "text": "re-enable if you want this",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 297.5, 351.0, 29.5, 22.0 ],
                                                    "text": "* 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 297.5, 312.0, 61.0, 22.0 ],
                                                    "text": "pak 0.5 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 297.5, 195.0, 81.0, 22.0 ],
                                                    "text": "evi.dbtoa -70."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-11",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 297.5, 73.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 441.0, 273.0, 60.0, 22.0 ],
                                                    "text": "clip 0.5 1."
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
                                                    "patching_rect": [ 297.5, 582.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 441.0, 118.0, 93.0, 22.0 ],
                                                    "text": "vexpr ($i1 == 0)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 472.5, 78.0, 111.0, 20.0 ],
                                                    "text": "mutemap"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 21.0, 17.0, 150.0, 47.0 ],
                                                    "text": "no one likes it when i do this, so it is disabled by default"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 440.5, 428.0, 119.0, 22.0 ],
                                                    "text": "qmetro 11 @active 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 440.5, 536.0, 107.0, 22.0 ],
                                                    "text": "list.reg mutemap 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-3",
                                                    "index": 3,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 440.5, 582.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-47",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 441.0, 234.0, 128.0, 22.0 ],
                                                    "text": "expr 1. / sqrt($f1 * 0.5)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-70",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "int" ],
                                                    "patching_rect": [ 441.0, 195.0, 71.0, 22.0 ],
                                                    "text": "maximum 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 441.0, 157.0, 49.0, 22.0 ],
                                                    "text": "list.sum"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-74",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 297.5, 390.0, 66.0, 22.0 ],
                                                    "text": "pack 1. 11."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-73",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 297.5, 428.0, 48.0, 22.0 ],
                                                    "text": "line~ 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-72",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 154.5, 490.0, 34.0, 22.0 ],
                                                    "text": "*~ 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-77",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 155.0, 73.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-78",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 441.0, 73.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-79",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 154.5, 582.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 536.0, 112.5, 111.0, 33.0 ],
                                                    "text": "because busymap is borked"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 1 ],
                                                    "disabled": 1,
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-70", 0 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-74", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-47", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "disabled": 1,
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
                                                    "destination": [ "obj-47", 0 ],
                                                    "source": [ "obj-70", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-79", 0 ],
                                                    "source": [ "obj-72", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-72", 1 ],
                                                    "source": [ "obj-73", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-73", 0 ],
                                                    "source": [ "obj-74", 0 ]
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
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-78", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 134.0, 244.0, 169.0, 22.0 ],
                                    "text": "p controversial_gain"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 434.0, 151.0, 111.0, 22.0 ],
                                    "text": "prepend setvalue 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 611.0, 97.0, 81.0, 22.0 ],
                                    "text": "prepend glide"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "", "" ],
                                    "patching_rect": [ 134.0, 205.0, 319.0, 22.0 ],
                                    "text": "poly~ evi_poly_voice 12 up 2 @steal 0",
                                    "varname": "poly~_AA"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-75",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 41.0, 151.0, 63.0, 22.0 ],
                                    "text": "allnotesoff"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-9",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 134.0, 37.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-10",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 209.0, 37.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-11",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 611.0, 37.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-12",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 134.0, 338.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-2",
                                    "linecount": 12,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 262.0, 24.5, 150.0, 167.0 ],
                                    "text": "About @steal: of course this should be '@steal 1', but it seems it is impossible to do sample accurate triggering of custom envelopes (evi.adsr~) with cpu and voice management, without @steal 1 clicking. I tried every hack I could think of. If you can fix it, please get in touch."
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-68",
                                    "linecount": 8,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 490.0, 205.0, 151.0, 114.0 ],
                                    "text": "Note: '@parallel 1' works great for reducing CPU, but there is a bug with @parallel & resampling which means there is crazy distortion caused on all voices. Has been reported."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 1 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 1 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 2 ],
                                    "source": [ "obj-65", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 0 ],
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "midpoints": [ 50.5, 189.0, 143.5, 189.0 ],
                                    "source": [ "obj-75", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "midpoints": [ 293.5, 276.0, 463.91796875, 276.0, 463.91796875, 195.0, 143.5, 195.0 ],
                                    "source": [ "obj-80", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 81.0, 459.0, 54.0, 22.0 ],
                    "text": "p synth~"
                }
            },
            {
                "box": {
                    "args": [ "#0" ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "embed": 1,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-6",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
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
                        "rect": [ 59.0, 111.0, 657.0, 358.0 ],
                        "openinpresentation": 1,
                        "gridonopen": 2,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 506.0, 274.0, 56.0, 22.0 ],
                                    "restore": {
                                        "synthEnvAttack": [ 10.000000000000002 ],
                                        "synthEnvDecay": [ 100.0 ],
                                        "synthEnvHold": [ 0.0 ],
                                        "synthEnvRelease": [ 299.99999999999994 ],
                                        "synthEnvSustain": [ 70.7107 ]
                                    },
                                    "restore_extra": {
                                        "synthEnvAttack": {
                                            "id": "obj-72"
                                        },
                                        "synthEnvDecay": {
                                            "id": "obj-71"
                                        },
                                        "synthEnvHold": {
                                            "id": "obj-73"
                                        },
                                        "synthEnvRelease": {
                                            "id": "obj-75"
                                        },
                                        "synthEnvSustain": {
                                            "id": "obj-70"
                                        }
                                    },
                                    "text": "autopattr",
                                    "varname": "u275007555"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 368.0, 127.0, 40.0, 22.0 ],
                                    "text": "* 0.01"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-74",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 467.0, 69.0, 75.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 308.0, 0.0, 75.0, 21.0 ],
                                    "text": "Release",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Envelope Release time in ms",
                                    "id": "obj-75",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 467.0, 92.0, 75.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 308.0, 19.0, 75.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 2.0,
                                            "parameter_initial": [ 300.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "synthEnvRelease",
                                            "parameter_mmax": 1000.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Decay",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "synthEnvRelease"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-66",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 368.0, 69.0, 75.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 231.0, 0.0, 75.0, 21.0 ],
                                    "text": "Sustain",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-67",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 271.0, 69.0, 75.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 154.0, 0.0, 75.0, 21.0 ],
                                    "text": "Decay",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-69",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 183.0, 69.0, 75.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 77.0, 0.0, 75.0, 21.0 ],
                                    "text": "Hold",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Envelope Sustain amount in exponentially mapped %",
                                    "id": "obj-70",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 368.0, 92.0, 75.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 231.0, 19.0, 75.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 0.5,
                                            "parameter_initial": [ 70.7107 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "synthEnvSustain",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Sustain",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "synthEnvSustain"
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Envelope Decay time in ms",
                                    "id": "obj-71",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 271.0, 92.0, 75.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 154.0, 19.0, 75.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 2.0,
                                            "parameter_initial": [ 100.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "synthEnvDecay",
                                            "parameter_mmax": 1000.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Decay",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "synthEnvDecay"
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Envelope Hold time in ms",
                                    "id": "obj-73",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 183.0, 92.0, 75.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 77.0, 19.0, 75.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 2.0,
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "synthEnvHold",
                                            "parameter_mmax": 1000.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Delay",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "synthEnvHold"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-68",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 87.0, 69.0, 75.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 0.0, 75.0, 21.0 ],
                                    "text": "Attack",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Envelope Attack time in ms",
                                    "id": "obj-72",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 87.0, 92.0, 75.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 19.0, 75.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 2.0,
                                            "parameter_initial": [ 10.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "synthEnvAttack",
                                            "parameter_mmax": 1000.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Attack",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "synthEnvAttack"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 467.0, 166.0, 95.0, 22.0 ],
                                    "text": "prepend release"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 368.0, 166.0, 94.0, 22.0 ],
                                    "text": "prepend sustain"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 271.0, 166.0, 88.0, 22.0 ],
                                    "text": "prepend decay"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 183.0, 166.0, 79.0, 22.0 ],
                                    "text": "prepend hold"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 87.0, 166.0, 88.0, 22.0 ],
                                    "text": "prepend attack"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 87.0, 220.0, 105.0, 22.0 ],
                                    "text": "prepend envelope"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 87.0, 274.0, 144.625, 22.0 ],
                                    "text": "s #1_to_poly_synth"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-71", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-73", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-75", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 341.0, 259.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 62.0, 606.0, 386.0, 47.0 ],
                    "varname": "envelope",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ "#0" ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "embed": 1,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-49",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
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
                        "rect": [ 34.0, 100.0, 1043.0, 712.0 ],
                        "openinpresentation": 1,
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 440.0, 444.0, 113.0, 22.0 ],
                                    "text": "prepend ignoreclick"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgcolor2": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgfillcolor_angle": 270.0,
                                    "bgfillcolor_autogradient": 0.0,
                                    "bgfillcolor_color": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgfillcolor_color1": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgfillcolor_color2": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgfillcolor_proportion": 0.5,
                                    "bgfillcolor_type": "gradient",
                                    "fontsize": 13.0,
                                    "gradient": 1,
                                    "hint": "Velocity of last pressed key",
                                    "id": "obj-21",
                                    "ignoreclick": 1,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 560.0, 553.0, 39.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 750.0, 151.0, 34.0, 23.0 ],
                                    "text": "0",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontlink": 1,
                                    "fontsize": 13.0,
                                    "id": "obj-20",
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 139.0, 393.0, 47.78906059265137, 22.5234375 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 222.0, 15.0, 47.78906059265137, 22.5234375 ],
                                    "text": "Flush",
                                    "texton": "Flush"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 641.0, 444.0, 92.0, 22.0 ],
                                    "text": "prepend hidden"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 641.0, 402.0, 30.0, 22.0 ],
                                    "text": "!= 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 676.0, 110.0, 33.0, 22.0 ],
                                    "text": "== 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 730.0, 110.0, 92.0, 22.0 ],
                                    "text": "prepend hidden"
                                }
                            },
                            {
                                "box": {
                                    "arrows": 3,
                                    "hint": "Mouse click on keyboard keys for variable Velocity",
                                    "id": "obj-12",
                                    "justification": 1,
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 641.0, 491.0, 16.0, 99.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 759.0, 48.0, 16.0, 102.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hidden": 1,
                                    "hint": "Static Velocity for Computer Keyboard Keys",
                                    "id": "obj-11",
                                    "maxclass": "live.slider",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 854.0, 37.0, 50.0, 95.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 741.0, 43.0, 50.0, 127.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 100.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.slider",
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "live.slider",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 0
                                        }
                                    },
                                    "showname": 0,
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "live.slider"
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
                                    "patching_rect": [ 263.0, 646.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 263.0, 592.0, 101.0, 22.0 ],
                                    "text": "prepend midinote"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 263.0, 553.0, 54.0, 22.0 ],
                                    "text": "pack 0 0"
                                }
                            },
                            {
                                "box": {
                                    "hint": "Get MIDI devices",
                                    "id": "obj-5",
                                    "maxclass": "live.button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 1,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 33.0, 37.0, 15.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 145.0, 3.0, 15.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "off", "on" ],
                                            "parameter_longname": "live.button",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.button",
                                            "parameter_type": 2
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "live.button"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-71",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "int", "" ],
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
                                        "rect": [ 59.0, 119.0, 725.0, 721.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-99",
                                                    "maxclass": "number",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 418.0, 530.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-58",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 418.0, 45.0, 207.0, 20.0 ],
                                                    "text": "from the [ddg.v2mono] helpfile"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-55",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 131.0, 177.0, 52.0, 22.0 ],
                                                    "text": "gate 1 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-56",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 177.0, 52.0, 22.0 ],
                                                    "text": "gate 1 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 187.0, 468.0, 50.0, 22.0 ],
                                                    "text": "i 100"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 514.0, 448.0, 35.0, 22.0 ],
                                                    "text": "set 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 463.0, 448.0, 39.0, 22.0 ],
                                                    "text": "set -1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-125",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "bang", "bang", "" ],
                                                    "patching_rect": [ 463.0, 414.0, 121.0, 22.0 ],
                                                    "text": "sel -2 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-124",
                                                    "maxclass": "incdec",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 418.0, 374.0, 20.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-64",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 418.0, 414.0, 32.0, 22.0 ],
                                                    "text": "* 12"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-63",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 454.0, 297.0, 30.0, 22.0 ],
                                                    "text": "dec"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-62",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 418.0, 297.0, 30.0, 22.0 ],
                                                    "text": "inc"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-54",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 418.0, 258.0, 92.0, 22.0 ],
                                                    "text": "route 120 122"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 138.0, 468.0, 30.0, 22.0 ],
                                                    "text": "+ 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 239.0, 258.0, 40.0, 22.0 ],
                                                    "text": "itoa"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-46",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "int" ],
                                                    "patching_rect": [ 277.0, 375.0, 69.0, 22.0 ],
                                                    "text": "unpack s 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-47",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "int" ],
                                                    "patching_rect": [ 327.0, 414.0, 30.0, 22.0 ],
                                                    "text": "t i 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-48",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 239.0, 297.0, 75.0, 22.0 ],
                                                    "text": "prepend get"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "data": {
                                                        "a": 60,
                                                        "w": 61,
                                                        "s": 62,
                                                        "e": 63,
                                                        "d": 64,
                                                        "f": 65,
                                                        "t": 66,
                                                        "g": 67,
                                                        "y": 68,
                                                        "h": 69,
                                                        "u": 70,
                                                        "j": 71,
                                                        "k": 72,
                                                        "o": 73,
                                                        "l": 74,
                                                        "p": 75
                                                    },
                                                    "id": "obj-49",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 5,
                                                    "outlettype": [ "dictionary", "", "", "", "" ],
                                                    "patching_rect": [ 239.0, 336.0, 171.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "embed": 1,
                                                        "legacy": 1,
                                                        "parameter_enable": 0,
                                                        "parameter_mappable": 0
                                                    },
                                                    "text": "dict keys @embed 1 @quiet 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "int", "int", "int", "int" ],
                                                    "patching_rect": [ 164.0, 100.0, 51.0, 22.0 ],
                                                    "text": "keyup"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-44",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "int" ],
                                                    "patching_rect": [ 88.0, 375.0, 69.0, 22.0 ],
                                                    "text": "unpack s 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "bang" ],
                                                    "patching_rect": [ 138.0, 414.0, 68.0, 22.0 ],
                                                    "text": "t i b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-24",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 50.0, 258.0, 40.0, 22.0 ],
                                                    "text": "itoa"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-23",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 297.0, 75.0, 22.0 ],
                                                    "text": "prepend get"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "data": {
                                                        "a": 60,
                                                        "w": 61,
                                                        "s": 62,
                                                        "e": 63,
                                                        "d": 64,
                                                        "f": 65,
                                                        "t": 66,
                                                        "g": 67,
                                                        "y": 68,
                                                        "h": 69,
                                                        "u": 70,
                                                        "j": 71,
                                                        "k": 72,
                                                        "o": 73,
                                                        "l": 74,
                                                        "p": 75
                                                    },
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 5,
                                                    "outlettype": [ "dictionary", "", "", "", "" ],
                                                    "patching_rect": [ 50.0, 336.0, 171.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "embed": 1,
                                                        "legacy": 1,
                                                        "parameter_enable": 0,
                                                        "parameter_mappable": 0
                                                    },
                                                    "text": "dict keys @embed 1 @quiet 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "int", "int", "int", "int" ],
                                                    "patching_rect": [ 83.0, 100.0, 51.0, 22.0 ],
                                                    "text": "key"
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
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-57",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 218.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-59",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 138.0, 639.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-61",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 187.0, 639.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-67",
                                                    "index": 3,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 418.0, 639.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-125", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-124", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-64", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-124", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-125", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-125", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 1 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "source": [ "obj-15", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-56", 1 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 0 ],
                                                    "midpoints": [ 59.5, 155.2734375, 140.5, 155.2734375 ],
                                                    "order": 0,
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-56", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "source": [ "obj-23", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 0 ],
                                                    "source": [ "obj-24", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-26", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-26", 0 ],
                                                    "source": [ "obj-44", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-47", 0 ],
                                                    "source": [ "obj-46", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "source": [ "obj-47", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "midpoints": [ 336.5, 450.5703125, 147.5, 450.5703125 ],
                                                    "source": [ "obj-47", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-49", 0 ],
                                                    "source": [ "obj-48", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-46", 0 ],
                                                    "source": [ "obj-49", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-62", 0 ],
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-63", 0 ],
                                                    "source": [ "obj-54", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-55", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-56", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-54", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-56", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 1 ],
                                                    "source": [ "obj-57", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-124", 0 ],
                                                    "midpoints": [ 523.5, 478.65625, 599.0, 478.65625, 599.0, 344.0, 427.5, 344.0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-124", 0 ],
                                                    "source": [ "obj-62", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-124", 0 ],
                                                    "source": [ "obj-63", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 1 ],
                                                    "midpoints": [ 427.5, 459.03125, 158.5, 459.03125 ],
                                                    "order": 1,
                                                    "source": [ "obj-64", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-99", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-64", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-124", 0 ],
                                                    "midpoints": [ 472.5, 484.91796875, 605.65625, 484.91796875, 605.65625, 337.93359375, 427.5, 337.93359375 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-59", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-48", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-67", 0 ],
                                                    "source": [ "obj-99", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 717.0, 192.0, 156.0, 22.0 ],
                                    "text": "p computer_keyboard_keys"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-101",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 892.0, 270.0, 48.0, 20.0 ],
                                    "text": "z / x"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgcolor2": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgfillcolor_angle": 270.0,
                                    "bgfillcolor_autogradient": 0.0,
                                    "bgfillcolor_color": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgfillcolor_color1": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgfillcolor_color2": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgfillcolor_proportion": 0.5,
                                    "bgfillcolor_type": "gradient",
                                    "fontsize": 14.0,
                                    "gradient": 1,
                                    "hidden": 1,
                                    "hint": "Octave z/x",
                                    "id": "obj-97",
                                    "ignoreclick": 1,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 832.0, 268.0, 41.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 4.0, 87.0, 32.0, 24.0 ],
                                    "text": "0",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "id": "obj-78",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 33.0, 360.0, 87.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 41.0, 0.0, 69.0, 20.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.theme_locked_bgcolor"
                                        }
                                    },
                                    "text": "MIDI Input"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "id": "obj-76",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 33.0, 335.0, 87.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 330.0, 0.0, 64.0, 20.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.theme_locked_bgcolor"
                                        }
                                    },
                                    "text": "Keyboard"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "id": "obj-75",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 33.0, 310.0, 87.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 178.0, 0.0, 41.0, 20.0 ],
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.theme_locked_bgcolor"
                                        }
                                    },
                                    "text": "Notes"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 33.0, 230.0, 159.0, 22.0 ],
                                    "text": "clearchecks, checkitem $1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-66",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 906.0, 150.0, 87.0, 20.0 ],
                                    "text": "static velocity"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "number",
                                    "maximum": 127,
                                    "minimum": 1,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 854.0, 149.0, 50.0, 22.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 100.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "number",
                                            "parameter_mmin": 1.0,
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
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "bang" ],
                                    "patching_rect": [ 263.0, 72.0, 60.0, 22.0 ],
                                    "text": "t i b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "clear", "flush" ],
                                    "patching_rect": [ 182.0, 444.0, 70.0, 22.0 ],
                                    "text": "t clear flush"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 580.0, 269.0, 52.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 501.0, 269.0, 52.0, 22.0 ],
                                    "text": "gate 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 501.0, 110.0, 33.0, 22.0 ],
                                    "text": "== 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 619.0, 110.0, 33.0, 22.0 ],
                                    "text": "== 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 372.0, 149.0, 112.0, 22.0 ],
                                    "text": "prepend inputmode"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 372.0, 110.0, 92.0, 22.0 ],
                                    "text": "list.lookup 2 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 263.0, 149.0, 86.0, 22.0 ],
                                    "text": "prepend mode"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 263.0, 110.0, 92.0, 22.0 ],
                                    "text": "list.lookup 1 1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "tab",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 263.0, 34.0, 509.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 330.0, 23.0, 406.0, 20.0 ],
                                    "rounded": 2.0,
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "Mouse Clicks", "Computer Keyboard Keys", "External MIDI Keyboard" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "tab[1]",
                                            "parameter_mmax": 2,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "tab[1]",
                                            "parameter_type": 2
                                        }
                                    },
                                    "tabs": [ "Mouse Clicks", "Computer Keyboard Keys", "External MIDI Keyboard" ],
                                    "varname": "tab[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 534.0, 192.0, 123.0, 22.0 ],
                                    "text": "r #1_midi_input"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "int", "int" ],
                                    "patching_rect": [ 534.0, 230.0, 41.0, 22.0 ],
                                    "text": "notein"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 74.0, 192.0, 123.0, 22.0 ],
                                    "text": "s #1_midi_input"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "items": [ "to Max 1", ",", "to Max 2" ],
                                    "maxclass": "umenu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 33.0, 142.0, 100.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 41.0, 22.0, 121.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 64.0, 33.0, 70.0, 22.0 ],
                                    "text": "loadmess 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 33.0, 72.0, 50.0, 22.0 ],
                                    "text": "midiinfo"
                                }
                            },
                            {
                                "box": {
                                    "blackkeycolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "hkeycolor": [ 0.6189349783285454, 0.744701397656435, 0.9537501082553762, 1.0 ],
                                    "id": "obj-142",
                                    "inputmode": 2,
                                    "maxclass": "kslider",
                                    "mode": 1,
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 263.0, 483.0, 336.0, 53.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 39.0, 48.0, 700.0, 102.0 ],
                                    "saved_attribute_attributes": {
                                        "hkeycolor": {
                                            "expression": "themecolor.theme_color"
                                        },
                                        "selectioncolor": {
                                            "expression": "themecolor.theme_selectioncolor"
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 48 ],
                                            "parameter_invisible": 1,
                                            "parameter_longname": "kslider[1]",
                                            "parameter_mmax": 83.0,
                                            "parameter_mmin": 36.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "kslider",
                                            "parameter_type": 1
                                        }
                                    },
                                    "varname": "kslider"
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "border": 1,
                                    "grad1": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "grad2": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "id": "obj-8",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 699.0, 384.0, 40.0, 40.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 37.0, 8.0, 129.0, 37.0 ],
                                    "proportion": 0.5,
                                    "rounded": 4,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_color"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "border": 1,
                                    "grad1": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "grad2": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "id": "obj-7",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 756.0, 384.0, 40.0, 40.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 173.0, 8.0, 146.0, 37.0 ],
                                    "proportion": 0.5,
                                    "rounded": 4,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_color"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "border": 1,
                                    "grad1": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "grad2": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "id": "obj-6",
                                    "maxclass": "panel",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 807.0, 384.0, 40.0, 40.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 325.0, 8.0, 414.0, 37.0 ],
                                    "proportion": 0.5,
                                    "rounded": 4,
                                    "saved_attribute_attributes": {
                                        "bordercolor": {
                                            "expression": "themecolor.theme_color"
                                        }
                                    }
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "order": 0,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-97", 0 ],
                                    "order": 1,
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 1 ],
                                    "order": 0,
                                    "source": [ "obj-142", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 1 ],
                                    "order": 1,
                                    "source": [ "obj-142", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-142", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 0,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "order": 1,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 1 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 1 ],
                                    "source": [ "obj-2", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-142", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-142", 0 ],
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-142", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "order": 0,
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "order": 2,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "order": 1,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "order": 0,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-142", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-142", 1 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-142", 0 ],
                                    "source": [ "obj-39", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "order": 0,
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "order": 4,
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "midpoints": [ 272.5, 102.0, 381.5, 102.0 ],
                                    "order": 3,
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "midpoints": [ 272.5, 102.0, 628.5, 102.0 ],
                                    "order": 1,
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "midpoints": [ 272.5, 102.0, 510.5, 102.0 ],
                                    "order": 2,
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-43", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 1 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-53", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-68", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 1 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "midpoints": [ 42.5, 262.0, 22.3671875, 262.0, 22.3671875, 132.0, 42.5, 132.0 ],
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-142", 1 ],
                                    "source": [ "obj-71", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-142", 0 ],
                                    "source": [ "obj-71", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-97", 1 ],
                                    "source": [ "obj-71", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 81.0, 171.0, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 155.0, 797.0, 175.0 ],
                    "varname": "keyboard",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "appearance": 3,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Global Volume of the Synth, pre Reverb",
                    "id": "obj-79",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 99.0, 316.0, 50.0, 70.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 753.0, 541.0, 50.0, 70.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 0.25,
                            "parameter_initial": [ -9.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "synthVolume",
                            "parameter_mmax": 0.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Volume",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "synthVolume"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-77",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 116.0, 403.0, 75.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 564.0, 606.0, 75.0, 21.0 ],
                    "text": "Glide",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "appearance": 2,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Global Glide time in ms of Synth parameters (Pitch)",
                    "id": "obj-78",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 116.0, 424.0, 75.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 564.0, 625.0, 75.0, 18.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 4.0,
                            "parameter_initial": [ 20.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "synthGlide",
                            "parameter_mmax": 666.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Filter",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "synthGlide"
                }
            },
            {
                "box": {
                    "args": [ "#0" ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "embed": 1,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-5",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
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
                        "rect": [ 59.0, 111.0, 1080.0, 448.0 ],
                        "openinpresentation": 1,
                        "gridonopen": 2,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 960.0, 35.0, 56.0, 22.0 ],
                                    "restore": {
                                        "filterCutoff": [ 56.37795275590554 ],
                                        "filterCutoffKeytrack": [ 50.0 ],
                                        "filterEnvAttack": [ 100.0 ],
                                        "filterEnvDecay": [ 199.99999999999997 ],
                                        "filterEnvDelay": [ 0.0 ],
                                        "filterEnvRange": [ 33.0 ],
                                        "filterEnvSustain": [ 49.99999999999999 ],
                                        "filterResonance": [ 58.0 ],
                                        "filterTypeMorph": [ 0.0 ]
                                    },
                                    "restore_extra": {
                                        "filterCutoff": {
                                            "id": "obj-3"
                                        },
                                        "filterCutoffKeytrack": {
                                            "id": "obj-16"
                                        },
                                        "filterEnvAttack": {
                                            "id": "obj-39"
                                        },
                                        "filterEnvDecay": {
                                            "id": "obj-46"
                                        },
                                        "filterEnvDelay": {
                                            "id": "obj-30"
                                        },
                                        "filterEnvRange": {
                                            "id": "obj-60"
                                        },
                                        "filterEnvSustain": {
                                            "id": "obj-47"
                                        },
                                        "filterResonance": {
                                            "id": "obj-9"
                                        },
                                        "filterTypeMorph": {
                                            "id": "obj-21"
                                        }
                                    },
                                    "text": "autopattr",
                                    "varname": "u275007555"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 114.0, 279.0, 101.0, 22.0 ],
                                    "text": "prepend keytrack"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 223.0, 279.0, 86.0, 22.0 ],
                                    "text": "prepend interp"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 635.0, 279.0, 85.0, 22.0 ],
                                    "text": "prepend delay"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 922.0, 279.0, 94.0, 22.0 ],
                                    "text": "prepend sustain"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 825.0, 279.0, 88.0, 22.0 ],
                                    "text": "prepend decay"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 729.0, 279.0, 88.0, 22.0 ],
                                    "text": "prepend attack"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 410.0, 279.0, 112.0, 22.0 ],
                                    "text": "prepend resonance"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 533.0, 279.0, 96.0, 22.0 ],
                                    "text": "prepend contour"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 317.0, 279.0, 85.0, 22.0 ],
                                    "text": "prepend cutoff"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 223.0, 333.0, 79.0, 22.0 ],
                                    "text": "prepend filter"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 533.0, 168.0, 40.0, 22.0 ],
                                    "text": "* 0.01"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "justification": 1,
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 999.0, 191.0, 7.0, 17.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 572.0, 15.0, 7.333333333333333, 10.666666666666666 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "justification": 1,
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 691.0, 195.0, 306.0, 9.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 270.0, 11.0, 306.0, 9.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Filter Modulation Envelope Amount Positive / Negative from Cutoff point, Envelope triggered by Velocity",
                                    "id": "obj-60",
                                    "maxclass": "live.dial",
                                    "needlemode": 2,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 533.0, 109.0, 27.0, 42.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 241.0, 7.0, 27.0, 42.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 33.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "filterEnvRange",
                                            "parameter_mmax": 100.0,
                                            "parameter_mmin": -100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Env",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "shownumber": 0,
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "filterEnvRange"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgcolor2": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgfillcolor_angle": 270.0,
                                    "bgfillcolor_autogradient": 0.0,
                                    "bgfillcolor_color": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgfillcolor_color1": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgfillcolor_color2": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgfillcolor_proportion": 0.5,
                                    "bgfillcolor_type": "gradient",
                                    "fontsize": 14.0,
                                    "gradient": 1,
                                    "id": "obj-59",
                                    "ignoreclick": 1,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 577.0, 245.0, 32.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 239.0, 37.0, 32.0, 24.0 ],
                                    "text": "+",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "int", "int" ],
                                    "patching_rect": [ 590.0, 168.0, 58.0, 22.0 ],
                                    "text": "change 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 590.0, 206.0, 80.0, 22.0 ],
                                    "text": "list.lookup - +"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 590.0, 129.0, 43.0, 22.0 ],
                                    "text": ">= 0.5"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-55",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 922.0, 206.0, 75.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 502.0, 18.0, 75.0, 21.0 ],
                                    "text": "Sustain",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-54",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 845.0, 206.0, 75.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 425.0, 18.0, 75.0, 21.0 ],
                                    "text": "Decay",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-53",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 768.0, 206.0, 75.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 348.0, 18.0, 75.0, 21.0 ],
                                    "text": "Attack",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-51",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 691.0, 206.0, 75.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 271.0, 18.0, 75.0, 21.0 ],
                                    "text": "Delay",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Sustain amount in % (linear) of Filter Modulation Envelope",
                                    "id": "obj-47",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 922.0, 229.0, 75.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 502.0, 39.0, 75.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 0.9,
                                            "parameter_initial": [ 50.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "filterEnvSustain",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Sustain",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "filterEnvSustain"
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Decay time in ms of Filter Modulation Envelope",
                                    "id": "obj-46",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 845.0, 229.0, 75.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 425.0, 39.0, 75.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 2.0,
                                            "parameter_initial": [ 200.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "filterEnvDecay",
                                            "parameter_mmax": 1000.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Decay",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "filterEnvDecay"
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Attack time in ms of Filter Modulation Envelope",
                                    "id": "obj-39",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 768.0, 229.0, 75.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 348.0, 39.0, 75.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 2.0,
                                            "parameter_initial": [ 100.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "filterEnvAttack",
                                            "parameter_mmax": 1000.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Attack",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "filterEnvAttack"
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Delay in ms before Filter Envelope kicks in (after Key pressed)",
                                    "id": "obj-30",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 691.0, 229.0, 75.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 271.0, 39.0, 75.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 2.0,
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "filterEnvDelay",
                                            "parameter_mmax": 1000.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Delay",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "filterEnvDelay"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 167.0, 70.0, 39.0, 22.0 ],
                                    "text": "t 100."
                                }
                            },
                            {
                                "box": {
                                    "handoff": "",
                                    "hint": "Set Filter to Highpass (100 %)",
                                    "id": "obj-27",
                                    "maxclass": "ubutton",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 167.0, 39.0, 39.75, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 50.0, 18.0, 21.666666666666668, 21.0 ],
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 97.0, 70.0, 32.0, 22.0 ],
                                    "text": "t 50."
                                }
                            },
                            {
                                "box": {
                                    "handoff": "",
                                    "hint": "Set Filter to Bandpass (50 %)",
                                    "id": "obj-24",
                                    "maxclass": "ubutton",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 97.0, 39.0, 39.75, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 27.0, 18.0, 21.666666666666668, 21.0 ],
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 33.0, 70.0, 25.0, 22.0 ],
                                    "text": "t 0."
                                }
                            },
                            {
                                "box": {
                                    "handoff": "",
                                    "hint": "Set Filter to Lowpass (0 %)",
                                    "id": "obj-13",
                                    "maxclass": "ubutton",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 33.0, 39.0, 39.75, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 2.0, 18.0, 21.666666666666668, 21.0 ],
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 244.0, 169.0, 83.0, 20.0 ],
                                    "text": "0..1 Filter"
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Morph Filter Type Lowpass..Bandpass..Highpass",
                                    "id": "obj-21",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 167.0, 170.0, 75.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 39.0, 75.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "filterTypeMorph",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Filter",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "filterTypeMorph"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-22",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 167.0, 149.0, 75.0, 21.0 ],
                                    "text": "Morph",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 135.0, 228.0, 83.0, 20.0 ],
                                    "text": "0..1 Keytrack"
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Filter Cutoff Keytracking 0% (none) .. 100% (one-to-one). With Keytrack at 100% and Filter in self-oscillation (Resonance high) this will add an additional Oscillator",
                                    "id": "obj-16",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 58.0, 229.0, 75.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 158.0, 39.0, 75.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 50.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "filterCutoffKeytrack",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Keytrack",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "filterCutoffKeytrack"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 454.0, 243.0, 83.0, 20.0 ],
                                    "text": "0.1..1.3 Res"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 410.0, 206.0, 126.75, 35.0 ],
                                    "text": "expr (pow($f1\\, 0.707107) * 1.2) + 0.1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Main Filter Resonance 0..100% mapped logarithmically",
                                    "id": "obj-9",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 402.0, 147.0, 27.0, 42.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 129.0, 7.0, 27.0, 42.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 58.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "filterResonance",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Res",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "shownumber": 0,
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "filterResonance"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 443.0, 169.0, 83.0, 20.0 ],
                                    "text": "10..120 Pitch"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 317.0, 109.0, 124.0, 22.0 ],
                                    "text": "expr ($f1 * 110.) + 10."
                                }
                            },
                            {
                                "box": {
                                    "appearance": 3,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Main Filter Cutoff Frequency, 0..100% mapped to Pitch linearly",
                                    "id": "obj-3",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 286.0, 35.0, 50.0, 57.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 77.0, 0.0, 50.0, 57.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 56.37795275590554 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "filterCutoff",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Cutoff",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "shownumber": 0,
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "filterCutoff"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-18",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 58.0, 208.0, 75.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 158.0, 18.0, 75.0, 21.0 ],
                                    "text": "Keytrack",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 167.0, 188.0, 75.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 18.0, 75.0, 21.0 ],
                                    "text": "LP..BP..HP",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 223.0, 387.0, 144.625, 22.0 ],
                                    "text": "s #1_to_poly_synth"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
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
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-16", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-21", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-32", 0 ]
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
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-47", 0 ]
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
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 1 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "source": [ "obj-60", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-9", 1 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 290.0, 259.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 62.0, 486.0, 586.0, 74.0 ],
                    "varname": "filter",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "local": 1,
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 82.0, 621.0, 45.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 755.0, 613.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-1",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "evimenu_examples.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 672.0, 27.0, 192.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 672.0, 27.0, 192.0, 23.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ "#0" ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "embed": 1,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-7",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
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
                        "rect": [ 399.0, 92.0, 916.0, 718.0 ],
                        "openinpresentation": 1,
                        "gridonopen": 2,
                        "boxes": [
                            {
                                "box": {
                                    "bgcolor": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgcolor2": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgfillcolor_angle": 270.0,
                                    "bgfillcolor_autogradient": 0.0,
                                    "bgfillcolor_color": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgfillcolor_color1": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgfillcolor_color2": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                                    "bgfillcolor_proportion": 0.5,
                                    "bgfillcolor_type": "gradient",
                                    "fontsize": 14.0,
                                    "gradient": 1,
                                    "id": "obj-59",
                                    "ignoreclick": 1,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 332.0, 673.0, 32.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 79.0, 55.0, 32.0, 24.0 ],
                                    "text": "+",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "int", "int" ],
                                    "patching_rect": [ 345.0, 596.0, 58.0, 22.0 ],
                                    "text": "change 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 345.0, 634.0, 80.0, 22.0 ],
                                    "text": "list.lookup - +"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 345.0, 557.0, 43.0, 22.0 ],
                                    "text": ">= 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 157.0, 49.0, 56.0, 22.0 ],
                                    "restore": {
                                        "oscEnv": [ 99.99999999999999 ],
                                        "oscMod": [ 33.0 ],
                                        "oscShape": [ 66.0 ],
                                        "oscUnisonAmount": [ 10.000000000000002 ],
                                        "oscUnisonType": [ 1.0 ],
                                        "oscUnisonVoices": [ 2.0 ]
                                    },
                                    "restore_extra": {
                                        "oscEnv": {
                                            "id": "obj-43"
                                        },
                                        "oscMod": {
                                            "id": "obj-40"
                                        },
                                        "oscShape": {
                                            "id": "obj-25"
                                        },
                                        "oscUnisonAmount": {
                                            "id": "obj-5"
                                        },
                                        "oscUnisonType": {
                                            "id": "obj-4"
                                        },
                                        "oscUnisonVoices": {
                                            "id": "obj-3"
                                        }
                                    },
                                    "text": "autopattr",
                                    "varname": "u275007555"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 157.0, 611.0, 144.625, 22.0 ],
                                    "text": "s #1_to_poly_synth"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 728.0, 344.0, 96.0, 22.0 ],
                                    "text": "prepend amount"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 628.0, 344.0, 79.0, 22.0 ],
                                    "text": "prepend type"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 526.0, 344.0, 90.0, 22.0 ],
                                    "text": "prepend voices"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 628.0, 503.0, 91.0, 22.0 ],
                                    "text": "prepend unison"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 403.0, 503.0, 109.0, 22.0 ],
                                    "text": "prepend morphenv"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 275.0, 503.0, 113.0, 22.0 ],
                                    "text": "prepend morphmod"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 157.0, 503.0, 109.0, 22.0 ],
                                    "text": "prepend morphosc"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 157.0, 557.0, 103.0, 22.0 ],
                                    "text": "prepend oscillator"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "justification": 1,
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 340.0, 366.0, 68.0, 9.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 196.0, 48.0, 52.0, 8.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "justification": 1,
                                    "maxclass": "live.line",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 310.0, 351.0, 68.0, 9.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 111.0, 48.0, 41.0, 8.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 477.0, 158.0, 87.0, 22.0 ],
                                    "text": "prepend active"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 477.0, 119.0, 29.5, 22.0 ],
                                    "text": "> 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 304.0, 413.0, 83.0, 20.0 ],
                                    "text": "-1..1 Mod"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 480.0, 452.0, 83.0, 20.0 ],
                                    "text": "0..666 ms"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-42",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 403.0, 432.0, 75.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 23.0, 75.0, 21.0 ],
                                    "text": "Env",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Osc Mod Envelope Time in ms, triggered by Velocity",
                                    "id": "obj-43",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 403.0, 453.0, 75.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 44.0, 75.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 2.0,
                                            "parameter_initial": [ 100.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "oscEnv",
                                            "parameter_mmax": 666.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Filter",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 2
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "oscEnv"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 275.0, 451.0, 40.0, 22.0 ],
                                    "text": "* 0.01"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Osc Shape Modulation Envelope Positive / Negative, triggered by Velocity",
                                    "id": "obj-40",
                                    "maxclass": "live.dial",
                                    "needlemode": 2,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 275.0, 396.0, 27.0, 42.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 81.0, 25.0, 27.0, 42.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 33.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "oscMod",
                                            "parameter_mmax": 100.0,
                                            "parameter_mmin": -100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Mod",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "shownumber": 0,
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "oscMod"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-38",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 554.0, 288.0, 75.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 321.0, 22.0, 75.0, 21.0 ],
                                    "text": "Type",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 60.0, 391.0, 32.0, 22.0 ],
                                    "text": "t 33."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 208.0, 391.0, 32.0, 22.0 ],
                                    "text": "t 66."
                                }
                            },
                            {
                                "box": {
                                    "handoff": "",
                                    "hint": "Set Osc Shape to Rect",
                                    "id": "obj-35",
                                    "maxclass": "ubutton",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 208.0, 360.0, 39.75, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 184.0, 22.0, 39.75, 21.0 ],
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1
                                }
                            },
                            {
                                "box": {
                                    "handoff": "",
                                    "hint": "Set Osc Shape to Tri",
                                    "id": "obj-34",
                                    "maxclass": "ubutton",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 60.0, 360.0, 39.75, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 126.0, 22.0, 39.75, 21.0 ],
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-33",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 114.0, 337.0, 75.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 136.0, 2.0, 75.0, 21.0 ],
                                    "text": "Shape",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-32",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 162.0, 360.0, 39.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 184.0, 22.0, 39.0, 21.0 ],
                                    "text": "Rect",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-31",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 104.0, 360.0, 39.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 126.0, 22.0, 39.0, 21.0 ],
                                    "text": "Tri",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "appearance": 3,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Main Osc Shape, Morph Pulse..Tri..Rect..Pulse, modulated by 'Mod' dial",
                                    "id": "obj-25",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 126.0, 430.0, 50.0, 43.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 149.0, 31.0, 50.0, 43.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 66.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "oscShape",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Osc",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "showname": 0,
                                    "shownumber": 0,
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "oscShape"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 672.0, 245.0, 40.0, 22.0 ],
                                    "text": "* 0.01"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 749.0, 209.0, 83.0, 20.0 ],
                                    "text": "0..1 % Cents"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 575.0, 67.0, 83.0, 20.0 ],
                                    "text": "1..8 Voices"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 672.0, 189.0, 75.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 433.0, 22.0, 75.0, 21.0 ],
                                    "text": "Amount",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "appearance": 2,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Osc Unison Amount in Cents, % 0..100 mapped exponentially to 5..199 Cents",
                                    "id": "obj-5",
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 672.0, 210.0, 75.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 433.0, 44.0, 75.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 3.0,
                                            "parameter_initial": [ 10.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "oscUnisonAmount",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Filter",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "oscUnisonAmount"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Osc Unison Type, Unison affects: Pitch, Pitch & Shape, Pitch & Hard Sync, Pitch & Shape & Hard Sync",
                                    "id": "obj-4",
                                    "maxclass": "live.menu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 628.0, 289.0, 145.0, 18.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 286.0, 44.0, 145.0, 18.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "Pitch", "Pitch + Shape", "Pitch + Sync", "Pitch + Shape + Sync" ],
                                            "parameter_initial": [ 1.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "oscUnisonType",
                                            "parameter_mmax": 3,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "Unison",
                                            "parameter_type": 2
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "oscUnisonType"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "hint": "Osc Unison Voices, 1 (no Unison) to 8 Voices, currently:",
                                    "id": "obj-3",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 522.0, 49.0, 51.0, 55.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 241.0, 25.0, 51.0, 55.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 2.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "oscUnisonVoices",
                                            "parameter_mmax": 8.0,
                                            "parameter_mmin": 1.0,
                                            "parameter_modmode": 4,
                                            "parameter_shortname": "Unison",
                                            "parameter_type": 1,
                                            "parameter_unitstyle": 0
                                        }
                                    },
                                    "valuepopup": 1,
                                    "valuepopuplabel": 1,
                                    "varname": "oscUnisonVoices"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-25", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "order": 0,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "order": 1,
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "source": [ "obj-40", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "order": 1,
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "order": 0,
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 1 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "source": [ "obj-58", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 233.0, 259.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 62.0, 359.0, 509.0, 88.0 ],
                    "varname": "oscillator",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "border": 1,
                    "grad1": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                    "grad2": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                    "id": "obj-8",
                    "maxclass": "panel",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 233.0, 259.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 47.0, 359.0, 539.0, 88.0 ],
                    "proportion": 0.5,
                    "rounded": 4,
                    "saved_attribute_attributes": {
                        "bordercolor": {
                            "expression": "themecolor.theme_color"
                        }
                    }
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "border": 1,
                    "grad1": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                    "grad2": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                    "id": "obj-14",
                    "maxclass": "panel",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 290.0, 259.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 47.0, 479.0, 616.0, 82.0 ],
                    "proportion": 0.5,
                    "rounded": 4,
                    "saved_attribute_attributes": {
                        "bordercolor": {
                            "expression": "themecolor.theme_color"
                        }
                    }
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "border": 1,
                    "grad1": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                    "grad2": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                    "id": "obj-15",
                    "maxclass": "panel",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 341.0, 259.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 47.0, 592.0, 416.0, 66.0 ],
                    "proportion": 0.5,
                    "rounded": 4,
                    "saved_attribute_attributes": {
                        "bordercolor": {
                            "expression": "themecolor.theme_color"
                        }
                    }
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-26",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 254.0, 385.0, 95.0, 60.0 ],
                    "text": "(i messed up this scaling before tuning presets, sorry)"
                }
            },
            {
                "box": {
                    "background": 1,
                    "border": 0,
                    "embed": 0,
                    "filename": "evi.helpname.js",
                    "id": "obj-36",
                    "ignoreclick": 1,
                    "jsarguments": [ "evieve Examples: Polysynth", 660 ],
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 10.0, 660.0, 57.599853515625 ],
                    "presentation": 1,
                    "presentation_rect": [ 10.0, 10.0, 660.0, 57.599853515625 ],
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
                    "id": "obj-37",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 10.0, 70.0, 668.0, 38.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 10.0, 70.0, 668.0, 38.0 ],
                    "text": "Expensive 8 voice Polysynth example using evieve primitives, with unison and key tracked filter per voice. Supposed to be 'modern' sounding but plenty of wobblyness tuned in. Start with the Presets (and Velocity is very important!).",
                    "varname": "digest_comment"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 1 ],
                    "order": 0,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "order": 1,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "order": 1,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "order": 0,
                    "source": [ "obj-18", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 1 ],
                    "order": 1,
                    "source": [ "obj-18", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "order": 0,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-24", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-28", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "midpoints": [ 606.5, 608.0, 529.578125, 608.0, 529.578125, 137.0, 432.5, 137.0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 2 ],
                    "source": [ "obj-78", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "source": [ "obj-79", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-18::obj-54::obj-10": [ "damp", "damp", 0 ],
            "obj-18::obj-54::obj-12": [ "reverbGain", "reverbGain", 0 ],
            "obj-18::obj-54::obj-2": [ "preDelay", "preDelay", 0 ],
            "obj-18::obj-54::obj-24": [ "band1Type", "band1Type", 0 ],
            "obj-18::obj-54::obj-25": [ "band2Type", "band2Type", 0 ],
            "obj-18::obj-54::obj-28": [ "band1Cutoff", "band1Cutoff", 0 ],
            "obj-18::obj-54::obj-29": [ "band2Cutoff", "band2Cutoff", 0 ],
            "obj-18::obj-54::obj-3": [ "lowDecay", "lowDecay", 0 ],
            "obj-18::obj-54::obj-30": [ "band1Gain", "band1Gain", 0 ],
            "obj-18::obj-54::obj-32": [ "band2Gain", "band2Gain", 0 ],
            "obj-18::obj-54::obj-33": [ "dryWet", "dryWet", 0 ],
            "obj-18::obj-54::obj-35": [ "bypass", "bypass", 0 ],
            "obj-18::obj-54::obj-5": [ "midDecay", "midDecay", 0 ],
            "obj-18::obj-54::obj-9": [ "crossover", "crossover", 0 ],
            "obj-24": [ "synthReverb", "Reverb", 0 ],
            "obj-49::obj-11": [ "live.slider", "live.slider", 0 ],
            "obj-49::obj-142": [ "kslider[1]", "kslider", 0 ],
            "obj-49::obj-29": [ "tab[1]", "tab[1]", 0 ],
            "obj-49::obj-5": [ "live.button", "live.button", 0 ],
            "obj-49::obj-60": [ "number", "number", 0 ],
            "obj-5::obj-16": [ "filterCutoffKeytrack", "Keytrack", 0 ],
            "obj-5::obj-21": [ "filterTypeMorph", "Filter", 0 ],
            "obj-5::obj-3": [ "filterCutoff", "Cutoff", 0 ],
            "obj-5::obj-30": [ "filterEnvDelay", "Delay", 0 ],
            "obj-5::obj-39": [ "filterEnvAttack", "Attack", 0 ],
            "obj-5::obj-46": [ "filterEnvDecay", "Decay", 0 ],
            "obj-5::obj-47": [ "filterEnvSustain", "Sustain", 0 ],
            "obj-5::obj-60": [ "filterEnvRange", "Env", 0 ],
            "obj-5::obj-9": [ "filterResonance", "Res", 0 ],
            "obj-6::obj-70": [ "synthEnvSustain", "Sustain", 0 ],
            "obj-6::obj-71": [ "synthEnvDecay", "Decay", 0 ],
            "obj-6::obj-72": [ "synthEnvAttack", "Attack", 0 ],
            "obj-6::obj-73": [ "synthEnvHold", "Delay", 0 ],
            "obj-6::obj-75": [ "synthEnvRelease", "Decay", 0 ],
            "obj-78": [ "synthGlide", "Filter", 0 ],
            "obj-79": [ "synthVolume", "Volume", 0 ],
            "obj-7::obj-25": [ "oscShape", "Osc", 0 ],
            "obj-7::obj-3": [ "oscUnisonVoices", "Unison", 0 ],
            "obj-7::obj-4": [ "oscUnisonType", "Unison", 0 ],
            "obj-7::obj-40": [ "oscMod", "Mod", 0 ],
            "obj-7::obj-43": [ "oscEnv", "Filter", 0 ],
            "obj-7::obj-5": [ "oscUnisonAmount", "Filter", 0 ],
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