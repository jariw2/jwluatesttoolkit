function FCChordPrefs_ValueTests_ItemNo1(chordprefs)
   NumberValuePropertyTest(chordprefs, "FCChordPrefs", "FlatBaselineAdjustment", 19)
   BoolValuePropertyTest(chordprefs, "FCChordPrefs", "LeftAlignment", false)
   NumberValuePropertyTest(chordprefs, "FCChordPrefs", "NaturalBaselineAdjustment", 22)
   NumberValuePropertyTest(chordprefs, "FCChordPrefs", "SharpBaselineAdjustment", 23)
   NumberValuePropertyTest(chordprefs, "FCChordPrefs", "Style", finale.CHRDSTYLE_NORMAL)
   BoolValuePropertyTest(chordprefs, "FCChordPrefs", "UseSimpleSpelling", true)
end


-- Call:
local chordprefs = finale.FCChordPrefs()
AssureTrue(chordprefs:Load(1))
FCChordPrefs_ValueTests_ItemNo1(chordprefs)
