
function FCSeparatePlacement_Test_Unlinkable(rpt, measure, partnumber)
    if not AssureNonNil(rpt.IndividualPositioning, "FCSeparatePlacement_Test_Unlinkable repeat has individual positioning property.") then return end
    -- note that for some Load() calls, the second parameter is not necessary, but Lua doesn't care about extra parameters
    if not AssureTrue(rpt:Load(measure, 0), "FCSeparatePlacement_Test_Unlinkable load succeeded.") then return end
    if not AssureTrue(rpt.IndividualPositioning, "FCSeparatePlacement_Test_Unlinkable repeat marked for individual positioning.") then return end
    for _, separates in pairs({rpt:CreateSeparatePlacements(), rpt.CreateTextSeparatePlacements and rpt:CreateTextSeparatePlacements()}) do
        if AssureNonNil(separates, "FCSeparatePlacement_Test_Unlinkable separates collection created.") then
            AssureTrue(separates.Count > 0, "FCSeparatePlacement_Test_Unlinkable separates exist.")
            for separate in each(separates) do
                UnlinkableNumberPropertyTest(separate, "FCSeparatePlacement", "HorizontalOffset1", "Reload", nil, 24, partnumber, skip_finale_version)
                UnlinkableNumberPropertyTest(separate, "FCSeparatePlacement", "VerticalOffset1", "Reload", nil, -24, partnumber, skip_finale_version)
                UnlinkableNumberPropertyTest(separate, "FCSeparatePlacement", "HorizontalOffset2", "Reload", nil, 24, partnumber, skip_finale_version)
                UnlinkableNumberPropertyTest(separate, "FCSeparatePlacement", "VerticalOffset2", "Reload", nil, -24, partnumber, skip_finale_version)
            end
        end
    end
end

-- Call:
FCSeparatePlacement_Test_Unlinkable(finale.FCEndingRepeat(), 4, staff_to_part[1])
FCSeparatePlacement_Test_Unlinkable(finale.FCTextRepeat(), 3, staff_to_part[2])
FCSeparatePlacement_Test_Unlinkable(finale.FCEndingRepeat(), 6, staff_to_part[1])
