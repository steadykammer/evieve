{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 3,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 96.0, 159.0, 961.0, 721.0 ],
        "bglocked": 1,
        "openinpresentation": 1,
        "gridonopen": 2,
        "subpatcher_template": "sub",
        "integercoordinates": 1,
        "title": "evieve Examples: ASJ",
        "boxes": [
            {
                "box": {
                    "background": 1,
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 10.0, 125.0, 660.0, 22.0 ],
                    "text": "'Autechre Sex Jam' terminology originally coined by Clint Sand.",
                    "varname": "digest_comment[1]"
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
                    "jsarguments": [ "evieve Examples: ASJ", 660 ],
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
                    "text": "Sometimes people ask me: 'Hey Pete, how do you get that classic ASJ sound?', and I reply: 'Well, it is quite simple really, you just need an osciallator that will morph between Tri and Rect and a Sallen & Key filter with some well tuned slow modulation sources'.",
                    "varname": "digest_comment"
                }
            }
        ],
        "lines": [],
        "autosave": 0,
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}