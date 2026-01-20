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
        "rect": [ 270.0, 115.0, 375.0, 270.0 ],
        "gridonopen": 2,
        "subpatcher_template": "sub",
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 64.0, 34.0, 28.0, 22.0 ],
                    "saved_object_attributes": {
                        "attr_comment": [ "(messages)", "to", "gen~" ],
                        "c": [ "(messages)", "to", "gen~" ]
                    },
                    "text": "in 1"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 109.0, 202.0, 42.0, 22.0 ],
                    "saved_object_attributes": {
                        "attr_comment": [ "Diode", "Ring", "Modulator" ],
                        "c": [ "Diode", "Ring", "Modulator" ]
                    },
                    "text": "out~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 264.0, 34.0, 35.0, 22.0 ],
                    "saved_object_attributes": {
                        "attr_comment": [ "Audio", "In", 2 ],
                        "c": [ "Audio", "In", 2 ]
                    },
                    "text": "in~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 109.0, 34.0, 35.0, 22.0 ],
                    "saved_object_attributes": {
                        "attr_comment": [ "Audio", "In", 1 ],
                        "c": [ "Audio", "In", 1 ]
                    },
                    "text": "in~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 109.0, 118.0, 174.0, 22.0 ],
                    "text": "gen~ evi_ringmod_parkernaive"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-1", 0 ]
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
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            }
        ],
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}