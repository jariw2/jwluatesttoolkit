function FCStaffNamePosition_ValueTests_ItemNo1(namepos_full)
   NumberValuePropertyTest(namepos_full, "FCStaffNamePosition", "Alignment", finale.TEXTHORIZALIGN_RIGHT)
   BoolValuePropertyTest(namepos_full, "FCStaffNamePosition", "ExpandSingleWord", false)
   NumberValuePropertyTest(namepos_full, "FCStaffNamePosition", "HorizontalOffset", 0)
   NumberValuePropertyTest(namepos_full, "FCStaffNamePosition", "Justification", finale.TEXTJUSTIFY_RIGHT)
   BoolValuePropertyTest(namepos_full, "FCStaffNamePosition", "UsePositioning", true)
   NumberValuePropertyTest(namepos_full, "FCStaffNamePosition", "VerticalOffset", -16)
end


-- Call:
local staff = finale.FCStaff()

-- The first staff in the test document must have Full and Abbreviated name positions overridden
-- Otherwise these tests generate spurious errors
staff:Load(1)

local namepos_full = staff:GetFullNamePosition()
AssureTrue(namepos_full ~= nil, "FCStaffNamePosition - LoadFull")
FCStaffNamePosition_ValueTests_ItemNo1(namepos_full)


function FCStaffNamePosition_ValueTests_ItemNo1(namepos_abrv)
   NumberValuePropertyTest(namepos_abrv, "FCStaffNamePosition", "Alignment", finale.TEXTHORIZALIGN_CENTER)
   BoolValuePropertyTest(namepos_abrv, "FCStaffNamePosition", "ExpandSingleWord", false)
   NumberValuePropertyTest(namepos_abrv, "FCStaffNamePosition", "HorizontalOffset", -108)
   NumberValuePropertyTest(namepos_abrv, "FCStaffNamePosition", "Justification", finale.TEXTJUSTIFY_CENTER)
   BoolValuePropertyTest(namepos_abrv, "FCStaffNamePosition", "UsePositioning", true)
   NumberValuePropertyTest(namepos_abrv, "FCStaffNamePosition", "VerticalOffset", -16)
end


-- Call:
local namepos_abrv = staff:GetAbbreviatedNamePosition()
AssureTrue(namepos_abrv ~= nil, "FCStaffNamePosition - LoadFull")
FCStaffNamePosition_ValueTests_ItemNo1(namepos_abrv)
