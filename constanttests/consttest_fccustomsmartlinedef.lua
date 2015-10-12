function TestConstants_TEXTREF_()
   NumberConstantTest(finale.TEXTREF_CENTERABBREVIATED, "TEXTREF_CENTERABBREVIATED", 4)
   NumberConstantTest(finale.TEXTREF_CENTERFULL, "TEXTREF_CENTERFULL", 3)
   NumberConstantTest(finale.TEXTREF_LEFTCONTINUATION, "TEXTREF_LEFTCONTINUATION", 1)
   NumberConstantTest(finale.TEXTREF_LEFTSTART, "TEXTREF_LEFTSTART", 0)
   NumberConstantTest(finale.TEXTREF_RIGHTEND, "TEXTREF_RIGHTEND", 2)
end

-- Test the constants:
TestConstants_TEXTREF_()


function TestConstants_CUSTOMLINE_()
   NumberConstantTest(finale.CUSTOMLINE_CHARACTER, "CUSTOMLINE_CHARACTER", 2)
   NumberConstantTest(finale.CUSTOMLINE_DASHED, "CUSTOMLINE_DASHED", 1)
   NumberConstantTest(finale.CUSTOMLINE_SOLID, "CUSTOMLINE_SOLID", 0)
end

-- Test the constants:
TestConstants_CUSTOMLINE_()



function TestConstants_CLENDPOINT_()
   NumberConstantTest(finale.CLENDPOINT_CUSTOM, "CLENDPOINT_CUSTOM", 2)
   NumberConstantTest(finale.CLENDPOINT_HOOK, "CLENDPOINT_HOOK", 3)
   NumberConstantTest(finale.CLENDPOINT_NONE, "CLENDPOINT_NONE", 0)
   NumberConstantTest(finale.CLENDPOINT_PRESET, "CLENDPOINT_PRESET", 1)
end

-- Test the constants:
TestConstants_CLENDPOINT_()
