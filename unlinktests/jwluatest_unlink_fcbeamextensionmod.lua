
function FCBeamExtensionMod_Test_Unlinkable(measure, staff, entrynumber)
    local entry = LoadMeasureEntry(measure, staff, entrynumber)
    if AssureNonNil(entry, "LoadMeasureEntry("..measure..", "..staff..", "..entrynumber..")") then
        local beamextmod = finale.FCBeamExtensionMod()
        beamextmod:SetNoteEntry(entry)
        UnlinkableNumberPropertyTest(beamextmod, "FCBeamExtensionMod", "Extend8th", "LoadFirst", nil, -24, staff_to_part[staff]) 
        UnlinkableNumberPropertyTest(beamextmod, "FCBeamExtensionMod", "Extend16th", "LoadFirst", nil, -24, staff_to_part[staff]) 
        UnlinkableNumberPropertyTest(beamextmod, "FCBeamExtensionMod", "Extend32nd", "LoadFirst", nil, -24, staff_to_part[staff]) 
        UnlinkableNumberPropertyTest(beamextmod, "FCBeamExtensionMod", "Extend64th", "LoadFirst", nil, -24, staff_to_part[staff]) 
        UnlinkableNumberPropertyTest(beamextmod, "FCBeamExtensionMod", "Extend128th", "LoadFirst", nil, -24, staff_to_part[staff]) 
        UnlinkableNumberPropertyTest(beamextmod, "FCBeamExtensionMod", "Extend256th", "LoadFirst", nil, -24, staff_to_part[staff]) 
        UnlinkableNumberPropertyTest(beamextmod, "FCBeamExtensionMod", "LeftAdjustment", "LoadFirst", nil, -24, staff_to_part[staff])
        UnlinkableNumberPropertyTest(beamextmod, "FCBeamExtensionMod", "RightAdjustment", "LoadFirst", nil, -24, staff_to_part[staff])
    end
end

-- Call:
if not AssureNonNil(finale.FCBeamExtensionMod, "FCBeamExtensionMod") then return end
FCBeamExtensionMod_Test_Unlinkable(16, 2, 278)
