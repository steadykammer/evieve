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
        "rect": [ 63.0, 100.0, 660.0, 568.0 ],
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
        "title": "Overdrive Options in evieve",
        "boxes": [
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 55.0, 570.0, 215.0, 22.0 ],
                    "text": "list.reg areas_help_saturation.maxhelp"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 55.0, 493.0, 169.0, 20.0 ],
                    "text": "Saturation in evieve",
                    "texton": "Saturation in evieve"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 429.0, 493.0, 175.0, 21.0 ],
                    "text": "Compare evieve Saturation",
                    "texton": "Compare evieve Saturation"
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
                    "patching_rect": [ 429.0, 570.0, 217.0, 22.0 ],
                    "text": "list.reg evicompare_saturation.maxhelp"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-41",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 502.0, 193.0, 52.0, 21.0 ],
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
                    "id": "obj-6",
                    "linkbold": 1,
                    "linkcolor": [ 0.203922, 0.47451, 0.780392, 1.0 ],
                    "maxclass": "markup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 55.0, 262.0, 315.0, 33.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "<link href=\"; max openhelp evi.overdrive.fold~\">evi.overdrive.fold~</link> with 'Drive' input, as well as input/output gain wrapping and shaping filtering options",
                    "textcolor": [ 0.85, 0.85, 0.85, 1.0 ]
                }
            },
            {
                "box": {
                    "border": 1,
                    "evaluatehref": 1,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-4",
                    "linkbold": 1,
                    "linkcolor": [ 0.203922, 0.47451, 0.780392, 1.0 ],
                    "maxclass": "markup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 55.0, 208.0, 300.0, 38.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "<link href=\"; max openhelp evi.overdrive.wrap~\">evi.overdrive.wrap~</link> with 'Shape' input to control saturation (similar behaviour to MSP [overdrive~])",
                    "textcolor": [ 0.85, 0.85, 0.85, 1.0 ]
                }
            },
            {
                "box": {
                    "border": 1,
                    "evaluatehref": 1,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-40",
                    "linkbold": 1,
                    "linkcolor": [ 0.203922, 0.47451, 0.780392, 1.0 ],
                    "maxclass": "markup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 55.0, 154.0, 300.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "<link href=\"; max openhelp evi.overdrive.env~\">evi.overdrive.env~</link> passive overdrive, tanh-like input/output, optional envelope following",
                    "textcolor": [ 0.85, 0.85, 0.85, 1.0 ]
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
                    "patching_rect": [ 55.0, 648.0, 51.0, 22.0 ],
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
                    "patching_rect": [ 55.0, 609.0, 79.0, 22.0 ],
                    "text": "prepend load"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 246.0, 609.0, 222.0, 22.0 ],
                    "text": "list.reg areas_help_nonlinear.maxhelp"
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
                    "patching_rect": [ 246.0, 494.0, 169.0, 20.0 ],
                    "text": "Nonlinear Filters in evieve",
                    "texton": "Nonlinear Filters in evieve"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-20",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 55.0, 378.0, 341.0, 65.0 ],
                    "text": "There are many more saturation options in evieve MSP, gen~ and GenExpr. Check out the .genexpr source code for more, as well as the collection of nonlinear filters and the comparison patchers."
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-14",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 55.0, 87.0, 463.0, 50.0 ],
                    "text": "All evieve overdrives are built using 'anti-derivative antialiasing' techniques, offering excellent and cheap antialiasing, as well as optional oversampling and high frequency compensation. All are antialiased better than MSP [overdrive~]."
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 32.0, 18.0, 214.0, 21.0 ],
                    "text": "Overdrive alternatives in evieve"
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
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [ 401.0, 148.0, 402.0, 345.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 101.0, 241.0, 145.0, 22.0 ],
                                    "text": "evi_overdrive_fold @aa 5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 101.0, 172.0, 252.0, 22.0 ],
                                    "text": "evi_overdrive_wrap @aa 1 @hfcompensate 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 101.0, 103.0, 162.0, 22.0 ],
                                    "text": "evi_overdrive_env @follow 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 101.0, 20.0, 150.0, 20.0 ],
                                    "text": "evieve Overdrives in gen~"
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
                    "patching_rect": [ 429.0, 319.0, 197.0, 22.0 ],
                    "text": "gen~ @t evieve_overdrives_in_gen"
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
                    "patching_rect": [ 505.0, 216.0, 46.0, 101.0 ]
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
                    "destination": [ "obj-3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "hidden": 1,
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
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
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "hidden": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "hidden": 1,
                    "source": [ "obj-57", 0 ]
                }
            }
        ],
        "autosave": 0,
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}