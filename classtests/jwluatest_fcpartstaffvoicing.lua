function FCPartStaffVoicing_PropertyTests(obj)
   NumberPropertyTest(obj, "FCPartStaffVoicing", "CountNotesRule",
      {finale.VCOUNTNOTES_FROM_THE_TOP, finale.VCOUNTNOTES_FROM_THE_BOTTOM})
   BoolPropertyTest(obj, "FCPartStaffVoicing", "IncludeSingleNotePassages")
   BoolPropertyTest(obj, "FCPartStaffVoicing", "IsVoicingEnabled")
   NumberPropertyTest(obj, "FCPartStaffVoicing", "MultipleLayerNumber", {1, 2, 3, 4})
   NumberPropertyTest(obj, "FCPartStaffVoicing", "SingleLayerDisplayRule",
      {finale.VOICINGLAYERRULE_ALL_NOTES, finale.VOICINGLAYERRULE_TOP_NOTE,
      finale.VOICINGLAYERRULE_BOTTOM_NOTE, finale.VOICINGLAYERRULE_SELECTED_NOTES})
   NumberPropertyTest(obj, "FCPartStaffVoicing", "SingleLayerNumber", {1, 2, 3, 4})
   BoolPropertyTest(obj, "FCPartStaffVoicing", "SingleLayerSelect1st")
   BoolPropertyTest(obj, "FCPartStaffVoicing", "SingleLayerSelect2nd")
   BoolPropertyTest(obj, "FCPartStaffVoicing", "SingleLayerSelect3rd")
   BoolPropertyTest(obj, "FCPartStaffVoicing", "SingleLayerSelect4th")
   BoolPropertyTest(obj, "FCPartStaffVoicing", "SingleLayerSelect5th")
   NumberPropertyTest(obj, "FCPartStaffVoicing", "WillDisplay",
      {finale.PARTDISP_ALLNOTES_IN_SINGLE_LAYER, finale.PARTDISP_SELECTED_NOTES_MULTIPLE_LAYERS})   
end


-- Call:
local part = finale.FCPart(1) -- should be Voiced Part Staff 2
AssureTrue(part:SwitchTo(), "FCPartStaffVoicing was not able to bring part 1 into edit focus for class test.")
AssureNonNil(finale.FCPartStaffVoicing, "FCPartStaffVoicing class test")
if finale.FCPartStaffVoicing then
    local obj = finale.FCPartStaffVoicing()
    AssureTrue(obj:Load(3), "FCPartStaffVoicing:Load(3)")
    FCPartStaffVoicing_PropertyTests(obj)
end
AssureTrue(part:SwitchBack(), "FCPartStaffVoicing was not able to switch edit focus back to Score.")
