function FCNamePositionPrefs_ValueTests_Group_Full(classname, prefs)
   NumberValuePropertyTest(prefs, classname, "Alignment", finale.TEXTHORIZALIGN_RIGHT, finale.TEXTHORIZALIGN_CENTER)
   BoolValuePropertyTest(prefs, classname, "ExpandSingleWord", false)
   NumberValuePropertyTest(prefs, classname, "HorizontalPos", -72, 0)
   NumberValuePropertyTest(prefs, classname, "Justification", finale.TEXTJUSTIFY_RIGHT, finale.TEXTJUSTIFY_FORCED_FULL)
   NumberValuePropertyTest(prefs, classname, "VerticalPos", 0, 144)
end

function FCNamePositionPrefs_ValueTests_Group_Abrv(classname, prefs)
   NumberValuePropertyTest(prefs, classname, "Alignment", finale.TEXTHORIZALIGN_RIGHT, finale.TEXTHORIZALIGN_LEFT)
   BoolValuePropertyTest(prefs, classname, "ExpandSingleWord", false)
   NumberValuePropertyTest(prefs, classname, "HorizontalPos", -72, 0)
   NumberValuePropertyTest(prefs, classname, "Justification", finale.TEXTJUSTIFY_RIGHT, finale.TEXTJUSTIFY_FULL)
   NumberValuePropertyTest(prefs, classname, "VerticalPos", 0, 144)
end

function FCNamePositionPrefs_ValueTests_Staff_Full(classname, prefs)
   NumberValuePropertyTest(prefs, classname, "Alignment", finale.TEXTHORIZALIGN_RIGHT, finale.TEXTHORIZALIGN_CENTER)
   BoolValuePropertyTest(prefs, classname, "ExpandSingleWord", false)
   NumberValuePropertyTest(prefs, classname, "HorizontalPos", -72, 0)
   NumberValuePropertyTest(prefs, classname, "Justification", finale.TEXTJUSTIFY_RIGHT, finale.TEXTJUSTIFY_LEFT)
   NumberValuePropertyTest(prefs, classname, "VerticalPos", -16, 144)
end

function FCNamePositionPrefs_ValueTests_Staff_Abrv(classname, prefs)
   NumberValuePropertyTest(prefs, classname, "Alignment", finale.TEXTHORIZALIGN_RIGHT, finale.TEXTHORIZALIGN_LEFT)
   BoolValuePropertyTest(prefs, classname, "ExpandSingleWord", false)
   NumberValuePropertyTest(prefs, classname, "HorizontalPos", -72, 0)
   NumberValuePropertyTest(prefs, classname, "Justification", finale.TEXTJUSTIFY_RIGHT, finale.TEXTJUSTIFY_CENTER)
   NumberValuePropertyTest(prefs, classname, "VerticalPos", -16, 144)
end

-- Call:
local group_prefs_full = finale.FCGroupNamePositionPrefs()
AssureTrue(group_prefs_full:LoadFull(), "FCGroupNamePositionPrefs::LoadFull")
FCNamePositionPrefs_ValueTests_Group_Full("FCGroupNamePositionPrefs", group_prefs_full)
local group_prefs_abrv = finale.FCGroupNamePositionPrefs()
AssureTrue(group_prefs_abrv:LoadAbbreviated(), "FCGroupNamePositionPrefs::LoadAbbreviated")
FCNamePositionPrefs_ValueTests_Group_Abrv("FCGroupNamePositionPrefs", group_prefs_abrv)

local staff_prefs_full = finale.FCStaffNamePositionPrefs()
AssureTrue(staff_prefs_full:LoadFull(), "FCStaffNamePositionPrefs::LoadFull")
FCNamePositionPrefs_ValueTests_Staff_Full("FCStaffNamePositionPrefs", staff_prefs_full)
local staff_prefs_abrv = finale.FCStaffNamePositionPrefs()
AssureTrue(staff_prefs_abrv:LoadAbbreviated(), "FCStaffNamePositionPrefs::LoadAbbreviated")
FCNamePositionPrefs_ValueTests_Staff_Abrv("FCStaffNamePositionPrefs", staff_prefs_abrv)
