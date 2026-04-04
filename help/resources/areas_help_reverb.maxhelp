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
        "openrect": [ 49.0, 114.0, 930.0, 570.0 ],
        "openrectmode": 0,
        "gridonopen": 2,
        "devicewidth": 930.0,
        "subpatcher_template": "PeteSub12",
        "integercoordinates": 1,
        "title": "Reverbs in evieve",
        "boxes": [
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 512.0, 11.0, 391.0, 20.0 ],
                    "text": "Note: all evieve reverbs have [mcs.*] versions for easy stereo use"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-62",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 338.0, 455.0, 135.0, 20.0 ],
                    "text": "mattaverb~",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.4,
                    "bubbleside": 3,
                    "bubbleusescolors": 1,
                    "fontface": 2,
                    "id": "obj-63",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 338.0, 477.0, 154.0, 78.0 ],
                    "text": "a good compromise between the above and the algoverb, very few controls needed, cleverly tuned",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 509.0, 415.0, 55.0, 33.0 ],
                    "text": "real stereo-in",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "id": "obj-65",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 501.0, 446.0, 71.0, 52.0 ],
                    "text": "stereo-in / stereo-out",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 2,
                    "id": "obj-66",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 495.0, 539.0, 83.0, 20.0 ],
                    "text": "cheap-ish",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "" ],
                    "patching_rect": [ 495.0, 500.0, 88.0, 22.0 ],
                    "text": "evi.mattaverb~",
                    "varname": "ial.zitaverb~[5]"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-60",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 66.0, 463.0, 110.0, 20.0 ],
                    "text": "backverb~",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.4,
                    "bubbleside": 3,
                    "bubbleusescolors": 1,
                    "fontface": 2,
                    "id": "obj-61",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 66.0, 484.0, 124.0, 64.0 ],
                    "text": "probably the most fun one, ursa major space station",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 203.0, 415.0, 69.0, 33.0 ],
                    "text": "quasi fake stereo-in",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "id": "obj-58",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 202.0, 446.0, 71.0, 52.0 ],
                    "text": "stereo-in / stereo-out",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 2,
                    "id": "obj-57",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 196.0, 539.0, 83.0, 20.0 ],
                    "text": "cheap",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "" ],
                    "patching_rect": [ 196.0, 500.0, 83.0, 22.0 ],
                    "text": "evi.backverb~",
                    "varname": "ial.zitaverb~[2]"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-52",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 715.0, 465.0, 152.0, 20.0 ],
                    "text": "algoverb~",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleusescolors": 1,
                    "fontface": 2,
                    "id": "obj-53",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 715.0, 486.0, 158.0, 51.0 ],
                    "text": "probably the best sounding one, but you pay for it",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 646.0, 415.0, 55.0, 33.0 ],
                    "text": "real stereo-in",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "id": "obj-50",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 637.0, 446.0, 73.0, 52.0 ],
                    "text": "stereo-in / stereo-out",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 2,
                    "id": "obj-49",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 623.0, 539.0, 101.0, 20.0 ],
                    "text": "expensive",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "" ],
                    "patching_rect": [ 633.0, 500.0, 80.0, 22.0 ],
                    "text": "evi.algoverb~",
                    "varname": "evi.algoverb~"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 750.0, 38.0, 152.0, 20.0 ],
                    "text": "zitaverb~",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-45",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 579.0, 78.0, 154.0, 20.0 ],
                    "text": "sustainverb~",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-44",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 427.0, 118.0, 145.0, 20.0 ],
                    "text": "gigaverb~",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-43",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 39.0, 91.0, 150.0, 20.0 ],
                    "text": "freezeverb~",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "obj-42",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 203.0, 78.0, 208.0, 20.0 ],
                    "text": "plateverb~",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "" ],
                    "patching_rect": [ 789.0, 320.0, 76.0, 22.0 ],
                    "text": "evi.zitaverb~",
                    "varname": "ial.zitaverb~"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 9,
                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
                    "patching_rect": [ 600.0, 320.0, 103.0, 22.0 ],
                    "text": "evi.sustainverb~",
                    "varname": "ial.sustainverb~"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "" ],
                    "patching_rect": [ 461.0, 320.0, 80.0, 22.0 ],
                    "text": "evi.gigaverb~",
                    "varname": "ial.gigaverb~"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "" ],
                    "patching_rect": [ 113.0, 320.0, 91.0, 22.0 ],
                    "text": "evi.freezeverb~",
                    "varname": "ial.freezeverb~"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "" ],
                    "patching_rect": [ 248.0, 320.0, 84.0, 22.0 ],
                    "text": "evi.plateverb~",
                    "varname": "ial.yafr3~"
                }
            },
            {
                "box": {
                    "fontface": 2,
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 780.0, 359.0, 92.0, 20.0 ],
                    "text": "expensive-ish",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 2,
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 600.0, 359.0, 103.0, 20.0 ],
                    "text": "cheap",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 2,
                    "id": "obj-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 465.0, 359.0, 73.0, 20.0 ],
                    "text": "cheap-ish",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 2,
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 256.0, 359.0, 69.0, 20.0 ],
                    "text": "expensive",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 2,
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 113.0, 359.0, 88.0, 20.0 ],
                    "text": "cheap-ish",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 2,
                    "id": "obj-12",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 4.0, 359.0, 72.0, 20.0 ],
                    "text": "CPU ::",
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "bubbleusescolors": 1,
                    "fontface": 2,
                    "id": "obj-39",
                    "linecount": 10,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 750.0, 59.0, 156.0, 160.0 ],
                    "text": "stereo in / stereo out 8x8 feedback delay network with nested allpasses. Has a proper 'room' quality, but also the ability to almost 'forever sustain' (very long decays) whilst maintaining it's 'room' feeling. Decays can be controlled separately low / high",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.444444,
                    "bubbleside": 2,
                    "bubbleusescolors": 1,
                    "fontface": 2,
                    "id": "obj-38",
                    "linecount": 7,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 579.0, 100.0, 154.0, 119.0 ],
                    "text": "stereo in / stereo (or multi) out 16x16 feedback delay network with extras to add more reverby options. Does the 'forever sustain' trick in a very smooth and sexy digital way",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "bubbleusescolors": 1,
                    "fontface": 2,
                    "id": "obj-37",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 427.0, 140.0, 145.0, 79.0 ],
                    "text": "mono in / stereo out feedback delay network with allpass diffusion, smooth and rich",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.4,
                    "bubbleside": 2,
                    "bubbleusescolors": 1,
                    "fontface": 2,
                    "id": "obj-35",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 203.0, 100.0, 208.0, 106.0 ],
                    "text": "\"yafr2\" from MSP. \"Plate reverb, in the style of Griesinger\", by Randy Jones. This version with dry/wet and eq added, as well \nas modifications for better filtering, interpolation, smoothing, etc",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "bubbleusescolors": 1,
                    "fontface": 2,
                    "id": "obj-34",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 39.0, 113.0, 150.0, 106.0 ],
                    "text": "basic Schroeder / Moorer reverb model based on famous Jezar 'freeverb' tuning, with optional buttery smooth 'freeze' effect",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 798.0, 235.0, 55.0, 33.0 ],
                    "text": "real stereo-in",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 624.0, 221.0, 55.0, 33.0 ],
                    "text": "clever stereo-in",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "id": "obj-27",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 789.0, 266.0, 73.0, 52.0 ],
                    "text": "stereo-in / stereo-out",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "id": "obj-26",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 592.0, 252.0, 119.0, 66.0 ],
                    "text": "stereo-in / stereo-out / multichannel-out",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "id": "obj-25",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 461.0, 266.0, 77.0, 52.0 ],
                    "text": "mono-in / stereo-out",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "id": "obj-23",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 242.0, 266.0, 71.0, 52.0 ],
                    "text": "mono-in / stereo-out",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubblepoint": 0.75,
                    "bubbleside": 2,
                    "id": "obj-21",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 27.0, 252.0, 174.0, 66.0 ],
                    "text": "stereo inputs but actually these are just mono-summed internally for input to reverb",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 248.0, 221.0, 283.0, 47.0 ],
                    "text": "both have choice of mono or stereo inputs, where stereo are treated as quasi-real stereo in the algorithm, see helpfiles for details",
                    "textjustification": 1
                }
            }
        ],
        "lines": [],
        "parameters": {
            "obj-1::obj-54::obj-10": [ "damp", "eqHighGain", 0 ],
            "obj-1::obj-54::obj-12": [ "wetGain", "wetGain", 0 ],
            "obj-1::obj-54::obj-15": [ "eqLowGain", "eqLowGain", 0 ],
            "obj-1::obj-54::obj-16": [ "eqLowFreq", "eqLowFreq", 0 ],
            "obj-1::obj-54::obj-2": [ "lowDecay", "reverbSize", 0 ],
            "obj-1::obj-54::obj-33": [ "decay", "decay", 0 ],
            "obj-1::obj-54::obj-35": [ "bypass", "bypass", 0 ],
            "obj-1::obj-54::obj-36": [ "diffusion", "diffusion", 0 ],
            "obj-1::obj-54::obj-4": [ "dryGain", "dryGain", 0 ],
            "obj-1::obj-54::obj-42": [ "inputPan", "inputPan", 0 ],
            "obj-1::obj-54::obj-43": [ "stereo", "stereo", 0 ],
            "obj-1::obj-54::obj-5": [ "damping", "damping", 0 ],
            "obj-1::obj-54::obj-7": [ "eqHighFreq", "eqHighFreq", 0 ],
            "obj-1::obj-54::obj-8": [ "smoothTime", "smoothTime", 0 ],
            "obj-3::obj-54::obj-10": [ "damp[2]", "eqHighGain", 0 ],
            "obj-3::obj-54::obj-12": [ "fdnGain", "earlyGain", 0 ],
            "obj-3::obj-54::obj-15": [ "eqLowGain[2]", "eqLowGain", 0 ],
            "obj-3::obj-54::obj-16": [ "eqLowFreq[2]", "eqLowFreq", 0 ],
            "obj-3::obj-54::obj-2": [ "preDelay", "preDelay", 0 ],
            "obj-3::obj-54::obj-3": [ "lowDecay[2]", "reverbSize", 0 ],
            "obj-3::obj-54::obj-33": [ "dryWet", "wetGain", 0 ],
            "obj-3::obj-54::obj-35": [ "bypass[2]", "bypass", 0 ],
            "obj-3::obj-54::obj-4": [ "dryGain[2]", "dryGain", 0 ],
            "obj-3::obj-54::obj-5": [ "midDecay", "width", 0 ],
            "obj-3::obj-54::obj-7": [ "eqHighFreq[2]", "eqHighFreq", 0 ],
            "obj-3::obj-54::obj-8": [ "smoothTime[2]", "smoothTime", 0 ],
            "obj-3::obj-54::obj-9": [ "crossover", "damping", 0 ],
            "obj-48::obj-120::obj-20": [ "preTime", "preTime", 0 ],
            "obj-48::obj-120::obj-21": [ "preSymmetry", "preSymmetry", 0 ],
            "obj-48::obj-120::obj-22": [ "earlySize", "earlySize", 0 ],
            "obj-48::obj-120::obj-41": [ "earlySymmetry", "earlySymmetry", 0 ],
            "obj-48::obj-120::obj-42": [ "earlyDiffusion", "earlyDiffusion", 0 ],
            "obj-48::obj-120::obj-43": [ "lateSize", "lateSize", 0 ],
            "obj-48::obj-120::obj-44": [ "lateSymmetry", "lateSymmetry", 0 ],
            "obj-48::obj-120::obj-45": [ "lateDiffusion", "lateDiffusion", 0 ],
            "obj-48::obj-120::obj-46": [ "decay[5]", "decay", 0 ],
            "obj-48::obj-120::obj-48": [ "absorbtion", "absorbtion", 0 ],
            "obj-48::obj-120::obj-53": [ "earlyLate", "earlyLate", 0 ],
            "obj-48::obj-120::obj-54": [ "modFrequency", "modFrequency", 0 ],
            "obj-48::obj-120::obj-55": [ "modAmplitude", "modAmplitude", 0 ],
            "obj-48::obj-120::obj-59": [ "smoothTime[10]", "smoothTime", 0 ],
            "obj-48::obj-120::obj-60": [ "dryWet[3]", "dryWet", 0 ],
            "obj-48::obj-120::obj-61": [ "highDampFrequency", "highDampFrequency", 0 ],
            "obj-48::obj-120::obj-62": [ "highDampGain", "highDampGain", 0 ],
            "obj-48::obj-120::obj-63": [ "lowDampFrequency", "lowDampFrequency", 0 ],
            "obj-48::obj-120::obj-64": [ "lowDampGain", "lowDampGain", 0 ],
            "obj-48::obj-120::obj-65": [ "highEqFrequency", "highEqFrequency", 0 ],
            "obj-48::obj-120::obj-66": [ "lowEqFrequency", "lowEqFrequency", 0 ],
            "obj-48::obj-120::obj-67": [ "highEqGain", "highEqGain", 0 ],
            "obj-48::obj-120::obj-68": [ "lowEqGain", "lowEqGain", 0 ],
            "obj-4::obj-54::obj-10": [ "damp[17]", "spread", 0 ],
            "obj-4::obj-54::obj-12": [ "fdnGain[4]", "earlyGain", 0 ],
            "obj-4::obj-54::obj-15": [ "eqLowGain[10]", "eqLowGain", 0 ],
            "obj-4::obj-54::obj-16": [ "eqLowFreq[11]", "eqLowFreq", 0 ],
            "obj-4::obj-54::obj-17": [ "damp[11]", "eqHighGain", 0 ],
            "obj-4::obj-54::obj-18": [ "eqHighFreq[11]", "eqHighFreq", 0 ],
            "obj-4::obj-54::obj-2": [ "preDelay[12]", "bandWidth", 0 ],
            "obj-4::obj-54::obj-3": [ "lowDecay[7]", "damp", 0 ],
            "obj-4::obj-54::obj-33": [ "dryWet[12]", "lateGain", 0 ],
            "obj-4::obj-54::obj-35": [ "bypass[17]", "bypass", 0 ],
            "obj-4::obj-54::obj-4": [ "dryGain[10]", "dryGain", 0 ],
            "obj-4::obj-54::obj-5": [ "midDecay[12]", "decayTime", 0 ],
            "obj-4::obj-54::obj-6": [ "stereo[9]", "stereo", 0 ],
            "obj-4::obj-54::obj-8": [ "smoothTime[3]", "smoothTime", 0 ],
            "obj-4::obj-54::obj-9": [ "crossover[12]", "sizeMeters", 0 ],
            "obj-55::obj-54::obj-12": [ "inputLow", "inputLow", 0 ],
            "obj-55::obj-54::obj-15": [ "inputHigh", "inputHigh", 0 ],
            "obj-55::obj-54::obj-17": [ "feedbackHigh", "feedbackHigh", 0 ],
            "obj-55::obj-54::obj-19": [ "feedbackLow", "feedbackLow", 0 ],
            "obj-55::obj-54::obj-2": [ "modDuty", "modDuty", 0 ],
            "obj-55::obj-54::obj-21": [ "dampLow", "dampLow", 0 ],
            "obj-55::obj-54::obj-23": [ "dampHigh", "dampHigh", 0 ],
            "obj-55::obj-54::obj-25": [ "feedbackNonlin", "feedbackNonlin", 0 ],
            "obj-55::obj-54::obj-3": [ "feedback", "feedback", 0 ],
            "obj-55::obj-54::obj-30": [ "outputNonlin", "outputNonlin", 0 ],
            "obj-55::obj-54::obj-32": [ "modDepth", "modDepth", 0 ],
            "obj-55::obj-54::obj-33": [ "dryWet[20]", "dryWet", 0 ],
            "obj-55::obj-54::obj-38": [ "modRate", "modRate", 0 ],
            "obj-55::obj-54::obj-7": [ "modShape", "modShape", 0 ],
            "obj-55::obj-54::obj-8": [ "modSkew", "modSkew", 0 ],
            "obj-55::obj-54::obj-9": [ "outputNonlinGains", "outputNonlinGains", 0 ],
            "obj-5::obj-54::obj-10": [ "damp[18]", "highPass", 0 ],
            "obj-5::obj-54::obj-12": [ "fdnGain[8]", "fdnGain", 0 ],
            "obj-5::obj-54::obj-2": [ "preDelay[13]", "early", 0 ],
            "obj-5::obj-54::obj-3": [ "lowDecay[8]", "feedback", 0 ],
            "obj-5::obj-54::obj-33": [ "dryWet[13]", "dryWet", 0 ],
            "obj-5::obj-54::obj-35": [ "bypass[11]", "smoothTime", 0 ],
            "obj-5::obj-54::obj-5": [ "midDecay[13]", "damp", 0 ],
            "obj-5::obj-54::obj-9": [ "crossover[13]", "crossover", 0 ],
            "obj-68::obj-54::obj-10": [ "dryWet[22]", "dryWet", 0 ],
            "obj-68::obj-54::obj-2": [ "lowDamp", "lowDamp", 0 ],
            "obj-68::obj-54::obj-3": [ "highDamp", "highDamp", 0 ],
            "obj-68::obj-54::obj-4": [ "space", "space", 0 ],
            "obj-68::obj-54::obj-5": [ "rvrbSize", "rvrbSize", 0 ],
            "obj-68::obj-54::obj-9": [ "dampOrder", "damp", 0 ],
            "obj-6::obj-54::obj-10": [ "damp[19]", "damp", 0 ],
            "obj-6::obj-54::obj-12": [ "reverbGain", "reverbGain", 0 ],
            "obj-6::obj-54::obj-2": [ "preDelay[14]", "preDelay", 0 ],
            "obj-6::obj-54::obj-24": [ "band1Type", "band1Type", 0 ],
            "obj-6::obj-54::obj-25": [ "band2Type", "band2Type", 0 ],
            "obj-6::obj-54::obj-28": [ "band1Cutoff", "band1Cutoff", 0 ],
            "obj-6::obj-54::obj-29": [ "band2Cutoff", "band2Cutoff", 0 ],
            "obj-6::obj-54::obj-3": [ "lowDecay[9]", "lowDecay", 0 ],
            "obj-6::obj-54::obj-30": [ "band1Gain", "band1Gain", 0 ],
            "obj-6::obj-54::obj-32": [ "band2Gain", "band2Gain", 0 ],
            "obj-6::obj-54::obj-33": [ "dryWet[14]", "dryWet", 0 ],
            "obj-6::obj-54::obj-35": [ "bypass[19]", "bypass", 0 ],
            "obj-6::obj-54::obj-5": [ "midDecay[14]", "midDecay", 0 ],
            "obj-6::obj-54::obj-9": [ "crossover[14]", "crossover", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "audiosolo", "audiomute" ]
    }
}