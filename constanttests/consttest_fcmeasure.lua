function TestConstants_BARLINE()
   NumberConstantTest(finale.BARLINE_DASHED, "BARLINE_DASHED", 3)
   NumberConstantTest(finale.BARLINE_DEFAULT, "BARLINE_DEFAULT", 8)
   NumberConstantTest(finale.BARLINE_DOUBLE, "BARLINE_DOUBLE", 2)
   NumberConstantTest(finale.BARLINE_FINAL, "BARLINE_FINAL", 5)
   NumberConstantTest(finale.BARLINE_NONE, "BARLINE_NONE", 0)
   NumberConstantTest(finale.BARLINE_NORMAL, "BARLINE_NORMAL", 1)
   NumberConstantTest(finale.BARLINE_SHAPE, "BARLINE_SHAPE", 7)
   NumberConstantTest(finale.BARLINE_THICK, "BARLINE_THICK", 4)
   NumberConstantTest(finale.BARLINE_TICK, "BARLINE_TICK", 6)
end

-- Test the constants:
TestConstants_BARLINE()



function TestConstants_POSITIONING_()
   NumberConstantTest(finale.POSITIONING_BEATCHART, "POSITIONING_BEATCHART", 2)
   NumberConstantTest(finale.POSITIONING_MANUALLY, "POSITIONING_MANUALLY", 1)
   NumberConstantTest(finale.POSITIONING_TIMESIG, "POSITIONING_TIMESIG", 0)
end

-- Test the constants:
TestConstants_POSITIONING_()



function TestConstants_SHOWSTATE_()
   NumberConstantTest(finale.SHOWSTATE_HIDE, "SHOWSTATE_HIDE", 2)
   NumberConstantTest(finale.SHOWSTATE_IFNEEDED, "SHOWSTATE_IFNEEDED", 0)
   NumberConstantTest(finale.SHOWSTATE_SHOW, "SHOWSTATE_SHOW", 1)
end

-- Test the constants:
TestConstants_SHOWSTATE_()
