function FCTieMod_PropertyTests(tie_mod)
   BoolPropertyTest(tie_mod, "FCTieMod", "AvoidStaffLines")
   NumberPropertyTest(tie_mod, "FCTieMod", "BreakForKeySignature", {finale.TIEMODSEL_DEFAULT, finale.TIEMODSEL_ON, finale.TIEMODSEL_OFF})
   NumberPropertyTest(tie_mod, "FCTieMod", "BreakForTimeSignature", {finale.TIEMODSEL_DEFAULT, finale.TIEMODSEL_ON, finale.TIEMODSEL_OFF})
   NumberPropertyTest_RO(tie_mod, "FCTieMod", "EndConnectionCode")
   NumberPropertyTest(tie_mod, "FCTieMod", "EndHorizontalPos", {-6, 0, 12})
   NumberPropertyTest(tie_mod, "FCTieMod", "EndVerticalPos", {48, 0, -12})
   BoolPropertyTest(tie_mod, "FCTieMod", "FixedInsetStyle")
   NumberPropertyTest(tie_mod, "FCTieMod", "LeftHeight", {21, 0, -12})
   NumberPropertyTest(tie_mod, "FCTieMod", "LeftInset", {573, 0, -42})
   NumberPropertyTest(tie_mod, "FCTieMod", "OuterPlacement", {finale.TIEMODSEL_DEFAULT, finale.TIEMODSEL_ON, finale.TIEMODSEL_OFF})
   NumberPropertyTest(tie_mod, "FCTieMod", "RightHeight", {21, 0, -12})
   NumberPropertyTest(tie_mod, "FCTieMod", "RightInset", {573, 0, -42})
   NumberPropertyTest_RO(tie_mod, "FCTieMod", "StartConnectionCode")
   NumberPropertyTest(tie_mod, "FCTieMod", "StartHorizontalPos", {6, 0, -8})
   NumberPropertyTest(tie_mod, "FCTieMod", "StartVerticalPos", {30, 0, -12})
   NumberPropertyTest(tie_mod, "FCTieMod", "TieDirection", {finale.TIEMODDIR_AUTOMATIC, finale.TIEMODDIR_OVER, finale.TIEMODDIR_UNDER})
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
