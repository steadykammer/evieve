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
        "rect": [ 63.0, 131.0, 660.0, 568.0 ],
        "openrect": [ 0.0, 0.0, 660.0, 568.0 ],
        "openrectmode": 0,
        "bglocked": 1,
        "gridonopen": 2,
        "toolbarvisible": 0,
        "lefttoolbarpinned": 2,
        "toptoolbarpinned": 2,
        "righttoolbarpinned": 2,
        "bottomtoolbarpinned": 2,
        "enablehscroll": 0,
        "enablevscroll": 0,
        "subpatcher_template": "sub",
        "helpsidebarclosed": 1,
        "integercoordinates": 1,
        "title": "evieve filters ported from Pd",
        "boxes": [
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 87.0, 341.0, 104.0, 21.0 ],
                    "text": "See Also"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-41",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 435.0, 55.0, 52.0, 21.0 ],
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
                    "id": "obj-9",
                    "linkbold": 1,
                    "linkcolor": [ 0.203922, 0.47451, 0.780392, 1.0 ],
                    "maxclass": "markup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 87.0, 147.0, 73.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "<link href=\"; max openhelp evi.bp~\">evi.bp~</link>",
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
                    "id": "obj-8",
                    "linkbold": 1,
                    "linkcolor": [ 0.203922, 0.47451, 0.780392, 1.0 ],
                    "maxclass": "markup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 87.0, 230.0, 73.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "<link href=\"; max openhelp evi.vcf~\">evi.vcf~</link>",
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
                    "id": "obj-7",
                    "linkbold": 1,
                    "linkcolor": [ 0.203922, 0.47451, 0.780392, 1.0 ],
                    "maxclass": "markup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 172.0, 147.0, 139.0, 21.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "<link href=\"; max openhelp evi.butterworthlp6~\">evi.butterworthlp6~</link>",
                    "textcolor": [ 0.85, 0.85, 0.85, 1.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 85.0, 594.0, 185.0, 22.0 ],
                    "text": "list.reg areas_help_msp.maxhelp"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 295.0, 594.0, 203.0, 22.0 ],
                    "text": "list.reg evieve_biquad_filters.maxpat"
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
                    "patching_rect": [ 297.0, 388.0, 169.0, 20.0 ],
                    "text": "Biquad Filters in evieve",
                    "texton": "Biquad Filters in evieve"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 87.0, 388.0, 169.0, 20.0 ],
                    "text": "MSP Filters in evieve",
                    "texton": "MSP Filters in evieve"
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
                    "patching_rect": [ 356.0, 672.0, 51.0, 22.0 ],
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
                    "patching_rect": [ 356.0, 633.0, 79.0, 22.0 ],
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
                    "patching_rect": [ 133.0, 570.0, 184.0, 22.0 ],
                    "text": "list.reg areas_help_filter.maxhelp"
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
                    "patching_rect": [ 133.0, 440.0, 169.0, 20.0 ],
                    "text": " TPT Filters in evieve",
                    "texton": " TPT Filters in evieve"
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
                    "patching_rect": [ 356.0, 570.0, 222.0, 22.0 ],
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
                    "patching_rect": [ 356.0, 440.0, 169.0, 20.0 ],
                    "text": "Nonlinear Filters in evieve",
                    "texton": "Nonlinear Filters in evieve"
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
                    "patching_rect": [ 438.0, 88.0, 46.0, 101.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
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
                        "rect": [ 395.0, 401.0, 300.0, 269.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 77.0, 98.0, 111.0, 20.0 ],
                                    "text": "Pd filters (not TPT)"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 162.0, 142.0, 46.0, 22.0 ],
                                    "text": "evi_vcf"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 79.0, 196.0, 111.0, 22.0 ],
                                    "text": "evi_butterworth6"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 79.0, 142.0, 51.0, 22.0 ],
                                    "text": "evi_bp"
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
                                    "patching_rect": [ 19.0, 58.0, 35.0, 22.0 ],
                                    "text": "out 1"
                                }
                            }
                        ],
                        "lines": []
                    },
                    "patching_rect": [ 356.0, 206.0, 199.0, 22.0 ],
                    "text": "gen~ @t evieve_Pd_filters_in_gen~"
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 172.0, 123.0, 110.0, 22.0 ],
                    "text": "evi.butterworthlp6~"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 87.0, 123.0, 51.0, 22.0 ],
                    "text": "evi.bp~"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-44",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 30.0, 104.0, 21.0 ],
                    "text": "Pd filters"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-64",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 168.0, 100.0, 118.0, 21.0 ],
                    "text": "6-pole derivative",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "signal" ],
                    "patching_rect": [ 87.0, 206.0, 50.0, 22.0 ],
                    "text": "evi.vcf~"
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
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
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
                    "source": [ "obj-4", 0 ]
                }
            }
        ],
        "autosave": 0,
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}