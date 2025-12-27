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
        "rect": [ 63.0, 131.0, 1401.0, 790.0 ],
        "bglocked": 1,
        "gridonopen": 2,
        "subpatcher_template": "sub",
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-91",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 604.3333333333334, 86.0, 89.0, 22.0 ],
                    "text": "evi.phaseshift~"
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 710.0, 110.0, 291.0, 20.0 ],
                    "text": "|______________ not very good ______________|",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 722.2222222222223, 86.0, 72.0, 22.0 ],
                    "text": "evi.allpass~"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 57.0, 646.0, 218.0, 20.0 ],
                    "text": "<<-- all available filters -->>",
                    "textjustification": 1
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
                    "patching_rect": [ 789.0, 599.0, 100.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 789.0, 629.0, 79.0, 22.0 ],
                    "text": "prepend filter"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 789.0, 577.0, 134.0, 20.0 ],
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
                    "patching_rect": [ 789.0, 669.0, 110.0, 22.0 ],
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
                    "patching_rect": [ 1244.0, 669.0, 111.0, 22.0 ],
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
                    "patching_rect": [ 1244.0, 634.0, 120.0, 22.0 ],
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
                    "patching_rect": [ 1244.0, 600.0, 122.0, 22.0 ],
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
                    "patching_rect": [ 1083.0, 669.0, 117.0, 22.0 ],
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
                    "patching_rect": [ 1083.0, 634.0, 129.0, 22.0 ],
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
                    "patching_rect": [ 1083.0, 600.0, 103.0, 22.0 ],
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
                    "patching_rect": [ 931.0, 708.0, 69.0, 22.0 ],
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
                    "patching_rect": [ 931.0, 669.0, 126.0, 22.0 ],
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
                    "patching_rect": [ 931.0, 634.0, 122.0, 22.0 ],
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
                    "patching_rect": [ 931.0, 600.0, 117.0, 22.0 ],
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
                    "patching_rect": [ 641.0, 599.0, 100.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 641.0, 629.0, 79.0, 22.0 ],
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
                    "patching_rect": [ 641.0, 669.0, 134.0, 22.0 ],
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
                    "patching_rect": [ 514.0, 599.0, 100.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 514.0, 629.0, 79.0, 22.0 ],
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
                    "patching_rect": [ 514.0, 669.0, 110.0, 22.0 ],
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
                    "patching_rect": [ 303.0, 629.0, 79.0, 22.0 ],
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
                    "patching_rect": [ 303.0, 576.0, 100.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 46.0, 707.0, 72.0, 22.0 ],
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
                    "patching_rect": [ 158.0, 707.0, 137.0, 22.0 ],
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
                    "patching_rect": [ 178.0, 668.0, 97.0, 22.0 ],
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
                    "patching_rect": [ 57.0, 668.0, 89.0, 22.0 ],
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
                    "patching_rect": [ 303.0, 668.0, 96.0, 22.0 ],
                    "text": "evi.biquad.filter~"
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 931.0, 577.0, 360.0, 20.0 ],
                    "text": "all types available as individual all-in-one blocks as well:"
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 641.0, 577.0, 134.0, 20.0 ],
                    "text": "just Butterworth filters:"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 514.0, 577.0, 100.0, 20.0 ],
                    "text": "just EQ filters:"
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 407.0, 663.0, 100.0, 33.0 ],
                    "text": "<<-- all in one sections -->>",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-81",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 407.0, 571.0, 100.0, 33.0 ],
                    "text": "<<-- more types than MSP"
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1002.0, 703.0, 289.0, 33.0 ],
                    "text": "all individuals have choices for that type as well, double-click to see more"
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 34.0, 541.0, 357.0, 20.0 ],
                    "text": "Legacy filters (biquads), might still be useful:"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 916.0000000000001, 86.0, 72.0, 22.0 ],
                    "text": "evi.teeth~"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 823.1111111111112, 86.0, 64.0, 22.0 ],
                    "text": "evi.comb~"
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1082.0, 209.0, 110.0, 22.0 ],
                    "text": "evi.butterworthlp6~"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1183.0, 467.0, 97.0, 22.0 ],
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
                    "patching_rect": [ 422.0, 467.0, 86.0, 22.0 ],
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
                    "patching_rect": [ 916.0, 374.0, 54.0, 22.0 ],
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
                    "patching_rect": [ 845.0, 374.0, 54.0, 22.0 ],
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
                    "patching_rect": [ 714.0, 374.0, 114.0, 22.0 ],
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
                    "patching_rect": [ 47.0, 400.0, 73.0, 22.0 ],
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
                    "patching_rect": [ 1094.0, 467.0, 72.0, 22.0 ],
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
                    "patching_rect": [ 969.0, 467.0, 108.0, 22.0 ],
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
                    "patching_rect": [ 849.0, 467.0, 103.0, 22.0 ],
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
                    "patching_rect": [ 754.0, 467.0, 78.0, 22.0 ],
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
                    "patching_rect": [ 631.0, 467.0, 106.0, 22.0 ],
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
                    "patching_rect": [ 525.0, 467.0, 89.0, 22.0 ],
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
                    "patching_rect": [ 293.0, 467.0, 112.0, 22.0 ],
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
                    "patching_rect": [ 168.0, 467.0, 108.0, 22.0 ],
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
                    "patching_rect": [ 48.0, 467.0, 103.0, 22.0 ],
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
                    "patching_rect": [ 500.0, 374.0, 94.0, 22.0 ],
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
                    "patching_rect": [ 314.0, 374.0, 104.0, 22.0 ],
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
                    "patching_rect": [ 172.0, 374.0, 73.0, 22.0 ],
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
                    "patching_rect": [ 48.0, 374.0, 57.0, 22.0 ],
                    "text": "evi.filter~"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "signal" ],
                    "patching_rect": [ 1165.0, 140.0, 50.0, 22.0 ],
                    "text": "evi.vcf~"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 49.0, 140.0, 67.0, 22.0 ],
                    "text": "evi.rcfilter~"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 248.0, 140.0, 60.0, 22.0 ],
                    "text": "evi.lorez~"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 337.0, 140.0, 89.0, 22.0 ],
                    "text": "evi.svfsmooth~"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 508.44444444444446, 86.0, 67.0, 22.0 ],
                    "text": "evi.hilbert~"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 48.0, 209.0, 64.0, 22.0 ],
                    "text": "evi.damp~"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1082.0, 140.0, 51.0, 22.0 ],
                    "text": "evi.bp~"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 154.88888888888889, 86.0, 64.0, 22.0 ],
                    "text": "evi.reson~"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 416.55555555555554, 86.0, 63.0, 22.0 ],
                    "text": "evi.cross~"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 247.77777777777777, 86.0, 60.0, 22.0 ],
                    "text": "evi.lores~"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "signal" ],
                    "patching_rect": [ 49.0, 86.0, 77.0, 22.0 ],
                    "text": "evi.onepole~"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 336.66666666666663, 86.0, 51.0, 22.0 ],
                    "text": "evi.svf~"
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
                    "patching_rect": [ 172.0, 400.0, 73.0, 22.0 ],
                    "text_width": 37.0
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1082.0, 87.0, 96.0, 20.0 ],
                    "text": "Pd filters:"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 445.0, 399.0, 20.0 ],
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
                    "patching_rect": [ 845.0, 352.0, 125.0, 20.0 ],
                    "text": "EQs @ param rate"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 714.0, 352.0, 114.0, 20.0 ],
                    "text": "EQ @ audio rate"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 48.0, 352.0, 104.0, 20.0 ],
                    "text": "all filter types"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 172.0, 352.0, 104.0, 20.0 ],
                    "text": "just EQ types"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 314.0, 352.0, 104.0, 20.0 ],
                    "text": "low/high shelfs"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 34.0, 294.0, 474.0, 20.0 ],
                    "text": "evieve general purpose linear TPT filters for your everyday patching needs..."
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 45.0, 161.0, 70.0, 33.0 ],
                    "text": "nonlinear alternative"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 334.0, 161.0, 70.0, 33.0 ],
                    "text": "nonlinear alternative"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 245.0, 161.0, 70.0, 33.0 ],
                    "text": "nonlinear alternative"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 34.0, 34.0, 191.0, 20.0 ],
                    "text": "Substitutions for MSP filters:"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 51.0, 226.0, 188.0, 33.0 ],
                    "text": "|\nactually closer to MSP [onepole~]"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 67.0, 391.0, 338.0, 74.0 ],
                    "text": "|\n|\n|\n|\nall types available as individual all-in-one blocks as well:"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1082.0, 189.0, 110.0, 20.0 ],
                    "text": "6-pole derivative"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 477.0, 339.0, 140.0, 33.0 ],
                    "text": "morphing filter LP..BP..HP..NOTCH..LP",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "border": 1,
                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "grad1": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                    "grad2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                    "id": "obj-86",
                    "maxclass": "panel",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 34.0, 316.0, 1267.0, 204.0 ],
                    "proportion": 0.5,
                    "rounded": 2
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "border": 1,
                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "grad1": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                    "grad2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                    "id": "obj-85",
                    "maxclass": "panel",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 34.0, 56.0, 1267.0, 214.0 ],
                    "proportion": 0.5,
                    "rounded": 2
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "border": 1,
                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "grad1": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                    "grad2": [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
                    "id": "obj-89",
                    "maxclass": "panel",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 34.0, 563.0, 1343.0, 184.0 ],
                    "proportion": 0.5,
                    "rounded": 2
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
                    "destination": [ "obj-22", 0 ],
                    "midpoints": [ 181.5, 430.0, 165.1796875, 430.0, 165.1796875, 364.0, 181.5, 364.0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "midpoints": [ 56.5, 430.0, 40.45703125, 430.0, 40.45703125, 364.0, 57.5, 364.0 ],
                    "source": [ "obj-46", 0 ]
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
                    "source": [ "obj-55", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
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
                    "midpoints": [ 940.5, 740.0, 922.3671875, 740.0, 922.3671875, 659.0, 940.5, 659.0 ],
                    "source": [ "obj-73", 0 ]
                }
            }
        ],
        "autosave": 0,
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}