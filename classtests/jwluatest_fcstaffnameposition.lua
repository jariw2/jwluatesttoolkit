function FCStaffNamePosition_PropertyTests(classname, prefs)
   NumberPropertyTest(prefs, classname, "Alignment", {finale.TEXTHORIZALIGN_LEFT, finale.TEXTHORIZALIGN_RIGHT, finale.TEXTHORIZALIGN_CENTER})
   BoolPropertyTest(prefs, classname, "ExpandSingleWord")
   NumberPropertyTest(prefs, classname, "HorizontalOffset", {-144, 0, 144})
   NumberPropertyTest(prefs, classname, "Justification", {finale.TEXTJUSTIFY_LEFT, finale.TEXTJUSTIFY_RIGHT, finale.TEXTJUSTIFY_CENTER,
      finale.TEXTJUSTIFY_FULL, finale.TEXTJUSTIFY_FORCED_FULL})
   BoolPropertyTest(prefs, classname, "UsePositioning")
   NumberPropertyTest(prefs, classname, "VerticalOffset", {-144, 0, 144})
end

-- Call:
local staff = finale.FCStaff()

-- The first staff in the test document must have Full and Abbreviated name positions overridden
-- Otherwise these tests generate spurious errors
staff:Load(1)

local namepos_full = staff:GetFullNamePosition()
AssureTrue(namepos_full ~= nil, "FCStaffNamePosition - LoadFull")
FCStaffNamePosition_PropertyTests("FCStaffNamePosition", namepos_full)

local namepos_abrv = staff:GetAbbreviatedNamePosition()
AssureTrue(namepos_abrv ~= nil, "FCStaffNamePosition - Abbreviated")
FCStaffNamePosition_PropertyTests("FCStaffNamePosition", namepos_abrv)
