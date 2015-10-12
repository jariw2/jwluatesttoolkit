function FCCategoryDef_ValueTests_ItemNo1(categorydef)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "BreakMMRest", false)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalAlignmentPoint", finale.ALIGNHORIZ_CLICKPOS)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalJustification", finale.EXPRJUSTIFY_CENTER)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalOffset", 0)
   NumberValuePropertyTest_RO(categorydef, "FCCategoryDef", "ID", 1)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "OverrideStaffList", false)
    if Is2014BOrAbove() then
        NumberValuePropertyTest(categorydef, "FCCategoryDef", "StaffListID", 1)
    end
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "UserCreated", false)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalAlignmentPoint", finale.ALIGNVERT_CLICKPOS)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalBaselineOffset", 16)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalEntryOffset", -72)
end


-- Call:
local categorydef = finale.FCCategoryDef()
AssureTrue(categorydef:Load(1))
FCCategoryDef_ValueTests_ItemNo1(categorydef)


function FCCategoryDef_ValueTests_ItemNo2(categorydef)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "BreakMMRest", true)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalAlignmentPoint", finale.ALIGNHORIZ_LEFTOFALLNOTEHEAD)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalJustification", finale.EXPRJUSTIFY_LEFT)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalOffset", 1)
   NumberValuePropertyTest_RO(categorydef, "FCCategoryDef", "ID", 2)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "OverrideStaffList", true)
    if Is2014BOrAbove() then
        NumberValuePropertyTest(categorydef, "FCCategoryDef", "StaffListID", 1)
    end
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "UserCreated", false)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalAlignmentPoint", finale.ALIGNVERT_STAFF_REFERENCE_LINE)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalBaselineOffset", 0)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalEntryOffset", 0)
end


-- Call:
local categorydef = finale.FCCategoryDef()
AssureTrue(categorydef:Load(2))
FCCategoryDef_ValueTests_ItemNo2(categorydef)


function FCCategoryDef_ValueTests_ItemNo3(categorydef)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "BreakMMRest", false)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalAlignmentPoint", finale.ALIGNHORIZ_LEFTOFPRIMARYNOTEHEAD)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalJustification", finale.EXPRJUSTIFY_RIGHT)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalOffset", 2)
   NumberValuePropertyTest_RO(categorydef, "FCCategoryDef", "ID", 3)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "OverrideStaffList", true)
    if Is2014BOrAbove() then
        NumberValuePropertyTest(categorydef, "FCCategoryDef", "StaffListID", 1)
    end
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "UserCreated", false)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalAlignmentPoint", finale.ALIGNVERT_ABOVE_STAFF_BASELINE)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalBaselineOffset", -16)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalEntryOffset", 36)
end


-- Call:
local categorydef = finale.FCCategoryDef()
AssureTrue(categorydef:Load(3))
FCCategoryDef_ValueTests_ItemNo3(categorydef)


function FCCategoryDef_ValueTests_ItemNo4(categorydef)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "BreakMMRest", false)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalAlignmentPoint", finale.ALIGNHORIZ_STEM)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalJustification", finale.EXPRJUSTIFY_LEFT)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalOffset", 3)
   NumberValuePropertyTest_RO(categorydef, "FCCategoryDef", "ID", 4)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "OverrideStaffList", false)
    if Is2014BOrAbove() then
        NumberValuePropertyTest(categorydef, "FCCategoryDef", "StaffListID", 1)
    end
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "UserCreated", false)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalAlignmentPoint", finale.ALIGNVERT_BELOW_STAFF_BASELINE)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalBaselineOffset", 1)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalEntryOffset", -36)
end


-- Call:
local categorydef = finale.FCCategoryDef()
AssureTrue(categorydef:Load(4))
FCCategoryDef_ValueTests_ItemNo4(categorydef)


function FCCategoryDef_ValueTests_ItemNo5(categorydef)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "BreakMMRest", false)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalAlignmentPoint", finale.ALIGNHORIZ_CENTERPRIMARYNOTEHEAD)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalJustification", finale.EXPRJUSTIFY_LEFT)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalOffset", 4)
   NumberValuePropertyTest_RO(categorydef, "FCCategoryDef", "ID", 5)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "OverrideStaffList", false)
    if Is2014BOrAbove() then
        NumberValuePropertyTest(categorydef, "FCCategoryDef", "StaffListID", 1)
    end
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "UserCreated", false)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalAlignmentPoint", finale.ALIGNVERT_TOPNOTE)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalBaselineOffset", -16)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalEntryOffset", 36)
end


-- Call:
local categorydef = finale.FCCategoryDef()
AssureTrue(categorydef:Load(5))
FCCategoryDef_ValueTests_ItemNo5(categorydef)


function FCCategoryDef_ValueTests_ItemNo6(categorydef)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "BreakMMRest", true)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalAlignmentPoint", finale.ALIGNHORIZ_CENTERALLNOTEHEADS)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalJustification", finale.EXPRJUSTIFY_LEFT)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalOffset", 100)
   NumberValuePropertyTest_RO(categorydef, "FCCategoryDef", "ID", 6)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "OverrideStaffList", true)
    if Is2014BOrAbove() then
        NumberValuePropertyTest(categorydef, "FCCategoryDef", "StaffListID", 1)
    end
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "UserCreated", false)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalAlignmentPoint", finale.ALIGNVERT_BOTTOMNOTE)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalBaselineOffset", 0)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalEntryOffset", 0)
end


-- Call:
local categorydef = finale.FCCategoryDef()
AssureTrue(categorydef:Load(6))
FCCategoryDef_ValueTests_ItemNo6(categorydef)


function FCCategoryDef_ValueTests_ItemNo7(categorydef)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "BreakMMRest", false)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalAlignmentPoint", 3)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalJustification", finale.EXPRJUSTIFY_LEFT)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalOffset", 0)
   NumberValuePropertyTest_RO(categorydef, "FCCategoryDef", "ID", 7)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "OverrideStaffList", false)
    if Is2014BOrAbove() then
        NumberValuePropertyTest(categorydef, "FCCategoryDef", "StaffListID", 1)
    end
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "UserCreated", false)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalAlignmentPoint", 2)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalBaselineOffset", 0)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalEntryOffset", 0)
end


-- Call:
local categorydef = finale.FCCategoryDef()
AssureTrue(categorydef:Load(7))
FCCategoryDef_ValueTests_ItemNo7(categorydef)


function FCCategoryDef_ValueTests_ItemNo25(categorydef)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "BreakMMRest", false)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalAlignmentPoint",  finale.ALIGNHORIZ_RIGHTALLNOTEHEADS)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalJustification", finale.EXPRJUSTIFY_RIGHT)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalOffset", -2)
   NumberValuePropertyTest_RO(categorydef, "FCCategoryDef", "ID", 25)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "OverrideStaffList", true)
    if Is2014BOrAbove() then
        NumberValuePropertyTest(categorydef, "FCCategoryDef", "StaffListID", 1)
    end
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "UserCreated", true)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalAlignmentPoint", finale.ALIGNVERT_ABOVEENTRY)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalBaselineOffset", -16)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalEntryOffset", -12)
end


-- Call:
local categorydef = finale.FCCategoryDef()
AssureTrue(categorydef:Load(25))
FCCategoryDef_ValueTests_ItemNo25(categorydef)


function FCCategoryDef_ValueTests_ItemNo26(categorydef)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "BreakMMRest", true)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalAlignmentPoint", finale.ALIGNHORIZ_LEFTBARLINE)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalJustification", finale.EXPRJUSTIFY_RIGHT)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalOffset", -5)
   NumberValuePropertyTest_RO(categorydef, "FCCategoryDef", "ID", 26)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "OverrideStaffList", true)
    if Is2014BOrAbove() then
        NumberValuePropertyTest(categorydef, "FCCategoryDef", "StaffListID", 2)
    end
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "UserCreated", true)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalAlignmentPoint", finale.ALIGNVERT_BELOWENTRY)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalBaselineOffset", -16)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalEntryOffset", 36)
end


-- Call:
local categorydef = finale.FCCategoryDef()
AssureTrue(categorydef:Load(26))
FCCategoryDef_ValueTests_ItemNo26(categorydef)


function FCCategoryDef_ValueTests_ItemNo27(categorydef)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "BreakMMRest", false)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalAlignmentPoint", finale.ALIGNHORIZ_TIMESIGSTART)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalJustification", finale.EXPRJUSTIFY_RIGHT)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalOffset", -100)
   NumberValuePropertyTest_RO(categorydef, "FCCategoryDef", "ID", 27)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "OverrideStaffList", true)
    if Is2014BOrAbove() then
        NumberValuePropertyTest(categorydef, "FCCategoryDef", "StaffListID", 1)
    end
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "UserCreated", true)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalAlignmentPoint", finale.ALIGNVERT_ABOVE_STAFF_BASELINE_OR_ENTRY)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalBaselineOffset", -16)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalEntryOffset", 36)
end


-- Call:
local categorydef = finale.FCCategoryDef()
AssureTrue(categorydef:Load(27))
FCCategoryDef_ValueTests_ItemNo27(categorydef)


function FCCategoryDef_ValueTests_ItemNo28(categorydef)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "BreakMMRest", false)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalAlignmentPoint", finale.ALIGNHORIZ_AFTERCLEFKEYTIMEREPEAT)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalJustification", finale.EXPRJUSTIFY_RIGHT)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalOffset", 0)
   NumberValuePropertyTest_RO(categorydef, "FCCategoryDef", "ID", 28)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "OverrideStaffList", true)
    if Is2014BOrAbove() then
        NumberValuePropertyTest(categorydef, "FCCategoryDef", "StaffListID", 1)
    end
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "UserCreated", true)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalAlignmentPoint", finale.ALIGNVERT_BELOW_STAFF_BASELINE_OR_ENTRY)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalBaselineOffset", -16)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalEntryOffset", 36)
end


-- Call:
local categorydef = finale.FCCategoryDef()
AssureTrue(categorydef:Load(28))
FCCategoryDef_ValueTests_ItemNo28(categorydef)


function FCCategoryDef_ValueTests_ItemNo29(categorydef)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "BreakMMRest", false)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalAlignmentPoint", finale.ALIGNHORIZ_STARTOFMUSIC)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalJustification", finale.EXPRJUSTIFY_RIGHT)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalOffset", 0)
   NumberValuePropertyTest_RO(categorydef, "FCCategoryDef", "ID", 29)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "OverrideStaffList", true)
    if Is2014BOrAbove() then
        NumberValuePropertyTest(categorydef, "FCCategoryDef", "StaffListID", 1)
    end
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "UserCreated", true)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalAlignmentPoint", finale.ALIGNVERT_ABOVE_STAFF_BASELINE_OR_ENTRY)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalBaselineOffset", -16)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalEntryOffset", 36)
end


-- Call:
local categorydef = finale.FCCategoryDef()
AssureTrue(categorydef:Load(29))
FCCategoryDef_ValueTests_ItemNo29(categorydef)


function FCCategoryDef_ValueTests_ItemNo30(categorydef)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "BreakMMRest", false)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalAlignmentPoint", finale.ALIGNHORIZ_CENTERBETWEENBARLINES)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalJustification", finale.EXPRJUSTIFY_RIGHT)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalOffset", 0)
   NumberValuePropertyTest_RO(categorydef, "FCCategoryDef", "ID", 30)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "OverrideStaffList", true)
    if Is2014BOrAbove() then
        NumberValuePropertyTest(categorydef, "FCCategoryDef", "StaffListID", 1)
    end
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "UserCreated", true)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalAlignmentPoint", finale.ALIGNVERT_ABOVE_STAFF_BASELINE_OR_ENTRY)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalBaselineOffset", -16)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalEntryOffset", 36)
end


-- Call:
local categorydef = finale.FCCategoryDef()
AssureTrue(categorydef:Load(30))
FCCategoryDef_ValueTests_ItemNo30(categorydef)


function FCCategoryDef_ValueTests_ItemNo31(categorydef)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "BreakMMRest", false)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalAlignmentPoint", finale.ALIGNHORIZ_CENTEROVERUNDERMUSIC)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalJustification", finale.EXPRJUSTIFY_RIGHT)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalOffset", 0)
   NumberValuePropertyTest_RO(categorydef, "FCCategoryDef", "ID", 31)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "OverrideStaffList", true)
    if Is2014BOrAbove() then
        NumberValuePropertyTest(categorydef, "FCCategoryDef", "StaffListID", 1)
    end
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "UserCreated", true)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalAlignmentPoint", finale.ALIGNVERT_ABOVE_STAFF_BASELINE_OR_ENTRY)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalBaselineOffset", -16)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalEntryOffset", 36)
end


-- Call:
local categorydef = finale.FCCategoryDef()
AssureTrue(categorydef:Load(31))
FCCategoryDef_ValueTests_ItemNo31(categorydef)



function FCCategoryDef_ValueTests_ItemNo32(categorydef)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "BreakMMRest", false)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalAlignmentPoint", finale.ALIGNHORIZ_RIGHTBARLINE)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalJustification", finale.EXPRJUSTIFY_RIGHT)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "HorizontalOffset", 0)
   NumberValuePropertyTest_RO(categorydef, "FCCategoryDef", "ID", 32)
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "OverrideStaffList", true)
    if Is2014BOrAbove() then
        NumberValuePropertyTest(categorydef, "FCCategoryDef", "StaffListID", 1)
    end
   BoolValuePropertyTest(categorydef, "FCCategoryDef", "UserCreated", true)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalAlignmentPoint", finale.ALIGNVERT_ABOVE_STAFF_BASELINE_OR_ENTRY)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalBaselineOffset", -16)
   NumberValuePropertyTest(categorydef, "FCCategoryDef", "VerticalEntryOffset", 36)
end


-- Call:
local categorydef = finale.FCCategoryDef()
AssureTrue(categorydef:Load(32))
FCCategoryDef_ValueTests_ItemNo32(categorydef)
