function FCMusicSpacingPrefs_PropertyTests(prefs)
    NumberPropertyTest(prefs, "FCMusicSpacingPrefs", "AccidentalsGutter", {0, 12, 24, 35})
    BoolPropertyTest(prefs, "FCMusicSpacingPrefs", "AvoidArticulations")
    BoolPropertyTest(prefs, "FCMusicSpacingPrefs", "AvoidChords")
    BoolPropertyTest(prefs, "FCMusicSpacingPrefs", "AvoidClefs")
    BoolPropertyTest(prefs, "FCMusicSpacingPrefs", "AvoidHiddenNotes")
    BoolPropertyTest(prefs, "FCMusicSpacingPrefs", "AvoidLedgerLines")
    BoolPropertyTest(prefs, "FCMusicSpacingPrefs", "AvoidLyrics")
    BoolPropertyTest(prefs, "FCMusicSpacingPrefs", "AvoidNoteAndAccidentals")
    BoolPropertyTest(prefs, "FCMusicSpacingPrefs", "AvoidSeconds")
    NumberPropertyTest(prefs, "FCMusicSpacingPrefs", "GraceNoteSpacingMode", 
        {finale.GRACESPMODE_RESETTOOFFSET, finale.GRACESPMODE_KEEPCURRENT,
        finale.GRACESPMODE_AUTOMATIC})
    NumberPropertyTest(prefs, "FCMusicSpacingPrefs", "GraceNoteMinDistance", {0, 12, 24, 35})
    NumberPropertyTest(prefs, "FCMusicSpacingPrefs", "ManualPositioning", 
        {finale.MANUALPOS_CLEAR, finale.MANUALPOS_INCORPORATE,
        finale.MANUALPOS_IGNORE})
    BoolPropertyTest(prefs, "FCMusicSpacingPrefs", "InterpolateAllotments")
    NumberPropertyTest(prefs, "FCMusicSpacingPrefs", "MinimumItemDistance", {0, 12, 24, 35})
    NumberPropertyTest(prefs, "FCMusicSpacingPrefs", "MinimumDistanceWithTies", {0, 12, 24, 35})
    NumberPropertyTest(prefs, "FCMusicSpacingPrefs", "MaxMeasureWidth", {0, 244, 576, 2400})
    NumberPropertyTest(prefs, "FCMusicSpacingPrefs", "MinMeasureWidth", {0, 244, 576, 2400})
    NumberPropertyTest(prefs, "FCMusicSpacingPrefs", "ScalingFactor", {1, 1.414, 1.619, 1.99})
    NumberPropertyTest(prefs, "FCMusicSpacingPrefs", "ScalingReferenceDuration", {256, 13, 1536, 2048, 2345})
    NumberPropertyTest(prefs, "FCMusicSpacingPrefs", "ScalingReferenceWidth", {0, 244, 576, 2400})
    NumberPropertyTest(prefs, "FCMusicSpacingPrefs", "ScalingValue", {10000, 14140, 16190, 19999})
    NumberPropertyTest(prefs, "FCMusicSpacingPrefs", "TiesGutter", {0, 12, 24, 35})
    NumberPropertyTest(prefs, "FCMusicSpacingPrefs", "UnisonsMode", 
        {finale.UNISSPACE_NONE, finale.UNISSPACE_DIFFERENTNOTEHEADS,
        finale.UNISSPACE_ALLNOTEHEADS})
    if finenv.UI():IsOnWindows() then
        BoolPropertyTest(prefs, "FCMusicSpacingPrefs", "UsePrinterMetrics")
    else
        BoolPropertyTest_RO(prefs, "FCMusicSpacingPrefs", "UsePrinterMetrics")
    end
    BoolPropertyTest(prefs, "FCMusicSpacingPrefs", "UseAllotmentMode")
end


-- Call:
 local prefs = finale.FCMusicSpacingPrefs()
AssureTrue(prefs:Load(1))
FCMusicSpacingPrefs_PropertyTests(prefs)
