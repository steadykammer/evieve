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
        "rect": [ 63.0, 100.0, 660.0, 568.0 ],
        "openrect": [ 0.0, 0.0, 660.0, 568.0 ],
        "openrectmode": 0,
        "bglocked": 1,
        "gridonopen": 2,
        "toolbarvisible": 0,
        "lefttoolbarpinned": 2,
        "toptoolbarpinned": 2,
        "righttoolbarpinned": 2,
        "bottomtoolbarpinned": 2,
        "subpatcher_template": "sub",
        "helpsidebarclosed": 1,
        "integercoordinates": 1,
        "title": "Legacy Biquad Filters in evieve",
        "boxes": [
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-16",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 490.0, 169.0, 36.0 ],
                    "text": "Compare Biquads and TPT Filters here:"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 13.0, 528.0, 175.0, 21.0 ],
                    "text": "Compare Biquads / TPT Filters",
                    "texton": "Compare Biquads / TPT Filters"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 208.0, 570.0, 210.0, 22.0 ],
                    "text": "list.reg evicompare_biquadsvf.maxpat"
                }
            },
            {
                "box": {
                    "border": 1,
                    "evaluatehref": 1,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-11",
                    "linkbold": 1,
                    "linkcolor": [ 0.203922, 0.47451, 0.780392, 1.0 ],
                    "maxclass": "markup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 314.0, 106.0, 120.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "<link href=\"; max openhelp evi.biquadcoeff~\">evi.biquadcoeff~</link>",
                    "textcolor": [ 0.85, 0.85, 0.85, 1.0 ]
                }
            },
            {
                "box": {
                    "border": 1,
                    "evaluatehref": 1,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-9",
                    "linkbold": 1,
                    "linkcolor": [ 0.203922, 0.47451, 0.780392, 1.0 ],
                    "maxclass": "markup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 193.0, 106.0, 120.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "<link href=\"; max openhelp evi.biquadcoeff\">evi.biquadcoeff</link>",
                    "textcolor": [ 0.85, 0.85, 0.85, 1.0 ]
                }
            },
            {
                "box": {
                    "border": 1,
                    "evaluatehref": 1,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-8",
                    "linkbold": 1,
                    "linkcolor": [ 0.203922, 0.47451, 0.780392, 1.0 ],
                    "maxclass": "markup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 439.0, 106.0, 120.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "<link href=\"; max openhelp evi.biquad.filter~\">evi.biquad.filter~</link>",
                    "textcolor": [ 0.85, 0.85, 0.85, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 430.0, 304.0, 168.0, 21.0 ],
                    "text": "<<-- all in one sections",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 429.0, 15.0, 130.0, 21.0 ],
                    "text": "all available filters",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-3",
                    "linecount": 7,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 356.0, 166.0, 108.0 ],
                    "text": "There are more filter types when you use Biquads (40 different types in evieve) but Biquads are inferior filters to TPT filters, so you might wish to use TPT filters in most situations:"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 13.0, 648.0, 51.0, 22.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 13.0, 609.0, 79.0, 22.0 ],
                    "text": "prepend load"
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
                    "patching_rect": [ 13.0, 570.0, 184.0, 22.0 ],
                    "text": "list.reg areas_help_filter.maxhelp"
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
                    "patching_rect": [ 13.0, 468.0, 175.0, 21.0 ],
                    "text": "TPT Filters in evieve",
                    "texton": "TPT Filters in evieve"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 18.0, 128.0, 165.0, 21.0 ],
                    "text": "all available filters -->>",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-12",
                    "items": [ "Bypass", ",", "LowpassAnalog1", ",", "LowpassAnalog2", ",", "HighpassAnalog", ",", "BandpassAnalog", ",", "BandpassGainAnalog", ",", "NotchAnalog", ",", "PeakNotchAnalog1", ",", "PeakNotchAnalog2", ",", "LowshelfAnalog1", ",", "LowshelfAnalog2", ",", "HighshelfAnalog1", ",", "HighshelfAnalog2", ",", "ResonantAnalog" ],
                    "labelclick": 1,
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 294.0, 224.0, 100.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 294.0, 264.0, 79.0, 22.0 ],
                    "text": "prepend filter"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 294.0, 202.0, 144.0, 21.0 ],
                    "text": "just Analog filters:"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 294.0, 303.0, 110.0, 22.0 ],
                    "text": "evi.biquad.analog~"
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 521.0, 488.0, 111.0, 22.0 ],
                    "text": "evi.biquad.allpass~"
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 521.0, 434.0, 120.0, 22.0 ],
                    "text": "evi.biquad.resonant~"
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 521.0, 380.0, 122.0, 22.0 ],
                    "text": "evi.biquad.highshelf~"
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 360.0, 488.0, 117.0, 22.0 ],
                    "text": "evi.biquad.lowshelf~"
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 360.0, 434.0, 129.0, 22.0 ],
                    "text": "evi.biquad.peaknotch~"
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 360.0, 380.0, 103.0, 22.0 ],
                    "text": "evi.biquad.notch~"
                }
            },
            {
                "box": {
                    "attr": "filter",
                    "id": "obj-73",
                    "lock": 1,
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 208.0, 527.0, 69.0, 22.0 ],
                    "text_width": 37.0
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 208.0, 488.0, 126.0, 22.0 ],
                    "text": "evi.biquad.bandpass~"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 208.0, 434.0, 122.0, 22.0 ],
                    "text": "evi.biquad.highpass~"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 208.0, 380.0, 117.0, 22.0 ],
                    "text": "evi.biquad.lowpass~"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-69",
                    "items": [ "Bypass", ",", "ButterworthLowpass", ",", "ButterworthHighpass", ",", "ButterworthBandpass", ",", "ButterworthBandreject", ",", "ButterworthLowpassGain", ",", "ButterworthHighpassGain", ",", "ButterworthBandpassGain", ",", "ButterworthBandrejectGain", ",", "ButterworthLowshelfAnalog", ",", "ButterworthHighshelfAnalog" ],
                    "labelclick": 1,
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 143.0, 224.0, 100.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 143.0, 264.0, 79.0, 22.0 ],
                    "text": "prepend filter"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 143.0, 303.0, 134.0, 22.0 ],
                    "text": "evi.biquad.butterworth~"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-63",
                    "items": [ "Bypass", ",", "HighpassGain", ",", "LowShelfMSP", ",", "LowShelfCookbook", ",", "LowShelfAnalog1", ",", "LowShelfAnalog2", ",", "PeakNotch", ",", "PeakNotchAnalog1", ",", "PeakNotchAnalog2", ",", "NotchGain", ",", "HighShelfMSP", ",", "HighShelfCookbook", ",", "HighShelfAnalog1", ",", "HighShelfAnalog2", ",", "LowpassGain" ],
                    "labelclick": 1,
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 15.0, 224.0, 100.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 15.0, 264.0, 79.0, 22.0 ],
                    "text": "prepend filter"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 15.0, 303.0, 110.0, 22.0 ],
                    "text": "evi.biquad.eqfilter~"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 439.0, 77.0, 79.0, 22.0 ],
                    "text": "prepend filter"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-55",
                    "items": [ "bypass", ",", "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "lowshelfcookbook", ",", "highshelf", ",", "highshelfcookbook", ",", "resonant", ",", "bp", ",", "allpass", ",", "gainlpass", ",", "gainhpass", ",", "gainbpass", ",", "gainbstop", ",", "gainresonant", ",", "gainbp", ",", "gainapass", ",", "lowpassanalog1", ",", "lowpassanalog2", ",", "highpassanalog", ",", "bandpassanalog", ",", "gainbpassanalog", ",", "notchanalog", ",", "peaknotchanalog1", ",", "peaknotchanalog2", ",", "lowshelfanalog1", ",", "lowshelfanalog2", ",", "highshelfanalog1", ",", "highshelfanalog2", ",", "resonantanalog", ",", "butterlowpass", ",", "butterhighpass", ",", "butterbandpass", ",", "butterbandreject", ",", "buttergainlpass", ",", "buttergainhpass", ",", "buttergainbpass", ",", "buttergainbreject" ],
                    "labelclick": 1,
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 439.0, 37.0, 100.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 182.0, 166.0, 72.0, 22.0 ],
                    "text": "biquad~"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 294.0, 166.0, 137.0, 22.0 ],
                    "text": "evi.biquad~"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 314.0, 127.0, 97.0, 22.0 ],
                    "text": "evi.biquadcoeff~"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 6,
                    "outlettype": [ "", "float", "float", "float", "float", "float" ],
                    "patching_rect": [ 193.0, 127.0, 89.0, 22.0 ],
                    "text": "evi.biquadcoeff"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 439.0, 127.0, 96.0, 22.0 ],
                    "text": "evi.biquad.filter~"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-75",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 208.0, 343.0, 390.0, 21.0 ],
                    "text": "all types available as individual all-in-one blocks as well:"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-68",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 143.0, 202.0, 145.0, 21.0 ],
                    "text": "just Butterworth filters:"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-74",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 202.0, 108.0, 21.0 ],
                    "text": "just EQ filters:"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-80",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 543.0, 120.0, 69.0, 36.0 ],
                    "text": "all in one section"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-81",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 543.0, 32.0, 96.0, 36.0 ],
                    "text": "more types than MSP"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-87",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 280.0, 520.0, 263.0, 36.0 ],
                    "text": "all individual blocks have choices for that type as well, double-click to see more"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-88",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 15.0, 385.0, 21.0 ],
                    "text": "Legacy filters (biquads), might still be useful:"
                }
            },
            {
                "box": {
                    "background": 1,
                    "hidden": 1,
                    "id": "obj-31",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 0.0, 0.0, 660.0, 568.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "hidden": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "hidden": 1,
                    "source": [ "obj-15", 0 ]
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
                    "destination": [ "obj-5", 0 ],
                    "hidden": 1,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "midpoints": [ 489.0, 69.83984375, 202.5, 69.83984375 ],
                    "source": [ "obj-55", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "midpoints": [ 448.5, 104.28515625, 323.5, 104.28515625 ],
                    "order": 1,
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "order": 0,
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 5 ],
                    "source": [ "obj-58", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 4 ],
                    "source": [ "obj-58", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 3 ],
                    "source": [ "obj-58", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 2 ],
                    "source": [ "obj-58", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 1 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 1 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "midpoints": [ 217.5, 559.0, 195.79296875, 559.0, 195.79296875, 478.0, 217.5, 478.0 ],
                    "source": [ "obj-73", 0 ]
                }
            }
        ],
        "autosave": 0,
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}