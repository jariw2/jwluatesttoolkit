function FCTieContourPrefs_PropertyTests(prefs, index, savefunction, reloadfunction)
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCTieContourPrefs", "GetLeftFixedInset", "SetLeftFixedInset", index, {-144, 0, 144}, savefunction, reloadfunction)
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCTieContourPrefs", "GetLeftHeight", "SetLeftHeight", index, {-144, 0, 144}, savefunction, reloadfunction)
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCTieContourPrefs", "GetLeftRelativeInset", "SetLeftRelativeInset", index, {0.0, 6.0, 12.0}, savefunction, reloadfunction)
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCTieContourPrefs", "GetLeftRawRelativeInset", "SetLeftRawRelativeInset", index, {0, 123, 266}, savefunction, reloadfunction)
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCTieContourPrefs", "GetRightFixedInset", "SetRightFixedInset", index, {-144, 0, 144}, savefunction, reloadfunction)
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCTieContourPrefs", "GetRightHeight", "SetRightHeight", index, {-144, 0, 144}, savefunction, reloadfunction)
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCTieContourPrefs", "GetRightRelativeInset", "SetRightRelativeInset", index, {0.0, 6.0, 12.0}, savefunction, reloadfunction)
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCTieContourPrefs", "GetRightRawRelativeInset", "SetRightRawRelativeInset", index, {0.0, 123, 266}, savefunction, reloadfunction)
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCTieContourPrefs", "GetSpan", "SetSpan", index, {-144, 0, 144}, savefunction, reloadfunction)
   return prefs
end

-- Call:
local indeces = {finale.TCONTOURIDX_SHORT, finale.TCONTOURIDX_MEDIUM, finale.TCONTOURIDX_LONG, finale.TCONTOURIDX_TIEENDS}
if finenv.IsRGPLua then
    local tieprefs = finale.FCTiePrefs()
    AssureTrue(tieprefs:Load(1), "FCTiePrefs::Load() for FCTieContourPrefs")
    local prefs = tieprefs:CreateTieContourPrefs()
    if AssureNonNil(prefs, "creating FCTieContourPrefs") then
        local savefunc = function()
            if not tieprefs:SaveTieContourPrefs(prefs) then
                return false
            end
            return tieprefs:Save()
        end
        local reloadfunc = function()
            if not tieprefs:Reload() then
                return nil
            end
            prefs = tieprefs:CreateTieContourPrefs()
            return prefs -- so caller can update the pointer as well
        end
        for _, index in pairs(indeces) do
            prefs = FCTieContourPrefs_PropertyTests(prefs, index, savefunc, reloadfunc)
        end
    end
else
    local prefs = finale.FCTieContourPrefs()
    AssureTrue(prefs:Load(1), "FCTieContourPrefs::Load()")
    for _, index in pairs(indeces) do
        prefs = FCTieContourPrefs_PropertyTests(prefs, index)
    end
end

