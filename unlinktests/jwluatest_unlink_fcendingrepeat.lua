
function FCEndingRepeat_Test_Unlinkable(measure, partnumber)
    local obj = finale.FCEndingRepeat()
    UnlinkableNumberPropertyTest(obj, "FCEndingRepeat", "VerticalTopBracketPosition", "Load", measure, 24, partnumber)
    UnlinkableNumberPropertyTest(obj, "FCEndingRepeat", "HorizontalLeftBracketPosition", "Load", measure, -24, partnumber)
    UnlinkableNumberPropertyTest(obj, "FCEndingRepeat", "HorizontalTextPosition", "Load", measure, 24, partnumber)
    UnlinkableNumberPropertyTest(obj, "FCEndingRepeat", "VerticalTextPosition", "Load", measure, -24, partnumber)
end

-- Call:
FCEndingRepeat_Test_Unlinkable(5, staff_to_part[3])
