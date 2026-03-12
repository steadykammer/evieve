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
        "openrect": [ 11.0, 11.0, 98.0, 98.0 ],
        "openrectmode": 0,
        "openinpresentation": 1,
        "gridonopen": 2,
        "subpatcher_template": "sub",
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 11.0, 126.0, 249.0, 22.0 ],
                    "text": "list.reg \"evieve _Package _Overview.maxpat\""
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 165.0, 79.0, 22.0 ],
                    "text": "prepend load"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 11.0, 204.0, 51.0, 22.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "annotation": "Click for 'evieve Package Overview'",
                    "annotation_name": "evieve Package Overview",
                    "handoff": "",
                    "hltcolor": [ 1.0, 1.0, 1.0, 0.5 ],
                    "id": "obj-4",
                    "maxclass": "ubutton",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "bang", "bang", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 11.0, 11.0, 98.0, 98.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 98.0, 98.0 ],
                    "varname": "basic_ubutton"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-2", 0 ]
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
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            }
        ],
        "autosave": 0,
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}