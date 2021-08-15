function FCGroup_PropertyTests(group)
   NumberPropertyTest(group, "FCGroup", "BracketStyle", {finale.GRBRAC_NONE, finale.GRBRAC_PLAIN, finale.GRBRAC_CHORUS, finale.GRBRAC_PIANO,
      finale.GRBRAC_REVERSECHORUS, finale.GRBRAC_REVERSEPIANO, finale.GRBRAC_CURVEDCHORUS, finale.GRBRAC_REVERSECURVEDCHORUS,
      finale.GRBRAC_DESK, finale.GRBRAC_REVERSEDESK})
   NumberPropertyTest(group, "FCGroup", "DrawBarlineMode", {finale.GROUPBARLINESTYLE_ONLYON, finale.GROUPBARLINESTYLE_ONLYBETWEEN, finale.GROUPBARLINESTYLE_THROUGH})
   NumberPropertyTest(group, "FCGroup", "EmptyStaffHide", {finale.GROUPSTAFFHIDE_NORMAL, finale.GROUPSTAFFHIDE_ALLEMPTY, finale.GROUPSTAFFHIDE_NEVER})
end

-- Call:
local group = finale.FCGroup()
AssureTrue(group:Load(0, 1))
FCGroup_PropertyTests(group)
