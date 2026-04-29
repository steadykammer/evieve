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
        "rect": [ 629.0, 100.0, 495.0, 418.0 ],
        "subpatcher_template": "PeteSubDefault10",
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 234.0, 80.0, 61.0, 22.0 ],
                    "text": "list.slice 1"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 362.0, 18.0, 103.0, 60.0 ],
                    "text": "not loadbanged, because very rare we will ever need this"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 330.0, 80.0, 32.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "comment": "(bang/anything) load arg#1 other than a zero",
                    "cool": 1,
                    "id": "obj-13",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 330.0, 33.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "" ],
                    "patching_rect": [ 300.0, 212.0, 44.0, 22.0 ],
                    "text": "t 1 l"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 201.0, 134.0, 52.0, 22.0 ],
                    "text": "gate 2 2"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 343.0, 134.0, 59.0, 22.0 ],
                    "text": "f #1"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 267.0, 134.0, 59.0, 22.0 ],
                    "text": "i #1"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "bang", "" ],
                    "patching_rect": [ 234.0, 212.0, 55.0, 22.0 ],
                    "text": "t 1 b l"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 234.0, 173.0, 85.0, 22.0 ],
                    "text": "routepass 0 0."
                }
            },
            {
                "box": {
                    "comment": "(int/float) number from load routine (e.g. [patcherargs])",
                    "id": "obj-27",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 234.0, 33.0, 30.0, 30.0 ],
                    "tricolor": [ 0.990419030189514, 0.500286221504211, 0.032855235040188, 1.0 ]
                }
            },
            {
                "box": {
                    "annotation": "",
                    "comment": "(int/float) number to [pattr]",
                    "id": "obj-28",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 201.0, 296.0, 30.0, 30.0 ],
                    "tricolor": [ 0.990419030189514, 0.500286221504211, 0.032855235040188, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "linecount": 8,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 18.0, 33.0, 153.0, 114.0 ],
                    "text": "this is so that we can have the [pattr] with @thru 1 & @parameter_enable 1 & @_initial_enable 0, and still have 0's passed through on load if [pattr] range includes a 0 (sorry jeremy)"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 52.0, 186.0, 119.0, 74.0 ],
                    "text": "if first received number is a zero (or #1), also bang the [pattr], afterwards always pass through",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 296.0, 152.0, 33.0 ],
                    "text": "this will NOT work with parameter_enable on !!"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 300.0, 266.0, 102.0, 20.0 ],
                    "text": "on load",
                    "textcolor": [ 1.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-8",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 201.0, 362.0, 264.0, 33.0 ],
                    "text": "this is a totally absurd abstraction in the spirit of \"it should really never be needed\""
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "color": [ 0.990419030189514, 0.500286221504211, 0.032855235040188, 1.0 ],
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-10", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "midpoints": [ 309.5, 243.421875, 188.2109375, 243.421875, 188.2109375, 124.0, 210.5, 124.0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-12", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.41657702213511, 0.416576918840945, 0.41657694583336, 0.0 ],
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.41657702213511, 0.416576918840945, 0.41657694583336, 0.0 ],
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.41657702213511, 0.416576918840945, 0.41657694583336, 0.0 ],
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-14", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.41657702213511, 0.416576918840945, 0.41657694583336, 0.0 ],
                    "destination": [ "obj-7", 1 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "midpoints": [ 243.5, 244.0, 187.96875, 244.0, 187.96875, 124.0, 210.5, 124.0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-24", 2 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-24", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.990419030189514, 0.500286221504211, 0.032855235040188, 1.0 ],
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.41657702213511, 0.416576918840945, 0.41657694583336, 0.0 ],
                    "destination": [ "obj-7", 2 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "midpoints": [ 285.5, 114.79296875, 210.5, 114.79296875 ],
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.990419030189514, 0.500286221504211, 0.032855235040188, 1.0 ],
                    "destination": [ "obj-10", 1 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-7", 2 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-7", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.0, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            }
        ],
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}