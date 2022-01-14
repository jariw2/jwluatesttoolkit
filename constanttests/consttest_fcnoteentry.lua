function TestConstants_ENTRY_DURATIONS_()
   NumberConstantTest(finale.BREVE, "BREVE", 8192)
   NumberConstantTest(finale.WHOLE_NOTE, "WHOLE_NOTE", 4096)
   NumberConstantTest(finale.NOTE_WHOLE, "NOTE_WHOLE", 4096)
   NumberConstantTest(finale.HALF_NOTE, "HALF_NOTE", 2048)
   NumberConstantTest(finale.NOTE_HALF, "NOTE_HALF", 2048)
   NumberConstantTest(finale.QUARTER_NOTE, "QUARTER_NOTE", 1024)
   NumberConstantTest(finale.NOTE_QUARTER, "NOTE_QUARTER", 1024)
   NumberConstantTest(finale.EIGHTH_NOTE, "EIGHTH_NOTE", 512)
   NumberConstantTest(finale.NOTE_8TH, "NOTE_8TH", 512)
   NumberConstantTest(finale.SIXTEENTH_NOTE, "SIXTEENTH_NOTE", 256)
   NumberConstantTest(finale.NOTE_16TH, "NOTE_16TH", 256)
   NumberConstantTest(finale.THIRTYSECOND_NOTE, "THIRTYSECOND_NOTE", 128)
   NumberConstantTest(finale.NOTE_32ND, "NOTE_32ND", 128)
   NumberConstantTest(finale.SIXTYFOURTH_NOTE, "SIXTYFOURTH_NOTE", 64)
   NumberConstantTest(finale.NOTE_64TH, "NOTE_64TH", 64)
   NumberConstantTest(finale.NOTE_128TH, "NOTE_128TH", 32)
end

-- Test the constants:
TestConstants_ENTRY_DURATIONS_()

function TestConstants_LOADLAYERMODES_()
   NumberConstantTest(finale.LLM_NONE, "LLM_NONE", -3)
   NumberConstantTest(finale.LLM_HIDDENLAYERS, "LLM_HIDDENLAYERS", -2)
   NumberConstantTest(finale.LLM_EVERYLAYER, "LLM_EVERYLAYER", -1)
   NumberConstantTest(finale.LLM_ALLVISIBILELAYERS, "LLM_ALLVISIBILELAYERS", 0)
end

-- Test the constants:
TestConstants_LOADLAYERMODES_()
