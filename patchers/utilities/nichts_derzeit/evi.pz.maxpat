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
                    "patching_rect": [ 201.0, 304.0, 30.0, 30.0 ],
                    "tricolor": [ 0.990419030189514, 0.500286221504211, 0.032855235040188, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "linecount": 7,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 18.0, 33.0, 153.0, 100.0 ],
                    "text": "this is so that we can have the [pattr] with @thru 1 & @parameter_enable 1 & @_initial_enable 1, and still have data passed through (on load) if it matches"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 52.0, 193.0, 119.0, 60.0 ],
                    "text": "if first received event, also bang the [pattr], afterwards always pass through",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 306.0, 213.0, 102.0, 20.0 ],
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
                    "color": [ 0.986251831054688, 0.007236152887344, 0.027423052117229, 1.0 ],
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-10", 1 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.990419030189514, 0.500286221504211, 0.032855235040188, 1.0 ],
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-10", 0 ]
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
            }
        ],
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}