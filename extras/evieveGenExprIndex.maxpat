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
        "openrect": [ 63.0, 131.0, 796.0, 690.0 ],
        "openrectmode": 0,
        "openinpresentation": 1,
        "gridonopen": 2,
        "toolbarvisible": 0,
        "lefttoolbarpinned": 2,
        "toptoolbarpinned": 2,
        "righttoolbarpinned": 2,
        "bottomtoolbarpinned": 2,
        "toolbars_unpinned_last_save": 15,
        "enablehscroll": 0,
        "devicewidth": 796.0,
        "subpatcher_template": "sub",
        "cluebar": 2,
        "integercoordinates": 1,
        "title": "evieve GenExpr Index",
        "boxes": [
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-7",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 75.0, 14.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 101.0, 90.0, 415.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 86.0, 0.0, 415.0, 22.0 ],
                    "text": "window flags zoom, window flags minimize, window flags grow, window exec"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 101.0, 66.0, 641.0, 22.0 ],
                    "text": "window flags nozoom, window flags nominimize, window flags nogrow, window constrain 63 131 796 822, window exec"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 15.0, 65.5, 84.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 84.0, 22.0 ],
                    "text": "savewindow 1"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 15.0, 116.0, 67.0, 22.0 ],
                    "save": [ "#N", "thispatcher", ";", "#Q", "window", "flags", "nogrow", "close", "nozoom", "nofloat", "menu", "nominimize", ";", "#Q", "window", "constrain", 63, 131, 796, 822, ";", "#Q", "window", "size", 63, 131, 859, 791, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ],
                    "text": "thispatcher"
                }
            },
            {
                "box": {
                    "annotation": "GenExpr Index Viewer",
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 1,
                    "id": "obj-1",
                    "lockeddragscroll": 2,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "evieveGenExprIndexLogic.maxpat",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 101.0, 14.0, 470.0, 25.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 15.0, 34.0, 760.0, 610.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 15.0, 54.0, 22.0 ],
                    "text": "onecopy"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-7", 0 ]
                }
            }
        ],
        "autosave": 0,
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}