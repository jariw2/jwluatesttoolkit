
function FCTieMod_Test_Unlinkable(measure, staff, entrynumber)
    local entry = LoadMeasureEntry(measure, staff, entrynumber)
    if AssureNonNil(entry, "LoadMeasureEntry("..measure..", "..staff..", "..entrynumber..")") then
        local tie_mod = finale.FCTieMod(finale.TIEMODTYPE_TIESTART)
        tie_mod:SetNoteEntry(entry)
        local note = entry:GetItemAt(2)
        AssureNonNil(note)
        UnlinkableNumberPropertyTest(tie_mod, "FCTieMod", "StartVerticalPos", "LoadAt", note, -24, 2, 0x1b200000) end
end

-- Call:
AssureNonNil(finale.FCTieMod, "FCTieMod")
if not finale.FCTieMod then return end

FCTieMod_Test_Unlinkable(22, 2, 260)
