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
                    "id": "obj-5",
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
                        "rect": [ 0.0, 26.0, 840.0, 682.0 ],
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-66",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 666.0, 234.0, 83.0, 22.0 ],
                                    "text": "s testalgoverb"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 399.0, 641.0, 43.0, 23.0 ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 345.0, 641.0, 43.0, 23.0 ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 27.5,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "drumLoop.aif",
                                                "filename": "drumLoop.aif",
                                                "filekind": "audiofile",
                                                "id": "u079003426",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "duduk.aif",
                                                "filename": "duduk.aif",
                                                "filekind": "audiofile",
                                                "id": "u254003698",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            }
                                        ]
                                    },
                                    "id": "obj-59",
                                    "maxclass": "playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 345.0, 577.0, 234.0, 57.0 ],
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
                                    "hidden": 1,
                                    "id": "obj-64",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 444.0, 642.0, 154.0, 21.0 ],
                                    "text": "because duduk :-("
                                }
                            },
                            {
                                "box": {
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-63",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "evi.algoverb.factorypresetsmenu.maxpat",
                                    "numinlets": 3,
                                    "numoutlets": 4,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "bang", "int", "", "" ],
                                    "patching_rect": [ 696.0, 36.0, 126.0, 24.0 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 666.0, 179.0, 156.0, 22.0 ],
                                    "text": "pattrstorage storagewindow"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-69",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 640.0, 279.0, 129.0, 23.0 ],
                                    "text": "prepend pattrstorage"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-25",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 666.0, 203.0, 144.0, 22.0 ],
                                    "text": "pattrstorage clientwindow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-71",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 499.0, 355.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-68",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 521.0, 354.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-65",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 521.0, 379.0, 112.0, 22.0 ],
                                    "text": "prepend absorbtion"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-54",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 736.0, 320.0, 84.0, 22.0 ],
                                    "text": "r testalgoverb"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 521.0, 279.0, 83.0, 22.0 ],
                                    "text": "s testalgoverb"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-74",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 235.0, 320.0, 83.0, 22.0 ],
                                    "text": "s testalgoverb"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-73",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 439.0, 540.0, 83.0, 22.0 ],
                                    "text": "s testalgoverb"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-72",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 107.0, 641.0, 83.0, 22.0 ],
                                    "text": "s testalgoverb"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-70",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 115.0, 478.0, 83.0, 22.0 ],
                                    "text": "s testalgoverb"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 521.0, 179.0, 86.0, 22.0 ],
                                    "text": "prepend mute"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-139",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 161.0, 578.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-140",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 13.0, 578.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-141",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 161.0, 518.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-142",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 13.0, 518.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-137",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 179.0, 415.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-138",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 13.0, 415.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-135",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 179.0, 355.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-136",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 13.0, 355.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-130",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 499.0, 475.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-131",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 355.0, 475.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-132",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 309.0, 255.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-133",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 171.0, 255.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-129",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 499.0, 415.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-125",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 355.0, 415.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-126",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 309.0, 195.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-127",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 171.0, 195.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-128",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 42.0, 195.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-124",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 355.0, 355.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-123",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 309.0, 135.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-122",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 171.0, 135.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-121",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 42.0, 135.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 521.0, 155.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-36",
                                    "maxclass": "flonum",
                                    "maximum": 24.0,
                                    "minimum": -24.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 35.0, 577.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 602.0, 110.0, 22.0 ],
                                    "text": "prepend loweqgain"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-38",
                                    "maxclass": "flonum",
                                    "maximum": 18000.0,
                                    "minimum": 10.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 35.0, 517.0, 87.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 542.0, 140.0, 22.0 ],
                                    "text": "prepend loweqfrequency"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-40",
                                    "maxclass": "flonum",
                                    "maximum": 24.0,
                                    "minimum": -24.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 183.0, 577.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 183.0, 602.0, 115.0, 22.0 ],
                                    "text": "prepend higheqgain"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-50",
                                    "maxclass": "flonum",
                                    "maximum": 20000.0,
                                    "minimum": 30.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 183.0, 517.0, 87.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 183.0, 542.0, 145.0, 22.0 ],
                                    "text": "prepend higheqfrequency"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 521.0, 210.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 521.0, 234.0, 97.0, 22.0 ],
                                    "text": "prepend bypass"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-16",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": -1.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 64.0, 194.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 64.0, 219.0, 125.0, 22.0 ],
                                    "text": "prepend presymmetry"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-19",
                                    "maxclass": "flonum",
                                    "maximum": 400.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 64.0, 134.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 64.0, 159.0, 102.0, 22.0 ],
                                    "text": "prepend predelay"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-14",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 521.0, 474.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 521.0, 499.0, 91.0, 22.0 ],
                                    "text": "prepend drywet"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-6",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 193.0, 254.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-8",
                                    "maxclass": "flonum",
                                    "maximum": 4.0,
                                    "minimum": -4.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 193.0, 194.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-10",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": -12.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 193.0, 134.0, 79.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 193.0, 279.0, 126.0, 22.0 ],
                                    "text": "prepend earlydiffusion"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 193.0, 219.0, 134.0, 22.0 ],
                                    "text": "prepend earlysymmetry"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 193.0, 159.0, 103.0, 22.0 ],
                                    "text": "prepend earlysize"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-48",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 521.0, 414.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 521.0, 439.0, 101.0, 22.0 ],
                                    "text": "prepend earlylate"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-46",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 377.0, 414.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-47",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 377.0, 439.0, 100.0, 22.0 ],
                                    "text": "prepend modrate"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-44",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 377.0, 474.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 377.0, 499.0, 109.0, 22.0 ],
                                    "text": "prepend moddepth"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-43",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 377.0, 354.0, 75.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 377.0, 379.0, 88.0, 22.0 ],
                                    "text": "prepend decay"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-32",
                                    "maxclass": "flonum",
                                    "maximum": 0.0,
                                    "minimum": -6.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 35.0, 414.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 439.0, 127.0, 22.0 ],
                                    "text": "prepend lowdampgain"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-34",
                                    "maxclass": "flonum",
                                    "maximum": 18000.0,
                                    "minimum": 10.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 35.0, 354.0, 87.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 35.0, 379.0, 157.0, 22.0 ],
                                    "text": "prepend lowdampfrequency"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-31",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 330.0, 254.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-30",
                                    "maxclass": "flonum",
                                    "maximum": 3.0,
                                    "minimum": -3.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 330.0, 194.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-29",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": -24.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 330.0, 134.0, 79.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 330.0, 279.0, 120.0, 22.0 ],
                                    "text": "prepend latediffusion"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 330.0, 219.0, 127.0, 22.0 ],
                                    "text": "prepend latesymmetry"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 330.0, 159.0, 97.0, 22.0 ],
                                    "text": "prepend latesize"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-21",
                                    "maxclass": "flonum",
                                    "maximum": 0.0,
                                    "minimum": -6.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 200.0, 414.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 200.0, 439.0, 131.0, 22.0 ],
                                    "text": "prepend highdampgain"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-53",
                                    "maxclass": "flonum",
                                    "maximum": 20000.0,
                                    "minimum": 30.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 200.0, 354.0, 87.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-55",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 200.0, 379.0, 161.0, 22.0 ],
                                    "text": "prepend highdampfrequency"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "meter~",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 770.0, 436.0, 21.0, 100.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "meter~",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 736.0, 436.0, 21.0, 100.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-84",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 581.0, 602.0, 33.0, 22.0 ],
                                    "text": "set"
                                }
                            },
                            {
                                "box": {
                                    "dontreplace": 1,
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-76",
                                    "ignoreclick": 1,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 617.0, 602.0, 205.0, 22.0 ],
                                    "text": "bypass 0"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-158",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 640.0, 38.0, 20.0, 20.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-157",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 24,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "dump" ],
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
                                        "rect": [ 230.0, 173.0, 1084.0, 464.0 ],
                                        "gridonopen": 2,
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 852.185433, 321.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 153.343628, 195.0, 180.544113, 20.0 ],
                                                    "text": "(initial on for load)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 201.564972, 113.0, 180.544113, 20.0 ],
                                                    "text": "strip lead name of pattr path"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 131.959991, 149.0, 71.0, 22.0 ],
                                                    "text": "fromsymbol"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 5,
                                                    "outlettype": [ "", "", "", "", "" ],
                                                    "patching_rect": [ 115.709999, 112.0, 84.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "legacyoutputorder": 1
                                                    },
                                                    "text": "regexp .+::(.+)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "linecount": 2,
                                                    "maxclass": "newobj",
                                                    "numinlets": 25,
                                                    "numoutlets": 25,
                                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                                                    "patching_rect": [ 42.0, 228.0, 928.836853, 35.0 ],
                                                    "text": "route preTime preSymmetry earlySize earlySymmetry earlyDiffusion lateSize lateSymmetry lateDiffusion highDampFrequency highDampGain lowDampFrequency lowDampGain decay absorbtion modFrequency modAmplitude earlyLate highEqFrequency highEqGain lowEqFrequency lowEqGain dryWet smoothTime coefficientsUpdate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-9",
                                                    "index": 23,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 887.707214, 401.5, 25.0, 25.0 ]
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
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 945.645691, 28.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 42.0, 154.0, 22.0, 22.0 ],
                                                    "text": "t 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 42.0, 70.0, 92.709999, 22.0 ],
                                                    "text": "route dump"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 42.0, 112.0, 56.560001, 22.0 ],
                                                    "text": "sel done"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 42.0, 194.0, 108.959991, 22.0 ],
                                                    "text": "gate 1 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-2",
                                                    "index": 24,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 945.645691, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "dump", "int" ],
                                                    "patching_rect": [ 945.645691, 154.0, 55.0, 22.0 ],
                                                    "text": "t dump 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-104",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 815.763611, 294.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-91",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 775.445435, 321.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-92",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 697.432739, 321.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-93",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 619.420044, 321.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-94",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 541.407227, 321.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-95",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 463.394562, 321.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-96",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 385.381805, 321.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-97",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 307.36908, 321.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-98",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 229.356369, 321.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-99",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 151.343628, 321.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-100",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 73.33091, 321.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-90",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 738.387268, 294.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-89",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 661.010864, 294.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-88",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 583.634521, 294.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-87",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 506.258179, 294.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-86",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 428.881805, 294.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-85",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 351.505432, 294.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-81",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 274.129089, 294.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-79",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 196.752716, 294.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-77",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 119.376358, 294.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-75",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 42.0, 294.5, 74.739998, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-106",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 42.0, 28.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-107",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 42.0, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-108",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 73.33091, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-109",
                                                    "index": 3,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 116.739998, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-113",
                                                    "index": 4,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 148.070908, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-115",
                                                    "index": 5,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 191.479996, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-118",
                                                    "index": 6,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 222.810898, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-119",
                                                    "index": 7,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 266.064972, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-120",
                                                    "index": 8,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 297.395844, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-143",
                                                    "index": 9,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 340.649963, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-144",
                                                    "index": 10,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 371.980865, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-145",
                                                    "index": 11,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 415.234924, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-146",
                                                    "index": 12,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 446.565826, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-147",
                                                    "index": 13,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 489.819885, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-148",
                                                    "index": 14,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 521.150818, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-149",
                                                    "index": 15,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 564.404907, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-150",
                                                    "index": 16,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 595.735779, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-151",
                                                    "index": 17,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 638.989868, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-152",
                                                    "index": 18,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 670.32074, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-153",
                                                    "index": 19,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 713.574829, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-154",
                                                    "index": 20,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 744.905701, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-155",
                                                    "index": 21,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 788.314819, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-156",
                                                    "index": 22,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 819.645691, 401.5, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-11",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 66.479996, 30.5, 150.0, 20.0 ],
                                                    "text": "from pattrstorage"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-12",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 840.47998, 30.5, 161.725708, 20.0 ],
                                                    "text": "dump slots trigger"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-14",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 433.282928, 70.0, 200.735779, 20.0 ],
                                                    "text": "for updating external controls",
                                                    "textjustification": 1
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-15",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 970.645691, 404.0, 96.0, 20.0 ],
                                                    "text": "to pattrstorage"
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
                                                    "destination": [ "obj-3", 0 ],
                                                    "midpoints": [ 991.145691, 183.5, 51.5, 183.5 ],
                                                    "source": [ "obj-1", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-100", 0 ],
                                                    "source": [ "obj-10", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-104", 0 ],
                                                    "source": [ "obj-10", 21 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "source": [ "obj-10", 13 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-75", 0 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-77", 0 ],
                                                    "source": [ "obj-10", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-79", 0 ],
                                                    "source": [ "obj-10", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-81", 0 ],
                                                    "source": [ "obj-10", 6 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-85", 0 ],
                                                    "source": [ "obj-10", 16 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-86", 0 ],
                                                    "source": [ "obj-10", 14 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-87", 0 ],
                                                    "source": [ "obj-10", 8 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-88", 0 ],
                                                    "source": [ "obj-10", 10 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-89", 0 ],
                                                    "source": [ "obj-10", 17 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-90", 0 ],
                                                    "source": [ "obj-10", 19 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-91", 0 ],
                                                    "source": [ "obj-10", 20 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-92", 0 ],
                                                    "source": [ "obj-10", 18 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-93", 0 ],
                                                    "source": [ "obj-10", 11 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-94", 0 ],
                                                    "source": [ "obj-10", 9 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-95", 0 ],
                                                    "source": [ "obj-10", 15 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-96", 0 ],
                                                    "source": [ "obj-10", 12 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-97", 0 ],
                                                    "source": [ "obj-10", 7 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-98", 0 ],
                                                    "source": [ "obj-10", 5 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-99", 0 ],
                                                    "source": [ "obj-10", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-108", 0 ],
                                                    "source": [ "obj-100", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-155", 0 ],
                                                    "source": [ "obj-104", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-106", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "source": [ "obj-13", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-156", 0 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 1 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-5", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-107", 0 ],
                                                    "source": [ "obj-75", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-109", 0 ],
                                                    "source": [ "obj-77", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-115", 0 ],
                                                    "source": [ "obj-79", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-119", 0 ],
                                                    "source": [ "obj-81", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-143", 0 ],
                                                    "source": [ "obj-85", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-145", 0 ],
                                                    "source": [ "obj-86", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-147", 0 ],
                                                    "source": [ "obj-87", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-149", 0 ],
                                                    "source": [ "obj-88", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-151", 0 ],
                                                    "source": [ "obj-89", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-153", 0 ],
                                                    "source": [ "obj-90", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-154", 0 ],
                                                    "source": [ "obj-91", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-152", 0 ],
                                                    "source": [ "obj-92", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-150", 0 ],
                                                    "source": [ "obj-93", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-148", 0 ],
                                                    "source": [ "obj-94", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-146", 0 ],
                                                    "source": [ "obj-95", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-144", 0 ],
                                                    "source": [ "obj-96", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-120", 0 ],
                                                    "source": [ "obj-97", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-118", 0 ],
                                                    "source": [ "obj-98", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "source": [ "obj-99", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 28.0, 94.0, 631.0, 22.0 ],
                                    "text": "p setLocals"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-159",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 574.0, 38.0, 86.0, 20.0 ],
                                    "text": "dump slots"
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
                                    "jsarguments": [ "evi.algoverb~", 660 ],
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
                                    "text": "evi.algoverb~ has many tweakable parameters as well as optional presets",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "signal", "" ],
                                    "patching_rect": [ 736.0, 369.0, 86.0, 23.0 ],
                                    "text": "evi.algoverb~",
                                    "varname": "evieveObjectMcs"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 674.0, 464.0, 45.0, 45.0 ],
                                    "varname": "mcs_dac"
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bubble": 1,
                                    "bubblepoint": 0.7,
                                    "bubbleside": 0,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 639.0, 509.0, 86.0, 40.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-121", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-122", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-123", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "source": [ "obj-124", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "source": [ "obj-125", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-126", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-127", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-128", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "source": [ "obj-129", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-130", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-131", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-132", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-133", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "source": [ "obj-135", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-136", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-137", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 0 ],
                                    "source": [ "obj-138", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-139", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-140", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-141", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-142", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-73", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-10", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-14", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 20 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-16", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-19", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-21", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 13 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-29", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-30", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-31", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-32", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 15 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-34", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 14 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-36", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 19 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-38", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 18 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-40", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 17 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-43", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-44", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 11 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-46", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-48", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-50", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 16 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-53", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 12 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-6", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-68", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 21 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 23 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.65, 0.65, 0.65, 0.0 ],
                                    "destination": [ "obj-8", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-157", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-157", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-158", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
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
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-21", 0 ]
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
                                    "destination": [ "obj-70", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-73", 0 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-73", 0 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 0 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-73", 0 ],
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
                                    "destination": [ "obj-73", 0 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-157", 0 ],
                                    "hidden": 1,
                                    "order": 2,
                                    "source": [ "obj-5", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "order": 0,
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 0 ],
                                    "order": 0,
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 2 ],
                                    "order": 1,
                                    "source": [ "obj-5", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 1 ],
                                    "order": 1,
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
                                    "destination": [ "obj-76", 1 ],
                                    "order": 0,
                                    "source": [ "obj-5", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "hidden": 1,
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "source": [ "obj-59", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "source": [ "obj-63", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-73", 0 ],
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-68", 0 ],
                                    "source": [ "obj-71", 0 ]
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
                                    "destination": [ "obj-76", 0 ],
                                    "source": [ "obj-84", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 169.0, 336.0, 65.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p controls",
                    "varname": "controls_tab"
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
                    "text": "v8 evi.helpstarter.js evi.algoverb~ 2 0 1 1 0 reverb",
                    "textfile": {
                        "text": "\"use strict\";\n/*!\n * this file is automatically transpiled from Typescript - DO NOT EDIT BY HAND\n */\nlet objectNameArgument = \"\";\nlet createDacForHelpfile = false;\nif (jsarguments.length > 1) {\n  objectNameArgument = jsarguments[1];\n  if (objectNameArgument.charAt(objectNameArgument.length - 1) === \"~\") {\n    createDacForHelpfile = true;\n  }\n}\nlet eviType = -1;\nlet eviOption1 = 0;\nlet eviOption2 = 0;\nlet eviOption3 = 0;\nlet eviOption4 = 0;\nlet eviOption5 = \"none\";\nif (jsarguments.length > 2) {\n  eviType = jsarguments[2];\n  eviOption1 = jsarguments[3];\n  eviOption2 = jsarguments[4];\n  eviOption3 = jsarguments[5];\n  eviOption4 = jsarguments[6];\n  eviOption5 = jsarguments[7];\n}\nconst task = new Task(init, this);\ntask.schedule(111);\nconst thisPatcher = patcher;\nconst thisPath = thisPatcher.filepath;\nconst thisHelpObjectName = \"evieveObject\";\nconst textColor = thisPatcher.getattr(\"textcolor\");\nconst descColor = [textColor[0], textColor[1], textColor[2], textColor[3] * 0.555];\nfunction init() {\n  const a = thisPatcher.getnamed(\"basic_tab\");\n  const testBasicTab = a?.valid;\n  if (!testBasicTab) {\n    thisPatcher.message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      \"p basic\",\n      \"@varname\",\n      \"basic_tab\",\n      \"@patching_rect\",\n      34,\n      336,\n      50,\n      23\n    );\n    thisPatcher.wind.size = [1277, 796];\n    thisPatcher.message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `v8ui @filename evi.helpname.js @jsarguments ${objectNameArgument} @patching_rect 10. 10. 500. 50. @background 1 @embed 0`\n    );\n    const basic = thisPatcher.getnamed(\"basic_tab\");\n    basic.subpatcher().setattr(\"openrect\", 22, 55, 837, 796);\n    basic.subpatcher().setattr(\"bglocked\", 1);\n    basic.subpatcher().message(\"wclose\");\n    basic.message(\"showontab\", 1);\n    basic.message(\"gridonopen\", 1);\n    basic.message(\"gridsize\", 15, 15);\n    basic.message(\"fontsize\", 13);\n    basic.message(\"fontname\", \"Arial\");\n    basic.message(\"locked\", 1);\n    basic.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `v8ui @filename evi.helpdetails.js @jsarguments ${objectNameArgument} ${thisPath} @patching_rect 10. 10. 660. 220. @background 1 @embed 0`\n    );\n    const PETER_BPATCHER_FILE = \"evieve_pickup_overview.maxpat\";\n    basic.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `bpatcher`,\n      \"@varname\",\n      \"PeterButton\",\n      \"@patching_position\",\n      11,\n      11\n    );\n    const peterBpatcher = basic.subpatcher().getnamed(\"PeterButton\");\n    peterBpatcher.setboxattr(\"patching_rect\", 11, 11, 98, 98);\n    peterBpatcher.setboxattr(\"lockedsize\", 1);\n    peterBpatcher.setboxattr(\"name\", `${PETER_BPATCHER_FILE}`);\n    basic.subpatcher().bringtofront(\"PeterButton\");\n    basic.subpatcher().message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      `${objectNameArgument}`,\n      \"@varname\",\n      `${thisHelpObjectName}`,\n      \"@patching_position\",\n      140,\n      336\n    );\n    if (createDacForHelpfile) {\n      const ezdacObj = basic.subpatcher().newdefault(140, 537, \"ezdac~\");\n      ezdacObj.varname = \"basic_dac\";\n      const ezdac = basic.subpatcher().getnamed(\"basic_dac\");\n      ezdac.message(\"local\", 1);\n      ezdac.message(\"patching_rect\", 140, 537, 45, 45);\n      const ezdacComment = basic.subpatcher().newdefault(111, 547, \"comment\");\n      ezdacComment.varname = \"comment_dac\";\n      const comment = basic.subpatcher().getnamed(\"comment_dac\");\n      comment.message(\"set\", \"Audio On\");\n      comment.message(\"bubble\", 1);\n      comment.message(\"bubbleside\", 1);\n      comment.message(\"textjustification\", 1);\n      comment.message(\"fontsize\", 13);\n      comment.message(\"fontname\", \"Arial\");\n      comment.message(\"patching_rect\", 187, 547, 86, 25);\n      comment.message(\"background\", 1);\n    }\n    if (eviType !== 1) {\n      const helpObject = basic.subpatcher().getnamed(thisHelpObjectName);\n      const objectRect = helpObject.getattr(\"patching_rect\");\n      const argsPos = [objectRect[0] + objectRect[2] + 2, objectRect[1] + 1];\n      basic.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        // cannot get my [v8ui] working for now, use Cyling '74 code instead...\n        `v8ui @filename evi.helpargs.js @jsarguments ${objectNameArgument} @patching_position ${argsPos[0]} ${argsPos[1]} @background 1 @embed 0`\n      );\n    }\n    basic.subpatcher().bringtofront(thisHelpObjectName);\n    outlet(0, \"setactivetab\", \"basic\");\n    outlet(0, \"bang\");\n  }\n  if (eviOption1 > 0) {\n    const mc = thisPatcher.getnamed(\"mc_tab\");\n    const testMcTab = mc?.valid;\n    if (!testMcTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        \"p mc\",\n        \"@varname\",\n        \"mc_tab\",\n        \"@patching_rect\",\n        229,\n        336,\n        37,\n        23\n      );\n      const mctab = thisPatcher.getnamed(\"mc_tab\");\n      mctab.subpatcher().setattr(\"bglocked\", 1);\n      mctab.subpatcher().message(\"wclose\");\n      mctab.message(\"showontab\", 1);\n      mctab.message(\"gridonopen\", 1);\n      mctab.message(\"gridsize\", 15, 15);\n      mctab.message(\"fontsize\", 13);\n      mctab.message(\"fontname\", \"Arial\");\n      mctab.message(\"locked\", 1);\n      mctab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `v8ui @filename evi.helpname.js @jsarguments mc.${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n      );\n      const mcDigestComment = mctab.subpatcher().newdefault(10, 70, \"comment\");\n      mcDigestComment.varname = \"digest_comment\";\n      const mcComment = mctab.subpatcher().getnamed(\"digest_comment\");\n      mcComment.message(\"set\", `${objectNameArgument} is also available as an 'mc' Object`);\n      mcComment.message(\"fontsize\", 13);\n      mcComment.message(\"fontname\", \"Lato\");\n      mcComment.message(\"textcolor\", textColor);\n      mcComment.message(\"patching_rect\", 10, 70, 660, 22);\n      mcComment.message(\"background\", 1);\n      mctab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `mc.${objectNameArgument}`,\n        \"@varname\",\n        `${thisHelpObjectName}Mc`,\n        \"@patching_position\",\n        140,\n        336\n      );\n      if (createDacForHelpfile) {\n        const ezdacObj = mctab.subpatcher().newdefault(140, 537, \"ezdac~\");\n        ezdacObj.varname = \"mc_dac\";\n        const ezdac = mctab.subpatcher().getnamed(\"mc_dac\");\n        ezdac.message(\"local\", 1);\n        ezdac.message(\"patching_rect\", 140, 537, 45, 45);\n        const ezdacComment = mctab.subpatcher().newdefault(111, 547, \"comment\");\n        ezdacComment.varname = \"comment_dac\";\n        const comment = mctab.subpatcher().getnamed(\"comment_dac\");\n        comment.message(\"set\", \"Audio On\");\n        comment.message(\"bubble\", 1);\n        comment.message(\"bubbleside\", 1);\n        comment.message(\"textjustification\", 1);\n        comment.message(\"fontsize\", 13);\n        comment.message(\"fontname\", \"Arial\");\n        comment.message(\"patching_rect\", 187, 547, 86, 25);\n        comment.message(\"background\", 1);\n      }\n    }\n  }\n  if (eviOption2 > 0) {\n    const mcs = thisPatcher.getnamed(\"mcs_tab\");\n    const testMcsTab = mcs?.valid;\n    if (!testMcsTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        \"p mcs\",\n        \"@varname\",\n        \"mcs_tab\",\n        \"@patching_rect\",\n        298,\n        336,\n        43,\n        23\n      );\n      const mcstab = thisPatcher.getnamed(\"mcs_tab\");\n      mcstab.subpatcher().setattr(\"bglocked\", 1);\n      mcstab.subpatcher().message(\"wclose\");\n      mcstab.message(\"showontab\", 1);\n      mcstab.message(\"gridonopen\", 1);\n      mcstab.message(\"gridsize\", 15, 15);\n      mcstab.message(\"fontsize\", 13);\n      mcstab.message(\"fontname\", \"Arial\");\n      mcstab.message(\"locked\", 1);\n      mcstab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `v8ui @filename evi.helpname.js @jsarguments mcs.${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n      );\n      const mcsDigestComment = mcstab.subpatcher().newdefault(10, 70, \"comment\");\n      mcsDigestComment.varname = \"digest_comment\";\n      const mcsComment = mcstab.subpatcher().getnamed(\"digest_comment\");\n      mcsComment.message(\"set\", `${objectNameArgument} is also available as an 'mcs' Object`);\n      mcsComment.message(\"fontsize\", 13);\n      mcsComment.message(\"fontname\", \"Lato\");\n      mcsComment.message(\"textcolor\", textColor);\n      mcsComment.message(\"patching_rect\", 10, 70, 660, 22);\n      mcsComment.message(\"background\", 1);\n      mcstab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `mcs.${objectNameArgument}`,\n        \"@varname\",\n        `${thisHelpObjectName}Mcs`,\n        \"@patching_position\",\n        140,\n        336\n      );\n      if (createDacForHelpfile) {\n        const ezdacObj = mcstab.subpatcher().newdefault(140, 537, \"ezdac~\");\n        ezdacObj.varname = \"mcs_dac\";\n        const ezdac = mcstab.subpatcher().getnamed(\"mcs_dac\");\n        ezdac.message(\"local\", 1);\n        ezdac.message(\"patching_rect\", 140, 537, 45, 45);\n        const ezdacComment = mcstab.subpatcher().newdefault(111, 547, \"comment\");\n        ezdacComment.varname = \"comment_dac\";\n        const comment = mcstab.subpatcher().getnamed(\"comment_dac\");\n        comment.message(\"set\", \"Audio On\");\n        comment.message(\"bubble\", 1);\n        comment.message(\"bubbleside\", 1);\n        comment.message(\"textjustification\", 1);\n        comment.message(\"fontsize\", 13);\n        comment.message(\"fontname\", \"Arial\");\n        comment.message(\"patching_rect\", 187, 547, 86, 25);\n        comment.message(\"background\", 1);\n      }\n    }\n  }\n  if (eviOption3 > 0) {\n    const gen = thisPatcher.getnamed(\"gen_tab\");\n    const testGenTab = gen?.valid;\n    if (!testGenTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        \"p gen~\",\n        \"@varname\",\n        \"gen_tab\",\n        \"@patching_rect\",\n        373,\n        336,\n        50,\n        23\n      );\n      const gentab = thisPatcher.getnamed(\"gen_tab\");\n      gentab.subpatcher().setattr(\"bglocked\", 1);\n      gentab.subpatcher().message(\"wclose\");\n      gentab.message(\"showontab\", 1);\n      gentab.message(\"gridonopen\", 1);\n      gentab.message(\"gridsize\", 15, 15);\n      gentab.message(\"fontsize\", 13);\n      gentab.message(\"fontname\", \"Arial\");\n      gentab.message(\"locked\", 1);\n      gentab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `v8ui @filename evi.helpname.js @jsarguments ${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n      );\n      const genDigestComment = gentab.subpatcher().newdefault(10, 70, \"comment\");\n      genDigestComment.varname = \"digest_comment\";\n      const genComment = gentab.subpatcher().getnamed(\"digest_comment\");\n      genComment.message(\"set\", `The ${objectNameArgument} algorithm is also available inside the gen~ environment`);\n      genComment.message(\"fontsize\", 13);\n      genComment.message(\"fontname\", \"Lato\");\n      genComment.message(\"textcolor\", textColor);\n      genComment.message(\"patching_rect\", 10, 70, 660, 22);\n      genComment.message(\"background\", 1);\n      gentab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `gen~ @title using_${objectNameArgument}_inside_gen~`,\n        \"@varname\",\n        `${thisHelpObjectName}Gen`,\n        \"@patching_rect\",\n        223,\n        336,\n        447,\n        23\n      );\n      const genboxComment = gentab.subpatcher().newdefault(97, 328, \"comment\");\n      genboxComment.varname = \"comment_gen\";\n      const gbComment = gentab.subpatcher().getnamed(\"comment_gen\");\n      gbComment.message(\"set\", \"Double-Click to see the example\");\n      gbComment.message(\"bubble\", 1);\n      gbComment.message(\"bubbleside\", 3);\n      gbComment.message(\"textjustification\", 1);\n      gbComment.message(\"fontsize\", 13);\n      gbComment.message(\"fontname\", \"Arial\");\n      gbComment.message(\"patching_rect\", 97, 328, 124, 40);\n      gbComment.message(\"background\", 1);\n      if (createDacForHelpfile) {\n        const ezdacObj = gentab.subpatcher().newdefault(140, 537, \"ezdac~\");\n        ezdacObj.varname = \"mcs_dac\";\n        const ezdac = gentab.subpatcher().getnamed(\"mcs_dac\");\n        ezdac.message(\"local\", 1);\n        ezdac.message(\"patching_rect\", 223, 537, 45, 45);\n        const ezdacComment = gentab.subpatcher().newdefault(270, 547, \"comment\");\n        ezdacComment.varname = \"comment_dac\";\n        const comment = gentab.subpatcher().getnamed(\"comment_dac\");\n        comment.message(\"set\", \"Audio On\");\n        comment.message(\"bubble\", 1);\n        comment.message(\"bubbleside\", 1);\n        comment.message(\"textjustification\", 1);\n        comment.message(\"fontsize\", 13);\n        comment.message(\"fontname\", \"Arial\");\n        comment.message(\"patching_rect\", 270, 547, 86, 25);\n        comment.message(\"background\", 1);\n      }\n    }\n  }\n  if (eviOption4 > 0) {\n    const genexpr = thisPatcher.getnamed(\"genexpr_tab\");\n    const testGenExprTab = genexpr?.valid;\n    if (!testGenExprTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        \"p GenExpr\",\n        \"@varname\",\n        \"genexpr_tab\",\n        \"@patching_rect\",\n        455,\n        336,\n        71,\n        23\n      );\n      const genexprtab = thisPatcher.getnamed(\"genexpr_tab\");\n      genexprtab.subpatcher().setattr(\"bglocked\", 1);\n      genexprtab.subpatcher().message(\"wclose\");\n      genexprtab.message(\"showontab\", 1);\n      genexprtab.message(\"gridonopen\", 1);\n      genexprtab.message(\"gridsize\", 15, 15);\n      genexprtab.message(\"fontsize\", 13);\n      genexprtab.message(\"fontname\", \"Arial\");\n      genexprtab.message(\"locked\", 1);\n      genexprtab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `v8ui @filename evi.helpname.js @jsarguments ${objectNameArgument} ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n      );\n      const genexprDigestComment = genexprtab.subpatcher().newdefault(10, 70, \"comment\");\n      genexprDigestComment.varname = \"digest_comment\";\n      const genComment = genexprtab.subpatcher().getnamed(\"digest_comment\");\n      genComment.message(\"set\", `The ${objectNameArgument} algorithm can also be used inside GenExpr code`);\n      genComment.message(\"fontsize\", 13);\n      genComment.message(\"fontname\", \"Lato\");\n      genComment.message(\"textcolor\", textColor);\n      genComment.message(\"patching_rect\", 10, 70, 660, 22);\n      genComment.message(\"background\", 1);\n      genexprtab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `gen~ @title using_${objectNameArgument}_with_GenExpr`,\n        \"@varname\",\n        `${thisHelpObjectName}GenExpr`,\n        \"@patching_rect\",\n        223,\n        336,\n        447,\n        23\n      );\n      const genboxComment = genexprtab.subpatcher().newdefault(97, 328, \"comment\");\n      genboxComment.varname = \"comment_gen\";\n      const gbComment = genexprtab.subpatcher().getnamed(\"comment_gen\");\n      gbComment.message(\"set\", \"Double-Click to see the example\");\n      gbComment.message(\"bubble\", 1);\n      gbComment.message(\"bubbleside\", 3);\n      gbComment.message(\"textjustification\", 1);\n      gbComment.message(\"fontsize\", 13);\n      gbComment.message(\"fontname\", \"Arial\");\n      gbComment.message(\"patching_rect\", 97, 328, 124, 40);\n      gbComment.message(\"background\", 1);\n      if (createDacForHelpfile) {\n        const ezdacObj = genexprtab.subpatcher().newdefault(140, 537, \"ezdac~\");\n        ezdacObj.varname = \"mcs_dac\";\n        const ezdac = genexprtab.subpatcher().getnamed(\"mcs_dac\");\n        ezdac.message(\"local\", 1);\n        ezdac.message(\"patching_rect\", 223, 537, 45, 45);\n        const ezdacComment = genexprtab.subpatcher().newdefault(270, 547, \"comment\");\n        ezdacComment.varname = \"comment_dac\";\n        const comment = genexprtab.subpatcher().getnamed(\"comment_dac\");\n        comment.message(\"set\", \"Audio On\");\n        comment.message(\"bubble\", 1);\n        comment.message(\"bubbleside\", 1);\n        comment.message(\"textjustification\", 1);\n        comment.message(\"fontsize\", 13);\n        comment.message(\"fontname\", \"Arial\");\n        comment.message(\"patching_rect\", 270, 547, 86, 25);\n        comment.message(\"background\", 1);\n      }\n    }\n  }\n  if (eviOption5 !== \"none\") {\n    const areas = thisPatcher.getnamed(\"areas_tab\");\n    const testAreasTab = areas?.valid;\n    if (!testAreasTab) {\n      thisPatcher.message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `p \"evieve ${eviOption5}\"`,\n        \"@varname\",\n        \"areas_tab\",\n        \"@patching_rect\",\n        543,\n        336,\n        107,\n        23\n      );\n      const areastab = thisPatcher.getnamed(\"areas_tab\");\n      areastab.subpatcher().setattr(\"bglocked\", 1);\n      areastab.subpatcher().message(\"wclose\");\n      areastab.message(\"showontab\", 1);\n      areastab.message(\"gridonopen\", 1);\n      areastab.message(\"gridsize\", 15, 15);\n      areastab.message(\"fontsize\", 13);\n      areastab.message(\"fontname\", \"Arial\");\n      areastab.message(\"locked\", 1);\n      areastab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `v8ui @filename evi.helpname.js @jsarguments \"evieve: ${eviOption5}\" ${660} @patching_rect 10. 10. 660. 50. @background 1 @embed 0`\n      );\n      const areasDigestComment = areastab.subpatcher().newdefault(10, 70, \"comment\");\n      areasDigestComment.varname = \"digest_comment\";\n      const areasComment = areastab.subpatcher().getnamed(\"digest_comment\");\n      areasComment.message(\"set\", `There are other ${eviOption5} objects in evieve. Here is an overview.`);\n      areasComment.message(\"fontsize\", 13);\n      areasComment.message(\"fontname\", \"Lato\");\n      areasComment.message(\"textcolor\", textColor);\n      areasComment.message(\"patching_rect\", 10, 70, 660, 22);\n      areasComment.message(\"background\", 1);\n      const AREAS_BPATCHER_NAME = `areas_help_${eviOption5}.maxhelp`;\n      areastab.subpatcher().message(\n        \"script\",\n        \"newobject\",\n        \"newobj\",\n        \"@text\",\n        `bpatcher`,\n        \"@varname\",\n        `${thisHelpObjectName}Areas`,\n        \"@patching_position\",\n        10,\n        94\n      );\n      const areasBpatcher = areastab.subpatcher().getnamed(`${thisHelpObjectName}Areas`);\n      areasBpatcher.setboxattr(\"patching_rect\", 10, 94, 660, 568);\n      areasBpatcher.setboxattr(\"lockedsize\", 1);\n      areasBpatcher.setboxattr(\"lockeddragscroll\", 2);\n      areasBpatcher.setboxattr(\"bgmode\", 0);\n      areasBpatcher.setboxattr(\"clickthrough\", 1);\n      areasBpatcher.setboxattr(\"name\", AREAS_BPATCHER_NAME);\n    }\n  }\n  const b = thisPatcher.getnamed(\"q_tab\");\n  const testQtab = b?.valid;\n  if (!testQtab) {\n    thisPatcher.message(\n      \"script\",\n      \"newobject\",\n      \"newobj\",\n      \"@text\",\n      \"p ?\",\n      \"@varname\",\n      \"q_tab\",\n      \"@patching_rect\",\n      697,\n      336,\n      50,\n      23,\n      \"@background\",\n      1\n    );\n    const q = thisPatcher.getnamed(\"q_tab\");\n    q.subpatcher().message(\"wclose\");\n    q.message(\"showontab\", 1);\n  }\n}\nfunction resize(x, y = 796) {\n  if (x == null) {\n    thisPatcher.wind.size = [1277, 796];\n  } else {\n    thisPatcher.wind.size = [x, y];\n  }\n}\nconst module = {};\nmodule.exports = {};\n",
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
                        "rect": [ 0.0, 26.0, 840.0, 682.0 ],
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
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
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
                                        "rect": [ 117.0, 139.0, 276.0, 326.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 50.0, 140.0, 42.0, 22.0 ],
                                                    "text": "* 100."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 184.0, 77.0, 22.0 ],
                                                    "text": "prepend set"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 50.0, 100.0, 158.0, 22.0 ],
                                                    "text": "route eviAlgoverb::dryWet"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-22",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-23",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 50.0, 232.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 0 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 386.0, 522.0, 19.0, 23.0 ],
                                    "text": "p"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-20",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 201.0, 262.0, 76.0, 25.0 ],
                                    "text": "Preset",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "appearance": 3,
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-13",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 466.0, 315.0, 67.0, 69.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 40.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "DryWet",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Dry/Wet",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "varname": "DryWet"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 514.0, 395.0, 98.0, 23.0 ],
                                    "text": "prepend drywet"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 150.0, 395.0, 43.0, 23.0 ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 90.0, 395.0, 43.0, 23.0 ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "clipheight": 27.5,
                                    "data": {
                                        "clips": [
                                            {
                                                "absolutepath": "drumLoop.aif",
                                                "filename": "drumLoop.aif",
                                                "filekind": "audiofile",
                                                "id": "u079003426",
                                                "loop": 1,
                                                "content_state": {
                                                    "loop": 1
                                                }
                                            },
                                            {
                                                "absolutepath": "duduk.aif",
                                                "filename": "duduk.aif",
                                                "filekind": "audiofile",
                                                "id": "u254003698",
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
                                    "patching_rect": [ 90.0, 321.0, 259.0, 57.0 ],
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
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-63",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "evi.algoverb.factorypresetsmenu.maxpat",
                                    "numinlets": 3,
                                    "numoutlets": 4,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "bang", "int", "", "" ],
                                    "patching_rect": [ 279.0, 262.0, 126.0, 24.0 ],
                                    "viewvisibility": 1
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
                                    "jsarguments": [ "evi.algoverb~", "pants:/Users/stkr/Dev/evieve/help/abstractions/evi.algoverb~.maxhelp" ],
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
                                    },
                                    "varname": "v8ui_AA"
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
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "signal", "" ],
                                    "patching_rect": [ 305.0, 486.0, 100.0, 23.0 ],
                                    "text": "evi.algoverb~",
                                    "varname": "evieveObject"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 195.0, 396.0, 154.0, 21.0 ],
                                    "text": "because duduk :-("
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 311.0, 537.0, 45.0, 45.0 ],
                                    "varname": "basic_dac"
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
                                    "patching_rect": [ 358.0, 547.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
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
                                    "source": [ "obj-13", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 395.5, 555.0, 629.3984375, 555.0, 629.3984375, 305.0, 475.5, 305.0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-3", 0 ]
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
                                    "destination": [ "obj-24", 0 ],
                                    "hidden": 1,
                                    "order": 0,
                                    "source": [ "obj-5", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 2 ],
                                    "midpoints": [ 395.5, 519.0, 417.7109375, 519.0, 417.7109375, 252.0, 395.5, 252.0 ],
                                    "order": 1,
                                    "source": [ "obj-5", 2 ]
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
                                    "destination": [ "obj-5", 1 ],
                                    "source": [ "obj-63", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "source": [ "obj-8", 0 ]
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
                    "jsarguments": [ "evi.algoverb~" ],
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 10.0, 10.0, 290.36798095703125, 57.599853515625 ],
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
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 840.0, 682.0 ],
                        "bglocked": 1,
                        "default_fontsize": 13.0,
                        "gridonopen": 2,
                        "showontab": 1,
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "appearance": 3,
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-13",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 524.0, 171.0, 67.0, 69.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 40.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "DryWet[1]",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Dry/Wet",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 5
                                        }
                                    },
                                    "varname": "DryWet[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 572.0, 251.0, 98.0, 23.0 ],
                                    "text": "prepend drywet"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 140.0, 421.0, 79.0, 23.0 ],
                                    "text": "mc.unpack~"
                                }
                            },
                            {
                                "box": {
                                    "data": {
                                        "clips": []
                                    },
                                    "id": "obj-1",
                                    "maxclass": "mc.playlist~",
                                    "mode": "basic",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "multichannelsignal", "signal", "", "dictionary" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 140.0, 184.0, 292.0, 90.0 ],
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
                                    "background": 1,
                                    "border": 0,
                                    "embed": 0,
                                    "filename": "evi.helpname.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "mcs.evi.algoverb~", 660 ],
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
                                    "text": "The mcs version is a stereo utility in case you are in an mc environment when wanting to use the reverb",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "multichannelsignal", "" ],
                                    "patching_rect": [ 140.0, 336.0, 114.0, 23.0 ],
                                    "text": "mcs.evi.algoverb~",
                                    "varname": "evieveObjectMcs"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 140.0, 537.0, 45.0, 45.0 ],
                                    "varname": "mcs_dac"
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
                                    "patching_rect": [ 187.0, 547.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
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
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-13", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 1 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 298.0, 336.0, 43.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p mcs",
                    "varname": "mcs_tab"
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
                        "rect": [ 0.0, 26.0, 840.0, 682.0 ],
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
                                    "jsarguments": [ "evi.algoverb~", 660 ],
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
                                    "text": "The evi.algoverb~ algorithm is also available inside the gen~ environment",
                                    "varname": "digest_comment"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
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
                                        "rect": [ 59.0, 119.0, 600.0, 450.0 ],
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 352.0, 291.0, 35.0, 22.0 ],
                                                    "text": "out 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 224.0, 207.0, 147.0, 22.0 ],
                                                    "text": "evi_algoverb @drywet 0.7"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 224.0, 123.0, 28.0, 22.0 ],
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
                                                    "patching_rect": [ 352.0, 123.0, 28.0, 22.0 ],
                                                    "text": "in 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 224.0, 291.0, 35.0, 22.0 ],
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
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-3", 1 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 223.0, 336.0, 272.0, 23.0 ],
                                    "text": "gen~ @title using_evi.algoverb~_inside_gen~",
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
                                    "patching_rect": [ 97.0, 328.0, 124.0, 40.0 ],
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
                                    "patching_rect": [ 223.0, 537.0, 45.0, 45.0 ],
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
                                    "patching_rect": [ 270.0, 547.0, 86.0, 25.0 ],
                                    "text": "Audio On",
                                    "textjustification": 1,
                                    "varname": "comment_dac"
                                }
                            }
                        ],
                        "lines": [],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 373.0, 336.0, 50.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p gen~",
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
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 840.0, 682.0 ],
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
                                    "jsarguments": [ "evieve: reverb", 660 ],
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
                                    "text": "There are other reverb objects in evieve. Here is an overview.",
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
                                    "name": "areas_help_reverb.maxhelp",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "offset": [ 0.0, 0.0 ],
                                    "patching_rect": [ 10.0, 61.0, 937.0, 600.0 ],
                                    "varname": "evieveObjectAreas",
                                    "viewvisibility": 1
                                }
                            }
                        ],
                        "lines": [],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 543.0, 336.0, 107.0, 23.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p \"evieve reverb\"",
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
            "obj-11::obj-6::obj-1::obj-54::obj-10": [ "eqHighGain", "eqHighGain", 0 ],
            "obj-11::obj-6::obj-1::obj-54::obj-12": [ "wetGain", "wetGain", 0 ],
            "obj-11::obj-6::obj-1::obj-54::obj-15": [ "eqLowGain", "eqLowGain", 0 ],
            "obj-11::obj-6::obj-1::obj-54::obj-16": [ "eqLowFreq", "eqLowFreq", 0 ],
            "obj-11::obj-6::obj-1::obj-54::obj-2": [ "reverbSize", "reverbSize", 0 ],
            "obj-11::obj-6::obj-1::obj-54::obj-33": [ "decay[2]", "decay", 0 ],
            "obj-11::obj-6::obj-1::obj-54::obj-35": [ "bypass", "bypass", 0 ],
            "obj-11::obj-6::obj-1::obj-54::obj-36": [ "diffusion", "diffusion", 0 ],
            "obj-11::obj-6::obj-1::obj-54::obj-4": [ "dryGain", "dryGain", 0 ],
            "obj-11::obj-6::obj-1::obj-54::obj-42": [ "inputPan", "inputPan", 0 ],
            "obj-11::obj-6::obj-1::obj-54::obj-43": [ "stereo", "stereo", 0 ],
            "obj-11::obj-6::obj-1::obj-54::obj-5": [ "damping", "damping", 0 ],
            "obj-11::obj-6::obj-1::obj-54::obj-7": [ "eqHighFreq", "eqHighFreq", 0 ],
            "obj-11::obj-6::obj-1::obj-54::obj-8": [ "smoothTime[2]", "smoothTime", 0 ],
            "obj-11::obj-6::obj-3::obj-54::obj-10": [ "eqHighGain[1]", "eqHighGain", 0 ],
            "obj-11::obj-6::obj-3::obj-54::obj-12": [ "earlyGain", "earlyGain", 0 ],
            "obj-11::obj-6::obj-3::obj-54::obj-15": [ "eqLowGain[1]", "eqLowGain", 0 ],
            "obj-11::obj-6::obj-3::obj-54::obj-16": [ "eqLowFreq[1]", "eqLowFreq", 0 ],
            "obj-11::obj-6::obj-3::obj-54::obj-2": [ "preDelay", "preDelay", 0 ],
            "obj-11::obj-6::obj-3::obj-54::obj-3": [ "reverbSize[1]", "reverbSize", 0 ],
            "obj-11::obj-6::obj-3::obj-54::obj-33": [ "wetGain[1]", "wetGain", 0 ],
            "obj-11::obj-6::obj-3::obj-54::obj-35": [ "bypass[1]", "bypass", 0 ],
            "obj-11::obj-6::obj-3::obj-54::obj-4": [ "dryGain[1]", "dryGain", 0 ],
            "obj-11::obj-6::obj-3::obj-54::obj-5": [ "width", "width", 0 ],
            "obj-11::obj-6::obj-3::obj-54::obj-7": [ "eqHighFreq[1]", "eqHighFreq", 0 ],
            "obj-11::obj-6::obj-3::obj-54::obj-8": [ "smoothTime[3]", "smoothTime", 0 ],
            "obj-11::obj-6::obj-3::obj-54::obj-9": [ "damping[1]", "damping", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-20": [ "preTime[2]", "preTime", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-21": [ "preSymmetry[2]", "preSymmetry", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-22": [ "earlySize[2]", "earlySize", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-41": [ "earlySymmetry[2]", "earlySymmetry", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-42": [ "earlyDiffusion[2]", "earlyDiffusion", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-43": [ "lateSize[2]", "lateSize", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-44": [ "lateSymmetry[2]", "lateSymmetry", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-45": [ "lateDiffusion[2]", "lateDiffusion", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-46": [ "decay[3]", "decay", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-48": [ "absorbtion[2]", "absorbtion", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-53": [ "earlyLate[2]", "earlyLate", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-54": [ "modFrequency[2]", "modFrequency", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-55": [ "modAmplitude[2]", "modAmplitude", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-59": [ "smoothTime[7]", "smoothTime", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-60": [ "dryWet[5]", "dryWet", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-61": [ "highDampFrequency[2]", "highDampFrequency", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-62": [ "highDampGain[2]", "highDampGain", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-63": [ "lowDampFrequency[2]", "lowDampFrequency", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-64": [ "lowDampGain[2]", "lowDampGain", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-65": [ "highEqFrequency[2]", "highEqFrequency", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-66": [ "lowEqFrequency[2]", "lowEqFrequency", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-67": [ "highEqGain[2]", "highEqGain", 0 ],
            "obj-11::obj-6::obj-48::obj-120::obj-68": [ "lowEqGain[2]", "lowEqGain", 0 ],
            "obj-11::obj-6::obj-4::obj-54::obj-10": [ "spread", "spread", 0 ],
            "obj-11::obj-6::obj-4::obj-54::obj-12": [ "earlyGain[1]", "earlyGain", 0 ],
            "obj-11::obj-6::obj-4::obj-54::obj-15": [ "eqLowGain[2]", "eqLowGain", 0 ],
            "obj-11::obj-6::obj-4::obj-54::obj-16": [ "eqLowFreq[2]", "eqLowFreq", 0 ],
            "obj-11::obj-6::obj-4::obj-54::obj-17": [ "eqHighGain[2]", "eqHighGain", 0 ],
            "obj-11::obj-6::obj-4::obj-54::obj-18": [ "eqHighFreq[2]", "eqHighFreq", 0 ],
            "obj-11::obj-6::obj-4::obj-54::obj-2": [ "bandWidth", "bandWidth", 0 ],
            "obj-11::obj-6::obj-4::obj-54::obj-3": [ "damp", "damp", 0 ],
            "obj-11::obj-6::obj-4::obj-54::obj-33": [ "lateGain", "lateGain", 0 ],
            "obj-11::obj-6::obj-4::obj-54::obj-35": [ "bypass[2]", "bypass", 0 ],
            "obj-11::obj-6::obj-4::obj-54::obj-4": [ "dryGain[2]", "dryGain", 0 ],
            "obj-11::obj-6::obj-4::obj-54::obj-5": [ "decayTime", "decayTime", 0 ],
            "obj-11::obj-6::obj-4::obj-54::obj-6": [ "stereo[1]", "stereo", 0 ],
            "obj-11::obj-6::obj-4::obj-54::obj-8": [ "smoothTime[4]", "smoothTime", 0 ],
            "obj-11::obj-6::obj-4::obj-54::obj-9": [ "sizeMeters", "sizeMeters", 0 ],
            "obj-11::obj-6::obj-55::obj-54::obj-12": [ "inputLow", "inputLow", 0 ],
            "obj-11::obj-6::obj-55::obj-54::obj-15": [ "inputHigh", "inputHigh", 0 ],
            "obj-11::obj-6::obj-55::obj-54::obj-17": [ "feedbackHigh", "feedbackHigh", 0 ],
            "obj-11::obj-6::obj-55::obj-54::obj-19": [ "feedbackLow", "feedbackLow", 0 ],
            "obj-11::obj-6::obj-55::obj-54::obj-2": [ "modDuty", "modDuty", 0 ],
            "obj-11::obj-6::obj-55::obj-54::obj-21": [ "dampLow", "dampLow", 0 ],
            "obj-11::obj-6::obj-55::obj-54::obj-23": [ "dampHigh", "dampHigh", 0 ],
            "obj-11::obj-6::obj-55::obj-54::obj-25": [ "feedbackNonlin", "feedbackNonlin", 0 ],
            "obj-11::obj-6::obj-55::obj-54::obj-3": [ "feedback[1]", "feedback", 0 ],
            "obj-11::obj-6::obj-55::obj-54::obj-30": [ "outputNonlin", "outputNonlin", 0 ],
            "obj-11::obj-6::obj-55::obj-54::obj-32": [ "modDepth", "modDepth", 0 ],
            "obj-11::obj-6::obj-55::obj-54::obj-33": [ "dryWet[6]", "dryWet", 0 ],
            "obj-11::obj-6::obj-55::obj-54::obj-38": [ "modRate", "modRate", 0 ],
            "obj-11::obj-6::obj-55::obj-54::obj-7": [ "modShape", "modShape", 0 ],
            "obj-11::obj-6::obj-55::obj-54::obj-8": [ "modSkew", "modSkew", 0 ],
            "obj-11::obj-6::obj-55::obj-54::obj-9": [ "outputNonlinGains", "outputNonlinGains", 0 ],
            "obj-11::obj-6::obj-5::obj-54::obj-10": [ "highPass", "highPass", 0 ],
            "obj-11::obj-6::obj-5::obj-54::obj-12": [ "fdnGain", "fdnGain", 0 ],
            "obj-11::obj-6::obj-5::obj-54::obj-2": [ "early", "early", 0 ],
            "obj-11::obj-6::obj-5::obj-54::obj-3": [ "feedback", "feedback", 0 ],
            "obj-11::obj-6::obj-5::obj-54::obj-33": [ "dryWet[2]", "dryWet", 0 ],
            "obj-11::obj-6::obj-5::obj-54::obj-35": [ "smoothTime[5]", "smoothTime", 0 ],
            "obj-11::obj-6::obj-5::obj-54::obj-5": [ "damp[1]", "damp", 0 ],
            "obj-11::obj-6::obj-5::obj-54::obj-9": [ "crossover", "crossover", 0 ],
            "obj-11::obj-6::obj-68::obj-54::obj-10": [ "dryWet[7]", "dryWet", 0 ],
            "obj-11::obj-6::obj-68::obj-54::obj-2": [ "lowDamp", "lowDamp", 0 ],
            "obj-11::obj-6::obj-68::obj-54::obj-3": [ "highDamp", "highDamp", 0 ],
            "obj-11::obj-6::obj-68::obj-54::obj-4": [ "space", "space", 0 ],
            "obj-11::obj-6::obj-68::obj-54::obj-5": [ "rvrbSize", "rvrbSize", 0 ],
            "obj-11::obj-6::obj-68::obj-54::obj-9": [ "damp[4]", "damp", 0 ],
            "obj-11::obj-6::obj-6::obj-54::obj-10": [ "damp[2]", "damp", 0 ],
            "obj-11::obj-6::obj-6::obj-54::obj-12": [ "reverbGain", "reverbGain", 0 ],
            "obj-11::obj-6::obj-6::obj-54::obj-2": [ "preDelay[1]", "preDelay", 0 ],
            "obj-11::obj-6::obj-6::obj-54::obj-24": [ "band1Type", "band1Type", 0 ],
            "obj-11::obj-6::obj-6::obj-54::obj-25": [ "band2Type", "band2Type", 0 ],
            "obj-11::obj-6::obj-6::obj-54::obj-28": [ "band1Cutoff", "band1Cutoff", 0 ],
            "obj-11::obj-6::obj-6::obj-54::obj-29": [ "band2Cutoff", "band2Cutoff", 0 ],
            "obj-11::obj-6::obj-6::obj-54::obj-3": [ "lowDecay", "lowDecay", 0 ],
            "obj-11::obj-6::obj-6::obj-54::obj-30": [ "band1Gain", "band1Gain", 0 ],
            "obj-11::obj-6::obj-6::obj-54::obj-32": [ "band2Gain", "band2Gain", 0 ],
            "obj-11::obj-6::obj-6::obj-54::obj-33": [ "dryWet[3]", "dryWet", 0 ],
            "obj-11::obj-6::obj-6::obj-54::obj-35": [ "bypass[3]", "bypass", 0 ],
            "obj-11::obj-6::obj-6::obj-54::obj-5": [ "midDecay", "midDecay", 0 ],
            "obj-11::obj-6::obj-6::obj-54::obj-9": [ "crossover[1]", "crossover", 0 ],
            "obj-2::obj-13": [ "DryWet", "Dry/Wet", 0 ],
            "obj-2::obj-5::obj-120::obj-20": [ "preTime", "preTime", 0 ],
            "obj-2::obj-5::obj-120::obj-21": [ "preSymmetry", "preSymmetry", 0 ],
            "obj-2::obj-5::obj-120::obj-22": [ "earlySize", "earlySize", 0 ],
            "obj-2::obj-5::obj-120::obj-41": [ "earlySymmetry", "earlySymmetry", 0 ],
            "obj-2::obj-5::obj-120::obj-42": [ "earlyDiffusion", "earlyDiffusion", 0 ],
            "obj-2::obj-5::obj-120::obj-43": [ "lateSize", "lateSize", 0 ],
            "obj-2::obj-5::obj-120::obj-44": [ "lateSymmetry", "lateSymmetry", 0 ],
            "obj-2::obj-5::obj-120::obj-45": [ "lateDiffusion", "lateDiffusion", 0 ],
            "obj-2::obj-5::obj-120::obj-46": [ "decay", "decay", 0 ],
            "obj-2::obj-5::obj-120::obj-48": [ "absorbtion", "absorbtion", 0 ],
            "obj-2::obj-5::obj-120::obj-53": [ "earlyLate", "earlyLate", 0 ],
            "obj-2::obj-5::obj-120::obj-54": [ "modFrequency", "modFrequency", 0 ],
            "obj-2::obj-5::obj-120::obj-55": [ "modAmplitude", "modAmplitude", 0 ],
            "obj-2::obj-5::obj-120::obj-59": [ "smoothTime", "smoothTime", 0 ],
            "obj-2::obj-5::obj-120::obj-60": [ "dryWet", "dryWet", 0 ],
            "obj-2::obj-5::obj-120::obj-61": [ "highDampFrequency", "highDampFrequency", 0 ],
            "obj-2::obj-5::obj-120::obj-62": [ "highDampGain", "highDampGain", 0 ],
            "obj-2::obj-5::obj-120::obj-63": [ "lowDampFrequency", "lowDampFrequency", 0 ],
            "obj-2::obj-5::obj-120::obj-64": [ "lowDampGain", "lowDampGain", 0 ],
            "obj-2::obj-5::obj-120::obj-65": [ "highEqFrequency", "highEqFrequency", 0 ],
            "obj-2::obj-5::obj-120::obj-66": [ "lowEqFrequency", "lowEqFrequency", 0 ],
            "obj-2::obj-5::obj-120::obj-67": [ "highEqGain", "highEqGain", 0 ],
            "obj-2::obj-5::obj-120::obj-68": [ "lowEqGain", "lowEqGain", 0 ],
            "obj-5::obj-5::obj-120::obj-20": [ "preTime[3]", "preTime", 0 ],
            "obj-5::obj-5::obj-120::obj-21": [ "preSymmetry[3]", "preSymmetry", 0 ],
            "obj-5::obj-5::obj-120::obj-22": [ "earlySize[3]", "earlySize", 0 ],
            "obj-5::obj-5::obj-120::obj-41": [ "earlySymmetry[3]", "earlySymmetry", 0 ],
            "obj-5::obj-5::obj-120::obj-42": [ "earlyDiffusion[3]", "earlyDiffusion", 0 ],
            "obj-5::obj-5::obj-120::obj-43": [ "lateSize[3]", "lateSize", 0 ],
            "obj-5::obj-5::obj-120::obj-44": [ "lateSymmetry[3]", "lateSymmetry", 0 ],
            "obj-5::obj-5::obj-120::obj-45": [ "lateDiffusion[3]", "lateDiffusion", 0 ],
            "obj-5::obj-5::obj-120::obj-46": [ "decay[4]", "decay", 0 ],
            "obj-5::obj-5::obj-120::obj-48": [ "absorbtion[3]", "absorbtion", 0 ],
            "obj-5::obj-5::obj-120::obj-53": [ "earlyLate[3]", "earlyLate", 0 ],
            "obj-5::obj-5::obj-120::obj-54": [ "modFrequency[3]", "modFrequency", 0 ],
            "obj-5::obj-5::obj-120::obj-55": [ "modAmplitude[3]", "modAmplitude", 0 ],
            "obj-5::obj-5::obj-120::obj-59": [ "smoothTime[6]", "smoothTime", 0 ],
            "obj-5::obj-5::obj-120::obj-60": [ "dryWet[8]", "dryWet", 0 ],
            "obj-5::obj-5::obj-120::obj-61": [ "highDampFrequency[3]", "highDampFrequency", 0 ],
            "obj-5::obj-5::obj-120::obj-62": [ "highDampGain[3]", "highDampGain", 0 ],
            "obj-5::obj-5::obj-120::obj-63": [ "lowDampFrequency[3]", "lowDampFrequency", 0 ],
            "obj-5::obj-5::obj-120::obj-64": [ "lowDampGain[3]", "lowDampGain", 0 ],
            "obj-5::obj-5::obj-120::obj-65": [ "highEqFrequency[3]", "highEqFrequency", 0 ],
            "obj-5::obj-5::obj-120::obj-66": [ "lowEqFrequency[3]", "lowEqFrequency", 0 ],
            "obj-5::obj-5::obj-120::obj-67": [ "highEqGain[3]", "highEqGain", 0 ],
            "obj-5::obj-5::obj-120::obj-68": [ "lowEqGain[3]", "lowEqGain", 0 ],
            "obj-9::obj-13": [ "DryWet[1]", "Dry/Wet", 0 ],
            "obj-9::obj-5::obj-120::obj-20": [ "preTime[1]", "preTime", 0 ],
            "obj-9::obj-5::obj-120::obj-21": [ "preSymmetry[1]", "preSymmetry", 0 ],
            "obj-9::obj-5::obj-120::obj-22": [ "earlySize[1]", "earlySize", 0 ],
            "obj-9::obj-5::obj-120::obj-41": [ "earlySymmetry[1]", "earlySymmetry", 0 ],
            "obj-9::obj-5::obj-120::obj-42": [ "earlyDiffusion[1]", "earlyDiffusion", 0 ],
            "obj-9::obj-5::obj-120::obj-43": [ "lateSize[1]", "lateSize", 0 ],
            "obj-9::obj-5::obj-120::obj-44": [ "lateSymmetry[1]", "lateSymmetry", 0 ],
            "obj-9::obj-5::obj-120::obj-45": [ "lateDiffusion[1]", "lateDiffusion", 0 ],
            "obj-9::obj-5::obj-120::obj-46": [ "decay[1]", "decay", 0 ],
            "obj-9::obj-5::obj-120::obj-48": [ "absorbtion[1]", "absorbtion", 0 ],
            "obj-9::obj-5::obj-120::obj-53": [ "earlyLate[1]", "earlyLate", 0 ],
            "obj-9::obj-5::obj-120::obj-54": [ "modFrequency[1]", "modFrequency", 0 ],
            "obj-9::obj-5::obj-120::obj-55": [ "modAmplitude[1]", "modAmplitude", 0 ],
            "obj-9::obj-5::obj-120::obj-59": [ "smoothTime[1]", "smoothTime", 0 ],
            "obj-9::obj-5::obj-120::obj-60": [ "dryWet[1]", "dryWet", 0 ],
            "obj-9::obj-5::obj-120::obj-61": [ "highDampFrequency[1]", "highDampFrequency", 0 ],
            "obj-9::obj-5::obj-120::obj-62": [ "highDampGain[1]", "highDampGain", 0 ],
            "obj-9::obj-5::obj-120::obj-63": [ "lowDampFrequency[1]", "lowDampFrequency", 0 ],
            "obj-9::obj-5::obj-120::obj-64": [ "lowDampGain[1]", "lowDampGain", 0 ],
            "obj-9::obj-5::obj-120::obj-65": [ "highEqFrequency[1]", "highEqFrequency", 0 ],
            "obj-9::obj-5::obj-120::obj-66": [ "lowEqFrequency[1]", "lowEqFrequency", 0 ],
            "obj-9::obj-5::obj-120::obj-67": [ "highEqGain[1]", "highEqGain", 0 ],
            "obj-9::obj-5::obj-120::obj-68": [ "lowEqGain[1]", "lowEqGain", 0 ],
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