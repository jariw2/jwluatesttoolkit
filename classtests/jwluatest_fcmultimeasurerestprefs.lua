function FCMultiMeasureRestPrefs_PropertyTests(prefs)
    BoolPropertyTest(prefs, "FCMultiMeasureRestPrefs", "AutoUpdate")
    NumberPropertyTest(prefs, "FCMultiMeasureRestPrefs", "NumberHorizontalAdjust", {-144, 0, 144})
    NumberPropertyTest(prefs, "FCMultiMeasureRestPrefs", "NumberVerticalAdjust", {-144, 0, 144})
    NumberPropertyTest(prefs, "FCMultiMeasureRestPrefs", "ShapeEndAdjust", {-144, 0, 144})
    NumberPropertyTest(prefs, "FCMultiMeasureRestPrefs", "ShapeID", {2, 14, 40})
    NumberPropertyTest(prefs, "FCMultiMeasureRestPrefs", "ShapeStartAdjust", {-144, 0, 144})
    NumberPropertyTest(prefs, "FCMultiMeasureRestPrefs", "StartNumberingAt", {0, 2, 8, 27})
    NumberPropertyTest(prefs, "FCMultiMeasureRestPrefs", "SymbolSpace", {-24, 0, 24})
    BoolPropertyTest(prefs, "FCMultiMeasureRestPrefs", "UseSymbols")
    NumberPropertyTest(prefs, "FCMultiMeasureRestPrefs", "UseSymbolsLessThan", {0, 2, 8, 27})
    NumberPropertyTest(prefs, "FCMultiMeasureRestPrefs", "Width", {0, 244, 1234})
end

-- Call:
local prefs = finale.FCMultiMeasureRestPrefs()
AssureTrue(prefs:Load(1))
FCMultiMeasureRestPrefs_PropertyTests(prefs)
