function FCStaffNamePosition_Test_Unlinkable(classname, obj, staff)
   UnlinkableNumberPropertyTest(obj, "FCStaffNamePosition", "Alignment", "Reload", nil, 1, staff_to_part[staff], skip_finale_version)
   UnlinkableNumberPropertyTest(obj, "FCStaffNamePosition", "ExpandSingleWord", "Reload", nil, 1, staff_to_part[staff], skip_finale_version)
   UnlinkableNumberPropertyTest(obj, "FCStaffNamePosition", "HorizontalOffset", "Reload", nil, 24, staff_to_part[staff], skip_finale_version)
   UnlinkableNumberPropertyTest(obj, "FCStaffNamePosition", "Justification", "Reload", nil, 1, staff_to_part[staff], skip_finale_version)
   UnlinkableNumberPropertyTest(obj, "FCStaffNamePosition", "UsePositioning", "Reload", nil, 1, staff_to_part[staff], skip_finale_version)
   UnlinkableNumberPropertyTest(obj, "FCStaffNamePosition", "VerticalOffset", "Reload", nil, -24, staff_to_part[staff], skip_finale_version)
end

-- Call:
local staff = finale.FCStaff()

-- The first staff in the test document must have Full and Abbreviated name positions overridden
-- Otherwise these tests generate spurious errors
staff:Load(1)

local namepos_full = staff:GetFullNamePosition()
AssureTrue(namepos_full ~= nil, "FCStaffNamePosition - LoadFull")
FCStaffNamePosition_Test_Unlinkable("FCStaffNamePosition", namepos_full, staff.ItemNo)

local namepos_abrv = staff:GetAbbreviatedNamePosition()
AssureTrue(namepos_abrv ~= nil, "FCStaffNamePosition - Abbreviated")
FCStaffNamePosition_Test_Unlinkable("FCStaffNamePosition", namepos_abrv, staff.ItemNo)
