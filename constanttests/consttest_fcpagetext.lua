function TestConstants_TEXTHORIZALIGN_()
   NumberConstantTest(finale.TEXTHORIZALIGN_LEFT, "TEXTHORIZALIGN_LEFT", 0)
   NumberConstantTest(finale.TEXTHORIZALIGN_RIGHT, "TEXTHORIZALIGN_RIGHT ", 1)
   NumberConstantTest(finale.TEXTHORIZALIGN_CENTER, "TEXTHORIZALIGN_CENTER ", 2)
end

-- Test the constants:
TestConstants_TEXTHORIZALIGN_()

function TestConstants_TEXTVERTALIGN_()
   NumberConstantTest(finale.TEXTVERTALIGN_TOP, "TEXTVERTALIGN_TOP", 0)
   NumberConstantTest(finale.TEXTVERTALIGN_BOTTOM, "TEXTVERTALIGN_BOTTOM ", 1)
   NumberConstantTest(finale.TEXTVERTALIGN_CENTER, "TEXTVERTALIGN_CENTER ", 2)
end

-- Test the constants:
TestConstants_TEXTVERTALIGN_()
