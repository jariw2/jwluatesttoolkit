function FCLyricsPrefs_PropertyTests(prefs)
   NumberValuePropertyTest(prefs, "FCLyricsPrefs", "FirstSyllableAlignment", finale.LYRICS_ALIGN_CENTER, finale.LYRICS_ALIGN_RIGHT)
   NumberValuePropertyTest(prefs, "FCLyricsPrefs", "FirstSyllableJustification", finale.LYRICS_JUSTI_LEFT, finale.LYRICS_JUSTI_CENTER)
   NumberValuePropertyTest(prefs, "FCLyricsPrefs", "HyphenSystemStart", finale.SMARTHYPHEN_SYSSTART_ONLYLATERSYLLABLE, finale.SMARTHYPHEN_SYSSTART_NEVER)
   NumberValuePropertyTest(prefs, "FCLyricsPrefs", "MaxSpaceBetweenHyphens", 288, 144)
   NumberValuePropertyTest(prefs, "FCLyricsPrefs", "OtherSyllableAlignment", finale.LYRICS_ALIGN_CENTER, finale.LYRICS_ALIGN_RIGHT)
   NumberValuePropertyTest(prefs, "FCLyricsPrefs", "OtherSyllableJustification", finale.LYRICS_JUSTI_CENTER, finale.LYRICS_JUSTI_LEFT)
   NumberValuePropertyTest(prefs, "FCLyricsPrefs", "StartSystemSyllableAlignment", finale.LYRICS_ALIGN_CENTER, finale.LYRICS_ALIGN_LEFT)
   NumberValuePropertyTest(prefs, "FCLyricsPrefs", "StartSystemSyllableJustification", finale.LYRICS_JUSTI_LEFT, finale.LYRICS_JUSTI_RIGHT)
   BoolValuePropertyTest(prefs, "FCLyricsPrefs", "UseFirstSyllable", true)
   BoolValuePropertyTest(prefs, "FCLyricsPrefs", "UseSmartHyphens", true)
   BoolValuePropertyTest(prefs, "FCLyricsPrefs", "UseStartSystemSyllable", true)
   BoolValuePropertyTest(prefs, "FCLyricsPrefs", "UseWordExtSyllable", true)
   NumberValuePropertyTest(prefs, "FCLyricsPrefs", "WordExtSyllableAlignment", finale.LYRICS_ALIGN_LEFT, finale.LYRICS_ALIGN_RIGHT)
   NumberValuePropertyTest(prefs, "FCLyricsPrefs", "WordExtSyllableJustification", finale.LYRICS_JUSTI_LEFT, finale.LYRICS_JUSTI_RIGHT)
   NumberValuePropertyTest(prefs, "FCLyricsPrefs", "WordExtLineThickness", 115, 240)
end

-- Call:
local prefs = finale.FCLyricsPrefs()
AssureTrue(prefs:Load(1))
FCLyricsPrefs_PropertyTests(prefs)
