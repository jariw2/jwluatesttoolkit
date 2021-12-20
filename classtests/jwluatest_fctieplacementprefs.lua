function FCTiePlacementPrefs_PropertyTests(prefs, index, savefunction, reloadfunction)
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCTiePlacementPrefs", "GetHorizontalStart", "SetHorizontalStart", index, {-144, 0, 144}, savefunction, reloadfunction)
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCTiePlacementPrefs", "GetVerticalStart", "SetVerticalStart", index, {-144, 0, 144}, savefunction, reloadfunction)
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCTiePlacementPrefs", "GetHorizontalEnd", "SetHorizontalEnd", index, {-144, 0, 144}, savefunction, reloadfunction)
   prefs = NumberIndexedFunctionPairsTest(prefs, "FCTiePlacementPrefs", "GetVerticalEnd", "SetVerticalEnd", index, {-144, 0, 144}, savefunction, reloadfunction)
   return prefs
end

-- Call:
local indeces = {finale.TIEPLACE_OVERINNER, finale.TIEPLACE_UNDERINNER, finale.TIEPLACE_OVEROUTERNOTE,
                                    finale.TIEPLACE_UNDEROUTERNOTE , finale.TIEPLACE_OVEROUTERSTEM, finale.TIEPLACE_UNDEROUTERSTEM}
if finenv.IsRGPLua then
    local tieprefs = finale.FCTiePrefs()
    AssureTrue(tieprefs:Load(1), "FCTiePrefs::Load() for FCTiePlacementPrefs")
    local prefs = tieprefs:CreateTiePlacementPrefs()
    if AssureNonNil(prefs, "creating FCTiePlacementPrefs") then
        local savefunc = function()
            if not tieprefs:SaveTiePlacementPrefs(prefs) then
                return false
            end
            return tieprefs:Save()
        end
        local reloadfunc = function()
            if not tieprefs:Reload() then
                return nil
            end
            prefs = tieprefs:CreateTiePlacementPrefs()
            return prefs -- so caller can update the pointer as well
        end
        for _, index in pairs(indeces) do
            prefs = FCTiePlacementPrefs_PropertyTests(prefs, index, savefunc, reloadfunc)
        end
    end
else
    local prefs = finale.FCTiePlacementPrefs()
    AssureTrue(prefs:Load(1), "FCTiePlacementPrefs::Load()")
    for _, index in pairs(indeces) do
        prefs = FCTiePlacementPrefs_PropertyTests(prefs, index)
    end
end

