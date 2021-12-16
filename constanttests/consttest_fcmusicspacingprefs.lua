function TestConstants_GRACENOTE_SPACINGMODE_()
   NumberConstantTest(finale.GRACESPMODE_RESETTOOFFSET, "GRACESPMODE_RESETTOOFFSET", 0)
   NumberConstantTest(finale.GRACESPMODE_KEEPCURRENT, "GRACESPMODE_KEEPCURRENT", 1)
   NumberConstantTest(finale.GRACESPMODE_AUTOMATIC, "GRACESPMODE_AUTOMATIC", 2)
end

-- Test the constants:
TestConstants_GRACENOTE_SPACINGMODE_()


function TestConstants_MANUAL_POSITIONING_()
   NumberConstantTest(finale.MANUALPOS_CLEAR, "MANUALPOS_CLEAR", 0)
   NumberConstantTest(finale.MANUALPOS_INCORPORATE, "MANUALPOS_INCORPORATE", 1)
   NumberConstantTest(finale.MANUALPOS_IGNORE, "MANUALPOS_IGNORE", 2)
end

-- Test the constants:
TestConstants_MANUAL_POSITIONING_()


function TestConstants_UNISONS_MODE_()
   NumberConstantTest(finale.UNISSPACE_NONE, "UNISSPACE_NONE", 0)
   NumberConstantTest(finale.UNISSPACE_DIFFERENTNOTEHEADS, "UNISSPACE_DIFFERENTNOTEHEADS", 1)
   NumberConstantTest(finale.UNISSPACE_ALLNOTEHEADS, "UNISSPACE_ALLNOTEHEADS", 2)
end

-- Test the constants:
TestConstants_UNISONS_MODE_()


