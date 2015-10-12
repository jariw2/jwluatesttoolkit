function FCChordPrefs_PropertyTests(chordprefs)
   NumberPropertyTest(chordprefs, "FCChordPrefs", "FlatBaselineAdjustment", {-260, 0, 300})
   BoolPropertyTest(chordprefs, "FCChordPrefs", "LeftAlignment")
   NumberPropertyTest(chordprefs, "FCChordPrefs", "NaturalBaselineAdjustment", {-259, 0, 301})
   NumberPropertyTest(chordprefs, "FCChordPrefs", "SharpBaselineAdjustment", {-258, 0, 302})
   NumberPropertyTest(chordprefs, "FCChordPrefs", "Style", {finale.CHRDSTYLE_NORMAL,
                finale.CHRDSTYLE_ROMAN, finale.CHRDSTYLE_NASHVILLE_A,  
                finale.CHRDSTYLE_GERMAN, finale.CHRDSTYLE_SOLFEGGIO, finale.CHRDSTYLE_EUROPEAN,
                finale.CHRDSTYLE_SCANDINAVIAN, finale.CHRDSTYLE_NASHVILLE_B})
   BoolPropertyTest(chordprefs, "FCChordPrefs", "UseSimpleSpelling")
end

-- Call:
local chordprefs = finale.FCChordPrefs()
AssureTrue(chordprefs:Load(1))
FCChordPrefs_PropertyTests(chordprefs)
