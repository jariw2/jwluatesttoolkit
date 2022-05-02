function FCTieMod_PropertyTests(tie_mod)
   NumberPropertyTest(tie_mod, "FCTieMod", "StartHorizontalPos", {6, 0, -8})
   NumberPropertyTest(tie_mod, "FCTieMod", "StartVerticalPos", {30, 0, -12})
   NumberPropertyTest(tie_mod, "FCTieMod", "EndHorizontalPos", {-6, 0, 12})
   NumberPropertyTest(tie_mod, "FCTieMod", "EndVerticalPos", {48, 0, -12})
end

-- Call:
local FCTieMod_ProcessEntry = function(entry)
    if AssureNonNil(entry) then
        for _, tie_mods in pairs({finale.FCStartTieMods(entry), finale.FCEndTieMods(entry)}) do
            AssureNonNil(tie_mods, "Tie Mods")
            if tie_mods then
                if tie_mods:LoadAll() then
                    for tie_mod in each(tie_mods) do
                        FCTieMod_PropertyTests(tie_mod)
                    end
                end
            end
        end
    end
end

FCTieMod_ProcessEntry(LoadMeasureEntry(22, 2, 260))
FCTieMod_ProcessEntry(LoadMeasureEntry(23, 2, 261))
