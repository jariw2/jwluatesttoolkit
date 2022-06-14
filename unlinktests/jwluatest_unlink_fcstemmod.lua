
function FCStemMod_Test_Unlinkable(measure, staff, entrynumber)
    local entry = LoadMeasureEntry(measure, staff, entrynumber)
    if AssureNonNil(entry, "LoadMeasureEntry("..measure..", "..staff..", "..entrynumber..")") then
        local stemmmod = finale.FCStemMod()
        stemmmod:SetNoteEntry(entry)
        UnlinkableNumberPropertyTest(stemmmod, "FCStemMod", "VerticalUpOffset", "LoadFirst", nil, 24, staff_to_part[staff]) 
        UnlinkableNumberPropertyTest(stemmmod, "FCStemMod", "VerticalDownOffset", "LoadFirst", nil, -24, staff_to_part[staff]) 
        UnlinkableNumberPropertyTest(stemmmod, "FCStemMod", "HorizontalUpOffset", "LoadFirst", nil, -24, staff_to_part[staff]) 
        UnlinkableNumberPropertyTest(stemmmod, "FCStemMod", "HorizontalDownOffset", "LoadFirst", nil, -24, staff_to_part[staff]) 
    end
end

-- Call:
FCStemMod_Test_Unlinkable(5, 3, 135)
