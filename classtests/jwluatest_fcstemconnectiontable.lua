function FCStemConnectionTable_PropertyTests(prefs, index, savefunction, reloadfunction)
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCStemConnectionTable", "GetDownstemHorizontalAdjust", "SetDownstemHorizontalAdjust", index, {-144, 0, 144})
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCStemConnectionTable", "GetDownstemVerticalAdjust", "SetDownstemVerticalAdjust", index, {-144, 0, 144})
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCStemConnectionTable", "GetUpstemHorizontalAdjust", "SetUpstemHorizontalAdjust", index, {-144, 0, 144})
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCStemConnectionTable", "GetUpstemVerticalAdjust", "SetUpstemVerticalAdjust", index, {-144, 0, 144})
   return prefs
end

-- Call:
local prefs = finale.FCStemConnectionTable()
AssureTrue(prefs:Load(1), "FCStemConnectionTable::Load()")
local max = prefs.Count
for index = 1, max do
    prefs = FCStemConnectionTable_PropertyTests(prefs, index)
end

