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
        "rect": [ 51.0, 177.0, 841.0, 722.0 ],
        "openinpresentation": 1,
        "gridonopen": 2,
        "toolbarvisible": 0,
        "lefttoolbarpinned": 2,
        "toptoolbarpinned": 2,
        "righttoolbarpinned": 2,
        "bottomtoolbarpinned": 2,
        "toolbars_unpinned_last_save": 15,
        "enablehscroll": 0,
        "subpatcher_template": "sub",
        "cluebar": 2,
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "comment": "",
                    "id": "obj-6",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 68.0, 16.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 257.0, 277.0, 30.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 216.0, 137.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 257.0, 219.0, 65.0, 20.0 ],
                    "text": "see also"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "embed": 1,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-109",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "numinlets": 1,
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
                        "rect": [ 34.0, 100.0, 779.0, 575.0 ],
                        "openinpresentation": 1,
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 277.0, 120.0, 78.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 23.0, 78.0, 23.0 ],
                                    "text": "See Also:",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-102",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 49.0, 81.0, 66.0, 22.0 ],
                                    "text": "route bang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-96",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 216.0, 208.0, 51.0, 22.0 ],
                                    "text": "route \" \""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-69",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 49.0, 164.0, 46.0, 22.0 ],
                                    "text": "tabs \" \""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 248.0, 288.0, 54.0, 22.0 ],
                                    "text": "deferlow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 248.0, 248.0, 94.0, 22.0 ],
                                    "text": "prepend symbol"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 96.0, 120.0, 71.0, 22.0 ],
                                    "text": "fromsymbol"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays other GenExpr files related to the currently selected file",
                                    "annotation_name": "See Also",
                                    "button": 1,
                                    "contrastactivetab": 0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "frozen_box_attributes": [ "presentation_rect" ],
                                    "htabcolor": [ 0.0936600403422, 0.093660003365525, 0.093660012949313, 1.0 ],
                                    "id": "obj-55",
                                    "margin": 2,
                                    "maxclass": "tab",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 96.0, 159.0, 259.0, 32.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 80.0, 0.0, 660.0, 69.0 ],
                                    "rounded": 2.0,
                                    "saved_attribute_attributes": {
                                        "htabcolor": {
                                            "expression": "themecolor.jed_background"
                                        },
                                        "tabcolor": {
                                            "expression": "themecolor.menu_background"
                                        }
                                    },
                                    "spacing_x": 2.0,
                                    "spacing_y": 2.0,
                                    "tabcolor": [ 0.15302081646527, 0.153020772941671, 0.153020784351525, 1.0 ],
                                    "tabs": " ",
                                    "varname": "#0_seealso"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-107",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 49.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-108",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 248.0, 342.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-102", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "obj-102", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-102", 0 ],
                                    "source": [ "obj-107", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-96", 0 ],
                                    "source": [ "obj-55", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 0 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 0 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-108", 0 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 0 ],
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-96", 1 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 244.0, 216.0, 78.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 485.0, 740.0, 84.0 ],
                    "varname": "#0_seealso",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-95",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 340.0, 502.0, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 352.0, 386.0, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 170.0, 474.0, 153.0, 22.0 ],
                    "text": "combine name .maxref.xml"
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 146.0, 444.0, 114.0, 22.0 ],
                    "saved_object_attributes": {
                        "legacyoutputorder": 0
                    },
                    "text": "regexp (.+).genexpr"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "embed": 1,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-80",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "numinlets": 1,
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
                        "rect": [ 34.0, 100.0, 811.0, 728.0 ],
                        "openinpresentation": 1,
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "annotation": "Displays information about a Return of the currently selected GenExpr function",
                                    "annotation_name": "Function Output 16",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-15",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 137.0, 549.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 400.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about a Return of the currently selected GenExpr function",
                                    "annotation_name": "Function Output 15",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-14",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 137.0, 524.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 375.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about a Return of the currently selected GenExpr function",
                                    "annotation_name": "Function Output 14",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-13",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 137.0, 499.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 350.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about a Return of the currently selected GenExpr function",
                                    "annotation_name": "Function Output 13",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-12",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 137.0, 474.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 325.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about a Return of the currently selected GenExpr function",
                                    "annotation_name": "Function Output 12",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-11",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 137.0, 449.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 300.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about a Return of the currently selected GenExpr function",
                                    "annotation_name": "Function Output 11",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-10",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 137.0, 424.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 275.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about a Return of the currently selected GenExpr function",
                                    "annotation_name": "Function Output 10",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-9",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 137.0, 399.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 250.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about a Return of the currently selected GenExpr function",
                                    "annotation_name": "Function Output 9",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-8",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 137.0, 374.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 225.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about a Return of the currently selected GenExpr function",
                                    "annotation_name": "Function Output 8",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-7",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 137.0, 349.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 200.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about a Return of the currently selected GenExpr function",
                                    "annotation_name": "Function Output 7",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-6",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 137.0, 324.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 175.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about a Return of the currently selected GenExpr function",
                                    "annotation_name": "Function Output 6",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-5",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 137.0, 299.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 150.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about a Return of the currently selected GenExpr function",
                                    "annotation_name": "Function Output 5",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-4",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 137.0, 274.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 125.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about a Return of the currently selected GenExpr function",
                                    "annotation_name": "Function Output 4",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-3",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 137.0, 249.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 100.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about a Return of the currently selected GenExpr function",
                                    "annotation_name": "Function Output 3",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-2",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 137.0, 224.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 75.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about a Return of the currently selected GenExpr function",
                                    "annotation_name": "Function Output 2",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-1",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 137.0, 199.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 50.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 18,
                                    "numoutlets": 18,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 122.0, 126.0, 274.0, 22.0 ],
                                    "text": "route size 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 50.0, 87.0, 91.0, 22.0 ],
                                    "text": "routepass clear"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 152.0, 150.0, 97.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 15.0, 3.0, 97.0, 23.0 ],
                                    "text": "Returns:"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about a Return of the currently selected GenExpr function",
                                    "annotation_name": "Function Output 1",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-27",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 137.0, 174.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 25.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-78",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "order": 14,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "order": 5,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "order": 4,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 3,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "order": 2,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 1,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "order": 0,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "order": 13,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "order": 15,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "order": 12,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "order": 11,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-39", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "order": 10,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "order": 9,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 8,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "order": 7,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 6,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-40", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-40", 11 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-40", 12 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-40", 13 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-40", 14 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-40", 15 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-40", 16 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-40", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-40", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-40", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-40", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-40", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-40", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-40", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-40", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-40", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-78", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 741.0, 219.0, 78.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 80.0, 408.0, 660.0, 50.0 ],
                    "varname": "#0_returns",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "embed": 1,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-77",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "numinlets": 1,
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
                        "rect": [ 34.0, 333.0, 734.0, 615.0 ],
                        "openinpresentation": 1,
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "annotation": "Displays information about an Input of the currently selected GenExpr function",
                                    "annotation_name": "Function Input 16",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-17",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 136.0, 544.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 400.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about an Input of the currently selected GenExpr function",
                                    "annotation_name": "Function Input 15",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-16",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 136.0, 519.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 375.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about an Input of the currently selected GenExpr function",
                                    "annotation_name": "Function Input 14",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-15",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 136.0, 494.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 350.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about an Input of the currently selected GenExpr function",
                                    "annotation_name": "Function Input 13",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-14",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 136.0, 469.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 325.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about an Input of the currently selected GenExpr function",
                                    "annotation_name": "Function Input 12",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-11",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 136.0, 444.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 300.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about an Input of the currently selected GenExpr function",
                                    "annotation_name": "Function Input 11",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-10",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 136.0, 419.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 275.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about an Input of the currently selected GenExpr function",
                                    "annotation_name": "Function Input 10",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-9",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 136.0, 394.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 250.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about an Input of the currently selected GenExpr function",
                                    "annotation_name": "Function Input 9",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-8",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 136.0, 369.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 225.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about an Input of the currently selected GenExpr function",
                                    "annotation_name": "Function Input 8",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-7",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 136.0, 344.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 200.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about an Input of the currently selected GenExpr function",
                                    "annotation_name": "Function Input 7",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-6",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 136.0, 319.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 175.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about an Input of the currently selected GenExpr function",
                                    "annotation_name": "Function Input 6",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-5",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 136.0, 294.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 150.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about an Input of the currently selected GenExpr function",
                                    "annotation_name": "Function Input 5",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-4",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 136.0, 269.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 125.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about an Input of the currently selected GenExpr function",
                                    "annotation_name": "Function Input 4",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-3",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 136.0, 244.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 100.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about an Input of the currently selected GenExpr function",
                                    "annotation_name": "Function Input 3",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-2",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 136.0, 219.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 75.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about an Input of the currently selected GenExpr function",
                                    "annotation_name": "Function Input 2",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-1",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 136.0, 194.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 50.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 18,
                                    "numoutlets": 18,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 121.0, 120.0, 274.0, 22.0 ],
                                    "text": "route size 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 49.0, 81.0, 91.0, 22.0 ],
                                    "text": "routepass clear"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 151.0, 144.0, 97.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 15.0, 2.0, 97.0, 23.0 ],
                                    "text": "Inputs:"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Displays information about an Input of the currently selected GenExpr function",
                                    "annotation_name": "Function Input 1",
                                    "autoscroll": 0,
                                    "border": 1.0,
                                    "fontname": "Lato",
                                    "fontsize": 14.0,
                                    "id": "obj-12",
                                    "keymode": 1,
                                    "lines": 1,
                                    "maxclass": "textedit",
                                    "nosymquotes": 1,
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "int", "", "" ],
                                    "parameter_enable": 0,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 136.0, 169.0, 497.0, 23.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 25.0, 660.0, 23.0 ],
                                    "readonly": 1,
                                    "rounded": 2.0,
                                    "tabmode": 0,
                                    "wordwrap": 0
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-75",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 49.0, 34.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "order": 14,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "order": 5,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "order": 4,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 15,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 3,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "order": 2,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "order": 1,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "order": 0,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "order": 13,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "order": 12,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-36", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "order": 11,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "order": 10,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "order": 9,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 8,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "order": 7,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 6,
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-38", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-38", 11 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-38", 12 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-38", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-38", 13 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-38", 14 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-38", 15 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-38", 16 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-38", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-38", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-38", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-38", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-38", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-38", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-38", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-38", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-75", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 702.0, 176.0, 78.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 80.0, 356.0, 660.0, 50.0 ],
                    "varname": "#0_inputs",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 289.0, 317.0, 104.0, 22.0 ],
                    "text": "substitute 0 NULL"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 289.0, 277.0, 55.0, 22.0 ],
                    "text": "route set"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 87.0, 474.0, 22.0, 22.0 ],
                    "text": "t b"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 87.0, 552.0, 70.0, 22.0 ],
                    "text": "route NULL"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 87.0, 513.0, 78.0, 22.0 ],
                    "text": "list.reg NULL"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "ignoreclick": 1,
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 138.0, 594.0, 106.0, 35.0 ],
                    "text": ";\rmax showdoc $1"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 293.0, 139.0, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 153.0, 177.0, 155.0, 22.0 ],
                    "text": "route about require seealso"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 81.0, 138.0, 91.0, 22.0 ],
                    "text": "routepass clear"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 552.0, 99.0, 91.0, 22.0 ],
                    "text": "routepass clear"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 624.0, 138.0, 175.0, 22.0 ],
                    "text": "route done about inputs returns"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 405.0, 177.0, 129.0, 22.0 ],
                    "text": "prepend selectfunction"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 340.0, 232.0, 159.0, 22.0 ],
                    "text": "clearchecks, checkitem $1 1"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 14.0,
                    "id": "obj-31",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 567.0, 208.0, 97.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 95.0, 286.0, 97.0, 23.0 ],
                    "text": "About:"
                }
            },
            {
                "box": {
                    "annotation": "Displays information about the currently selected GenExpr function",
                    "annotation_name": "About the currently selected function",
                    "autoscroll": 0,
                    "border": 1.0,
                    "fontname": "Lato",
                    "fontsize": 14.0,
                    "id": "obj-29",
                    "keymode": 1,
                    "lines": 1,
                    "maxclass": "textedit",
                    "nosymquotes": 1,
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "parameter_mappable": 0,
                    "patching_rect": [ 552.0, 232.0, 112.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 80.0, 308.0, 660.0, 46.0 ],
                    "readonly": 1,
                    "rounded": 2.0,
                    "tabmode": 0
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 293.0, 99.0, 66.0, 22.0 ],
                    "text": "route done"
                }
            },
            {
                "box": {
                    "annotation": "Opens the Max reference page entry for the currently selected GenExpr file",
                    "annotation_name": "Open GenExpr Reference",
                    "fontname": "Lato",
                    "fontsize": 14.0,
                    "id": "obj-22",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 87.0, 410.0, 160.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 579.0, 41.0, 160.0, 25.0 ],
                    "rounded": 2.0,
                    "saved_attribute_attributes": {
                        "textoncolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "Open Reference Page",
                    "texton": "Open Reference Page",
                    "textoncolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "usegradient": 0
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 14.0,
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 116.0, 20.0, 455.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 95.0, 1.0, 482.0, 23.0 ],
                    "text": "Select a .genexpr file from the evieve Package:"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 44.0, 277.0, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 116.0, 317.0, 131.0, 22.0 ],
                    "text": "prepend selectgenexpr"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 81.0, 356.0, 159.0, 22.0 ],
                    "text": "clearchecks, checkitem $1 1"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 34.0, 99.0, 66.0, 22.0 ],
                    "text": "route done"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 34.0, 19.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "filename": "evi.genexprindex.js",
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 34.0, 60.0, 537.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "parameter_enable": 0
                    },
                    "text": "v8 evi.genexprindex.js genexpr-data #0",
                    "textfile": {
                        "filename": "evi.genexprindex.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 14.0,
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 352.0, 112.0, 78.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 257.0, 78.0, 23.0 ],
                    "text": "Function:",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 14.0,
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 340.0, 525.0, 78.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 196.0, 78.0, 23.0 ],
                    "text": "Requires:",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 14.0,
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 352.0, 411.0, 78.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 114.0, 78.0, 23.0 ],
                    "text": "About:",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 14.0,
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 44.0, 250.0, 78.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 42.0, 78.0, 23.0 ],
                    "text": "File:",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "annotation": "Lists all available GenExpr files in the evieve Package",
                    "annotation_name": "evieve GeneExpr files",
                    "fontname": "Lato",
                    "fontsize": 14.0,
                    "id": "obj-5",
                    "items": [ "(Select GenExpr File)", ",", "<separator>", ",", "evi_adaa.genexpr", ",", "evi_approx.genexpr", ",", "evi_biquads_coeffs.genexpr", ",", "evi_biquads.genexpr", ",", "evi_biquads_extras.genexpr", ",", "evi_biquads_filters.genexpr", ",", "evi_biquads_no_tilde.genexpr", ",", "evi_biquads_selectors.genexpr", ",", "evi_biquads_union.genexpr", ",", "evi_buchla.genexpr", ",", "evi_butterworth.genexpr", ",", "evi_clip.genexpr", ",", "evi_core.genexpr", ",", "evi_cossin.genexpr", ",", "evi_counting.genexpr", ",", "evi_crossovers.genexpr", ",", "evi_dfm_lib.genexpr", ",", "evi_dynamics.genexpr", ",", "evi_env.genexpr", ",", "evi_evieve.genexpr", ",", "evi_fastskew.genexpr", ",", "evi_interp.genexpr", ",", "evi_lfo.genexpr", ",", "evi_lib.genexpr", ",", "evi_pade.genexpr", ",", "evi_polyblep.genexpr", ",", "evi_polyblep_four.genexpr", ",", "evi_polyblep_shapes.genexpr", ",", "evi_polyblep_two.genexpr", ",", "evi_polyblep_utility.genexpr", ",", "evi_ptr.genexpr", ",", "evi_rcfilters.genexpr", ",", "evi_resampling_templates.genexpr", ",", "evi_resbank.genexpr", ",", "evi_reverb_library.genexpr", ",", "evi_ringmod_enhanced.genexpr", ",", "evi_saturators.genexpr", ",", "evi_sinfold_lib.genexpr", ",", "evi_smooth_bank.genexpr", ",", "evi_smooth.genexpr", ",", "evi_sources.genexpr", ",", "evi_ssb.genexpr", ",", "evi_svfs.genexpr", ",", "evi_svfs_filters.genexpr", ",", "evi_svfs_lto.genexpr", ",", "evi_svfs_lto_extras.genexpr", ",", "evi_svfs_tpt.genexpr", ",", "evi_svfs_tpt_filters.genexpr", ",", "evi_tanh.genexpr", ",", "evi_trig.genexpr", ",", "evi_utilities.genexpr", ",", "evi_warmer_lib.genexpr", ",", "evi_waveshaping.genexpr" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 81.0, 275.0, 149.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 80.0, 41.0, 496.0, 25.0 ]
                }
            },
            {
                "box": {
                    "annotation": "Lists all available functions in the currently selected GenExpr file",
                    "annotation_name": "GenExpr functions",
                    "fontname": "Lato",
                    "fontsize": 14.0,
                    "id": "obj-4",
                    "items": "<empty>",
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 340.0, 137.0, 149.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 80.0, 256.0, 496.0, 25.0 ]
                }
            },
            {
                "box": {
                    "annotation": "Displays which other GenExpr files are required by the currently selected GenExpr file",
                    "annotation_name": "GenExpr Requires",
                    "border": 1.0,
                    "clickmode": 1,
                    "fontname": "Lato",
                    "fontsize": 14.0,
                    "id": "obj-2",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "nosymquotes": 1,
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "parameter_mappable": 0,
                    "patching_rect": [ 340.0, 525.0, 336.0, 49.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 80.0, 184.0, 660.0, 46.0 ],
                    "readonly": 1,
                    "rounded": 2.0,
                    "tabmode": 0
                }
            },
            {
                "box": {
                    "annotation": "\"Displays information about the selected GenExpr file\"",
                    "annotation_name": "About GenExpr File",
                    "border": 1.0,
                    "fontname": "Lato",
                    "fontsize": 14.0,
                    "id": "obj-1",
                    "keymode": 1,
                    "maxclass": "textedit",
                    "nosymquotes": 1,
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "parameter_mappable": 0,
                    "patching_rect": [ 352.0, 410.0, 324.0, 83.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 80.0, 68.0, 660.0, 115.0 ],
                    "readonly": 1,
                    "rounded": 2.0,
                    "tabmode": 0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "midpoints": [ 125.5, 349.0, 20.0625, 349.0, 20.0625, 50.0, 43.5, 50.0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 90.5, 388.0, 68.6015625, 388.0, 68.6015625, 265.0, 90.5, 265.0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-16", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-20", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "source": [ "obj-20", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-25", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "midpoints": [ 349.5, 264.0, 329.3203125, 264.0, 329.3203125, 127.0, 349.5, 127.0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "midpoints": [ 414.5, 209.0, 20.125, 209.0, 20.125, 50.0, 43.5, 50.0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-35", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "source": [ "obj-35", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "source": [ "obj-35", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-4", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "order": 0,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-45", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "order": 2,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "order": 1,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 0,
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "order": 1,
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "order": 2,
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "source": [ "obj-46", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "order": 1,
                    "source": [ "obj-5", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 0 ],
                    "order": 0,
                    "source": [ "obj-5", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "source": [ "obj-54", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-54", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "order": 1,
                    "source": [ "obj-54", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "order": 0,
                    "source": [ "obj-54", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "midpoints": [ 77.5, 53.0, 43.5, 53.0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-71", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 1 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 0 ],
                    "source": [ "obj-82", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 1 ],
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-94", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-95", 0 ]
                }
            }
        ],
        "autosave": 0,
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}