function FCMultiMeasureRestPrefs_ValueTests_ItemNo1(prefs)
   BoolValuePropertyTest(prefs, "FCMultiMeasureRestPrefs", "AutoUpdate", true)
   NumberValuePropertyTest(prefs, "FCMultiMeasureRestPrefs", "NumberHorizontalAdjust", 0, -2)
   NumberValuePropertyTest(prefs, "FCMultiMeasureRestPrefs", "NumberVerticalAdjust", -32, 2)
   NumberValuePropertyTest(prefs, "FCMultiMeasureRestPrefs", "ShapeEndAdjust", -30, 20)
   NumberValuePropertyTest(prefs, "FCMultiMeasureRestPrefs", "ShapeStartAdjust", 30, 20)
   NumberValuePropertyTest(prefs, "FCMultiMeasureRestPrefs", "ShapeID", 50, 1)
   NumberValuePropertyTest(prefs, "FCMultiMeasureRestPrefs", "StartNumberingAt", 2, 5)
   NumberValuePropertyTest(prefs, "FCMultiMeasureRestPrefs", "SymbolSpace", 48, 36)
   BoolValuePropertyTest(prefs, "FCMultiMeasureRestPrefs", "UseSymbols", false)
   NumberValuePropertyTest(prefs, "FCMultiMeasureRestPrefs", "UseSymbolsLessThan", 9, 5)
   NumberValuePropertyTest(prefs, "FCMultiMeasureRestPrefs", "Width", 360, 240)

end

-- Call:
local prefs = finale.FCMultiMeasureRestPrefs()
AssureTrue(prefs:Load(1))
FCMultiMeasureRestPrefs_ValueTests_ItemNo1(prefs)
