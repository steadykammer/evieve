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
        "enablehscroll": 0,
        "enablevscroll": 0,
        "subpatcher_template": "sub",
        "integercoordinates": 1,
        "title": "Linear TPT Filters in evieve",
        "boxes": [
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 556.0, 648.0, 51.0, 22.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 556.0, 609.0, 79.0, 22.0 ],
                    "text": "prepend load"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 556.0, 570.0, 216.0, 22.0 ],
                    "text": "list.reg evieve_nonlinear_filters.maxhelp"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 406.0, 245.0, 169.0, 20.0 ],
                    "text": "Nonlinear Filters in evieve",
                    "texton": "Nonlinear Filters in evieve"
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
                    "patching_rect": [ 336.0, 570.0, 192.0, 22.0 ],
                    "text": "list.reg areas_help_biquad.maxhelp"
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
                    "patching_rect": [ 336.0, 523.0, 169.0, 20.0 ],
                    "text": "Biquad Filters in evieve",
                    "texton": "Biquad Filters in evieve"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 151.0, 486.0, 474.0, 47.0 ],
                    "text": "You should always favour these linear filters over Biquads as they are superior TPT filters with excellent modulation characteristics, but if you need Biquads there are many of those in evieve as well:"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 28.0, 485.0, 97.0, 22.0 ],
                    "text": "evi.filter.allpass~"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 402.0, 317.0, 86.0, 22.0 ],
                    "text": "evi.filter.peak~"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 521.0, 181.0, 54.0, 22.0 ],
                    "text": "evi.eq8~"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 450.0, 181.0, 54.0, 22.0 ],
                    "text": "evi.eq5~"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 10,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 295.0, 181.0, 114.0, 22.0 ],
                    "text": "evi.eq3~"
                }
            },
            {
                "box": {
                    "attr": "filter",
                    "id": "obj-46",
                    "lock": 1,
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 28.0, 121.0, 73.0, 22.0 ],
                    "text_width": 37.0
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 491.0, 401.0, 72.0, 22.0 ],
                    "text": "evi.filter.tilt~"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 366.0, 401.0, 108.0, 22.0 ],
                    "text": "evi.filter.highshelf~"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 246.0, 401.0, 103.0, 22.0 ],
                    "text": "evi.filter.lowshelf~"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 151.0, 401.0, 78.0, 22.0 ],
                    "text": "evi.filter.bell~"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 28.0, 401.0, 106.0, 22.0 ],
                    "text": "evi.filter.resonant~"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 505.0, 317.0, 89.0, 22.0 ],
                    "text": "evi.filter.notch~"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 273.0, 317.0, 112.0, 22.0 ],
                    "text": "evi.filter.bandpass~"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 148.0, 317.0, 108.0, 22.0 ],
                    "text": "evi.filter.highpass~"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 28.0, 317.0, 103.0, 22.0 ],
                    "text": "evi.filter.lowpass~"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 481.0, 95.0, 94.0, 22.0 ],
                    "text": "evi.filter.morph~"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 295.0, 95.0, 104.0, 22.0 ],
                    "text": "evi.filter.shelving~"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 153.0, 95.0, 73.0, 22.0 ],
                    "text": "evi.filter.eq~"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 29.0, 95.0, 57.0, 22.0 ],
                    "text": "evi.filter~"
                }
            },
            {
                "box": {
                    "attr": "filter",
                    "id": "obj-45",
                    "lock": 1,
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 153.0, 121.0, 73.0, 22.0 ],
                    "text_width": 37.0
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 98.0, 361.0, 399.0, 20.0 ],
                    "text": "<<<------- all freqs in Hz, all gains in dB, all Qs are Q ------->>>",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 450.0, 154.0, 125.0, 20.0 ],
                    "text": "EQs @ param rate"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 295.0, 154.0, 114.0, 20.0 ],
                    "text": "EQ @ audio rate"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 29.0, 68.0, 104.0, 20.0 ],
                    "text": "all filter types"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 153.0, 68.0, 104.0, 20.0 ],
                    "text": "just EQ types"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 295.0, 68.0, 104.0, 20.0 ],
                    "text": "low/high shelfs"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 15.0, 474.0, 20.0 ],
                    "text": "evieve general purpose linear TPT filters for your everyday patching needs..."
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 458.0, 55.0, 140.0, 33.0 ],
                    "text": "morphing filter LP..BP..HP..NOTCH..LP",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 458.0, 97.0, 20.0 ],
                    "text": "no gain input",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "background": 1,
                    "hidden": 1,
                    "id": "obj-3",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 0.0, 0.0, 660.0, 568.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "linecount": 12,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 47.0, 143.0, 338.0, 167.0 ],
                    "text": "|\n|\n|\n|\n|\n|\n|\n|\n|\n|\n|\nall types available as individual all-in-one blocks as well:"
                }
            },
            {
                "box": {
                    "attr": "adaptive",
                    "id": "obj-93",
                    "lock": 1,
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 151.0, 428.0, 92.0, 22.0 ],
                    "text_width": 59.0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "hidden": 1,
                    "source": [ "obj-10", 0 ]
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
                    "destination": [ "obj-8", 0 ],
                    "hidden": 1,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "midpoints": [ 162.5, 151.0, 146.1796875, 151.0, 146.1796875, 85.0, 162.5, 85.0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "midpoints": [ 37.5, 151.0, 21.45703125, 151.0, 21.45703125, 85.0, 38.5, 85.0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "hidden": 1,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "hidden": 1,
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "midpoints": [ 160.5, 460.0, 144.8671875, 460.0, 144.8671875, 391.0, 160.5, 391.0 ],
                    "source": [ "obj-93", 0 ]
                }
            }
        ],
        "autosave": 0,
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}