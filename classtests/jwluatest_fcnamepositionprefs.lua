function FCNamePositionPrefs_PropertyTests(classname, prefs)
   NumberPropertyTest(prefs, classname, "Justification", {finale.TEXTJUSTIFY_LEFT, finale.TEXTJUSTIFY_RIGHT, finale.TEXTJUSTIFY_CENTER,
      finale.TEXTJUSTIFY_FULL, finale.TEXTJUSTIFY_FORCED_FULL})
   NumberPropertyTest(prefs, classname, "Alignment", {finale.TEXTHORIZALIGN_LEFT, finale.TEXTHORIZALIGN_RIGHT, finale.TEXTHORIZALIGN_CENTER})
   NumberPropertyTest(prefs, classname, "HorizontalPos", {-144, 0, 144})
   NumberPropertyTest(prefs, classname, "VerticalPos", {-144, 0, 144})
end

-- Call:
local group_prefs_full = finale.FCGroupNamePositionPrefs()
AssureTrue(group_prefs_full:LoadFull(), "FCGroupNamePositionPrefs::LoadFull")
FCNamePositionPrefs_PropertyTests("FCGroupNamePositionPrefs", group_prefs_full)
local group_prefs_abrv = finale.FCGroupNamePositionPrefs()
AssureTrue(group_prefs_abrv:LoadAbbreviated(), "FCGroupNamePositionPrefs::LoadAbbreviated")
FCNamePositionPrefs_PropertyTests("FCGroupNamePositionPrefs", group_prefs_abrv)

local staff_prefs_full = finale.FCStaffNamePositionPrefs()
AssureTrue(staff_prefs_full:LoadFull(), "FCStaffNamePositionPrefs::LoadFull")
FCNamePositionPrefs_PropertyTests("FCStaffNamePositionPrefs", staff_prefs_full)
local staff_prefs_abrv = finale.FCStaffNamePositionPrefs()
AssureTrue(staff_prefs_abrv:LoadAbbreviated(), "FCStaffNamePositionPrefs::LoadAbbreviated")
FCNamePositionPrefs_PropertyTests("FCStaffNamePositionPrefs", staff_prefs_abrv)
