function FCPartStaffVoicing_ValueTests_ItemNo1_3(obj)
   NumberValuePropertyTest(obj, "FCPartStaffVoicing", "CountNotesRule", finale.VCOUNTNOTES_FROM_THE_BOTTOM)
   BoolValuePropertyTest(obj, "FCPartStaffVoicing", "IncludeSingleNotePassages", true)
   BoolValuePropertyTest(obj, "FCPartStaffVoicing", "IsVoicingEnabled", true)
   NumberValuePropertyTest(obj, "FCPartStaffVoicing", "MultipleLayerNumber", 3)
   NumberValuePropertyTest(obj, "FCPartStaffVoicing", "SingleLayerDisplayRule", finale.VOICINGLAYERRULE_SELECTED_NOTES)
   NumberValuePropertyTest(obj, "FCPartStaffVoicing", "SingleLayerNumber", 2)
   BoolValuePropertyTest(obj, "FCPartStaffVoicing", "SingleLayerSelect1st", false)
   BoolValuePropertyTest(obj, "FCPartStaffVoicing", "SingleLayerSelect2nd", true)
   BoolValuePropertyTest(obj, "FCPartStaffVoicing", "SingleLayerSelect3rd", true)
   BoolValuePropertyTest(obj, "FCPartStaffVoicing", "SingleLayerSelect4th", false)
   BoolValuePropertyTest(obj, "FCPartStaffVoicing", "SingleLayerSelect5th", true)
   NumberValuePropertyTest(obj, "FCPartStaffVoicing", "WillDisplay", finale.PARTDISP_SELECTED_NOTES_MULTIPLE_LAYERS)
end

-- Call:
local part = finale.FCPart(1) -- should be Voiced Part Staff 2
AssureTrue(part:SwitchTo(), "FCPartStaffVoicing was not able to bring part 1 into edit focus for object test.")
local obj = finale.FCPartStaffVoicing()
AssureTrue(obj:Load(3), "FCPartStaffVoicing:Load(3)")
FCPartStaffVoicing_ValueTests_ItemNo1_3(obj)
AssureTrue(part:SwitchBack(), "FCPartStaffVoicing was not able to switch edit focus back to Score.")
