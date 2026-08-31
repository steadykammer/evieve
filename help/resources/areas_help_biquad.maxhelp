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
        "toolbars_unpinned_last_save": 15,
        "subpatcher_template": "sub",
        "helpsidebarclosed": 1,
        "integercoordinates": 1,
        "title": "Legacy Biquad Filters in evieve",
        "boxes": [
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-24",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "evimenu_topics.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 11.0, 536.0, 175.0, 23.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "border": 1,
                    "evaluatehref": 1,
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-17",
                    "linkbold": 1,
                    "linkcolor": [ 0.203922, 0.47451, 0.780392, 1.0 ],
                    "maxclass": "markup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 440.0, 239.0, 204.0, 37.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor"
                        }
                    },
                    "text": "Start with the 'See Also' of the gen~ <link href=\"; max htmlref evi_biquad\">Reference Pages</link> instead...",
                    "textcolor": [ 0.85, 0.85, 0.85, 1.0 ]
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.2,
                    "bubbleside": 2,
                    "id": "obj-18",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 514.0, 183.0, 85.0, 52.0 ],
                    "text": "no helpfiles for these",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-16",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 13.0, 472.0, 169.0, 36.0 ],
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
                    "patching_rect": [ 11.0, 505.0, 175.0, 21.0 ],
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
                    "patching_rect": [ 209.0, 568.0, 216.0, 22.0 ],
                    "text": "list.reg evicompare_biquadsvf.maxhelp"
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
                    "patching_rect": [ 315.0, 104.0, 120.0, 20.0 ],
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
                    "patching_rect": [ 194.0, 104.0, 120.0, 20.0 ],
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
                    "patching_rect": [ 440.0, 104.0, 120.0, 20.0 ],
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
                    "patching_rect": [ 431.0, 302.0, 168.0, 21.0 ],
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
                    "patching_rect": [ 430.0, 14.0, 130.0, 21.0 ],
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
                    "patching_rect": [ 13.0, 339.0, 166.0, 108.0 ],
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
                    "patching_rect": [ 11.0, 646.0, 51.0, 22.0 ],
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
                    "patching_rect": [ 11.0, 607.0, 79.0, 22.0 ],
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
                    "patching_rect": [ 11.0, 568.0, 184.0, 22.0 ],
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
                    "patching_rect": [ 11.0, 445.0, 175.0, 21.0 ],
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
                    "patching_rect": [ 19.0, 126.0, 165.0, 21.0 ],
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
                    "patching_rect": [ 295.0, 222.0, 100.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 295.0, 262.0, 79.0, 22.0 ],
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
                    "patching_rect": [ 295.0, 200.0, 144.0, 21.0 ],
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
                    "patching_rect": [ 295.0, 301.0, 110.0, 22.0 ],
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
                    "patching_rect": [ 522.0, 486.0, 111.0, 22.0 ],
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
                    "patching_rect": [ 522.0, 432.0, 120.0, 22.0 ],
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
                    "patching_rect": [ 522.0, 378.0, 122.0, 22.0 ],
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
                    "patching_rect": [ 361.0, 486.0, 117.0, 22.0 ],
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
                    "patching_rect": [ 361.0, 432.0, 129.0, 22.0 ],
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
                    "patching_rect": [ 361.0, 378.0, 103.0, 22.0 ],
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
                    "patching_rect": [ 209.0, 525.0, 69.0, 22.0 ],
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
                    "patching_rect": [ 209.0, 486.0, 126.0, 22.0 ],
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
                    "patching_rect": [ 209.0, 432.0, 122.0, 22.0 ],
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
                    "patching_rect": [ 209.0, 378.0, 117.0, 22.0 ],
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
                    "patching_rect": [ 144.0, 222.0, 100.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 144.0, 262.0, 79.0, 22.0 ],
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
                    "patching_rect": [ 144.0, 301.0, 134.0, 22.0 ],
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
                    "patching_rect": [ 16.0, 222.0, 100.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 16.0, 262.0, 79.0, 22.0 ],
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
                    "patching_rect": [ 16.0, 301.0, 110.0, 22.0 ],
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
                    "patching_rect": [ 440.0, 75.0, 79.0, 22.0 ],
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
                    "patching_rect": [ 440.0, 35.0, 100.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 183.0, 164.0, 72.0, 22.0 ],
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
                    "patching_rect": [ 295.0, 164.0, 137.0, 22.0 ],
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
                    "patching_rect": [ 315.0, 125.0, 97.0, 22.0 ],
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
                    "patching_rect": [ 194.0, 125.0, 89.0, 22.0 ],
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
                    "patching_rect": [ 440.0, 125.0, 96.0, 22.0 ],
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
                    "patching_rect": [ 209.0, 341.0, 390.0, 21.0 ],
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
                    "patching_rect": [ 144.0, 200.0, 145.0, 21.0 ],
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
                    "patching_rect": [ 16.0, 200.0, 108.0, 21.0 ],
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
                    "patching_rect": [ 544.0, 118.0, 69.0, 36.0 ],
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
                    "patching_rect": [ 544.0, 30.0, 96.0, 36.0 ],
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
                    "patching_rect": [ 281.0, 518.0, 267.0, 36.0 ],
                    "text": "all individual blocks have choices for that type as well, double-click them to see more"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                    "fontsize": 13.0,
                    "id": "obj-88",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 16.0, 3.0, 267.0, 21.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.theme_locked_bgcolor"
                        }
                    },
                    "text": "Legacy filters (biquads), might still be useful:"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "border": 1,
                    "bordercolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "grad1": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                    "grad2": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                    "id": "obj-23",
                    "maxclass": "panel",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 7.0, 338.0, 182.0, 225.0 ],
                    "proportion": 0.5,
                    "rounded": 4,
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
                    "border": 1,
                    "bordercolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "grad1": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                    "grad2": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                    "id": "obj-22",
                    "maxclass": "panel",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 8.0, 13.0, 645.0, 177.0 ],
                    "proportion": 0.5,
                    "rounded": 4,
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
                    "bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                    "bordercolor": [ 0.6189349783285454, 0.744701397656435, 0.9537501082553762, 0.0 ],
                    "id": "obj-21",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 194.0, 329.0, 458.0, 10.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 923.0, 300.0, 372.0, 10.0 ],
                    "proportion": 0.5,
                    "rounded": 2,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.theme_locked_bgcolor"
                        }
                    }
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "border": 1,
                    "bordercolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "grad1": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                    "grad2": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                    "id": "obj-20",
                    "maxclass": "panel",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 193.0, 333.0, 460.0, 230.0 ],
                    "proportion": 0.5,
                    "rounded": 4,
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
                    "border": 1,
                    "bordercolor": [ 0.85, 0.85, 0.85, 1.0 ],
                    "grad1": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                    "grad2": [ 0.17213714979609188, 0.1721371000440022, 0.17213711304501805, 0.0 ],
                    "id": "obj-19",
                    "maxclass": "panel",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 7.0, 194.0, 646.0, 140.0 ],
                    "proportion": 0.5,
                    "rounded": 4,
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
                    "midpoints": [ 490.0, 67.83984375, 203.5, 67.83984375 ],
                    "source": [ "obj-55", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "midpoints": [ 449.5, 102.28515625, 324.5, 102.28515625 ],
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
                    "midpoints": [ 218.5, 557.0, 199.37109375, 557.0, 199.37109375, 476.0, 218.5, 476.0 ],
                    "source": [ "obj-73", 0 ]
                }
            }
        ],
        "autosave": 0,
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}