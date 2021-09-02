function FCGroup_PropertyTests(group)
   NumberPropertyTest(group, "FCGroup", "AbbreviatedNameAlign", {finale.TEXTHORIZALIGN_LEFT, finale.TEXTHORIZALIGN_RIGHT, finale.TEXTHORIZALIGN_CENTER})
   BoolPropertyTest(group, "FCGroup", "AbbreviatedNameExpandSingle")
   NumberPropertyTest(group, "FCGroup", "AbbreviatedNameHorizontalOffset", {-144, 0, 144})
   NumberPropertyTest(group, "FCGroup", "AbbreviatedNameJustify", {finale.TEXTJUSTIFY_LEFT, finale.TEXTJUSTIFY_RIGHT, finale.TEXTJUSTIFY_CENTER,
      finale.TEXTJUSTIFY_FULL, finale.TEXTJUSTIFY_FORCED_FULL})
   NumberPropertyTest(group, "FCGroup", "AbbreviatedNameVerticalOffset", {-144, 0, 144})
   NumberPropertyTest(group, "FCGroup", "BarlineStyle", {finale.BARLINE_NONE, finale.BARLINE_NORMAL, finale.BARLINE_DOUBLE, finale.BARLINE_DASHED,
      finale.BARLINE_THICK, finale.BARLINE_FINAL, finale.BARLINE_TICK, finale.BARLINE_SHAPE, finale.BARLINE_DEFAULT})
   BoolPropertyTest(group, "FCGroup", "BarlineUse")
   NumberPropertyTest(group, "FCGroup", "BracketHorizontalPos", {-144, 0, 144})
   BoolPropertyTest(group, "FCGroup", "BracketSingleStaff")
   NumberPropertyTest(group, "FCGroup", "BracketStyle", {finale.GRBRAC_NONE, finale.GRBRAC_PLAIN, finale.GRBRAC_CHORUS, finale.GRBRAC_PIANO,
      finale.GRBRAC_REVERSECHORUS, finale.GRBRAC_REVERSEPIANO, finale.GRBRAC_CURVEDCHORUS, finale.GRBRAC_REVERSECURVEDCHORUS,
      finale.GRBRAC_DESK, finale.GRBRAC_REVERSEDESK})
   NumberPropertyTest(group, "FCGroup", "BracketVerticalBottomPos", {-144, 0, 144})
   NumberPropertyTest(group, "FCGroup", "BracketVerticalTopPos", {-144, 0, 144})
   NumberPropertyTest(group, "FCGroup", "DrawBarlineMode", {finale.GROUPBARLINESTYLE_ONLYON, finale.GROUPBARLINESTYLE_ONLYBETWEEN, finale.GROUPBARLINESTYLE_THROUGH})
   NumberPropertyTest(group, "FCGroup", "EmptyStaffHide", {finale.GROUPSTAFFHIDE_NORMAL, finale.GROUPSTAFFHIDE_ALLEMPTY, finale.GROUPSTAFFHIDE_NEVER})
   NumberPropertyTest(group, "FCGroup", "EndMeasure", {1, 100, 1000})
   NumberPropertyTest(group, "FCGroup", "EndStaff", {1, 10, 40})
   NumberPropertyTest(group, "FCGroup", "FullNameAlign", {finale.TEXTHORIZALIGN_LEFT, finale.TEXTHORIZALIGN_RIGHT, finale.TEXTHORIZALIGN_CENTER})
   BoolPropertyTest(group, "FCGroup", "FullNameExpandSingle")
   NumberPropertyTest(group, "FCGroup", "FullNameHorizontalOffset", {-144, 0, 144})
   NumberPropertyTest(group, "FCGroup", "FullNameJustify", {finale.TEXTJUSTIFY_LEFT, finale.TEXTJUSTIFY_RIGHT, finale.TEXTJUSTIFY_CENTER,
      finale.TEXTJUSTIFY_FULL, finale.TEXTJUSTIFY_FORCED_FULL})
   NumberPropertyTest(group, "FCGroup", "FullNameVerticalOffset", {-144, 0, 144})
   BoolPropertyTest(group, "FCGroup", "ShowGroupName")
   NumberPropertyTest(group, "FCGroup", "StartMeasure", {1, 100, 1000})
   NumberPropertyTest(group, "FCGroup", "StartStaff", {1, 10, 40})
   BoolPropertyTest(group, "FCGroup", "UseAbbreviatedNamePositioning")
   BoolPropertyTest(group, "FCGroup", "UseFullNamePositioning")
end

-- Call:
local group = finale.FCGroup()
AssureTrue(group:Load(0, 1))
FCGroup_PropertyTests(group)
