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
        "rect": [ 62.0, 130.0, 959.0, 720.0 ],
        "bglocked": 1,
        "openinpresentation": 1,
        "gridonopen": 2,
        "subpatcher_template": "sub",
        "integercoordinates": 1,
        "title": "evieve Examples: Monosynth",
        "boxes": [
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.85,
                    "bubbleside": 0,
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 882.0, 406.0, 89.0, 39.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.0, 601.0, 79.0, 39.0 ],
                    "text": "Mod Wheel",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 558.0, 756.0, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 558.0, 722.0, 54.0, 22.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-18",
                    "maxclass": "flonum",
                    "maximum": 14.0,
                    "minimum": 1.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 541.0, 585.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 49.0, 668.0, 50.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "number[3]",
                            "parameter_mmax": 14.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "number[3]",
                            "parameter_type": 0
                        }
                    },
                    "varname": "number"
                }
            },
            {
                "box": {
                    "bgcolor": [ 1.0, 0.39215686274509803, 0.0, 1.0 ],
                    "fontname": "Arial Bold",
                    "hint": "",
                    "id": "obj-15",
                    "ignoreclick": 1,
                    "legacytextcolor": 1,
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 632.0, 644.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 808.0, 669.0, 20.0, 20.0 ],
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
                    "hidden": 1,
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 654.0, 643.0, 54.0, 22.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 654.0, 607.0, 70.0, 22.0 ],
                    "text": "loadmess 3"
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
                    "patching_rect": [ 45.0, 754.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 903.0, 654.0, 20.0, 20.0 ],
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
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 2,
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
                        "rect": [ 34.0, 100.0, 214.0, 380.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 215.0, 87.0, 22.0 ],
                                    "text": "prepend active"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 50.0, 181.0, 29.5, 22.0 ],
                                    "text": "> 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 50.0, 142.0, 49.0, 22.0 ],
                                    "text": "list.sum"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 100.0, 54.0, 22.0 ],
                                    "text": "pak 0 0"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-16",
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
                                    "id": "obj-18",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 85.0, 40.0, 30.0, 30.0 ]
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
                                    "patching_rect": [ 50.0, 297.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-11", 0 ]
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
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 1 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 619.0, 455.0, 65.0, 22.0 ],
                    "text": "p mod_act"
                }
            },
            {
                "box": {
                    "bubblesize": 13,
                    "id": "obj-8",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 541.0, 609.0, 89.0, 89.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 105.0, 659.0, 701.0, 39.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-9", "live.dial", "float", 0.0, 5, "obj-85", "live.dial", "float", 3.0, 5, "obj-99", "live.dial", "float", 0.0, 5, "obj-39", "live.dial", "float", 1.0, 5, "obj-54", "live.dial", "float", 0.0, 5, "obj-66", "live.dial", "float", 5.0, 5, "obj-71", "live.dial", "float", 9.0, 5, "obj-72", "live.dial", "float", 4.0, 5, "obj-75", "live.dial", "float", 600.0, 5, "obj-84", "live.tab", "float", 1.0, 5, "obj-104", "live.dial", "float", 3.0, 5, "obj-103", "live.dial", "float", 1.0, 5, "obj-102", "live.dial", "float", 600.0, 5, "obj-101", "live.tab", "float", 0.0, 5, "obj-108", "live.tab", "float", 1.0, 5, "obj-110", "live.dial", "float", 3.0, 5, "obj-114", "live.dial", "float", 45.0, 5, "obj-118", "live.tab", "float", 0.0, 5, "obj-119", "live.tab", "float", 2.0, 5, "obj-120", "live.tab", "float", 1.0, 5, "obj-134", "live.dial", "float", 1.0, 5, "obj-12", "live.dial", "float", 1.0, 5, "obj-6", "live.dial", "float", 1.0, 5, "obj-17", "live.toggle", "float", 0.0, 5, "obj-35", "live.dial", "float", 9.0, 5, "obj-33", "live.toggle", "float", 1.0, 5, "obj-46", "live.dial", "float", 9.0, 5, "obj-44", "live.toggle", "float", 1.0, 5, "obj-57", "live.dial", "float", 1.0, 5, "obj-55", "live.toggle", "float", 0.0, 5, "obj-140", "live.dial", "float", 0.0, 5, "obj-139", "live.dial", "float", 0.0, 5, "obj-1", "live.toggle", "float", 0.0, 5, "obj-3", "live.toggle", "float", 0.0 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-9", "live.dial", "float", 0.0, 5, "obj-85", "live.dial", "float", 3.0, 5, "obj-99", "live.dial", "float", 0.0, 5, "obj-39", "live.dial", "float", 1.0, 5, "obj-54", "live.dial", "float", 0.0, 5, "obj-66", "live.dial", "float", 5.0, 5, "obj-71", "live.dial", "float", 9.0, 5, "obj-72", "live.dial", "float", 4.0, 5, "obj-75", "live.dial", "float", 600.0, 5, "obj-84", "live.tab", "float", 1.0, 5, "obj-104", "live.dial", "float", 3.0, 5, "obj-103", "live.dial", "float", 1.0, 5, "obj-102", "live.dial", "float", 600.0, 5, "obj-101", "live.tab", "float", 0.0, 5, "obj-108", "live.tab", "float", 1.0, 5, "obj-110", "live.dial", "float", 3.732283353805542, 5, "obj-114", "live.dial", "float", 68.5905532836914, 5, "obj-118", "live.tab", "float", 0.0, 5, "obj-119", "live.tab", "float", 2.0, 5, "obj-120", "live.tab", "float", 1.0, 5, "obj-134", "live.dial", "float", 1.0, 5, "obj-12", "live.dial", "float", 1.0, 5, "obj-6", "live.dial", "float", 8.0, 5, "obj-17", "live.toggle", "float", 1.0, 5, "obj-35", "live.dial", "float", 9.0, 5, "obj-33", "live.toggle", "float", 1.0, 5, "obj-46", "live.dial", "float", 9.0, 5, "obj-44", "live.toggle", "float", 1.0, 5, "obj-57", "live.dial", "float", 1.0, 5, "obj-55", "live.toggle", "float", 0.0, 5, "obj-140", "live.dial", "float", 0.0, 5, "obj-139", "live.dial", "float", 0.0, 5, "obj-1", "live.toggle", "float", 1.0, 5, "obj-3", "live.toggle", "float", 0.0 ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-9", "live.dial", "float", 1.0, 5, "obj-85", "live.dial", "float", 1.0, 5, "obj-99", "live.dial", "float", -1.0, 5, "obj-39", "live.dial", "float", 2.0, 5, "obj-54", "live.dial", "float", 0.0, 5, "obj-66", "live.dial", "float", 7.204724311828613, 5, "obj-71", "live.dial", "float", 9.0, 5, "obj-72", "live.dial", "float", 4.0, 5, "obj-75", "live.dial", "float", 600.0, 5, "obj-84", "live.tab", "float", 1.0, 5, "obj-104", "live.dial", "float", 3.0, 5, "obj-103", "live.dial", "float", 1.0, 5, "obj-102", "live.dial", "float", 600.0, 5, "obj-101", "live.tab", "float", 0.0, 5, "obj-108", "live.tab", "float", 1.0, 5, "obj-110", "live.dial", "float", 4.299212455749512, 5, "obj-114", "live.dial", "float", 68.5905532836914, 5, "obj-118", "live.tab", "float", 1.0, 5, "obj-119", "live.tab", "float", 2.0, 5, "obj-120", "live.tab", "float", 0.0, 5, "obj-134", "live.dial", "float", 2.0, 5, "obj-12", "live.dial", "float", 0.0, 5, "obj-6", "live.dial", "float", 10.0, 5, "obj-17", "live.toggle", "float", 1.0, 5, "obj-35", "live.dial", "float", 9.0, 5, "obj-33", "live.toggle", "float", 1.0, 5, "obj-46", "live.dial", "float", 7.0, 5, "obj-44", "live.toggle", "float", 1.0, 5, "obj-57", "live.dial", "float", 1.0, 5, "obj-55", "live.toggle", "float", 0.0, 5, "obj-140", "live.dial", "float", 0.0, 5, "obj-139", "live.dial", "float", 0.0, 5, "obj-1", "live.toggle", "float", 1.0, 5, "obj-3", "live.toggle", "float", 1.0 ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-9", "live.dial", "float", 1.0, 5, "obj-85", "live.dial", "float", 0.0, 5, "obj-99", "live.dial", "float", -1.2999999523162842, 5, "obj-39", "live.dial", "float", 2.0, 5, "obj-54", "live.dial", "float", 2.200000047683716, 5, "obj-66", "live.dial", "float", 7.204724311828613, 5, "obj-71", "live.dial", "float", 8.0, 5, "obj-72", "live.dial", "float", 20.0, 5, "obj-75", "live.dial", "float", 600.0, 5, "obj-84", "live.tab", "float", 1.0, 5, "obj-104", "live.dial", "float", 6.0, 5, "obj-103", "live.dial", "float", 10.0, 5, "obj-102", "live.dial", "float", 600.0, 5, "obj-101", "live.tab", "float", 0.0, 5, "obj-108", "live.tab", "float", 0.0, 5, "obj-110", "live.dial", "float", 4.299212455749512, 5, "obj-114", "live.dial", "float", 79.2905502319336, 5, "obj-118", "live.tab", "float", 1.0, 5, "obj-119", "live.tab", "float", 2.0, 5, "obj-120", "live.tab", "float", 0.0, 5, "obj-134", "live.dial", "float", 2.0, 5, "obj-12", "live.dial", "float", 3.0, 5, "obj-6", "live.dial", "float", 10.0, 5, "obj-17", "live.toggle", "float", 1.0, 5, "obj-35", "live.dial", "float", 8.0, 5, "obj-33", "live.toggle", "float", 1.0, 5, "obj-46", "live.dial", "float", 8.0, 5, "obj-44", "live.toggle", "float", 1.0, 5, "obj-57", "live.dial", "float", 1.0, 5, "obj-55", "live.toggle", "float", 0.0, 5, "obj-140", "live.dial", "float", -1.0, 5, "obj-139", "live.dial", "float", 3.0, 5, "obj-1", "live.toggle", "float", 0.0, 5, "obj-3", "live.toggle", "float", 1.0 ]
                        },
                        {
                            "number": 5,
                            "data": [ 5, "obj-9", "live.dial", "float", 1.0, 5, "obj-85", "live.dial", "float", 0.0, 5, "obj-99", "live.dial", "float", 5.0, 5, "obj-39", "live.dial", "float", 3.0, 5, "obj-54", "live.dial", "float", -7.0, 5, "obj-66", "live.dial", "float", 7.204724311828613, 5, "obj-71", "live.dial", "float", 8.0, 5, "obj-72", "live.dial", "float", 20.0, 5, "obj-75", "live.dial", "float", 600.0, 5, "obj-84", "live.tab", "float", 1.0, 5, "obj-104", "live.dial", "float", 6.0, 5, "obj-103", "live.dial", "float", 10.0, 5, "obj-102", "live.dial", "float", 300.0, 5, "obj-101", "live.tab", "float", 0.0, 5, "obj-108", "live.tab", "float", 0.0, 5, "obj-110", "live.dial", "float", 4.299212455749512, 5, "obj-114", "live.dial", "float", 82.99763488769531, 5, "obj-118", "live.tab", "float", 1.0, 5, "obj-119", "live.tab", "float", 2.0, 5, "obj-120", "live.tab", "float", 0.0, 5, "obj-134", "live.dial", "float", 4.0, 5, "obj-12", "live.dial", "float", 3.0, 5, "obj-6", "live.dial", "float", 9.0, 5, "obj-17", "live.toggle", "float", 1.0, 5, "obj-35", "live.dial", "float", 9.0, 5, "obj-33", "live.toggle", "float", 1.0, 5, "obj-46", "live.dial", "float", 8.0, 5, "obj-44", "live.toggle", "float", 1.0, 5, "obj-57", "live.dial", "float", 5.5, 5, "obj-55", "live.toggle", "float", 1.0, 5, "obj-140", "live.dial", "float", -1.0, 5, "obj-139", "live.dial", "float", 3.0, 5, "obj-1", "live.toggle", "float", 1.0, 5, "obj-3", "live.toggle", "float", 0.0 ]
                        },
                        {
                            "number": 6,
                            "data": [ 5, "obj-9", "live.dial", "float", 3.0, 5, "obj-85", "live.dial", "float", 1.0, 5, "obj-99", "live.dial", "float", 5.0, 5, "obj-39", "live.dial", "float", 2.0, 5, "obj-54", "live.dial", "float", -7.0, 5, "obj-66", "live.dial", "float", 7.362204551696777, 5, "obj-71", "live.dial", "float", 6.897637844085693, 5, "obj-72", "live.dial", "float", 20.0, 5, "obj-75", "live.dial", "float", 180.6525115966797, 5, "obj-84", "live.tab", "float", 1.0, 5, "obj-104", "live.dial", "float", 3.7952756881713867, 5, "obj-103", "live.dial", "float", 10.0, 5, "obj-102", "live.dial", "float", 1000.0, 5, "obj-101", "live.tab", "float", 0.0, 5, "obj-108", "live.tab", "float", 1.0, 5, "obj-110", "live.dial", "float", 7.055118083953857, 5, "obj-114", "live.dial", "float", 60.81889724731445, 5, "obj-118", "live.tab", "float", 1.0, 5, "obj-119", "live.tab", "float", 3.0, 5, "obj-120", "live.tab", "float", 0.0, 5, "obj-134", "live.dial", "float", 4.0, 5, "obj-12", "live.dial", "float", 5.0, 5, "obj-6", "live.dial", "float", 9.0, 5, "obj-17", "live.toggle", "float", 1.0, 5, "obj-35", "live.dial", "float", 9.0, 5, "obj-33", "live.toggle", "float", 1.0, 5, "obj-46", "live.dial", "float", 8.0, 5, "obj-44", "live.toggle", "float", 1.0, 5, "obj-57", "live.dial", "float", 7.0, 5, "obj-55", "live.toggle", "float", 1.0, 5, "obj-140", "live.dial", "float", -2.0, 5, "obj-139", "live.dial", "float", 3.0, 5, "obj-1", "live.toggle", "float", 1.0, 5, "obj-3", "live.toggle", "float", 1.0 ]
                        },
                        {
                            "number": 7,
                            "data": [ 5, "obj-9", "live.dial", "float", 2.0, 5, "obj-85", "live.dial", "float", 1.0, 5, "obj-99", "live.dial", "float", 6.099999904632568, 5, "obj-39", "live.dial", "float", 1.0, 5, "obj-54", "live.dial", "float", -3.299999952316284, 5, "obj-66", "live.dial", "float", 7.322834491729736, 5, "obj-71", "live.dial", "float", 6.0, 5, "obj-72", "live.dial", "float", 2.0, 5, "obj-75", "live.dial", "float", 222.0, 5, "obj-84", "live.tab", "float", 1.0, 5, "obj-104", "live.dial", "float", 3.0, 5, "obj-103", "live.dial", "float", 10.0, 5, "obj-102", "live.dial", "float", 1000.0, 5, "obj-101", "live.tab", "float", 0.0, 5, "obj-108", "live.tab", "float", 0.0, 5, "obj-110", "live.dial", "float", 8.472440719604492, 5, "obj-114", "live.dial", "float", 83.56692504882812, 5, "obj-118", "live.tab", "float", 1.0, 5, "obj-119", "live.tab", "float", 4.0, 5, "obj-120", "live.tab", "float", 5.0, 5, "obj-134", "live.dial", "float", 7.0, 5, "obj-12", "live.dial", "float", 10.0, 5, "obj-6", "live.dial", "float", 9.0, 5, "obj-17", "live.toggle", "float", 1.0, 5, "obj-35", "live.dial", "float", 9.0, 5, "obj-33", "live.toggle", "float", 1.0, 5, "obj-46", "live.dial", "float", 10.0, 5, "obj-44", "live.toggle", "float", 1.0, 5, "obj-57", "live.dial", "float", 4.0, 5, "obj-55", "live.toggle", "float", 1.0, 5, "obj-140", "live.dial", "float", 1.0, 5, "obj-139", "live.dial", "float", -0.75, 5, "obj-1", "live.toggle", "float", 0.0, 5, "obj-3", "live.toggle", "float", 1.0 ]
                        },
                        {
                            "number": 8,
                            "data": [ 5, "obj-9", "live.dial", "float", 2.0, 5, "obj-85", "live.dial", "float", 1.0, 5, "obj-99", "live.dial", "float", 5.0, 5, "obj-39", "live.dial", "float", 1.0, 5, "obj-54", "live.dial", "float", -3.0, 5, "obj-66", "live.dial", "float", -7.480315208435059, 5, "obj-71", "live.dial", "float", 6.0, 5, "obj-72", "live.dial", "float", 2.0, 5, "obj-75", "live.dial", "float", 222.0, 5, "obj-84", "live.tab", "float", 1.0, 5, "obj-104", "live.dial", "float", 3.0, 5, "obj-103", "live.dial", "float", 10.0, 5, "obj-102", "live.dial", "float", 1000.0, 5, "obj-101", "live.tab", "float", 0.0, 5, "obj-108", "live.tab", "float", 1.0, 5, "obj-110", "live.dial", "float", 7.606298923492432, 5, "obj-114", "live.dial", "float", 90.30708312988281, 5, "obj-118", "live.tab", "float", 3.0, 5, "obj-119", "live.tab", "float", 4.0, 5, "obj-120", "live.tab", "float", 5.0, 5, "obj-134", "live.dial", "float", 6.599999904632568, 5, "obj-12", "live.dial", "float", 2.0, 5, "obj-6", "live.dial", "float", 9.0, 5, "obj-17", "live.toggle", "float", 1.0, 5, "obj-35", "live.dial", "float", 8.0, 5, "obj-33", "live.toggle", "float", 1.0, 5, "obj-46", "live.dial", "float", 10.0, 5, "obj-44", "live.toggle", "float", 1.0, 5, "obj-57", "live.dial", "float", 7.637795448303223, 5, "obj-55", "live.toggle", "float", 0.0, 5, "obj-140", "live.dial", "float", 1.0, 5, "obj-139", "live.dial", "float", -0.75, 5, "obj-1", "live.toggle", "float", 1.0, 5, "obj-3", "live.toggle", "float", 1.0 ]
                        },
                        {
                            "number": 9,
                            "data": [ 5, "obj-9", "live.dial", "float", 2.0, 5, "obj-85", "live.dial", "float", 3.0, 5, "obj-99", "live.dial", "float", 5.0, 5, "obj-39", "live.dial", "float", 1.0, 5, "obj-54", "live.dial", "float", -2.0, 5, "obj-66", "live.dial", "float", -3.070866346359253, 5, "obj-71", "live.dial", "float", 4.582677364349365, 5, "obj-72", "live.dial", "float", 53.54814529418945, 5, "obj-75", "live.dial", "float", 1945.8505859375, 5, "obj-84", "live.tab", "float", 1.0, 5, "obj-104", "live.dial", "float", 3.7086613178253174, 5, "obj-103", "live.dial", "float", 54.905513763427734, 5, "obj-102", "live.dial", "float", 277.1622009277344, 5, "obj-101", "live.tab", "float", 0.0, 5, "obj-108", "live.tab", "float", 1.0, 5, "obj-110", "live.dial", "float", 9.133858680725098, 5, "obj-114", "live.dial", "float", 54.0787353515625, 5, "obj-118", "live.tab", "float", 3.0, 5, "obj-119", "live.tab", "float", 4.0, 5, "obj-120", "live.tab", "float", 5.0, 5, "obj-134", "live.dial", "float", 0.0, 5, "obj-12", "live.dial", "float", 0.0, 5, "obj-6", "live.dial", "float", 9.0, 5, "obj-17", "live.toggle", "float", 1.0, 5, "obj-35", "live.dial", "float", 9.0, 5, "obj-33", "live.toggle", "float", 1.0, 5, "obj-46", "live.dial", "float", 9.0, 5, "obj-44", "live.toggle", "float", 1.0, 5, "obj-57", "live.dial", "float", 7.0, 5, "obj-55", "live.toggle", "float", 1.0, 5, "obj-140", "live.dial", "float", -1.0, 5, "obj-139", "live.dial", "float", -2.0, 5, "obj-1", "live.toggle", "float", 1.0, 5, "obj-3", "live.toggle", "float", 1.0 ]
                        },
                        {
                            "number": 10,
                            "data": [ 5, "obj-9", "live.dial", "float", 2.0, 5, "obj-85", "live.dial", "float", 3.0, 5, "obj-99", "live.dial", "float", 5.0, 5, "obj-39", "live.dial", "float", 0.0, 5, "obj-54", "live.dial", "float", -3.0, 5, "obj-66", "live.dial", "float", 3.582677125930786, 5, "obj-71", "live.dial", "float", 9.0, 5, "obj-72", "live.dial", "float", 1.8642178773880005, 5, "obj-75", "live.dial", "float", 426.2793273925781, 5, "obj-84", "live.tab", "float", 1.0, 5, "obj-104", "live.dial", "float", 3.5511810779571533, 5, "obj-103", "live.dial", "float", 1.0, 5, "obj-102", "live.dial", "float", 1901.69873046875, 5, "obj-101", "live.tab", "float", 0.0, 5, "obj-108", "live.tab", "float", 1.0, 5, "obj-110", "live.dial", "float", 4.102362155914307, 5, "obj-114", "live.dial", "float", 80.38582611083984, 5, "obj-118", "live.tab", "float", 2.0, 5, "obj-119", "live.tab", "float", 1.0, 5, "obj-120", "live.tab", "float", 0.0, 5, "obj-134", "live.dial", "float", 1.0, 5, "obj-12", "live.dial", "float", 0.0, 5, "obj-6", "live.dial", "float", 10.0, 5, "obj-17", "live.toggle", "float", 1.0, 5, "obj-35", "live.dial", "float", 10.0, 5, "obj-33", "live.toggle", "float", 0.0, 5, "obj-46", "live.dial", "float", 10.0, 5, "obj-44", "live.toggle", "float", 1.0, 5, "obj-57", "live.dial", "float", 1.0, 5, "obj-55", "live.toggle", "float", 0.0, 5, "obj-140", "live.dial", "float", 0.0, 5, "obj-139", "live.dial", "float", 4.5196852684021, 5, "obj-1", "live.toggle", "float", 0.0, 5, "obj-3", "live.toggle", "float", 1.0 ]
                        },
                        {
                            "number": 11,
                            "data": [ 5, "obj-9", "live.dial", "float", 2.0, 5, "obj-85", "live.dial", "float", 3.0, 5, "obj-99", "live.dial", "float", 5.0, 5, "obj-39", "live.dial", "float", 0.0, 5, "obj-54", "live.dial", "float", -3.0, 5, "obj-66", "live.dial", "float", -3.34645676612854, 5, "obj-71", "live.dial", "float", 9.0, 5, "obj-72", "live.dial", "float", 1.8642178773880005, 5, "obj-75", "live.dial", "float", 426.2793273925781, 5, "obj-84", "live.tab", "float", 1.0, 5, "obj-104", "live.dial", "float", 4.023622035980225, 5, "obj-103", "live.dial", "float", 146.111083984375, 5, "obj-102", "live.dial", "float", 1046.4764404296875, 5, "obj-101", "live.tab", "float", 0.0, 5, "obj-108", "live.tab", "float", 0.0, 5, "obj-110", "live.dial", "float", 5.91338586807251, 5, "obj-114", "live.dial", "float", 87.12598419189453, 5, "obj-118", "live.tab", "float", 2.0, 5, "obj-119", "live.tab", "float", 1.0, 5, "obj-120", "live.tab", "float", 4.0, 5, "obj-134", "live.dial", "float", 1.0, 5, "obj-12", "live.dial", "float", 0.6299212574958801, 5, "obj-6", "live.dial", "float", 10.0, 5, "obj-17", "live.toggle", "float", 1.0, 5, "obj-35", "live.dial", "float", 10.0, 5, "obj-33", "live.toggle", "float", 1.0, 5, "obj-46", "live.dial", "float", 10.0, 5, "obj-44", "live.toggle", "float", 1.0, 5, "obj-57", "live.dial", "float", 1.0, 5, "obj-55", "live.toggle", "float", 0.0, 5, "obj-140", "live.dial", "float", 0.0, 5, "obj-139", "live.dial", "float", 4.5196852684021, 5, "obj-1", "live.toggle", "float", 1.0, 5, "obj-3", "live.toggle", "float", 0.0 ]
                        },
                        {
                            "number": 12,
                            "data": [ 5, "obj-9", "live.dial", "float", 1.0, 5, "obj-85", "live.dial", "float", 1.0, 5, "obj-99", "live.dial", "float", 0.7716535329818726, 5, "obj-39", "live.dial", "float", 2.0, 5, "obj-54", "live.dial", "float", -0.9448819160461426, 5, "obj-66", "live.dial", "float", -8.897637367248535, 5, "obj-71", "live.dial", "float", 9.0, 5, "obj-72", "live.dial", "float", 16.15110206604004, 5, "obj-75", "live.dial", "float", 1241.6407470703125, 5, "obj-84", "live.tab", "float", 1.0, 5, "obj-104", "live.dial", "float", 3.7086613178253174, 5, "obj-103", "live.dial", "float", 3.7044172286987305, 5, "obj-102", "live.dial", "float", 1241.6407470703125, 5, "obj-101", "live.tab", "float", 0.0, 5, "obj-108", "live.tab", "float", 1.0, 5, "obj-110", "live.dial", "float", 6.299212455749512, 5, "obj-114", "live.dial", "float", 108.0, 5, "obj-118", "live.tab", "float", 3.0, 5, "obj-119", "live.tab", "float", 2.0, 5, "obj-120", "live.tab", "float", 5.0, 5, "obj-134", "live.dial", "float", 7.433070659637451, 5, "obj-12", "live.dial", "float", 0.0, 5, "obj-6", "live.dial", "float", 9.448819160461426, 5, "obj-17", "live.toggle", "float", 1.0, 5, "obj-35", "live.dial", "float", 9.0, 5, "obj-33", "live.toggle", "float", 1.0, 5, "obj-46", "live.dial", "float", 7.0, 5, "obj-44", "live.toggle", "float", 1.0, 5, "obj-57", "live.dial", "float", 1.0, 5, "obj-55", "live.toggle", "float", 0.0, 5, "obj-140", "live.dial", "float", 0.0, 5, "obj-139", "live.dial", "float", -0.6614173054695129, 5, "obj-1", "live.toggle", "float", 1.0, 5, "obj-3", "live.toggle", "float", 1.0 ]
                        },
                        {
                            "number": 13,
                            "data": [ 5, "obj-9", "live.dial", "float", 1.0, 5, "obj-85", "live.dial", "float", 2.0, 5, "obj-99", "live.dial", "float", 1.0, 5, "obj-39", "live.dial", "float", 2.0, 5, "obj-54", "live.dial", "float", -2.0, 5, "obj-66", "live.dial", "float", -8.897637367248535, 5, "obj-71", "live.dial", "float", 9.0, 5, "obj-72", "live.dial", "float", 990.5537109375, 5, "obj-75", "live.dial", "float", 4188.30029296875, 5, "obj-84", "live.tab", "float", 1.0, 5, "obj-104", "live.dial", "float", 3.7086613178253174, 5, "obj-103", "live.dial", "float", 3.7044172286987305, 5, "obj-102", "live.dial", "float", 1241.6407470703125, 5, "obj-101", "live.tab", "float", 0.0, 5, "obj-108", "live.tab", "float", 1.0, 5, "obj-110", "live.dial", "float", 6.299212455749512, 5, "obj-114", "live.dial", "float", 108.0, 5, "obj-118", "live.tab", "float", 3.0, 5, "obj-119", "live.tab", "float", 2.0, 5, "obj-120", "live.tab", "float", 5.0, 5, "obj-134", "live.dial", "float", 7.433070659637451, 5, "obj-12", "live.dial", "float", 0.0, 5, "obj-6", "live.dial", "float", 8.110236167907715, 5, "obj-17", "live.toggle", "float", 1.0, 5, "obj-35", "live.dial", "float", 7.976377964019775, 5, "obj-33", "live.toggle", "float", 1.0, 5, "obj-46", "live.dial", "float", 10.0, 5, "obj-44", "live.toggle", "float", 1.0, 5, "obj-57", "live.dial", "float", 5.196850299835205, 5, "obj-55", "live.toggle", "float", 1.0, 5, "obj-140", "live.dial", "float", -1.0, 5, "obj-139", "live.dial", "float", -1.0, 5, "obj-1", "live.toggle", "float", 1.0, 5, "obj-3", "live.toggle", "float", 1.0 ]
                        },
                        {
                            "number": 14,
                            "data": [ 5, "obj-9", "live.dial", "float", 1.0, 5, "obj-85", "live.dial", "float", 1.0, 5, "obj-99", "live.dial", "float", -1.2999999523162842, 5, "obj-39", "live.dial", "float", 2.0, 5, "obj-54", "live.dial", "float", 2.200000047683716, 5, "obj-66", "live.dial", "float", 3.110236167907715, 5, "obj-71", "live.dial", "float", 8.0, 5, "obj-72", "live.dial", "float", 190.17050170898438, 5, "obj-75", "live.dial", "float", 6536.376953125, 5, "obj-84", "live.tab", "float", 1.0, 5, "obj-104", "live.dial", "float", 9.480315208435059, 5, "obj-103", "live.dial", "float", 10.0, 5, "obj-102", "live.dial", "float", 1241.6407470703125, 5, "obj-101", "live.tab", "float", 0.0, 5, "obj-108", "live.tab", "float", 0.0, 5, "obj-110", "live.dial", "float", 5.559054851531982, 5, "obj-114", "live.dial", "float", 72.61417388916016, 5, "obj-118", "live.tab", "float", 1.0, 5, "obj-119", "live.tab", "float", 3.0, 5, "obj-120", "live.tab", "float", 2.0, 5, "obj-134", "live.dial", "float", 2.0, 5, "obj-12", "live.dial", "float", 0.0, 5, "obj-6", "live.dial", "float", 7.165354251861572, 5, "obj-17", "live.toggle", "float", 0.0, 5, "obj-35", "live.dial", "float", 7.527559280395508, 5, "obj-33", "live.toggle", "float", 1.0, 5, "obj-46", "live.dial", "float", 10.0, 5, "obj-44", "live.toggle", "float", 1.0, 5, "obj-57", "live.dial", "float", 3.992125988006592, 5, "obj-55", "live.toggle", "float", 1.0, 5, "obj-140", "live.dial", "float", -1.0, 5, "obj-139", "live.dial", "float", 3.0, 5, "obj-1", "live.toggle", "float", 1.0, 5, "obj-3", "live.toggle", "float", 0.0 ]
                        },
                        {
                            "number": 15,
                            "data": [ 5, "obj-9", "live.dial", "float", 4.0, 5, "obj-85", "live.dial", "float", 0.0, 5, "obj-99", "live.dial", "float", -7.0, 5, "obj-39", "live.dial", "float", 1.0, 5, "obj-54", "live.dial", "float", -3.0, 5, "obj-66", "live.dial", "float", -7.480315208435059, 5, "obj-71", "live.dial", "float", 8.0, 5, "obj-72", "live.dial", "float", 2.0, 5, "obj-75", "live.dial", "float", 222.0, 5, "obj-84", "live.tab", "float", 1.0, 5, "obj-104", "live.dial", "float", 4.400000095367432, 5, "obj-103", "live.dial", "float", 1.0, 5, "obj-102", "live.dial", "float", 1600.0, 5, "obj-101", "live.tab", "float", 0.0, 5, "obj-108", "live.tab", "float", 1.0, 5, "obj-110", "live.dial", "float", 9.527559280395508, 5, "obj-114", "live.dial", "float", 85.25196838378906, 5, "obj-118", "live.tab", "float", 1.0, 5, "obj-119", "live.tab", "float", 2.0, 5, "obj-120", "live.tab", "float", 5.0, 5, "obj-134", "live.dial", "float", 5.576377868652344, 5, "obj-12", "live.dial", "float", 0.0, 5, "obj-6", "live.dial", "float", 8.0, 5, "obj-17", "live.toggle", "float", 1.0, 5, "obj-35", "live.dial", "float", 8.0, 5, "obj-33", "live.toggle", "float", 1.0, 5, "obj-46", "live.dial", "float", 10.0, 5, "obj-44", "live.toggle", "float", 1.0, 5, "obj-57", "live.dial", "float", 5.0, 5, "obj-55", "live.toggle", "float", 0.0, 5, "obj-140", "live.dial", "float", 1.0, 5, "obj-139", "live.dial", "float", -0.75, 5, "obj-1", "live.toggle", "float", 1.0, 5, "obj-3", "live.toggle", "float", 1.0, 5, "obj-18", "number", "float", 8.0 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "justification": 1,
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1047.0, 609.0, 7.0, 50.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 711.0, 322.0, 189.0, 17.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "justification": 1,
                    "maxclass": "live.line",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1032.0, 609.0, 7.0, 50.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 86.0, 403.0, 9.0, 88.0 ]
                }
            },
            {
                "box": {
                    "hint": "Oscillators Modulation Off/On",
                    "id": "obj-3",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 208.0, 335.0, 25.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 226.0, 239.0, 25.0, 25.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.toggle[5]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.toggle",
                            "parameter_type": 2
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.toggle[5]"
                }
            },
            {
                "box": {
                    "hint": "Filter Modulation Off/On",
                    "id": "obj-1",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 898.0, 472.0, 25.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 696.0, 239.0, 25.0, 25.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.toggle[4]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.toggle",
                            "parameter_type": 2
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.toggle[4]"
                }
            },
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "obj-73",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 805.0, 746.0, 198.0, 27.0 ],
                    "text": "OUTPUT",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 0,
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
                        "rect": [ 34.0, 100.0, 363.0, 368.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 61.0, 123.0, 22.0 ],
                                    "text": "r #0_midi_input"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 140.0, 147.0, 22.0 ],
                                    "text": "expr ($i1 * 0.551182) - 70."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 50.0, 100.0, 40.0, 22.0 ],
                                    "text": "ctlin 7"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-63",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 222.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 67.0, 512.0, 57.0, 22.0 ],
                    "text": "p volume"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-79",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1041.0, 151.0, 119.0, 22.0 ],
                    "text": "s #0_globalfine"
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
                        "rect": [ 34.0, 100.0, 1275.0, 848.0 ],
                        "openinpresentation": 1,
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-79",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 175.0, 555.0, 112.0, 20.0 ],
                                    "text": "mod wheel 0..1"
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
                                    "patching_rect": [ 973.0, 178.0, 156.0, 22.0 ],
                                    "text": "p computer_keyboard_keys"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-4",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 143.0, 550.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-103",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 33.0, 268.0, 87.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 230.0, 173.0, 84.0, 20.0 ],
                                    "text": "^ Mod Wheel"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-102",
                                    "maxclass": "tab",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 45.0, 57.0, 200.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 230.0, 151.0, 84.0, 20.0 ],
                                    "rounded": 2.0,
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "7bit", "14bit" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "tab[5]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "tab[2]",
                                            "parameter_type": 2
                                        }
                                    },
                                    "tabs": [ "7bit", "14bit" ],
                                    "varname": "tab[5]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-101",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1148.0, 256.0, 48.0, 20.0 ],
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
                                    "hint": "Octave z/x",
                                    "id": "obj-97",
                                    "ignoreclick": 1,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1088.0, 254.0, 41.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 759.0, 86.0, 32.0, 24.0 ],
                                    "text": "0",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-91",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 416.0, 469.0, 92.0, 22.0 ],
                                    "text": "prepend mode"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-90",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 389.0, 500.0, 119.0, 22.0 ],
                                    "text": "prepend legatomode"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-89",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 33.0, 404.0, 87.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 616.0, 173.0, 121.0, 20.0 ],
                                    "text": "^ Note Priority"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-88",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 33.0, 382.0, 87.0, 33.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 438.0, 172.0, 121.0, 20.0 ],
                                    "text": "^ Legato Mode"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-87",
                                    "maxclass": "tab",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 308.0, 374.0, 200.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 616.0, 151.0, 141.0, 20.0 ],
                                    "rounded": 2.0,
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "Last", "High", "Low" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "tab[4]",
                                            "parameter_mmax": 2,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "tab",
                                            "parameter_type": 2
                                        }
                                    },
                                    "tabs": [ "Last", "High", "Low" ],
                                    "varname": "tab[4]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-86",
                                    "maxclass": "tab",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 248.0, 333.0, 200.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 438.0, 151.0, 141.0, 20.0 ],
                                    "rounded": 2.0,
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "Retrig", "Legato", "Last" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "tab[3]",
                                            "parameter_mmax": 2,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "tab",
                                            "parameter_type": 2
                                        }
                                    },
                                    "tabs": [ "Retrig", "Legato", "Last" ],
                                    "varname": "tab[3]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-78",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 33.0, 360.0, 87.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 57.0, 0.0, 121.0, 20.0 ],
                                    "text": "MIDI Input:"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-76",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 33.0, 335.0, 87.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 348.0, 0.0, 87.0, 20.0 ],
                                    "text": "Keyboard:"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-75",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 33.0, 310.0, 87.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 194.0, 0.0, 87.0, 20.0 ],
                                    "text": "Velocity:"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-74",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 33.0, 287.0, 87.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 57.0, 173.0, 87.0, 20.0 ],
                                    "text": "^ Pitch Bend"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-72",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 920.0, 555.0, 150.0, 20.0 ],
                                    "text": "octave knob"
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
                                    "patching_rect": [ 889.0, 550.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-69",
                                    "maxclass": "tab",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 29.0, 18.0, 200.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 57.0, 151.0, 133.0, 20.0 ],
                                    "rounded": 2.0,
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "7bit", "14bit", "MSB/LSB" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "tab[2]",
                                            "parameter_mmax": 2,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "tab[2]",
                                            "parameter_type": 2
                                        }
                                    },
                                    "tabs": [ "7bit", "14bit", "MSB/LSB" ],
                                    "varname": "tab[2]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 289.0, 216.0, 159.0, 22.0 ],
                                    "text": "clearchecks, checkitem $1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-66",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1162.0, 136.0, 87.0, 20.0 ],
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
                                    "patching_rect": [ 1110.0, 135.0, 50.0, 22.0 ],
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
                                    "patching_rect": [ 519.0, 58.0, 60.0, 22.0 ],
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
                                    "patching_rect": [ 438.0, 430.0, 70.0, 22.0 ],
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
                                    "patching_rect": [ 836.0, 255.0, 52.0, 22.0 ],
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
                                    "patching_rect": [ 757.0, 255.0, 52.0, 22.0 ],
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
                                    "patching_rect": [ 757.0, 96.0, 33.0, 22.0 ],
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
                                    "patching_rect": [ 875.0, 96.0, 33.0, 22.0 ],
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
                                    "patching_rect": [ 628.0, 135.0, 112.0, 22.0 ],
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
                                    "patching_rect": [ 628.0, 96.0, 92.0, 22.0 ],
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
                                    "patching_rect": [ 519.0, 135.0, 86.0, 22.0 ],
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
                                    "patching_rect": [ 519.0, 96.0, 92.0, 22.0 ],
                                    "text": "list.lookup 2 1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "tab",
                                    "mode": 1,
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 188.0, 292.0, 200.0, 24.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 194.0, 22.0, 141.0, 20.0 ],
                                    "rounded": 2.0,
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_enum": [ "Gate", "Use Velocity" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "tab",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "tab",
                                            "parameter_type": 2
                                        }
                                    },
                                    "tabs": [ "Gate", "Use Velocity" ],
                                    "varname": "tab"
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
                                    "patching_rect": [ 519.0, 20.0, 509.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 348.0, 23.0, 409.0, 20.0 ],
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
                                    "patching_rect": [ 790.0, 178.0, 123.0, 22.0 ],
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
                                    "patching_rect": [ 790.0, 216.0, 41.0, 22.0 ],
                                    "text": "notein"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 330.0, 178.0, 123.0, 22.0 ],
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
                                    "patching_rect": [ 289.0, 128.0, 100.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 57.0, 22.0, 121.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 320.0, 19.0, 70.0, 22.0 ],
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
                                    "patching_rect": [ 289.0, 58.0, 50.0, 22.0 ],
                                    "text": "midiinfo"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "int" ],
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
                                        "rect": [ 34.0, 100.0, 1110.0, 810.0 ],
                                        "gridonopen": 2,
                                        "subpatcher_template": "sub",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 321.0, 698.0, 32.0, 22.0 ],
                                                    "text": "t 0.3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-16",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 173.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 173.0, 504.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 263.0, 427.0, 123.0, 22.0 ],
                                                    "text": "r #1_midi_input"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 205.0, 597.0, 30.0, 22.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 205.0, 651.0, 135.0, 22.0 ],
                                                    "text": "switch 2 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 321.0, 597.0, 52.0, 22.0 ],
                                                    "text": "/ 16383."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "int", "int", "int" ],
                                                    "patching_rect": [ 321.0, 505.0, 40.0, 22.0 ],
                                                    "text": "xctlin"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 283.0, 42.0, 123.0, 22.0 ],
                                                    "text": "r #1_midi_input"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-60",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 263.0, 597.0, 39.0, 22.0 ],
                                                    "text": "/ 127."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-59",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "int" ],
                                                    "patching_rect": [ 263.0, 505.0, 40.0, 22.0 ],
                                                    "text": "ctlin 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-51",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 205.0, 744.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-48",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 627.0, 544.0, 95.0, 22.0 ],
                                                    "text": "prepend settype"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-47",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "" ],
                                                    "patching_rect": [ 627.0, 505.0, 45.0, 22.0 ],
                                                    "text": "t 0 l"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-45",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 627.0, 466.0, 87.0, 22.0 ],
                                                    "text": "prepend range"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-44",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 627.0, 349.0, 30.0, 22.0 ],
                                                    "text": "* -1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-43",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 627.0, 427.0, 103.0, 22.0 ],
                                                    "text": "join 2 @triggers 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-38",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 360.0, 749.0, 87.0, 20.0 ],
                                                    "text": "to multislider",
                                                    "textjustification": 2
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-35",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 488.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-34",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 449.0, 744.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-33",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 475.0, 139.0, 62.0, 22.0 ],
                                                    "text": "clip 0 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-25",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 90.0, 34.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "disabled": [ 0, 0, 0 ],
                                                    "id": "obj-31",
                                                    "itemtype": 0,
                                                    "maxclass": "radiogroup",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 90.0, 67.0, 18.0, 50.0 ],
                                                    "size": 3,
                                                    "value": 0
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 200.0, 217.0, 50.0, 22.0 ],
                                                    "text": "* 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 231.0, 178.0, 30.0, 22.0 ],
                                                    "text": "!= 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "int" ],
                                                    "patching_rect": [ 200.0, 139.0, 50.0, 22.0 ],
                                                    "text": "split 1 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-29",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 90.0, 217.0, 33.0, 22.0 ],
                                                    "text": "== 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 90.0, 256.0, 52.0, 22.0 ],
                                                    "text": "gate 1 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 200.0, 256.0, 185.0, 22.0 ],
                                                    "text": "switch 2 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-46",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 283.0, 81.0, 40.0, 22.0 ],
                                                    "text": "midiin"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-88",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 366.0, 217.0, 48.0, 22.0 ],
                                                    "text": "|"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-83",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 366.0, 178.0, 33.0, 22.0 ],
                                                    "text": "<< 7"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-36",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "int", "int", "int" ],
                                                    "patching_rect": [ 366.0, 139.0, 77.0, 22.0 ],
                                                    "text": "xbendin2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "int" ],
                                                    "patching_rect": [ 283.0, 139.0, 51.0, 22.0 ],
                                                    "text": "xbendin"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-37",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "int" ],
                                                    "patching_rect": [ 123.0, 139.0, 45.0, 22.0 ],
                                                    "text": "bendin"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-39",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 563.0, 744.0, 150.0, 22.0 ],
                                                    "text": "s #0_pitchbendfactor"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-40",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 563.0, 690.0, 161.0, 22.0 ],
                                                    "text": "expr pow(2.\\, ($f1 * $f2) / 12.)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-41",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 900.0, 598.0, 188.0, 20.0 ],
                                                    "text": "pitch bend range (in semitones)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-26",
                                                    "maxclass": "flonum",
                                                    "maximum": 12.0,
                                                    "minimum": 0.0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 1,
                                                    "patching_rect": [ 848.0, 597.0, 50.0, 22.0 ],
                                                    "saved_attribute_attributes": {
                                                        "valueof": {
                                                            "parameter_initial": [ 2.0 ],
                                                            "parameter_initial_enable": 1,
                                                            "parameter_longname": "number[2]",
                                                            "parameter_mmax": 12.0,
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
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 563.0, 651.0, 55.0, 22.0 ],
                                                    "text": "pak 0. 2."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-42",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "int", "float", "int" ],
                                                    "patching_rect": [ 526.0, 388.0, 55.0, 22.0 ],
                                                    "text": "t i f i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-49",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 563.0, 597.0, 32.0, 22.0 ],
                                                    "text": "/ 64."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-50",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 488.0, 597.0, 32.0, 22.0 ],
                                                    "text": "/ 63."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "int", "int", "float", "int" ],
                                                    "patching_rect": [ 475.0, 310.0, 171.0, 22.0 ],
                                                    "text": "t i i f i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-52",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 526.0, 349.0, 30.0, 22.0 ],
                                                    "text": "- 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-53",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "int" ],
                                                    "patching_rect": [ 488.0, 505.0, 57.0, 22.0 ],
                                                    "text": "split 0 63"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-54",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 475.0, 256.0, 109.0, 22.0 ],
                                                    "text": "list.lookup 64 8192"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-55",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 449.0, 349.0, 45.0, 22.0 ],
                                                    "text": "- 64"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-24",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 142.0, 257.0, 70.0, 20.0 ],
                                                    "text": "0..127"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-23",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 385.0, 257.0, 70.0, 20.0 ],
                                                    "text": "0..16383"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-56",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 19.0, 69.0, 71.0, 47.0 ],
                                                    "text": "7bit\n14bit\nMSB/LSB",
                                                    "textjustification": 2
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-57",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 520.0, 39.0, 126.0, 20.0 ],
                                                    "text": "from multislider"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-28",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "int", "int" ],
                                                    "patching_rect": [ 784.0, 544.0, 61.0, 22.0 ],
                                                    "text": "change 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 784.0, 388.0, 55.0, 22.0 ],
                                                    "text": "pak 0. 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 784.0, 310.0, 30.0, 22.0 ],
                                                    "text": "f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "patching_rect": [ 784.0, 466.0, 41.0, 22.0 ],
                                                    "text": "line 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 784.0, 139.0, 82.0, 22.0 ],
                                                    "text": "loadmess poll"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-4",
                                                    "ignoreclick": 1,
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 784.0, 427.0, 63.0, 22.0 ],
                                                    "text": "$1, $2 111"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 784.0, 217.0, 34.0, 22.0 ],
                                                    "text": "sel 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 10,
                                                    "outlettype": [ "int", "int", "int", "int", "int", "int", "int", "float", "float", "list" ],
                                                    "patching_rect": [ 784.0, 178.0, 114.0, 22.0 ],
                                                    "text": "mousestate"
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
                                                    "destination": [ "obj-51", 0 ],
                                                    "source": [ "obj-10", 0 ]
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
                                                    "destination": [ "obj-5", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-59", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-51", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "hidden": 1,
                                                    "order": 1,
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
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
                                                    "destination": [ "obj-55", 0 ],
                                                    "midpoints": [ 209.5, 313.5, 458.5, 313.5 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-37", 0 ],
                                                    "midpoints": [ 292.5, 73.3671875, 132.5, 73.3671875 ],
                                                    "order": 1,
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-46", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 1 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-31", 0 ],
                                                    "source": [ "obj-25", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 1 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "source": [ "obj-27", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-34", 0 ],
                                                    "midpoints": [ 793.5, 730.421875, 458.5, 730.421875 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 0 ],
                                                    "source": [ "obj-29", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 0 ],
                                                    "midpoints": [ 99.5, 313.5, 458.5, 313.5 ],
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "midpoints": [ 99.5, 128.0, 209.5, 128.0 ],
                                                    "order": 1,
                                                    "source": [ "obj-31", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-29", 0 ],
                                                    "order": 2,
                                                    "source": [ "obj-31", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-33", 0 ],
                                                    "midpoints": [ 99.5, 128.0, 484.5, 128.0 ],
                                                    "order": 0,
                                                    "source": [ "obj-31", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 1 ],
                                                    "source": [ "obj-32", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-54", 0 ],
                                                    "source": [ "obj-33", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-53", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-35", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-35", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-83", 0 ],
                                                    "source": [ "obj-36", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-88", 1 ],
                                                    "source": [ "obj-36", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 1 ],
                                                    "source": [ "obj-37", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-39", 0 ],
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-43", 1 ],
                                                    "source": [ "obj-42", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-50", 1 ],
                                                    "midpoints": [ 553.5, 584.69921875, 510.5, 584.69921875 ],
                                                    "source": [ "obj-42", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-53", 2 ],
                                                    "source": [ "obj-42", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-45", 0 ],
                                                    "source": [ "obj-43", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-43", 0 ],
                                                    "source": [ "obj-44", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-47", 0 ],
                                                    "source": [ "obj-45", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-46", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-36", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-46", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-34", 0 ],
                                                    "midpoints": [ 662.5, 729.95703125, 458.5, 729.95703125 ],
                                                    "source": [ "obj-47", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-48", 0 ],
                                                    "source": [ "obj-47", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-34", 0 ],
                                                    "midpoints": [ 636.5, 730.24609375, 458.5, 730.24609375 ],
                                                    "source": [ "obj-48", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "source": [ "obj-49", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "source": [ "obj-50", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 0 ],
                                                    "source": [ "obj-52", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-49", 0 ],
                                                    "source": [ "obj-53", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-50", 0 ],
                                                    "source": [ "obj-53", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-34", 0 ],
                                                    "source": [ "obj-55", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "source": [ "obj-59", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 1 ],
                                                    "source": [ "obj-60", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "source": [ "obj-7", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-49", 1 ],
                                                    "source": [ "obj-7", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-52", 0 ],
                                                    "source": [ "obj-7", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 1 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 2 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-88", 0 ],
                                                    "source": [ "obj-83", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 2 ],
                                                    "source": [ "obj-88", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 29.0, 135.0, 51.0, 22.0 ],
                                    "text": "p mwpb"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Mod Wheel",
                                    "annotation_name": "Mod Wheel",
                                    "bgcolor": [ 0.125, 0.125, 0.125, 0.0 ],
                                    "contdata": 1,
                                    "hint": "Mod Wheel",
                                    "id": "obj-40",
                                    "maxclass": "multislider",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 143.0, 99.0, 24.0, 94.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 29.0, 51.0, 24.0, 94.0 ],
                                    "saved_attribute_attributes": {
                                        "slidercolor": {
                                            "expression": "themecolor.theme_color"
                                        },
                                        "valueof": {
                                            "parameter_longname": "multislider",
                                            "parameter_mmax": 1.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "multislider",
                                            "parameter_type": 0
                                        }
                                    },
                                    "setminmax": [ 0.0, 1.0 ],
                                    "setstyle": 1,
                                    "shadowalpha": 0.5,
                                    "shadowblend": 0.5,
                                    "shadoworientation": 1,
                                    "signed": 1,
                                    "spacing": 4,
                                    "thickness": 3,
                                    "varname": "multislider"
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "bgcolor": [ 0.12549019607843137, 0.12549019607843137, 0.12549019607843137, 1.0 ],
                                    "bordercolor": [ 0.6189349783285454, 0.744701397656435, 0.9537501082553762, 0.0 ],
                                    "id": "obj-41",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 143.0, 95.0, 24.0, 102.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 29.0, 47.0, 24.0, 102.0 ],
                                    "proportion": 0.39,
                                    "rounded": 1
                                }
                            },
                            {
                                "box": {
                                    "annotation": "Pitch Bend",
                                    "annotation_name": "Pitch Bend",
                                    "bgcolor": [ 0.125, 0.125, 0.125, 0.0 ],
                                    "contdata": 1,
                                    "hint": "Pitch Bend",
                                    "id": "obj-50",
                                    "maxclass": "multislider",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 115.0, 99.0, 24.0, 94.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 1.0, 51.0, 24.0, 94.0 ],
                                    "saved_attribute_attributes": {
                                        "slidercolor": {
                                            "expression": "themecolor.theme_color"
                                        },
                                        "valueof": {
                                            "parameter_longname": "multislider[1]",
                                            "parameter_mmax": 63.0,
                                            "parameter_mmin": -64.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "multislider[1]",
                                            "parameter_type": 0
                                        }
                                    },
                                    "setminmax": [ -64.0, 63.0 ],
                                    "setstyle": 1,
                                    "settype": 0,
                                    "shadowalpha": 0.5,
                                    "shadowblend": 0.5,
                                    "shadoworientation": 1,
                                    "signed": 1,
                                    "spacing": 4,
                                    "thickness": 3,
                                    "varname": "multislider[1]"
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "bgcolor": [ 0.12549019607843137, 0.12549019607843137, 0.12549019607843137, 1.0 ],
                                    "bordercolor": [ 0.6189349783285454, 0.744701397656435, 0.9537501082553762, 0.0 ],
                                    "id": "obj-42",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 115.0, 95.0, 24.0, 102.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 1.0, 47.0, 24.0, 102.0 ],
                                    "proportion": 0.39,
                                    "rounded": 1
                                }
                            },
                            {
                                "box": {
                                    "blackkeycolor": [ 0.125, 0.125, 0.125, 1.0 ],
                                    "hkeycolor": [ 0.6189349783285454, 0.744701397656435, 0.9537501082553762, 1.0 ],
                                    "id": "obj-142",
                                    "maxclass": "kslider",
                                    "mode": 1,
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 519.0, 469.0, 336.0, 53.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 57.0, 47.0, 700.0, 102.0 ],
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
                                            "parameter_type": 3
                                        }
                                    },
                                    "varname": "kslider"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-126",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 472.0, 650.0, 30.0, 22.0 ],
                                    "text": "> 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 519.0, 650.0, 113.0, 22.0 ],
                                    "text": "expr sqrt($f1 / 127.)"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "bang" ],
                                    "patching_rect": [ 188.0, 334.0, 30.0, 22.0 ],
                                    "text": "t i b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 425.0, 650.0, 30.0, 22.0 ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-128",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 425.0, 690.0, 113.0, 22.0 ],
                                    "text": "switch 2 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 425.0, 730.0, 44.0, 22.0 ],
                                    "text": "sig~ 0."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-129",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 425.0, 768.0, 118.0, 22.0 ],
                                    "text": "send~ #1_gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-77",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 836.0, 807.0, 125.0, 22.0 ],
                                    "text": "s #1_globalpitch"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 655.0, 636.0, 188.0, 24.0 ],
                                    "text": "'glide' should really go here",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 883.0, 689.0, 148.0, 22.0 ],
                                    "text": "r #0_pitchbendfactor"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 836.0, 729.0, 66.0, 22.0 ],
                                    "text": "pak 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-130",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 836.0, 767.0, 30.0, 22.0 ],
                                    "text": "* 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-131",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 519.0, 608.0, 336.0, 22.0 ],
                                    "text": "swap"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-132",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 836.0, 689.0, 30.0, 22.0 ],
                                    "text": "+ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-135",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 836.0, 650.0, 72.0, 22.0 ],
                                    "text": "pak 0. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-136",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 889.0, 608.0, 33.0, 22.0 ],
                                    "text": "* 12."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 519.0, 554.0, 336.0, 22.0 ],
                                    "text": "ddg.mono"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 528.0, 532.0, 359.0, 20.0 ],
                                    "text": "[ddg.v2mono] might be better but is only part of 'Link' package"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 1 ],
                                    "source": [ "obj-102", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-128", 1 ],
                                    "source": [ "obj-126", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-128", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 0 ],
                                    "source": [ "obj-130", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-126", 0 ],
                                    "order": 1,
                                    "source": [ "obj-131", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-135", 0 ],
                                    "source": [ "obj-131", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "order": 0,
                                    "source": [ "obj-131", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-132", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-132", 0 ],
                                    "source": [ "obj-135", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-135", 1 ],
                                    "source": [ "obj-136", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 1 ],
                                    "source": [ "obj-142", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "source": [ "obj-142", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-128", 2 ],
                                    "source": [ "obj-19", 0 ]
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
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-20", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-128", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-129", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 1 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "source": [ "obj-28", 0 ]
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
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-30", 0 ]
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
                                    "destination": [ "obj-71", 0 ],
                                    "source": [ "obj-35", 0 ]
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
                                    "destination": [ "obj-65", 0 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "order": 3,
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "midpoints": [ 528.5, 88.0, 637.5, 88.0 ],
                                    "order": 2,
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "midpoints": [ 528.5, 88.0, 884.5, 88.0 ],
                                    "order": 0,
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "midpoints": [ 528.5, 88.0, 766.5, 88.0 ],
                                    "order": 1,
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
                                    "destination": [ "obj-40", 0 ],
                                    "midpoints": [ 38.5, 167.0, 19.1640625, 167.0, 19.1640625, 89.0, 152.5, 89.0 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-45", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 2 ],
                                    "source": [ "obj-50", 0 ]
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
                                    "destination": [ "obj-131", 1 ],
                                    "source": [ "obj-65", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-131", 0 ],
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "midpoints": [ 298.5, 248.0, 278.3671875, 248.0, 278.3671875, 118.0, 298.5, 118.0 ],
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "source": [ "obj-70", 0 ]
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
                                    "destination": [ "obj-90", 0 ],
                                    "source": [ "obj-86", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-91", 0 ],
                                    "source": [ "obj-87", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "source": [ "obj-90", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "source": [ "obj-91", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 911.0, 284.0, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 49.0, 448.0, 797.0, 192.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-163",
                    "local": 1,
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 67.0, 741.0, 45.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 856.0, 641.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "obj-129",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 136.0, 677.0, 118.0, 22.0 ],
                    "text": "receive~ #0_gate"
                }
            },
            {
                "box": {
                    "channels": 1,
                    "clip_size": 1,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-162",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 67.0, 548.0, 52.0, 176.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 852.0, 448.0, 52.0, 176.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -6.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Output",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "thickness": 10,
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-161",
                    "maxclass": "newobj",
                    "numinlets": 9,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "float", "" ],
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
                        "rect": [ 34.0, 100.0, 614.0, 706.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-2",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 272.0, 49.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 214.0, 479.0, 77.0, 22.0 ],
                                    "text": "*~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 64.0, 596.0, 91.0, 22.0 ],
                                    "text": "minimum~ 134."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-129",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 258.0, 111.0, 118.0, 22.0 ],
                                    "text": "receive~ #0_gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-76",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 214.0, 440.0, 48.0, 22.0 ],
                                    "text": "-~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-74",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 243.0, 363.0, 62.0, 22.0 ],
                                    "text": "*~ 10.7"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-73",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 243.0, 323.0, 81.0, 22.0 ],
                                    "text": "maximum~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-69",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 187.0, 323.0, 40.0, 22.0 ],
                                    "text": "*~ 48."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 187.0, 244.0, 33.0, 22.0 ],
                                    "text": "* 0.1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 214.0, 401.0, 154.0, 22.0 ],
                                    "text": "receive~ #0_modsource"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 149.0, 519.0, 84.0, 22.0 ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "int", "int" ],
                                    "patching_rect": [ 470.0, 519.0, 58.0, 22.0 ],
                                    "text": "change 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 470.0, 557.0, 80.0, 22.0 ],
                                    "text": "list.lookup - +"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 470.0, 440.0, 43.0, 22.0 ],
                                    "text": ">= 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-115",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 64.0, 190.0, 126.0, 22.0 ],
                                    "text": "evi.lagsmooth~ 45. 22"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-111",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 338.0, 557.0, 40.0, 22.0 ],
                                    "text": "* 0.15"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-100",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "float", "float", "float" ],
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
                                        "rect": [ 34.0, 100.0, 525.0, 434.0 ],
                                        "gridonopen": 2,
                                        "subpatcher_template": "sub",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-6",
                                                    "maxclass": "flonum",
                                                    "maximum": 1.0,
                                                    "minimum": 0.0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 416.0, 213.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "float", "float" ],
                                                    "patching_rect": [ 156.0, 96.0, 45.0, 22.0 ],
                                                    "text": "t f f"
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
                                                    "patching_rect": [ 248.0, 345.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-2",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 156.0, 345.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 64.0, 345.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-83",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 340.0, 291.0, 67.0, 22.0 ],
                                                    "text": "* 0.999999"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-82",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 409.0, 292.0, 66.0, 20.0 ],
                                                    "text": "release"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-80",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "int" ],
                                                    "patching_rect": [ 340.0, 96.0, 60.0, 22.0 ],
                                                    "text": "t b i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-79",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 381.0, 135.0, 30.0, 22.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-78",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 307.0, 252.0, 67.0, 22.0 ],
                                                    "text": "* 0.222222"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-77",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 307.0, 213.0, 52.0, 22.0 ],
                                                    "text": "gate 2 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-76",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 340.0, 174.0, 39.0, 22.0 ],
                                                    "text": "f 600."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-93",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 49.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-94",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 156.0, 49.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-95",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 248.0, 49.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-96",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 340.0, 49.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-97",
                                                    "index": 4,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 340.0, 345.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-76", 0 ],
                                                    "midpoints": [ 191.5, 146.0, 349.5, 146.0 ],
                                                    "source": [ "obj-4", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-78", 1 ],
                                                    "midpoints": [ 425.5, 243.5, 364.5, 243.5 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-77", 1 ],
                                                    "source": [ "obj-76", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-78", 0 ],
                                                    "source": [ "obj-77", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-83", 0 ],
                                                    "source": [ "obj-77", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-83", 0 ],
                                                    "midpoints": [ 316.5, 282.5, 349.5, 282.5 ],
                                                    "source": [ "obj-78", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-77", 0 ],
                                                    "midpoints": [ 390.5, 204.28515625, 316.5, 204.28515625 ],
                                                    "source": [ "obj-79", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-76", 0 ],
                                                    "source": [ "obj-80", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-79", 0 ],
                                                    "source": [ "obj-80", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-97", 0 ],
                                                    "source": [ "obj-83", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-93", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "source": [ "obj-94", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-95", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-80", 0 ],
                                                    "source": [ "obj-96", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 311.0, 150.0, 178.0, 22.0 ],
                                    "text": "p adsr"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-70",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 187.0, 284.0, 125.0, 22.0 ],
                                    "text": "evi.logsmooth~ 0.5 11"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 149.0, 363.0, 57.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 64.0, 557.0, 104.0, 22.0 ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 258.0, 190.0, 231.0, 22.0 ],
                                    "text": "evi.adsr~"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-150",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 64.0, 49.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-151",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 187.0, 49.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-152",
                                    "index": 6,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 311.0, 49.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-153",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 234.0, 49.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-154",
                                    "index": 7,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 364.0, 49.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-155",
                                    "index": 8,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 417.0, 49.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-156",
                                    "index": 9,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 470.0, 49.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-157",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 126.0, 49.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-158",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 64.0, 635.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-159",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 470.0, 635.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-160",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 338.0, 635.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 1 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 4 ],
                                    "source": [ "obj-100", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 3 ],
                                    "source": [ "obj-100", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 2 ],
                                    "source": [ "obj-100", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 1 ],
                                    "source": [ "obj-100", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-160", 0 ],
                                    "source": [ "obj-111", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 0 ],
                                    "source": [ "obj-115", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-129", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-115", 0 ],
                                    "source": [ "obj-150", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "source": [ "obj-151", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-100", 0 ],
                                    "source": [ "obj-152", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "midpoints": [ 243.5, 256.640625, 479.5, 256.640625 ],
                                    "source": [ "obj-153", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-100", 1 ],
                                    "source": [ "obj-154", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-100", 2 ],
                                    "source": [ "obj-155", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-100", 3 ],
                                    "source": [ "obj-156", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-111", 0 ],
                                    "midpoints": [ 135.5, 547.12109375, 347.5, 547.12109375 ],
                                    "source": [ "obj-157", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 1 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-159", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-76", 0 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 1 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-158", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "midpoints": [ 267.5, 231.765625, 158.5, 231.765625 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 1 ],
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "order": 1,
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-73", 0 ],
                                    "midpoints": [ 196.5, 314.5, 252.5, 314.5 ],
                                    "order": 0,
                                    "source": [ "obj-70", 0 ]
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
                                    "destination": [ "obj-76", 1 ],
                                    "source": [ "obj-74", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-76", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 686.0, 513.0, 443.0, 22.0 ],
                    "text": "p filter_control"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Global Tuning by ± Semitones",
                    "id": "obj-139",
                    "maxclass": "live.dial",
                    "needlemode": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1041.0, 79.0, 51.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 139.0, 198.0, 51.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[1]",
                            "parameter_mmax": 7.0,
                            "parameter_mmin": -7.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Fine",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[21]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Global Tuning by ± Octaves",
                    "id": "obj-140",
                    "maxclass": "live.dial",
                    "needlemode": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 911.0, 79.0, 51.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 79.0, 198.0, 51.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[22]",
                            "parameter_mmax": 2.0,
                            "parameter_mmin": -2.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Octave",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[22]"
                }
            },
            {
                "box": {
                    "id": "obj-125",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 6,
                    "outlettype": [ "", "", "", "", "", "" ],
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
                        "rect": [ 34.0, 100.0, 1437.0, 656.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-16",
                                    "index": 6,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1369.0, 555.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 668.0, 436.0, 107.0, 22.0 ],
                                    "text": "prepend noisegain"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-13",
                                    "index": 5,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1210.0, 555.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1210.0, 436.0, 87.0, 22.0 ],
                                    "text": "prepend active"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-10",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1106.0, 555.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1106.0, 436.0, 87.0, 22.0 ],
                                    "text": "prepend active"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-8",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1002.0, 555.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1002.0, 436.0, 87.0, 22.0 ],
                                    "text": "prepend active"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-7",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 898.0, 555.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 898.0, 436.0, 87.0, 22.0 ],
                                    "text": "prepend active"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 112.0, 163.0, 78.0, 22.0 ],
                                    "text": "route int float"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 112.0, 124.0, 25.0, 22.0 ],
                                    "text": "iter"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 112.0, 85.0, 129.0, 22.0 ],
                                    "text": "patcherargs mixer -70."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 112.0, 202.0, 41.0, 22.0 ],
                                    "text": "abs 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "float", "float", "float", "float" ],
                                    "patching_rect": [ 112.0, 241.0, 637.0, 22.0 ],
                                    "text": "t f f f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 766.0, 319.0, 31.0, 22.0 ],
                                    "text": "* -1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 730.0, 280.0, 55.0, 22.0 ],
                                    "text": "t f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 668.0, 397.0, 117.0, 22.0 ],
                                    "text": "evi.dbtoa"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 668.0, 358.0, 159.0, 22.0 ],
                                    "text": "expr ((($f1 * $f2) * $f3) - $f3)"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 668.0, 319.0, 81.0, 22.0 ],
                                    "text": "pak 0.1 0. 70."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 462.0, 436.0, 73.0, 22.0 ],
                                    "text": "prepend 2 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 560.0, 319.0, 31.0, 22.0 ],
                                    "text": "* -1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 524.0, 280.0, 55.0, 22.0 ],
                                    "text": "t f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 462.0, 397.0, 117.0, 22.0 ],
                                    "text": "evi.dbtoa"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 462.0, 358.0, 159.0, 22.0 ],
                                    "text": "expr ((($f1 * $f2) * $f3) - $f3)"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 462.0, 319.0, 81.0, 22.0 ],
                                    "text": "pak 0.9 1. 70."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 256.0, 436.0, 73.0, 22.0 ],
                                    "text": "prepend 1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 354.0, 319.0, 31.0, 22.0 ],
                                    "text": "* -1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 318.0, 280.0, 55.0, 22.0 ],
                                    "text": "t f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 256.0, 397.0, 117.0, 22.0 ],
                                    "text": "evi.dbtoa"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 256.0, 358.0, 159.0, 22.0 ],
                                    "text": "expr ((($f1 * $f2) * $f3) - $f3)"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 256.0, 319.0, 81.0, 22.0 ],
                                    "text": "pak 0.9 1. 70."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 436.0, 73.0, 22.0 ],
                                    "text": "prepend 0 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 148.0, 319.0, 31.0, 22.0 ],
                                    "text": "* -1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 112.0, 280.0, 55.0, 22.0 ],
                                    "text": "t f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 397.0, 117.0, 22.0 ],
                                    "text": "evi.dbtoa"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 358.0, 159.0, 22.0 ],
                                    "text": "expr ((($f1 * $f2) * $f3) - $f3)"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 319.0, 81.0, 22.0 ],
                                    "text": "pak 0.1 0. 70."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-58",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-59",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 81.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-61",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 256.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-63",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 287.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-64",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 462.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-66",
                                    "index": 6,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 493.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-67",
                                    "index": 7,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 668.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-68",
                                    "index": 8,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 699.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-69",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 555.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-1", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "source": [ "obj-1", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-12", 0 ]
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
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-15", 0 ]
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
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 2 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-23", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 1 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 1 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-29", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 2 ],
                                    "source": [ "obj-29", 0 ]
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
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 1 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-38", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 2 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 1 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "source": [ "obj-51", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 2 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 1 ],
                                    "order": 1,
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "order": 0,
                                    "source": [ "obj-59", 0 ]
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
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 1 ],
                                    "order": 1,
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "order": 0,
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 0,
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 1 ],
                                    "order": 1,
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 0,
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 1 ],
                                    "order": 1,
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 324.0, 231.0, 548.0, 22.0 ],
                    "text": "p mixer -70."
                }
            },
            {
                "box": {
                    "hint": "Noise Off/On",
                    "id": "obj-55",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 853.0, 173.0, 25.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 651.0, 271.0, 25.0, 25.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.toggle[3]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.toggle",
                            "parameter_type": 2
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.toggle[3]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Noise Volume",
                    "id": "obj-57",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 745.0, 159.0, 51.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 598.0, 256.0, 51.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[17]",
                            "parameter_mmax": 10.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Noise",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[15]"
                }
            },
            {
                "box": {
                    "hint": "Osc 3 Off/On",
                    "id": "obj-44",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 702.0, 173.0, 25.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 556.0, 361.0, 25.0, 25.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.toggle[2]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.toggle",
                            "parameter_type": 2
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.toggle[2]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Osc 3 Volume",
                    "id": "obj-46",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 594.0, 159.0, 51.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 503.0, 346.0, 51.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 9.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[20]",
                            "parameter_mmax": 10.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Osc 3",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[18]"
                }
            },
            {
                "box": {
                    "hint": "Osc 2 Off/On",
                    "id": "obj-33",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 551.0, 173.0, 25.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 556.0, 287.0, 25.0, 25.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.toggle[1]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.toggle",
                            "parameter_type": 2
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.toggle[1]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Osc 2 Volume",
                    "id": "obj-35",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 443.0, 159.0, 51.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 503.0, 272.0, 51.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 9.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[2]",
                            "parameter_mmax": 10.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Osc 2",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[19]"
                }
            },
            {
                "box": {
                    "hint": "Osc 1 Off/On",
                    "id": "obj-17",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 400.0, 173.0, 25.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 556.0, 213.0, 25.0, 25.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.toggle",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.toggle",
                            "parameter_type": 2
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.toggle"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Osc 1 Volume",
                    "id": "obj-6",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 292.0, 159.0, 51.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 503.0, 198.0, 51.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[21]",
                            "parameter_mmax": 10.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Osc 1",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[20]"
                }
            },
            {
                "box": {
                    "id": "obj-124",
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
                        "classnamespace": "box",
                        "rect": [ 134.0, 114.0, 630.0, 673.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-97",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 64.0, 407.0, 39.0, 22.0 ],
                                    "text": "mtof~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-95",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 64.0, 290.0, 91.0, 22.0 ],
                                    "text": "sig~ 92.235801"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-93",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 64.0, 368.0, 48.0, 22.0 ],
                                    "text": "-~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-92",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 93.0, 329.0, 40.0, 22.0 ],
                                    "text": "*~ 10."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 321.0, 368.0, 40.0, 22.0 ],
                                    "text": "-~ 6.9"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 321.0, 329.0, 40.0, 22.0 ],
                                    "text": "*~ 3.3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 255.0, 407.0, 85.0, 22.0 ],
                                    "text": "maximum~ -7."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 255.0, 329.0, 47.0, 22.0 ],
                                    "text": "*~ 10.7"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 255.0, 368.0, 56.0, 22.0 ],
                                    "text": "+~ 0.777"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 306.0, 200.0, 47.0, 22.0 ],
                                    "text": "*~ 19.3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 306.0, 161.0, 49.0, 22.0 ],
                                    "text": "+~ 0.56"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 412.0, 161.0, 64.0, 22.0 ],
                                    "text": "pack 0. 33"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 412.0, 200.0, 48.0, 22.0 ],
                                    "text": "line~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 306.0, 541.0, 125.0, 22.0 ],
                                    "text": "*~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-117",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 479.0, 161.0, 71.0, 22.0 ],
                                    "text": "pack 0.1 33"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-116",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 479.0, 200.0, 54.0, 22.0 ],
                                    "text": "line~ 0.1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 306.0, 580.0, 154.0, 22.0 ],
                                    "text": "send~ #0_modsource"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-64",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 306.0, 502.0, 192.0, 22.0 ],
                                    "text": "evi.xfade~"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-112",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 479.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-113",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 412.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-121",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 306.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-122",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 255.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-123",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 64.0, 580.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-117", 0 ],
                                    "source": [ "obj-112", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-113", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 2 ],
                                    "source": [ "obj-116", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-116", 0 ],
                                    "source": [ "obj-117", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-121", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-122", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "source": [ "obj-14", 0 ]
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
                                    "destination": [ "obj-14", 1 ],
                                    "order": 0,
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "midpoints": [ 421.5, 275.5, 330.5, 275.5 ],
                                    "order": 1,
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-92", 0 ],
                                    "midpoints": [ 421.5, 275.5, 102.5, 275.5 ],
                                    "order": 2,
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-32", 0 ]
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
                                    "destination": [ "obj-64", 1 ],
                                    "source": [ "obj-34", 0 ]
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
                                    "destination": [ "obj-34", 1 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-93", 1 ],
                                    "source": [ "obj-92", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-97", 0 ],
                                    "source": [ "obj-93", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-93", 0 ],
                                    "source": [ "obj-95", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-123", 0 ],
                                    "source": [ "obj-97", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 498.0, 513.0, 117.0, 22.0 ],
                    "text": "p create_modulation"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 111.0, 434.0, 182.0, 22.0 ],
                    "text": "getattr ramp @prefix 1 @listen 1"
                }
            },
            {
                "box": {
                    "id": "obj-25",
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
                        "rect": [ 34.0, 100.0, 962.0, 682.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 760.0, 19.0, 146.0, 22.0 ],
                                    "text": "in 2 (signal) Noise Source"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 34.0, 19.0, 214.0, 22.0 ],
                                    "text": "in 1 (signal) Three Oscillators Post Mix"
                                }
                            },
                            {
                                "box": {
                                    "code": "\r\nrequire(\"evi_rcfilters.genexpr\");\r\n\r\nParam   noisegain(0., min=0, max=1);\r\nParam   ramp(99., min=0, max=1000);\r\n\r\n//noiseramp = mstosamps(ramp);\r\n\r\ng, k    = rcDampCoeffs1(100, sqrt1_2);\r\n\r\nHpLs  = rcFilterDampHp(in1, g, k); // lowshelf\r\n\r\n//noiseVolume = evi_line(noisegain, noiseramp);\r\nnoiseVolume = evi_lagsmooth(noisegain, ramp);\r\nnoiseSource = in2 * noiseVolume;\r\n\r\nout1    = HpLs + noiseSource;\r\n\r\n",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-3",
                                    "maxclass": "codebox",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 34.0, 58.0, 872.0, 542.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 34.0, 617.0, 239.0, 22.0 ],
                                    "text": "out 1 (signal) 6dB Lowshelf attenuate/boost"
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
                                    "midpoints": [ 769.5, 49.5, 896.5, 49.5 ],
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
                    "patching_rect": [ 192.0, 512.0, 178.0, 22.0 ],
                    "text": "gen~ @title boost_mix",
                    "varname": "gen~_AC"
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
                    "id": "obj-23",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1097.0, 553.0, 32.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 847.0, 234.0, 32.0, 24.0 ],
                    "text": "+",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Modulation Mix Osc3..Noise, controlled by Mod Wheel below",
                    "id": "obj-12",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 579.0, 441.0, 51.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 64.0, 346.0, 51.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[18]",
                            "parameter_mmax": 10.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Mix",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[16]"
                }
            },
            {
                "box": {
                    "id": "obj-138",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 997.0, 231.0, 123.0, 22.0 ],
                    "text": "s #0_globalglide"
                }
            },
            {
                "box": {
                    "id": "obj-137",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 997.0, 191.0, 40.0, 22.0 ],
                    "text": "* 666."
                }
            },
            {
                "box": {
                    "id": "obj-133",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 997.0, 153.0, 30.0, 22.0 ],
                    "text": "* 1."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Note Glide Time",
                    "id": "obj-134",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 965.0, 79.0, 51.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 154.0, 272.0, 51.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[16]",
                            "parameter_mmax": 10.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Glide",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[14]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Osc 3 Type",
                    "id": "obj-120",
                    "maxclass": "live.tab",
                    "num_lines_patching": 2,
                    "num_lines_presentation": 3,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 531.0, 331.0, 153.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 358.0, 345.0, 98.0, 57.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "Tri", "Saw-", "Saw+", "Rect", "Pulse", "Narrow" ],
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.tab[5]",
                            "parameter_mmax": 5,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Release",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.tab[5]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Osc 2 Type",
                    "id": "obj-119",
                    "maxclass": "live.tab",
                    "num_lines_patching": 2,
                    "num_lines_presentation": 3,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 253.0, 331.0, 153.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 358.0, 271.0, 98.0, 57.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "Tri", "TriSaw", "Saw", "Rect", "Pulse", "Narrow" ],
                            "parameter_initial": [ 2.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.tab[4]",
                            "parameter_mmax": 5,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Release",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.tab[4]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Osc 1 Type",
                    "id": "obj-118",
                    "maxclass": "live.tab",
                    "num_lines_patching": 2,
                    "num_lines_presentation": 3,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 67.0, 276.0, 153.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 358.0, 197.0, 98.0, 57.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "Tri", "TriSaw", "Saw", "Rect", "Pulse", "Narrow" ],
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.tab[3]",
                            "parameter_mmax": 5,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Release",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.tab[3]"
                }
            },
            {
                "box": {
                    "appearance": 3,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Ladder Cutoff",
                    "id": "obj-114",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 686.0, 440.0, 50.0, 57.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 723.0, 197.0, 50.0, 57.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 45.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[15]",
                            "parameter_mmax": 108.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Cutoff",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "shownumber": 0,
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[13]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Ladder Resonance",
                    "id": "obj-110",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 739.0, 455.0, 60.0, 42.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 774.0, 202.0, 60.0, 42.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 3.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[14]",
                            "parameter_mmax": 10.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Emphasis",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "shownumber": 0,
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[12]"
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 351.0, 434.0, 116.0, 22.0 ],
                    "text": "prepend selectnoise"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Noise Type",
                    "id": "obj-108",
                    "maxclass": "live.tab",
                    "num_lines_patching": 2,
                    "num_lines_presentation": 2,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 351.0, 384.0, 50.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 599.0, 313.0, 50.0, 33.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "Type I", "Type II" ],
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.tab[2]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Release",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.tab[2]"
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 427.0, 602.0, 57.0, 20.0 ],
                    "text": "Release",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1108.0, 440.0, 57.0, 20.0 ],
                    "text": "Release",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-101",
                    "maxclass": "live.tab",
                    "num_lines_patching": 2,
                    "num_lines_presentation": 2,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1110.0, 464.0, 50.0, 33.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "Short", "Long" ],
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.tab[1]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Release",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.tab[1]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Filter",
                    "id": "obj-102",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1004.0, 442.0, 51.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 779.0, 256.0, 51.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 4.444444,
                            "parameter_initial": [ 600.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[11]",
                            "parameter_mmax": 10000.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Decay",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[9]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Filter",
                    "id": "obj-103",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 951.0, 442.0, 51.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 723.0, 256.0, 51.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 4.444444,
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[12]",
                            "parameter_mmax": 10000.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Attack",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[10]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Filter",
                    "id": "obj-104",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1058.0, 442.0, 51.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 838.0, 256.0, 51.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 3.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[13]",
                            "parameter_mmax": 10.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Sustain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[11]"
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "", "float", "float", "float" ],
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
                        "rect": [ 34.0, 100.0, 525.0, 434.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-6",
                                    "maxclass": "flonum",
                                    "maximum": 1.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 416.0, 213.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 156.0, 96.0, 45.0, 22.0 ],
                                    "text": "t f f"
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
                                    "patching_rect": [ 248.0, 345.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-2",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 156.0, 345.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 64.0, 345.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-83",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 340.0, 291.0, 19.0, 22.0 ],
                                    "text": "t f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-82",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 361.0, 292.0, 66.0, 20.0 ],
                                    "text": "release"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-80",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "int" ],
                                    "patching_rect": [ 340.0, 96.0, 60.0, 22.0 ],
                                    "text": "t b i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-79",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 381.0, 135.0, 30.0, 22.0 ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-78",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 307.0, 252.0, 33.0, 22.0 ],
                                    "text": "* 0.3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-77",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 307.0, 213.0, 52.0, 22.0 ],
                                    "text": "gate 2 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-76",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 340.0, 174.0, 39.0, 22.0 ],
                                    "text": "f 600."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-93",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 64.0, 49.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-94",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 156.0, 49.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-95",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 248.0, 49.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-96",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 340.0, 49.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-97",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 340.0, 345.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-76", 0 ],
                                    "midpoints": [ 191.5, 146.0, 349.5, 146.0 ],
                                    "source": [ "obj-4", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-78", 1 ],
                                    "midpoints": [ 425.5, 243.5, 330.5, 243.5 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 1 ],
                                    "source": [ "obj-76", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-78", 0 ],
                                    "source": [ "obj-77", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-83", 0 ],
                                    "source": [ "obj-77", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-83", 0 ],
                                    "midpoints": [ 316.5, 282.5, 349.5, 282.5 ],
                                    "source": [ "obj-78", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 0 ],
                                    "midpoints": [ 390.5, 204.28515625, 316.5, 204.28515625 ],
                                    "source": [ "obj-79", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-76", 0 ],
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "source": [ "obj-80", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-97", 0 ],
                                    "source": [ "obj-83", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-93", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-94", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-95", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 0 ],
                                    "source": [ "obj-96", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 271.0, 677.0, 178.0, 22.0 ],
                    "text": "p adsr"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-84",
                    "maxclass": "live.tab",
                    "num_lines_patching": 2,
                    "num_lines_presentation": 2,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 430.0, 626.0, 50.0, 33.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "Short", "Long" ],
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.tab",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Release",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.tab"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "VCA",
                    "id": "obj-75",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 324.0, 604.0, 51.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 779.0, 346.0, 51.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 4.444444,
                            "parameter_initial": [ 600.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[10]",
                            "parameter_mmax": 10000.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Decay",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[8]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "VCA",
                    "id": "obj-72",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 271.0, 604.0, 51.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 723.0, 346.0, 51.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 4.444444,
                            "parameter_initial": [ 4.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[9]",
                            "parameter_mmax": 10000.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Attack",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[7]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "VCA",
                    "id": "obj-71",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 377.0, 604.0, 51.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 838.0, 346.0, 51.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 9.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[8]",
                            "parameter_mmax": 10.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Sustain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[6]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Ladder Envelope Amount",
                    "id": "obj-66",
                    "maxclass": "live.dial",
                    "needlemode": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 792.0, 455.0, 72.0, 42.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 827.0, 202.0, 72.0, 42.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 5.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial",
                            "parameter_mmax": 10.0,
                            "parameter_mmin": -10.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Contour",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "shownumber": 0,
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 192.0, 762.0, 45.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 218.0, 722.0, 231.0, 22.0 ],
                    "text": "evi.adsr~ @legato 1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Osc 2 Transposition ± Semitones",
                    "id": "obj-54",
                    "maxclass": "live.dial",
                    "needlemode": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 460.0, 319.0, 51.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 305.0, 272.0, 51.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[7]",
                            "parameter_mmax": 7.5,
                            "parameter_mmin": -7.5,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Trans",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[2]"
                }
            },
            {
                "box": {
                    "id": "obj-38",
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
                        "classnamespace": "box",
                        "rect": [ 358.0, 100.0, 841.0, 839.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
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
                                        "classnamespace": "box",
                                        "rect": [ 34.0, 100.0, 596.0, 472.0 ],
                                        "gridonopen": 2,
                                        "subpatcher_template": "sub",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "bang", "int", "int" ],
                                                    "patching_rect": [ 50.0, 100.0, 279.0, 22.0 ],
                                                    "text": "t b i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 310.0, 178.0, 195.0, 22.0 ],
                                                    "text": "list.lookup 0.5 0.85 0.5 0.5 0.8 0.95"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 180.0, 178.0, 122.0, 22.0 ],
                                                    "text": "list.lookup 3 3 1 2 2 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 310.0, 217.0, 51.0, 22.0 ],
                                                    "text": "sig~ 0.5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 180.0, 217.0, 41.0, 22.0 ],
                                                    "text": "sig~ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 50.0, 217.0, 39.0, 22.0 ],
                                                    "text": "click~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 310.0, 295.0, 65.0, 22.0 ],
                                                    "text": "sah~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 180.0, 295.0, 65.0, 22.0 ],
                                                    "text": "sah~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-30",
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
                                                    "id": "obj-31",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 180.0, 377.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-32",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 310.0, 377.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-31", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "source": [ "obj-21", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "source": [ "obj-21", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 209.0, 588.0, 88.0, 22.0 ],
                                    "text": "p select_osc"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-25",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 346.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 550.0, 510.0, 34.0, 22.0 ],
                                    "text": "*~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 550.0, 471.0, 154.0, 22.0 ],
                                    "text": "receive~ #0_modsource"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 518.0, 549.0, 51.0, 22.0 ],
                                    "text": "+~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 565.0, 354.0, 123.0, 22.0 ],
                                    "text": "r #0_globalglide"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-13",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 383.0, 425.0, 133.0, 37.0 ],
                                    "text": "it is wrong to put 'glide time' here",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 518.0, 393.0, 113.0, 22.0 ],
                                    "text": "pak 36. 6.66 -0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 518.0, 432.0, 89.0, 22.0 ],
                                    "text": "curve~ 36. -0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-69",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 518.0, 588.0, 39.0, 22.0 ],
                                    "text": "mtof~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 61.0, 663.0, 106.0, 22.0 ],
                                    "text": "prepend ramptime"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 61.0, 624.0, 139.0, 22.0 ],
                                    "text": "getattr smooth @listen 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 645.0, 39.0, 150.0, 20.0 ],
                                    "text": "transpose -7.5..7.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 518.0, 159.0, 30.0, 22.0 ],
                                    "text": "+ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 518.0, 120.0, 114.0, 22.0 ],
                                    "text": "pak 48. 0."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-2",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 613.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 488.0, 39.0, 81.0, 20.0 ],
                                    "text": "range 0..4",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-101",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 518.0, 81.0, 125.0, 22.0 ],
                                    "text": "r #0_globalpitch"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-84",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 376.0, 601.0, 146.0, 24.0 ],
                                    "text": "'drift' could go here",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-83",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 565.0, 276.0, 119.0, 22.0 ],
                                    "text": "r #0_globalfine"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-67",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 518.0, 354.0, 30.0, 22.0 ],
                                    "text": "+ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 518.0, 315.0, 66.0, 22.0 ],
                                    "text": "pak 36. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 518.0, 276.0, 40.0, 22.0 ],
                                    "text": "+ -12."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-66",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 518.0, 237.0, 72.0, 22.0 ],
                                    "text": "pak 48. -12."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 571.0, 159.0, 30.0, 22.0 ],
                                    "text": "- 2."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 571.0, 198.0, 33.0, 22.0 ],
                                    "text": "* 12."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 209.0, 702.0, 78.0, 22.0 ],
                                    "text": "selector~ 3 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 6,
                                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 229.0, 663.0, 116.0, 22.0 ],
                                    "text": "evi.blitwaves~"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-10",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 209.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-12",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 571.0, 34.0, 30.0, 30.0 ]
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
                                    "patching_rect": [ 209.0, 771.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 3 ],
                                    "source": [ "obj-1", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 2 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-101", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
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
                                    "destination": [ "obj-27", 1 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 1 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 1 ],
                                    "midpoints": [ 355.5, 500.55078125, 574.5, 500.55078125 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
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
                                    "destination": [ "obj-24", 1 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 1 ],
                                    "source": [ "obj-33", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-33", 0 ]
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
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-6", 1 ]
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
                                    "destination": [ "obj-68", 0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
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
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 527.5, 636.5, 238.5, 636.5 ],
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 1 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-68", 1 ],
                                    "source": [ "obj-83", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 253.0, 396.0, 51.0, 22.0 ],
                    "text": "p osc_2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Osc 2 Octave",
                    "id": "obj-39",
                    "maxclass": "live.dial",
                    "needlemode": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 408.0, 319.0, 51.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 253.0, 272.0, 51.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "32'", "16'", "8'", "4'", "2'" ],
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[6]",
                            "parameter_mmax": 4,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Range",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[1]"
                }
            },
            {
                "box": {
                    "id": "obj-2",
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
                        "rect": [ 34.0, 100.0, 794.0, 763.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
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
                                        "classnamespace": "box",
                                        "rect": [ 34.0, 100.0, 538.0, 459.0 ],
                                        "gridonopen": 2,
                                        "subpatcher_template": "sub",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-58",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 250.0, 223.0, 44.0, 22.0 ],
                                                    "text": "sig~ 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-54",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "bang", "int", "int" ],
                                                    "patching_rect": [ 50.0, 100.0, 219.0, 22.0 ],
                                                    "text": "t b i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-45",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 50.0, 223.0, 39.0, 22.0 ],
                                                    "text": "click~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-44",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 150.0, 139.0, 154.0, 22.0 ],
                                                    "text": "list.lookup 1. -1. 1. 1. -1. -1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-43",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 250.0, 178.0, 195.0, 22.0 ],
                                                    "text": "list.lookup 0.25 0. 0. 0.75 0.93 0.99"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-42",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 250.0, 292.0, 35.0, 22.0 ],
                                                    "text": "sah~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-41",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 150.0, 223.0, 48.0, 22.0 ],
                                                    "text": "sig~ -1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-38",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 150.0, 292.0, 35.0, 22.0 ],
                                                    "text": "sah~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-3",
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
                                                    "id": "obj-6",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 150.0, 374.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-10",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 250.0, 374.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-54", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-38", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-38", 0 ],
                                                    "source": [ "obj-41", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-42", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-58", 0 ],
                                                    "source": [ "obj-43", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-41", 0 ],
                                                    "source": [ "obj-44", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-38", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-45", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-45", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-43", 0 ],
                                                    "source": [ "obj-54", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "source": [ "obj-54", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-45", 0 ],
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 0 ],
                                                    "source": [ "obj-58", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 134.0, 511.0, 125.0, 22.0 ],
                                    "text": "p select_osc"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 542.0, 395.0, 160.0, 20.0 ],
                                    "text": "because [evi.morph.trap~ ]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "int" ],
                                    "patching_rect": [ 456.0, 394.0, 84.0, 22.0 ],
                                    "text": "minimum 127."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 503.0, 354.0, 123.0, 22.0 ],
                                    "text": "r #0_globalglide"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-13",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 321.0, 465.0, 133.0, 37.0 ],
                                    "text": "it is wrong to put 'glide time' here",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 456.0, 433.0, 113.0, 22.0 ],
                                    "text": "pak 48. 6.66 -0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 456.0, 472.0, 89.0, 22.0 ],
                                    "text": "curve~ 48. -0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-69",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 456.0, 511.0, 39.0, 22.0 ],
                                    "text": "mtof~"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 314.0, 526.0, 146.0, 24.0 ],
                                    "text": "'drift' could go here",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-67",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 456.0, 354.0, 30.0, 22.0 ],
                                    "text": "+ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 616.0, 39.0, 150.0, 20.0 ],
                                    "text": "transpose -7.5..7.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 419.0, 39.0, 88.0, 20.0 ],
                                    "text": "range 0..5",
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-100",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 456.0, 81.0, 125.0, 22.0 ],
                                    "text": "r #0_globalpitch"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-97",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 456.0, 159.0, 30.0, 22.0 ],
                                    "text": "+ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-98",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 456.0, 120.0, 147.0, 22.0 ],
                                    "text": "pak 48. 0."
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-86",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 503.0, 276.0, 119.0, 22.0 ],
                                    "text": "r #0_globalfine"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-89",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 456.0, 315.0, 66.0, 22.0 ],
                                    "text": "pak 48. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-90",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 456.0, 276.0, 30.0, 22.0 ],
                                    "text": "+ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-91",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 456.0, 237.0, 72.0, 22.0 ],
                                    "text": "pak 48. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-92",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 509.0, 159.0, 30.0, 22.0 ],
                                    "text": "- 3."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-93",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 509.0, 198.0, 33.0, 22.0 ],
                                    "text": "* 12."
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-70",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 301.0, 373.0, 159.0, 24.0 ],
                                    "text": "'keytrack' could go here",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 104.0, 652.0, 49.0, 22.0 ],
                                    "text": "*~ 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "signal", "signal" ],
                                    "patching_rect": [ 104.0, 613.0, 291.0, 22.0 ],
                                    "text": "evi.morph.trap~ @oscillator 1 @dc 2 @oversample 2"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-25",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 509.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-33",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 584.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-34",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 134.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-35",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 104.0, 706.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-98", 0 ],
                                    "source": [ "obj-100", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 1 ],
                                    "source": [ "obj-12", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 1 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 1 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-92", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-98", 1 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 465.5, 573.0, 113.5, 573.0 ],
                                    "source": [ "obj-69", 0 ]
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
                                    "destination": [ "obj-89", 1 ],
                                    "source": [ "obj-86", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 0 ],
                                    "source": [ "obj-89", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-89", 0 ],
                                    "source": [ "obj-90", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-90", 0 ],
                                    "source": [ "obj-91", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-93", 0 ],
                                    "source": [ "obj-92", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-91", 1 ],
                                    "source": [ "obj-93", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-91", 0 ],
                                    "source": [ "obj-97", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-97", 0 ],
                                    "source": [ "obj-98", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 531.0, 396.0, 51.0, 22.0 ],
                    "text": "p osc_3"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Osc 3 Transposition ± Semitones",
                    "id": "obj-99",
                    "maxclass": "live.dial",
                    "needlemode": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 739.0, 319.0, 51.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 305.0, 346.0, 51.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[5]",
                            "parameter_mmax": 7.5,
                            "parameter_mmin": -7.5,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Trans",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[5]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Osc 3 Octave",
                    "id": "obj-85",
                    "maxclass": "live.dial",
                    "needlemode": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 686.0, 319.0, 51.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 252.0, 346.0, 51.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "LO", "32'", "16'", "8'", "4'" ],
                            "parameter_initial": [ 3.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[4]",
                            "parameter_mmax": 4,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Range",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[4]"
                }
            },
            {
                "box": {
                    "id": "obj-24",
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
                        "rect": [ 34.0, 126.0, 795.0, 822.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
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
                                        "classnamespace": "box",
                                        "rect": [ 34.0, 100.0, 627.0, 446.0 ],
                                        "gridonopen": 2,
                                        "subpatcher_template": "sub",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "bang", "int", "int" ],
                                                    "patching_rect": [ 50.0, 100.0, 309.0, 22.0 ],
                                                    "text": "t b i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 340.0, 139.0, 195.0, 22.0 ],
                                                    "text": "list.lookup 0.5 0.85 0.5 0.5 0.8 0.95"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 195.0, 139.0, 122.0, 22.0 ],
                                                    "text": "list.lookup 3 3 1 2 2 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 340.0, 178.0, 51.0, 22.0 ],
                                                    "text": "sig~ 0.5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 195.0, 178.0, 41.0, 22.0 ],
                                                    "text": "sig~ 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 50.0, 178.0, 39.0, 22.0 ],
                                                    "text": "click~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 340.0, 256.0, 65.0, 22.0 ],
                                                    "text": "sah~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 195.0, 256.0, 65.0, 22.0 ],
                                                    "text": "sah~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-26",
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
                                                    "id": "obj-27",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 338.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-28",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 340.0, 338.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-17", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-15", 0 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-16", 0 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "source": [ "obj-21", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-20", 0 ],
                                                    "source": [ "obj-21", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                                    },
                                    "patching_rect": [ 224.0, 549.0, 88.0, 22.0 ],
                                    "text": "p select_osc"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-25",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 383.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 580.0, 471.0, 34.0, 22.0 ],
                                    "text": "*~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 580.0, 432.0, 154.0, 22.0 ],
                                    "text": "receive~ #0_modsource"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 548.0, 510.0, 51.0, 22.0 ],
                                    "text": "+~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 595.0, 315.0, 123.0, 22.0 ],
                                    "text": "r #0_globalglide"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-13",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 413.0, 386.0, 133.0, 37.0 ],
                                    "text": "it is wrong to put 'glide time' here",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 548.0, 354.0, 113.0, 22.0 ],
                                    "text": "pak 24. 6.66 -0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 548.0, 393.0, 89.0, 22.0 ],
                                    "text": "curve~ 24. -0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 61.0, 618.0, 106.0, 22.0 ],
                                    "text": "prepend ramptime"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 61.0, 579.0, 139.0, 22.0 ],
                                    "text": "getattr smooth @listen 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 633.0, 39.0, 81.0, 20.0 ],
                                    "text": "range 0..4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-101",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 548.0, 81.0, 125.0, 22.0 ],
                                    "text": "r #0_globalpitch"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "bubbleside": 3,
                                    "id": "obj-84",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 406.0, 562.0, 146.0, 24.0 ],
                                    "text": "'drift' could go here",
                                    "textjustification": 1
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-83",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 595.0, 237.0, 119.0, 22.0 ],
                                    "text": "r #0_globalfine"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-69",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 548.0, 549.0, 39.0, 22.0 ],
                                    "text": "mtof~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-67",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 548.0, 315.0, 30.0, 22.0 ],
                                    "text": "+ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 548.0, 276.0, 66.0, 22.0 ],
                                    "text": "pak 24. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 548.0, 237.0, 40.0, 22.0 ],
                                    "text": "+ -24."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-66",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 548.0, 198.0, 72.0, 22.0 ],
                                    "text": "pak 48. -24."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 601.0, 120.0, 30.0, 22.0 ],
                                    "text": "- 2."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 601.0, 159.0, 33.0, 22.0 ],
                                    "text": "* 12."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 224.0, 657.0, 78.0, 22.0 ],
                                    "text": "selector~ 3 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 6,
                                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 244.0, 618.0, 116.0, 22.0 ],
                                    "text": "evi.blitwaves~"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-10",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 224.0, 34.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-12",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 601.0, 34.0, 30.0, 30.0 ]
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
                                    "patching_rect": [ 224.0, 756.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 3 ],
                                    "source": [ "obj-1", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 2 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "source": [ "obj-101", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
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
                                    "destination": [ "obj-24", 1 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 1 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 1 ],
                                    "midpoints": [ 392.5, 461.5546875, 604.5, 461.5546875 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 1 ],
                                    "source": [ "obj-29", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-3", 0 ]
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
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-6", 1 ]
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
                                    "destination": [ "obj-68", 0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
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
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 557.5, 594.5, 253.5, 594.5 ],
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 1 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-68", 1 ],
                                    "source": [ "obj-83", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "audiosolo", "audiomute" ]
                    },
                    "patching_rect": [ 192.0, 396.0, 51.0, 22.0 ],
                    "text": "p osc_1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "hint": "Osc 1 Octave",
                    "id": "obj-9",
                    "maxclass": "live.dial",
                    "needlemode": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 224.0, 266.0, 51.0, 55.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 253.0, 198.0, 51.0, 55.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "32'", "16'", "8'", "4'", "2'" ],
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[3]",
                            "parameter_mmax": 4,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Range",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "valuepopup": 1,
                    "valuepopuplabel": 1,
                    "varname": "live.dial[3]"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
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
                        "rect": [ 34.0, 100.0, 707.0, 663.0 ],
                        "gridonopen": 2,
                        "subpatcher_template": "sub",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 639.0, 625.0, 35.0, 22.0 ],
                                    "text": "out 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 49.0, 19.0, 28.0, 22.0 ],
                                    "text": "in 1"
                                }
                            },
                            {
                                "box": {
                                    "code": "\r\nrequire(\"evi_sources.genexpr\");\r\n\r\n\r\nParam   selectnoise(1, min=0, max=1);\r\nsn      = int(selectnoise);\r\n\r\n\r\nn1, n2 = 0;\r\nnphas = phasor(in1);\r\nnlin, ncos, nwhite = eviRandC(nphas);\r\nif (sn) {\r\n    n1 = ncos;\r\n    n2 = eviRandyN(nphas, nwhite); // ncub\r\n}\r\nelse {\r\n    n1 = nwhite;\r\n    n2 = nlin;\r\n}\r\n\r\n\r\nout1 = n1;  // white or cosine\r\nout2 = n2;  // linear or cubic\r\n\r\n",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-3",
                                    "maxclass": "codebox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 49.0, 58.0, 609.0, 550.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.0, 625.0, 35.0, 22.0 ],
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
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 351.0, 473.0, 166.0, 22.0 ],
                    "text": "gen~ @title evi_noise_source",
                    "varname": "gen~_AB"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "" ],
                    "patching_rect": [ 192.0, 473.0, 141.0, 22.0 ],
                    "text": "matrix~ 3 1 0. @ramp 99"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 192.0, 566.0, 273.0, 22.0 ],
                    "text": "evi.ladder.moog~ @cutoffmode 1 @ressmooth 22",
                    "varname": "gen~_AA"
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
                    "jsarguments": [ "evieve Examples: Monosynth", 660 ],
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
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 10.0, 70.0, 660.0, 53.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 10.0, 70.0, 660.0, 53.0 ],
                    "text": "Here is a basic sort-of Minimoog starter patcher using evieve abstractions.  The modulation system is basic, there is no keyboard tracking, the pitch logic is all message rate and the DSP should probably be oversampled, but it is an OK starter. Try the presets, and don't forget the Mod Wheel !",
                    "varname": "digest_comment"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.125, 0.125, 0.125, 1.0 ],
                    "bordercolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "id": "obj-62",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 961.0, 609.0, 50.0, 50.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 708.0, 183.0, 196.0, 233.0 ],
                    "proportion": 0.5,
                    "rounded": 2,
                    "saved_attribute_attributes": {
                        "bordercolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    }
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.125, 0.125, 0.125, 1.0 ],
                    "bordercolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "id": "obj-61",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 909.0, 609.0, 50.0, 50.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 488.0, 183.0, 203.0, 233.0 ],
                    "proportion": 0.5,
                    "rounded": 2,
                    "saved_attribute_attributes": {
                        "bordercolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    }
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.125, 0.125, 0.125, 1.0 ],
                    "bordercolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "id": "obj-58",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 857.0, 609.0, 50.0, 50.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 237.0, 183.0, 234.0, 233.0 ],
                    "proportion": 0.5,
                    "rounded": 2,
                    "saved_attribute_attributes": {
                        "bordercolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    }
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.125, 0.125, 0.125, 1.0 ],
                    "bordercolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "id": "obj-56",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 805.0, 609.0, 50.0, 50.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 49.0, 183.0, 171.0, 233.0 ],
                    "proportion": 0.5,
                    "rounded": 2,
                    "saved_attribute_attributes": {
                        "bordercolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    }
                }
            },
            {
                "box": {
                    "background": 1,
                    "fontsize": 18.0,
                    "id": "obj-70",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 805.0, 724.0, 203.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 708.0, 154.0, 196.0, 27.0 ],
                    "text": "MODIFIERS",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "background": 1,
                    "fontsize": 18.0,
                    "id": "obj-69",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 805.0, 702.0, 196.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 488.0, 154.0, 203.0, 27.0 ],
                    "text": "MIXER",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "background": 1,
                    "fontsize": 18.0,
                    "id": "obj-68",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 805.0, 658.0, 204.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 49.0, 154.0, 171.0, 27.0 ],
                    "text": "CONTROLLERS",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "background": 1,
                    "fontsize": 18.0,
                    "id": "obj-67",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 805.0, 680.0, 206.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 237.0, 154.0, 234.0, 27.0 ],
                    "text": "OSCILLATOR BANK",
                    "textjustification": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-161", 4 ],
                    "order": 0,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 1 ],
                    "order": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-161", 8 ],
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-161", 6 ],
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-161", 5 ],
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-161", 7 ],
                    "source": [ "obj-104", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "hidden": 1,
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-161", 1 ],
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-161", 0 ],
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-118", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-124", 3 ],
                    "source": [ "obj-12", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-124", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "order": 2,
                    "source": [ "obj-125", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 0 ],
                    "order": 3,
                    "source": [ "obj-125", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-125", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "order": 1,
                    "source": [ "obj-125", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "order": 2,
                    "source": [ "obj-125", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-125", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "order": 0,
                    "source": [ "obj-125", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "source": [ "obj-125", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 0,
                    "source": [ "obj-125", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "order": 1,
                    "source": [ "obj-125", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-129", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-124", 0 ],
                    "source": [ "obj-13", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 1 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 0 ],
                    "source": [ "obj-133", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-133", 1 ],
                    "order": 0,
                    "source": [ "obj-134", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-133", 0 ],
                    "order": 1,
                    "source": [ "obj-134", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-138", 0 ],
                    "source": [ "obj-137", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "source": [ "obj-139", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "hidden": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-140", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 2 ],
                    "midpoints": [ 907.5, 559.109532407485, 455.5, 559.109532407485 ],
                    "source": [ "obj-161", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 1 ],
                    "midpoints": [ 695.5, 550.5, 328.5, 550.5 ],
                    "source": [ "obj-161", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 1 ],
                    "source": [ "obj-161", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-163", 1 ],
                    "order": 0,
                    "source": [ "obj-162", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-163", 0 ],
                    "order": 1,
                    "source": [ "obj-162", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 1 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-124", 1 ],
                    "order": 0,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 2 ],
                    "order": 1,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "midpoints": [ 567.5, 788.0, 533.078125, 788.0, 533.078125, 575.21875, 550.5, 575.21875 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-27", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "order": 0,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 1 ],
                    "order": 2,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 1 ],
                    "order": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 3 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 2 ],
                    "source": [ "obj-35", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 1 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 2 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 5 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 4 ],
                    "source": [ "obj-46", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-124", 2 ],
                    "midpoints": [ 920.5, 429.06640625, 572.8333333333334, 429.06640625 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 3 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 7 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 6 ],
                    "source": [ "obj-57", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 1 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 0 ],
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-162", 0 ],
                    "midpoints": [ 201.5, 794.0, 127.640625, 794.0, 127.640625, 537.625, 76.5, 537.625 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-162", 0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-161", 3 ],
                    "source": [ "obj-66", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-161", 2 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 2 ],
                    "source": [ "obj-71", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 1 ],
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-162", 0 ],
                    "hidden": 1,
                    "midpoints": [ 585.5, 812.23828125, 34.3203125, 812.23828125, 34.3203125, 538.0, 76.5, 538.0 ],
                    "source": [ "obj-8", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-8", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 3 ],
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 2 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 4 ],
                    "source": [ "obj-98", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 3 ],
                    "source": [ "obj-98", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 2 ],
                    "source": [ "obj-98", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 1 ],
                    "source": [ "obj-98", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 2 ],
                    "source": [ "obj-99", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-1": [ "live.toggle[4]", "live.toggle", 0 ],
            "obj-101": [ "live.tab[1]", "Release", 0 ],
            "obj-102": [ "live.dial[11]", "Decay", 0 ],
            "obj-103": [ "live.dial[12]", "Attack", 0 ],
            "obj-104": [ "live.dial[13]", "Sustain", 0 ],
            "obj-108": [ "live.tab[2]", "Release", 0 ],
            "obj-110": [ "live.dial[14]", "Emphasis", 0 ],
            "obj-114": [ "live.dial[15]", "Cutoff", 0 ],
            "obj-118": [ "live.tab[3]", "Release", 0 ],
            "obj-119": [ "live.tab[4]", "Release", 0 ],
            "obj-12": [ "live.dial[18]", "Mix", 0 ],
            "obj-120": [ "live.tab[5]", "Release", 0 ],
            "obj-134": [ "live.dial[16]", "Glide", 0 ],
            "obj-139": [ "live.dial[1]", "Fine", 0 ],
            "obj-140": [ "live.dial[22]", "Octave", 0 ],
            "obj-162": [ "live.gain~", "Output", 0 ],
            "obj-17": [ "live.toggle", "live.toggle", 0 ],
            "obj-18": [ "number[3]", "number[3]", 0 ],
            "obj-3": [ "live.toggle[5]", "live.toggle", 0 ],
            "obj-33": [ "live.toggle[1]", "live.toggle", 0 ],
            "obj-35": [ "live.dial[2]", "Osc 2", 0 ],
            "obj-39": [ "live.dial[6]", "Range", 0 ],
            "obj-44": [ "live.toggle[2]", "live.toggle", 0 ],
            "obj-46": [ "live.dial[20]", "Osc 3", 0 ],
            "obj-49::obj-102": [ "tab[5]", "tab[2]", 0 ],
            "obj-49::obj-142": [ "kslider[1]", "kslider", 0 ],
            "obj-49::obj-29": [ "tab[1]", "tab[1]", 0 ],
            "obj-49::obj-30": [ "tab", "tab", 0 ],
            "obj-49::obj-40": [ "multislider", "multislider", 0 ],
            "obj-49::obj-45::obj-26": [ "number[2]", "number", 0 ],
            "obj-49::obj-50": [ "multislider[1]", "multislider[1]", 0 ],
            "obj-49::obj-60": [ "number", "number", 0 ],
            "obj-49::obj-69": [ "tab[2]", "tab[2]", 0 ],
            "obj-49::obj-86": [ "tab[3]", "tab", 0 ],
            "obj-49::obj-87": [ "tab[4]", "tab", 0 ],
            "obj-54": [ "live.dial[7]", "Trans", 0 ],
            "obj-55": [ "live.toggle[3]", "live.toggle", 0 ],
            "obj-57": [ "live.dial[17]", "Noise", 0 ],
            "obj-6": [ "live.dial[21]", "Osc 1", 0 ],
            "obj-66": [ "live.dial", "Contour", 0 ],
            "obj-71": [ "live.dial[8]", "Sustain", 0 ],
            "obj-72": [ "live.dial[9]", "Attack", 0 ],
            "obj-75": [ "live.dial[10]", "Decay", 0 ],
            "obj-84": [ "live.tab", "Release", 0 ],
            "obj-85": [ "live.dial[4]", "Range", 0 ],
            "obj-9": [ "live.dial[3]", "Range", 0 ],
            "obj-99": [ "live.dial[5]", "Trans", 0 ],
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