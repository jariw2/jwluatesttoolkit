function TestConstants_ITEMTOSNAP_()
   NumberConstantTest(finale.SNAPITEM_BRACKETS, "SNAPITEM_BRACKETS", 1)
   NumberConstantTest(finale.SNAPITEM_CHORDS, "SNAPITEM_CHORDS", 2)
   NumberConstantTest(finale.SNAPITEM_EXPRESSIONS, "SNAPITEM_EXPRESSIONS ", 3)
   NumberConstantTest(finale.SNAPITEM_FRETBOARDS, "SNAPITEM_FRETBOARDS ", 4)
   NumberConstantTest(finale.SNAPITEM_GRAPHICSMOVE, "SNAPITEM_GRAPHICSMOVE", 5)
   NumberConstantTest(finale.SNAPITEM_GRAPHICSSIZING, "SNAPITEM_GRAPHICSSIZING", 6)
   NumberConstantTest(finale.SNAPITEM_MEASURENUMBERS, "SNAPITEM_MEASURENUMBERS", 7)
   NumberConstantTest(finale.SNAPITEM_REPEATS, "SNAPITEM_REPEATS", 8)
   NumberConstantTest(finale.SNAPITEM_SPECIALTOOLS, "SNAPITEM_SPECIALTOOLS", 9)
   NumberConstantTest(finale.SNAPITEM_STAFFNAMES, "SNAPITEM_STAFFNAMES", 10)
   NumberConstantTest(finale.SNAPITEM_STAVES, "SNAPITEM_STAVES", 11)
   NumberConstantTest(finale.SNAPITEM_TEXTBLOCKMOVE, "GRBRAC_REVERSEDESK", 12)
   NumberConstantTest(finale.SNAPITEM_TEXTBLOCKSIZING, "SNAPITEM_TEXTBLOCKSIZING", 13)
end

-- Test the constants:
TestConstants_ITEMTOSNAP_()


function TestConstants_GGLINESTYLES_()
   NumberConstantTest(finale.GGLINESTYLE_SOLID, "GGLINESTYLE_SOLID", 1)
   NumberConstantTest(finale.GGLINESTYLE_DASHED, "GGLINESTYLE_DASHED", 2)
   NumberConstantTest(finale.GGLINESTYLE_DOTTED, "GGLINESTYLE_DOTTED ", 3)
   NumberConstantTest(finale.GGLINESTYLE_CROSSHAIR, "GGLINESTYLE_CROSSHAIR ", 4)
end

-- Test the constants:
TestConstants_GGLINESTYLES_()
