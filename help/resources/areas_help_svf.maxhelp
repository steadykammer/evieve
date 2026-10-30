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
        "rect": [ 63.0, 100.0, 678.0, 587.0 ],
        "openrect": [ 0.0, 0.0, 660.0, 568.0 ],
        "openrectmode": 0,
        "bglocked": 1,
        "gridonopen": 2,
        "toolbarvisible": 0,
        "lefttoolbarpinned": 2,
        "toptoolbarpinned": 2,
        "righttoolbarpinned": 2,
        "bottomtoolbarpinned": 2,
        "toolbars_unpinned_last_save": 15,
        "subpatcher_template": "sub",
        "helpsidebarclosed": 1,
        "integercoordinates": 1,
        "title": "Nonlinear SVF Filters in evieve",
        "boxes": [
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 614.0, 648.0, 67.0, 22.0 ],
                    "save": [ "#N", "thispatcher", ";", "#Q", "window", "flags", "nogrow", "close", "nozoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 50, 50, 32768, 32768, ";", "#Q", "window", "size", 63, 100, 741, 687, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ],
                    "text": "thispatcher"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-11",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 634.0, 525.0, 19.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 487.0, 188.0, 19.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 614.0, 525.0, 19.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 467.0, 188.0, 19.0, 22.0 ],
                    "text": "1"
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
                        "rect": [ 175.0, 245.0, 880.0, 521.0 ],
                        "subpatcher_template": "<none>",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-69",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 409.0, 268.0, 415.0, 22.0 ],
                                    "text": "window flags zoom, window flags minimize, window flags grow, window exec"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "bang", "" ],
                                    "patching_rect": [ 396.0, 86.0, 44.0, 22.0 ],
                                    "text": "sel 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-67",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 53.0, 170.0, 32.0, 22.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-66",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 53.0, 209.0, 84.0, 22.0 ],
                                    "text": "savewindow 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 149.0, 208.0, 316.0, 22.0 ],
                                    "text": "window flags nozoom, window flags nogrow, window exec"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-70",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 396.0, 40.0000005, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-71",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 149.0, 443.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "source": [ "obj-67", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 0 ],
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "obj-68", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-68", 0 ],
                                    "source": [ "obj-70", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 614.0, 609.0, 59.0, 22.0 ],
                    "text": "p window"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-5",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "evimenu_topics.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 354.0, 17.0, 192.0, 23.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 101.0, 419.0, 222.0, 21.0 ],
                    "text": "For Linear SVF filters in evieve see:"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 39.0, 648.0, 184.0, 22.0 ],
                    "text": "list.reg areas_help_filter.maxhelp"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 101.0, 442.0, 192.0, 21.0 ],
                    "text": "Linear TPT (SVF) Filters in evieve",
                    "texton": "Linear TPT (SVF) Filters in evieve"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 32.0, 488.0, 224.0, 21.0 ],
                    "text": "See Also"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 102.0, 377.0, 190.0, 21.0 ],
                    "text": "Compare Nonlinear SVF filters",
                    "texton": "Compare Nonlinear SVF filters"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-57",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 102.0, 609.0, 208.0, 22.0 ],
                    "text": "list.reg evicompare_svffilters.maxhelp"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-21",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 102.0, 338.0, 190.0, 36.0 ],
                    "text": "For interactive comparison of Nonlinear SVF filters see:"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-41",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 424.0, 338.0, 52.0, 21.0 ],
                    "text": "gen~",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "border": 1,
                    "evaluatehref": 1,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-3",
                    "linkbold": 1,
                    "linkcolor": [ 0.203922, 0.47451, 0.780392, 1.0 ],
                    "maxclass": "markup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 62.0, 283.0, 484.0, 33.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "<link href=\"; max openhelp evi.arpnotch~\">evi.arpnotch~</link> - a nonlinear SVF Notch filter which can morph between LP..Notch..HP, as a partial emulation of the ARP 1047 filter/resonator",
                    "textcolor": [ 0.9, 0.9, 0.9, 1.0 ]
                }
            },
            {
                "box": {
                    "border": 1,
                    "evaluatehref": 1,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-2",
                    "linkbold": 1,
                    "linkcolor": [ 0.203922, 0.47451, 0.780392, 1.0 ],
                    "maxclass": "markup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 62.0, 214.0, 484.0, 33.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "<link href=\"; max openhelp evi.svfsynth~\">evi.svfsynth~</link> - oversampled SVF with a choice of 12dB and 24dB outputs and interpolation between Lowpass, Bandpass and Highpass filters",
                    "textcolor": [ 0.9, 0.9, 0.9, 1.0 ]
                }
            },
            {
                "box": {
                    "border": 1,
                    "evaluatehref": 1,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-6",
                    "linkbold": 1,
                    "linkcolor": [ 0.203922, 0.47451, 0.780392, 1.0 ],
                    "maxclass": "markup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 62.0, 145.0, 475.0, 47.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "<link href=\"; max openhelp evi.svfsmooth~\">evi.svfsmooth~</link> - a cheap nonlinear multimode SVF with simultaneous outputs for when you need a quick cheap synth filter, morphing @outlet 0 via the 'morph' attribute.",
                    "textcolor": [ 0.9, 0.9, 0.9, 1.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 17.0, 570.0, 222.0, 22.0 ],
                    "text": "list.reg areas_help_nonlinear.maxhelp"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 32.0, 526.0, 191.0, 20.0 ],
                    "text": "Nonlinear Filters in evieve",
                    "texton": "Nonlinear Filters in evieve"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 441.0, 570.0, 185.0, 22.0 ],
                    "text": "list.reg areas_help_korg.maxhelp"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 441.0, 526.0, 191.0, 20.0 ],
                    "text": "Nonlinear Korg Filters in evieve",
                    "texton": "Nonlinear Korg Filters in evieve"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 441.0, 648.0, 51.0, 22.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 441.0, 609.0, 79.0, 22.0 ],
                    "text": "prepend load"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 237.0, 570.0, 195.0, 22.0 ],
                    "text": "list.reg areas_help_ladder.maxhelp"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 237.0, 526.0, 191.0, 20.0 ],
                    "text": "Nonlinear Ladder Filters in evieve",
                    "texton": "Nonlinear Ladder Filters in evieve"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-25",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 62.0, 78.0, 518.0, 36.0 ],
                    "text": "All evieve SVF filters are modern TPT ('Zero Delay Feedback') filters with internal saturation and self-oscillation, with excellent behaviour under audio rate modulation"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 32.0, 18.0, 224.0, 21.0 ],
                    "text": "Nonlinear SVF filters in evieve"
                }
            },
            {
                "box": {
                    "hint": "Double-Click...",
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
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
                        "rect": [ 448.0, 116.0, 359.0, 360.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 86.0, 241.0, 77.0, 22.0 ],
                                    "text": "evi_arpnotch"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 86.0, 172.0, 75.0, 22.0 ],
                                    "text": "evi_svfsynth"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 5,
                                    "outlettype": [ "", "", "", "", "" ],
                                    "patching_rect": [ 86.0, 103.0, 85.0, 22.0 ],
                                    "text": "evi_svfsmooth"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 86.0, 20.0, 234.0, 20.0 ],
                                    "text": "evieve nonlinear SVF filters in gen~"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 19.0, 19.0, 28.0, 22.0 ],
                                    "text": "in 1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 19.0, 103.0, 35.0, 22.0 ],
                                    "text": "out 1"
                                }
                            }
                        ],
                        "lines": []
                    },
                    "patching_rect": [ 354.0, 441.0, 192.0, 22.0 ],
                    "text": "gen~ @t evieve_svf_filters_in_gen"
                }
            },
            {
                "box": {
                    "arrows": 2,
                    "border": 5.0,
                    "id": "obj-28",
                    "justification": 1,
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "orientation": 0,
                    "patching_rect": [ 427.0, 361.0, 43.0, 78.0 ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "hidden": 1,
                    "id": "obj-31",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 0.0, 0.0, 660.0, 568.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "hidden": 1,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "hidden": 1,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "hidden": 1,
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "hidden": 1,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "hidden": 1,
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "hidden": 1,
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "hidden": 1,
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "hidden": 1,
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "hidden": 1,
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "hidden": 1,
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "hidden": 1,
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "hidden": 1,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "hidden": 1,
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "autosave": 0,
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}