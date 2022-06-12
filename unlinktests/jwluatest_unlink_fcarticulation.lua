
function FCArticulation_Test_Unlinkable(measure, staff, entrynumber, partnumber)
    local entry = LoadMeasureEntry(measure, staff, entrynumber)
    if AssureNonNil(entry, "LoadMeasureEntry("..measure..", "..staff..", "..entrynumber..")") then
        local artic = finale.FCArticulation()
        artic:SetNoteEntry(entry)
        UnlinkableNumberPropertyTest(artic, "FCArticulation", "HorizontalPos", "LoadFirst", nil, -24, partnumber) 
        UnlinkableNumberPropertyTest(artic, "FCArticulation", "VerticalPos", "LoadFirst", nil, -24, partnumber) 
    end
end

-- Call:
FCArticulation_Test_Unlinkable(6, 2, 127, 2)
