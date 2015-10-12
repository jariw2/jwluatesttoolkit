function FCBackwardRepeat_PropertyTests(backwardrepeat)
   NumberPropertyTest(backwardrepeat, "FCBackwardRepeat", "Action", {finale.REPACTION_ALWAYSJUMP, finale.REPACTION_JUMPONPASS, finale.REPACTION_PLAYSECTION})
   NumberPropertyTest(backwardrepeat, "FCBackwardRepeat", "BottomBracketPosition", {-162, 0, 333})
   BoolPropertyTest(backwardrepeat, "FCBackwardRepeat", "IndividualPositioning")
   NumberPropertyTest(backwardrepeat, "FCBackwardRepeat", "LeftBracketPosition", {-161, 0, 332})
   BoolPropertyTest(backwardrepeat, "FCBackwardRepeat", "ResetOnRepeatAction")
   NumberPropertyTest(backwardrepeat, "FCBackwardRepeat", "RightBracketPosition", {-160, 0, 331})
   NumberPropertyTest(backwardrepeat, "FCBackwardRepeat", "ShowMode", {finale.REPSHOW_TOPSTAFF, finale.REPSHOW_STAFFLIST, finale.REPSHOW_ALL} )
   NumberPropertyTest(backwardrepeat, "FCBackwardRepeat", "StaffListID", {0, 2, 7})
   NumberPropertyTest(backwardrepeat, "FCBackwardRepeat", "TargetMeasure", {-5, 0, 12})
   NumberPropertyTest(backwardrepeat, "FCBackwardRepeat", "TargetTrigger", {finale.REPTARGET_NEXTENDING, finale.REPTARGET_MEASURENUM, finale.REPTARGET_FORWARDS })
   NumberPropertyTest(backwardrepeat, "FCBackwardRepeat", "TopBracketPosition", {-159, 0, 330})
   NumberPropertyTest(backwardrepeat, "FCBackwardRepeat", "TotalPasses", {0, 1, 6})
end


-- Call:
local backwardrepeat = finale.FCBackwardRepeat()
AssureTrue(backwardrepeat:Load(8))
FCBackwardRepeat_PropertyTests(backwardrepeat)


function FCBackwardRepeat_ValueTests_ItemNo8(backrepeat)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "Action", finale.REPACTION_PLAYSECTION)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "BottomBracketPosition", 28)
   BoolValuePropertyTest(backrepeat, "FCBackwardRepeat", "IndividualPositioning", true)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "LeftBracketPosition", 0)
   BoolValuePropertyTest(backrepeat, "FCBackwardRepeat", "ResetOnRepeatAction", false)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "RightBracketPosition", -20)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "ShowMode", finale.REPSHOW_ALL)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "StaffListID", 0)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "TargetMeasure", 1)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "TargetTrigger", finale.REPTARGET_NEXTENDING)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "TopBracketPosition", 0)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "TotalPasses", 3)
end


-- Call:
local backrepeat = finale.FCBackwardRepeat()
AssureTrue(backrepeat:Load(8))
FCBackwardRepeat_ValueTests_ItemNo8(backrepeat)


function FCBackwardRepeat_ValueTests_ItemNo9(backrepeat)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "Action", finale.REPACTION_JUMPONPASS)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "BottomBracketPosition", 0)
   BoolValuePropertyTest(backrepeat, "FCBackwardRepeat", "IndividualPositioning", false)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "LeftBracketPosition", 52)
   BoolValuePropertyTest(backrepeat, "FCBackwardRepeat", "ResetOnRepeatAction", true)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "RightBracketPosition", 0)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "ShowMode", finale.REPSHOW_TOPSTAFF)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "StaffListID", 0)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "TargetMeasure", 2)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "TargetTrigger", finale.REPTARGET_MEASURENUM)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "TopBracketPosition", -12)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "TotalPasses", 1)
end


-- Call:
local backrepeat = finale.FCBackwardRepeat()
AssureTrue(backrepeat:Load(9))
FCBackwardRepeat_ValueTests_ItemNo9(backrepeat)



function FCBackwardRepeat_ValueTests_ItemNo10(backrepeat)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "Action", finale.REPACTION_ALWAYSJUMP)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "BottomBracketPosition", 86)
   BoolValuePropertyTest(backrepeat, "FCBackwardRepeat", "IndividualPositioning", false)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "LeftBracketPosition", 26)
   BoolValuePropertyTest(backrepeat, "FCBackwardRepeat", "ResetOnRepeatAction", false)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "RightBracketPosition", -36)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "ShowMode", finale.REPSHOW_ALL)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "StaffListID", 0)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "TargetMeasure", -6)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "TargetTrigger", finale.REPTARGET_FORWARDS)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "TopBracketPosition", -32)
   NumberValuePropertyTest(backrepeat, "FCBackwardRepeat", "TotalPasses", 0)
end


-- Call:
local backrepeat = finale.FCBackwardRepeat()
AssureTrue(backrepeat:Load(10))
FCBackwardRepeat_ValueTests_ItemNo10(backrepeat)
