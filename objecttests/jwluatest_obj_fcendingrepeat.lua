function FCEndingRepeat_PropertyTests(endingrepeat)
   NumberPropertyTest(endingrepeat, "FCEndingRepeat", "TargetTrigger",  {finale.REPTARGET_NEXTENDING,
            finale.REPTARGET_MEASURENUM, finale.REPTARGET_FORWARDS, finale.REPTARGET_NEVERSKIPENDING})
   BoolPropertyTest(endingrepeat, "FCEndingRepeat", "IndividualPositioning")
   NumberPropertyTest_RO(endingrepeat, "FCEndingRepeat", "PassNumbersCount")
    NumberPropertyTest(endingrepeat, "FCEndingRepeat", "ShowMode", 
            {finale.REPSHOW_ALL, finale.REPSHOW_TOPSTAFF, finale.REPSHOW_STAFFLIST})       
   BoolPropertyTest(endingrepeat, "FCEndingRepeat", "SkipOnIgnore")
   NumberPropertyTest(endingrepeat, "FCEndingRepeat", "StaffListID", {0, 2, 8})
   NumberPropertyTest(endingrepeat, "FCEndingRepeat", "TargetMeasure", {-5, -1, 0, 1, 10})   
   NumberPropertyTest(endingrepeat, "FCEndingRepeat", "VerticalLeftBracketPosition", {-345, 0, 456})
   NumberPropertyTest(endingrepeat, "FCEndingRepeat", "VerticalRightBracketPosition", {-346, 0, 457})
   NumberPropertyTest(endingrepeat, "FCEndingRepeat", "VerticalTextPosition", {-347, 0, 458})   
   NumberPropertyTest(endingrepeat, "FCEndingRepeat", "VerticalTopBracketPosition", {-348, 0, 459})
   NumberPropertyTest(endingrepeat, "FCEndingRepeat", "HorizontalLeftBracketPosition", {-342, 0, 453})
   NumberPropertyTest(endingrepeat, "FCEndingRepeat", "HorizontalRightBracketPosition", {-343, 0, 454})
   NumberPropertyTest(endingrepeat, "FCEndingRepeat", "HorizontalTextPosition", {-344, 0, 455})
end

-- Call:
local endingrepeat = finale.FCEndingRepeat()
AssureTrue(endingrepeat:Load(4))
FCEndingRepeat_PropertyTests(endingrepeat)



function FCEndingRepeat_ValueTests_ItemNo4(endingrepeat)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "HorizontalLeftBracketPosition", 0)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "HorizontalRightBracketPosition", 0)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "HorizontalTextPosition", 24)
   BoolValuePropertyTest(endingrepeat, "FCEndingRepeat", "IndividualPositioning", true)
   NumberValuePropertyTest_RO(endingrepeat, "FCEndingRepeat", "PassNumbersCount", 2)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "ShowMode", finale.REPSHOW_ALL)
   BoolValuePropertyTest(endingrepeat, "FCEndingRepeat", "SkipOnIgnore", true)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "StaffListID", 0)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "TargetMeasure", 0)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "TargetTrigger", finale.REPTARGET_NEXTENDING)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "VerticalLeftBracketPosition", 0)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "VerticalRightBracketPosition", 0)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "VerticalTextPosition", 24)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "VerticalTopBracketPosition", 0)
end


-- Call:
local endingrepeat = finale.FCEndingRepeat()
AssureTrue(endingrepeat:Load(4))
FCEndingRepeat_ValueTests_ItemNo4(endingrepeat)



function FCEndingRepeat_ValueTests_ItemNo5(endingrepeat)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "HorizontalLeftBracketPosition", 23)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "HorizontalRightBracketPosition", -2)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "HorizontalTextPosition", 1)
   BoolValuePropertyTest(endingrepeat, "FCEndingRepeat", "IndividualPositioning", false)
   NumberValuePropertyTest_RO(endingrepeat, "FCEndingRepeat", "PassNumbersCount", 1)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "ShowMode", finale.REPSHOW_TOPSTAFF)
   BoolValuePropertyTest(endingrepeat, "FCEndingRepeat", "SkipOnIgnore", true)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "StaffListID", 0)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "TargetMeasure", 8)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "TargetTrigger", finale.REPTARGET_MEASURENUM)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "VerticalLeftBracketPosition", -8)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "VerticalRightBracketPosition", -37)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "VerticalTextPosition", 32)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "VerticalTopBracketPosition", 0)
end


-- Call:
local endingrepeat = finale.FCEndingRepeat()
AssureTrue(endingrepeat:Load(5))
FCEndingRepeat_ValueTests_ItemNo5(endingrepeat)



function FCEndingRepeat_ValueTests_ItemNo6(endingrepeat)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "HorizontalLeftBracketPosition", 0)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "HorizontalRightBracketPosition", 0)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "HorizontalTextPosition", 24)
   BoolValuePropertyTest(endingrepeat, "FCEndingRepeat", "IndividualPositioning", true)
   NumberValuePropertyTest_RO(endingrepeat, "FCEndingRepeat", "PassNumbersCount", 1)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "ShowMode", finale.REPSHOW_ALL)
   BoolValuePropertyTest(endingrepeat, "FCEndingRepeat", "SkipOnIgnore", false)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "StaffListID", 0)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "TargetMeasure", 1)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "TargetTrigger", finale.REPTARGET_FORWARDS)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "VerticalLeftBracketPosition", 0)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "VerticalRightBracketPosition", 0)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "VerticalTextPosition", 24)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "VerticalTopBracketPosition", 0)
end


-- Call:
local endingrepeat = finale.FCEndingRepeat()
AssureTrue(endingrepeat:Load(6))
FCEndingRepeat_ValueTests_ItemNo6(endingrepeat)



function FCEndingRepeat_ValueTests_ItemNo7(endingrepeat)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "HorizontalLeftBracketPosition", 0)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "HorizontalRightBracketPosition", 0)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "HorizontalTextPosition", 24)
   BoolValuePropertyTest(endingrepeat, "FCEndingRepeat", "IndividualPositioning", true)
   NumberValuePropertyTest_RO(endingrepeat, "FCEndingRepeat", "PassNumbersCount", 1)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "ShowMode", finale.REPSHOW_TOPSTAFF)
   BoolValuePropertyTest(endingrepeat, "FCEndingRepeat", "SkipOnIgnore", true)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "StaffListID", 0)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "TargetMeasure", 0)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "TargetTrigger", finale.REPTARGET_NEVERSKIPENDING)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "VerticalLeftBracketPosition", 0)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "VerticalRightBracketPosition", 0)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "VerticalTextPosition", 24)
   NumberValuePropertyTest(endingrepeat, "FCEndingRepeat", "VerticalTopBracketPosition", 0)
end


-- Call:
local endingrepeat = finale.FCEndingRepeat()
AssureTrue(endingrepeat:Load(7))
FCEndingRepeat_ValueTests_ItemNo7(endingrepeat)

