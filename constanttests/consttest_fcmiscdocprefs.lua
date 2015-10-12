function TestConstants_DATEFORMAT_()
   NumberConstantTest(finale.DATEFORMAT_LONG, "DATEFORMAT_LONG", 1)
   NumberConstantTest(finale.DATEFORMAT_MACLONG, "DATEFORMAT_MACLONG", 2)
   NumberConstantTest(finale.DATEFORMAT_SHORT, "DATEFORMAT_SHORT", 0)
end

-- Test the constants:
TestConstants_DATEFORMAT_()


function TestConstants_BEAMSLOPE_()
   NumberConstantTest(finale.BEAMSLOPE_ENDNOTESONLY, "BEAMSLOPE_ENDNOTESONLY", 0)
   NumberConstantTest(finale.BEAMSLOPE_FLATTENALL, "BEAMSLOPE_FLATTENALL", 1)
   NumberConstantTest(finale.BEAMSLOPE_FLATTENEXTREME, "BEAMSLOPE_FLATTENEXTREME", 3)
   NumberConstantTest(finale.BEAMSLOPE_FLATTENSTANDARD, "BEAMSLOPE_FLATTENSTANDARD", 2)
end

-- Test the constants:
TestConstants_BEAMSLOPE_()


function TestConstants_PAGEMARGINSCOPE_()
   NumberConstantTest(finale.PAGEMARGINSCOPE_ALL, "PAGEMARGINSCOPE_ALL", 1)
   NumberConstantTest(finale.PAGEMARGINSCOPE_CURRENT, "PAGEMARGINSCOPE_CURRENT", 0)
   NumberConstantTest(finale.PAGEMARGINSCOPE_LEFTORRIGHT, "PAGEMARGINSCOPE_LEFTORRIGHT", 2)
   NumberConstantTest(finale.PAGEMARGINSCOPE_RANGE, "PAGEMARGINSCOPE_RANGE", 3)
end

-- Test the constants:
TestConstants_PAGEMARGINSCOPE_()


