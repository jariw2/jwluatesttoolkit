
function FCBeamMod_Test_Unlinkable(measure, staff, entrynumber)
    local entry = LoadMeasureEntry(measure, staff, entrynumber)
    if AssureNonNil(entry, "LoadMeasureEntry("..measure..", "..staff..", "..entrynumber..")") then
        local beammod = finale.FCBeamMod()
        beammod:SetNoteEntry(entry)
        UnlinkableNumberPropertyTest(beammod, "FCBeamMod", "LeftHorizontalOffset", "LoadFirst", nil, -24, staff_to_part[staff])
        UnlinkableNumberPropertyTest(beammod, "FCBeamMod", "LeftVerticalOffset", "LoadFirst", nil, 24, staff_to_part[staff])
        UnlinkableNumberPropertyTest(beammod, "FCBeamMod", "RightHorizontalOffset", "LoadFirst", nil, 24, staff_to_part[staff])
        UnlinkableNumberPropertyTest(beammod, "FCBeamMod", "RightVerticalOffset", "LoadFirst", nil, -24, staff_to_part[staff])
        UnlinkableNumberPropertyTest(beammod, "FCBeamMod", "Thickness", "LoadFirst", nil, 128, staff_to_part[staff])
    end
end

-- Call:
FCBeamMod_Test_Unlinkable(6, 2, 125)
FCBeamMod_Test_Unlinkable(6, 2, 129)
