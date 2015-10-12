function FCCategoryDef_PropertyTests(catdef)
   BoolPropertyTest(catdef, "FCCategoryDef", "BreakMMRest")
   NumberPropertyTest(catdef, "FCCategoryDef", "HorizontalAlignmentPoint", {finale.ALIGNHORIZ_CLICKPOS,
            finale.ALIGNHORIZ_LEFTOFALLNOTEHEAD, finale.ALIGNHORIZ_LEFTOFPRIMARYNOTEHEAD,
            finale.ALIGNHORIZ_STEM, finale.ALIGNHORIZ_CENTERPRIMARYNOTEHEAD,
            finale.ALIGNHORIZ_CENTERALLNOTEHEADS, finale.ALIGNHORIZ_RIGHTALLNOTEHEADS,
            finale.ALIGNHORIZ_LEFTBARLINE, finale.ALIGNHORIZ_TIMESIGSTART,
            finale.ALIGNHORIZ_AFTERCLEFKEYTIMEREPEAT, finale.ALIGNHORIZ_STARTOFMUSIC,
            finale.ALIGNHORIZ_CENTERBETWEENBARLINES, finale.ALIGNHORIZ_CENTEROVERUNDERMUSIC, finale.ALIGNHORIZ_RIGHTBARLINE})
   NumberPropertyTest(catdef, "FCCategoryDef", "HorizontalJustification", {finale.EXPRJUSTIFY_LEFT, finale.EXPRJUSTIFY_CENTER, finale.EXPRJUSTIFY_RIGHT})
   NumberPropertyTest(catdef, "FCCategoryDef", "HorizontalOffset", {-100, 0, 100})
   NumberPropertyTest_RO(catdef, "FCCategoryDef", "ID")
   BoolPropertyTest(catdef, "FCCategoryDef", "OverrideStaffList")
   if Is2014BOrAbove() then
        NumberPropertyTest(catdef, "FCCategoryDef", "StaffListID", {1, 4, 8})
   end
   BoolPropertyTest(catdef, "FCCategoryDef", "UserCreated")
   NumberPropertyTest(catdef, "FCCategoryDef", "VerticalAlignmentPoint", {finale.ALIGNVERT_CLICKPOS, finale.ALIGNVERT_STAFF_REFERENCE_LINE, 
            finale.ALIGNVERT_ABOVE_STAFF_BASELINE, finale.ALIGNVERT_BELOW_STAFF_BASELINE,
            finale.ALIGNVERT_TOPNOTE, finale.ALIGNVERT_BOTTOMNOTE, finale.ALIGNVERT_ABOVEENTRY,
            finale.ALIGNVERT_BELOWENTRY, finale.ALIGNVERT_ABOVE_STAFF_BASELINE_OR_ENTRY,
            finale.ALIGNVERT_BELOW_STAFF_BASELINE_OR_ENTRY})
   NumberPropertyTest(catdef, "FCCategoryDef", "VerticalBaselineOffset", {-150, 0, 150})
   NumberPropertyTest(catdef, "FCCategoryDef", "VerticalEntryOffset", {-200, 0, 200})
end


-- Call:
local catdef = finale.FCCategoryDef()
AssureTrue(catdef:Load(1))
FCCategoryDef_PropertyTests(catdef)

