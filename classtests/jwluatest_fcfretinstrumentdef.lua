function FCFretInstrumentDef_PropertyTests(fretinstr)
   NumberPropertyTest(fretinstr, "FCFretInstrumentDef", "FretCount", {2, 5, 35})
   NumberPropertyTest(fretinstr, "FCFretInstrumentDef", "SpeedyClef", {0, 2, 16})
   NumberPropertyTest(fretinstr, "FCFretInstrumentDef", "StringCount", {1, 5, 12})
end


-- Call:
local fretinstr = finale.FCFretInstrumentDef()
AssureTrue(fretinstr:Load(1))
FCFretInstrumentDef_PropertyTests(fretinstr)
