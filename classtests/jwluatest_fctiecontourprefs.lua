function FCTieContourPrefs_PropertyTests(prefs, index, savefunction, reloadfunction)
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCTieContourPrefs", "GetHorizontalStart", "SetHorizontalStart", index, {-144, 0, 144}, savefunction, reloadfunction)
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCTieContourPrefs", "GetVerticalStart", "SetVerticalStart", index, {-144, 0, 144}, savefunction, reloadfunction)
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCTieContourPrefs", "GetHorizontalEnd", "SetHorizontalEnd", index, {-144, 0, 144}, savefunction, reloadfunction)
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCTieContourPrefs", "GetVerticalEnd", "SetVerticalEnd", index, {-144, 0, 144}, savefunction, reloadfunction)
   return prefs
end

-- Call:
local indeces = {finale.TIEPLACE_OVERINNER, finale.TIEPLACE_UNDERINNER, finale.TIEPLACE_OVEROUTERNOTE,
                                    finale.TIEPLACE_UNDEROUTERNOTE , finale.TIEPLACE_OVEROUTERSTEM, finale.TIEPLACE_UNDEROUTERSTEM}
if false then -- finenv.IsRGPLua then
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

