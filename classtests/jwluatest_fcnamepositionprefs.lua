function FCNamePositionPrefs_PropertyTests(classname, prefs)
   NumberPropertyTest(prefs, classname, "Justification", {finale.TEXTJUSTIFY_LEFT, finale.TEXTJUSTIFY_RIGHT, finale.TEXTJUSTIFY_CENTER,
      finale.TEXTJUSTIFY_FULL, finale.TEXTJUSTIFY_FORCED_FULL})
   NumberPropertyTest(prefs, classname, "Alignment", {finale.TEXTHORIZALIGN_LEFT, finale.TEXTHORIZALIGN_RIGHT, finale.TEXTHORIZALIGN_CENTER})
   NumberPropertyTest(prefs, classname, "HorizontalPos", {-144, 0, 144})
   NumberPropertyTest(prefs, classname, "VerticalPos", {-144, 0, 144})
end

-- Call:
local group_prefs = finale.FCGroupNamePositionPrefs()
AssureTrue(group_prefs:Load(1))
FCNamePositionPrefs_PropertyTests("FCGroupNamePositionPrefs", group_prefs)

local staff_prefs = finale.FCStaffNamePositionPrefs()
AssureTrue(staff_prefs:Load(1))
FCNamePositionPrefs_PropertyTests("FCStaffNamePositionPrefs", staff_prefs)
