
function FCBackwardRepeat_Test_Unlinkable(measure, partnumber)
    local obj = finale.FCBackwardRepeat()
    UnlinkableNumberPropertyTest(obj, "FCBackwardRepeat", "TopBracketPosition", "Load", measure, 24, partnumber)
    UnlinkableNumberPropertyTest(obj, "FCBackwardRepeat", "BottomBracketPosition", "Load", measure, -24, partnumber)
    UnlinkableNumberPropertyTest(obj, "FCBackwardRepeat", "LeftBracketPosition", "Load", measure, 24, partnumber)
    UnlinkableNumberPropertyTest(obj, "FCBackwardRepeat", "RightBracketPosition", "Load", measure, -24, partnumber)
end

-- Call:
FCBackwardRepeat_Test_Unlinkable(8, staff_to_part[1])
FCBackwardRepeat_Test_Unlinkable(9, staff_to_part[2])
FCBackwardRepeat_Test_Unlinkable(10, staff_to_part[3])
