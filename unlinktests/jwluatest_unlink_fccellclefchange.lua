
function FCCellClefChange_Test_Unlinkable(measure, staff)
    local frame_hold = finale.FCCellFrameHold()
    frame_hold:ConnectCell(finale.FCCell(measure, staff))
    frame_hold:Load()
    if not AssureTrue(frame_hold:Load(), "FCCellClefChange_Test_Unlinkable FCCellFrameHold:Load()") then return end
    if not AssureTrue(frame_hold.IsClefList, "FCCellClefChange_Test_Unlinkable frame_hold.IsClefList") then return end
    local clef_changes = frame_hold:CreateCellClefChanges()
    for clef_change in each(clef_changes) do
        if clef_change.MeasurePos > 0 then
            UnlinkableNumberPropertyTest(clef_change, "FCCellClefChange", "HorizontalOffset", "Reload", nil, -144, staff_to_part[staff], skip_finale_version)
            UnlinkableNumberPropertyTest(clef_change, "FCCellClefChange", "VerticalOffset", "Reload", nil, 12, staff_to_part[staff], skip_finale_version)
        end
    end
end

-- Call:
FCCellClefChange_Test_Unlinkable(6, 2)
