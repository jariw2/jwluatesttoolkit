
function FCTieMod_Test_Unlinkable(measure, staff, entrynumber, partnumber)
    local entry = LoadMeasureEntry(measure, staff, entrynumber)
    if AssureNonNil(entry, "LoadMeasureEntry("..measure..", "..staff..", "..entrynumber..")") then
        local tie_mod = finale.FCTieMod(finale.TIEMODTYPE_TIESTART)
        tie_mod:SetNoteEntry(entry)
        local note = entry:GetItemAt(2)
        AssureNonNil(note)
        UnlinkableNumberPropertyTest(tie_mod, "FCTieMod", "AvoidStaffLines", "LoadAt", note, -24, partnumber, skip_finale_version)
        UnlinkableNumberPropertyTest(tie_mod, "FCTieMod", "BreakForKeySignature", "LoadAt", note, 1, partnumber, skip_finale_version)
        UnlinkableNumberPropertyTest(tie_mod, "FCTieMod", "BreakForTimeSignature", "LoadAt", note, 1, partnumber, skip_finale_version)
        UnlinkableNumberPropertyTest(tie_mod, "FCTieMod", "EndHorizontalPos", "LoadAt", note, -24, partnumber, skip_finale_version)
        UnlinkableNumberPropertyTest(tie_mod, "FCTieMod", "EndVerticalPos", "LoadAt", note, 24, partnumber, skip_finale_version)
        UnlinkableNumberPropertyTest(tie_mod, "FCTieMod", "FixedInsetStyle", "LoadAt", note, -24, partnumber, skip_finale_version)
        UnlinkableNumberPropertyTest(tie_mod, "FCTieMod", "LeftHeight", "LoadAt", note, -8, partnumber, skip_finale_version)
        UnlinkableNumberPropertyTest(tie_mod, "FCTieMod", "LeftInset", "LoadAt", note, 24, partnumber, skip_finale_version)
        UnlinkableNumberPropertyTest(tie_mod, "FCTieMod", "OuterPlacement", "LoadAt", note, 1, partnumber, skip_finale_version)
        UnlinkableNumberPropertyTest(tie_mod, "FCTieMod", "RightHeight", "LoadAt", note, 8, partnumber, skip_finale_version)
        UnlinkableNumberPropertyTest(tie_mod, "FCTieMod", "RightInset", "LoadAt", note, 24, partnumber, skip_finale_version)
        UnlinkableNumberPropertyTest(tie_mod, "FCTieMod", "StartHorizontalPos", "LoadAt", note, 24, partnumber, skip_finale_version)
        UnlinkableNumberPropertyTest(tie_mod, "FCTieMod", "StartVerticalPos", "LoadAt", note, -24, partnumber, skip_finale_version)
        UnlinkableNumberPropertyTest(tie_mod, "FCTieMod", "TieDirection", "LoadAt", note, 1, partnumber, skip_finale_version)
    end
end

-- Call:
AssureNonNil(finale.FCTieMod, "FCTieMod")
if not finale.FCTieMod then return end

FCTieMod_Test_Unlinkable(22, 2, 260, 2)
