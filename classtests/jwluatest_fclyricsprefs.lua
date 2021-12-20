function FCLyricsPrefs_PropertyTests(prefs)
   NumberPropertyTest(prefs, "FCLyricsPrefs", "FirstSyllableAlignment", {finale.LYRICS_ALIGN_CENTER, finale.LYRICS_ALIGN_LEFT, finale.LYRICS_ALIGN_RIGHT})
   NumberPropertyTest(prefs, "FCLyricsPrefs", "FirstSyllableJustification", {finale.LYRICS_JUSTI_CENTER, finale.LYRICS_JUSTI_LEFT, finale.LYRICS_JUSTI_RIGHT})
   NumberPropertyTest(prefs, "FCLyricsPrefs", "HyphenSystemStart", {finale.SMARTHYPHEN_SYSSTART_ALWAYS,
            finale.SMARTHYPHEN_SYSSTART_ONLYLATERSYLLABLE, finale.SMARTHYPHEN_SYSSTART_NEVER})
   NumberPropertyTest(prefs, "FCLyricsPrefs", "MaxSpaceBetweenHyphens", {0, 37, 240})
   NumberPropertyTest(prefs, "FCLyricsPrefs", "OtherSyllableAlignment", {finale.LYRICS_ALIGN_CENTER, finale.LYRICS_ALIGN_LEFT, finale.LYRICS_ALIGN_RIGHT})
   NumberPropertyTest(prefs, "FCLyricsPrefs", "OtherSyllableJustification", {finale.LYRICS_JUSTI_CENTER, finale.LYRICS_JUSTI_LEFT, finale.LYRICS_JUSTI_RIGHT})
   NumberPropertyTest(prefs, "FCLyricsPrefs", "StartSystemSyllableAlignment", {finale.LYRICS_ALIGN_CENTER, finale.LYRICS_ALIGN_LEFT, finale.LYRICS_ALIGN_RIGHT})
   NumberPropertyTest(prefs, "FCLyricsPrefs", "StartSystemSyllableJustification", {finale.LYRICS_JUSTI_CENTER, finale.LYRICS_JUSTI_LEFT, finale.LYRICS_JUSTI_RIGHT})
   BoolPropertyTest(prefs, "FCLyricsPrefs", "UseFirstSyllable")
   BoolPropertyTest(prefs, "FCLyricsPrefs", "UseSmartHyphens")
   BoolPropertyTest(prefs, "FCLyricsPrefs", "UseStartSystemSyllable")
   BoolPropertyTest(prefs, "FCLyricsPrefs", "UseWordExtSyllable")
   NumberPropertyTest(prefs, "FCLyricsPrefs", "WordExtSyllableAlignment", {finale.LYRICS_ALIGN_CENTER, finale.LYRICS_ALIGN_LEFT, finale.LYRICS_ALIGN_RIGHT})
   NumberPropertyTest(prefs, "FCLyricsPrefs", "WordExtSyllableJustification", {finale.LYRICS_JUSTI_CENTER, finale.LYRICS_JUSTI_LEFT, finale.LYRICS_JUSTI_RIGHT})
   NumberPropertyTest(prefs, "FCLyricsPrefs", "WordExtLineThickness", {0, 128, 247})
end

-- Call:
local prefs = finale.FCLyricsPrefs()
AssureTrue(prefs:Load(1))
FCLyricsPrefs_PropertyTests(prefs)
