function FCStemConnectionTable_ValueTests_ItemNo1(prefs)
   NumberValuePropertyTest_RO(prefs, "FCStemConnectionTable", "Count", 81)
   NumberValuePropertyTest_RO(prefs, "FCStemConnectionTable", "MaxElementCount", 128)
   -- index value tests
   NumberIndexValueTest(prefs, "FCStemConnectionTable", "GetDownstemHorizontalAdjust", 3, 62)
   NumberIndexValueTest(prefs, "FCStemConnectionTable", "GetDownstemVerticalAdjust", 4, -383)
   NumberIndexValueTest(prefs, "FCStemConnectionTable", "GetUpstemHorizontalAdjust", 1, 31)
   NumberIndexValueTest(prefs, "FCStemConnectionTable", "GetUpstemVerticalAdjust", 2, 407)
end

-- Call:
local prefs = finale.FCStemConnectionTable()
AssureTrue(prefs:Load(1), "FCStemConnectionTable:Load(1)")
FCStemConnectionTable_ValueTests_ItemNo1(prefs)
