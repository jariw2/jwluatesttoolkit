function FCStaffSystem_PropertyTests(ssystem)
   NumberPropertyTest(ssystem, "FCStaffSystem", "BottomMargin", {-160, 0, 260})
   NumberPropertyTest_RO(ssystem, "FCStaffSystem", "FirstMeasure")
   NumberPropertyTest_RO(ssystem, "FCStaffSystem", "HorizontalStretch")
   NumberPropertyTest(ssystem, "FCStaffSystem", "LeftMargin", {-170, 0, 270})
   NumberPropertyTest_RO(ssystem, "FCStaffSystem", "NextSysMeasure")
   NumberPropertyTest(ssystem, "FCStaffSystem", "Resize", {-180, 0, 280})
   BoolPropertyTest(ssystem, "FCStaffSystem", "ResizeVerticalSpace")
   NumberPropertyTest(ssystem, "FCStaffSystem", "RightMargin", {-120, 0, 220})
   NumberPropertyTest(ssystem, "FCStaffSystem", "SpaceAbove", {-130, 0, 230})
   NumberPropertyTest(ssystem, "FCStaffSystem", "SpaceAfterMusic", {-140, 0, 240})
   NumberPropertyTest(ssystem, "FCStaffSystem", "SpaceBeforeMusic", {-150, 0, 250})
   NumberPropertyTest(ssystem, "FCStaffSystem", "StaffHeight", {3000, 5236, 7688})
   NumberPropertyTest(ssystem, "FCStaffSystem", "TopMargin", {-110, 0, 210})
   NumberPropertyTest_RO(ssystem, "FCStaffSystem", "TopStaff")
   BoolPropertyTest(ssystem, "FCStaffSystem", "UseStaffResize")
end


-- Call:
 local ssystem = finale.FCStaffSystem()
AssureTrue(ssystem:Load(1))
FCStaffSystem_PropertyTests(ssystem)
