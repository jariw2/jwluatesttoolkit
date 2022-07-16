
function FCDotMod_Test_Unlinkable(measure, staff, entrynumber, partnumber)
    local entry = LoadMeasureEntry(measure, staff, entrynumber)
    if AssureNonNil(entry, "LoadMeasureEntry("..measure..", "..staff..", "..entrynumber..")") then
        for note in each(entry) do
            local dot_mod = finale.FCDotMod()
            dot_mod:SetNoteEntry(entry)
            UnlinkableNumberPropertyTest(dot_mod, "FCDotMod", "HorizontalPos", "LoadAt", note, 12, partnumber, skip_finale_version)
            UnlinkableNumberPropertyTest(dot_mod, "FCDotMod", "InterDotSpacing", "LoadAt", note, 2, partnumber, skip_finale_version)
            UnlinkableNumberPropertyTest(dot_mod, "FCDotMod", "VerticalPos", "LoadAt", note, -12, partnumber, skip_finale_version)
        end
    end
end

-- Call:
FCDotMod_Test_Unlinkable(2, 1, 271, 3)
