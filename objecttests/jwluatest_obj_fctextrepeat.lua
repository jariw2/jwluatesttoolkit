-- Make the class test in the file test for this object type!
function FCTextRepeat_PropertyTests(textrepeat)
   NumberPropertyTest(textrepeat, "FCTextRepeat", "Action", 
            {finale.REPACTION_NEVERJUMP, finale.REPACTION_ALWAYSJUMP, 
            finale.REPACTION_JUMPONPASS, finale.REPACTION_PLAYSECTION,
            finale.REPACTION_STOPONPASS})       
   BoolPropertyTest(textrepeat, "FCTextRepeat", "AutoUpdateTarget")
   NumberPropertyTest(textrepeat, "FCTextRepeat", "HorizontalPos", {-289, 0, 310})
   NumberPropertyTest(textrepeat, "FCTextRepeat", "ID", {1,10, 50})
   BoolPropertyTest(textrepeat, "FCTextRepeat", "IndividualPositioning")
   BoolPropertyTest(textrepeat, "FCTextRepeat", "JumpIfIgnore")
   BoolPropertyTest(textrepeat, "FCTextRepeat", "ResetOnRepeat")
   NumberPropertyTest(textrepeat, "FCTextRepeat", "ShowMode", 
            {finale.REPSHOW_ALL, finale.REPSHOW_TOPSTAFF, finale.REPSHOW_STAFFLIST})       
   NumberPropertyTest(textrepeat, "FCTextRepeat", "StaffListID", {1, 3, 8})
   NumberPropertyTest(textrepeat, "FCTextRepeat", "Target", {-300, 0, 300})
   NumberPropertyTest(textrepeat, "FCTextRepeat", "TargetTrigger", 
            {finale.REPTARGET_DEFID, finale.REPTARGET_MEASURENUM, finale.REPTARGET_BACKWARDS})
   NumberPropertyTest(textrepeat, "FCTextRepeat", "TotalPasses", {0, 1, 2})
   NumberPropertyTest(textrepeat, "FCTextRepeat", "VerticalPos", {-310, 0, 309})
end

        


function FCTextRepeat_ValueTests_ItemNo2_0(textrepeat)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "Action", finale.REPACTION_NEVERJUMP)
   BoolValuePropertyTest(textrepeat, "FCTextRepeat", "AutoUpdateTarget", false)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "HorizontalPos", 46)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "ID", 7)
   BoolValuePropertyTest(textrepeat, "FCTextRepeat", "IndividualPositioning", false)
   BoolValuePropertyTest(textrepeat, "FCTextRepeat", "JumpIfIgnore", false)
   BoolValuePropertyTest(textrepeat, "FCTextRepeat", "ResetOnRepeat", false)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "ShowMode", finale.REPSHOW_ALL)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "StaffListID", 0)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "Target", 0)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "TargetTrigger", finale.REPTARGET_MEASURENUM)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "TotalPasses", 0)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "VerticalPos", 40)
end


-- Call:
local textrepeat = finale.FCTextRepeat()
AssureTrue(textrepeat:Load(2, 0))
FCTextRepeat_ValueTests_ItemNo2_0(textrepeat)



function FCTextRepeat_ValueTests_ItemNo3_0(textrepeat)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "Action", finale.REPACTION_STOPONPASS)
   BoolValuePropertyTest(textrepeat, "FCTextRepeat", "AutoUpdateTarget", false)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "HorizontalPos", -267)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "ID", 6)
   BoolValuePropertyTest(textrepeat, "FCTextRepeat", "IndividualPositioning", true)
   BoolValuePropertyTest(textrepeat, "FCTextRepeat", "JumpIfIgnore", false)
   BoolValuePropertyTest(textrepeat, "FCTextRepeat", "ResetOnRepeat", false)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "ShowMode", finale.REPSHOW_TOPSTAFF)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "StaffListID", 0)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "Target", 0)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "TargetTrigger", finale.REPTARGET_UNDEFINED)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "TotalPasses", 1)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "VerticalPos", 49)
end


-- Call:
local textrepeat = finale.FCTextRepeat()
AssureTrue(textrepeat:Load(3, 0))
FCTextRepeat_ValueTests_ItemNo3_0(textrepeat)



function FCTextRepeat_ValueTests_ItemNo14_0(textrepeat)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "Action", finale.REPACTION_ALWAYSJUMP)
   BoolValuePropertyTest(textrepeat, "FCTextRepeat", "AutoUpdateTarget", true)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "HorizontalPos", 97)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "ID", 9)
   BoolValuePropertyTest(textrepeat, "FCTextRepeat", "IndividualPositioning", false)
   BoolValuePropertyTest(textrepeat, "FCTextRepeat", "JumpIfIgnore", true)
   BoolValuePropertyTest(textrepeat, "FCTextRepeat", "ResetOnRepeat", false)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "ShowMode", finale.REPSHOW_ALL)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "StaffListID", 0)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "Target", 3)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "TargetTrigger", finale.REPTARGET_MEASURENUM)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "TotalPasses", 0)
   NumberValuePropertyTest(textrepeat, "FCTextRepeat", "VerticalPos", 19)
end


-- Call:
local textrepeat = finale.FCTextRepeat()
AssureTrue(textrepeat:Load(14, 0))
FCTextRepeat_PropertyTests(textrepeat)   -- Class test here
FCTextRepeat_ValueTests_ItemNo14_0(textrepeat)
