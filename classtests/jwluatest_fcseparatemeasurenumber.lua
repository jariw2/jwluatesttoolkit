function FCSeparateMeasureNumber_PropertyTests(obj)
   BoolPropertyTest(obj, "FCSeparateMeasureNumber", "HideOverride")
   NumberPropertyTest(obj, "FCSeparateMeasureNumber", "HorizontalPosition", {-24, 0, 123})
   BoolPropertyTest(obj, "FCSeparateMeasureNumber", "IsAlternateNumber")
   NumberPropertyTest(obj, "FCSeparateMeasureNumber", "RegionNumberID", {1, 2, 3})
   BoolPropertyTest(obj, "FCSeparateMeasureNumber", "ShowOverride")
   BoolPropertyTest(obj, "FCSeparateMeasureNumber", "UseEnclosure")
   NumberPropertyTest(obj, "FCSeparateMeasureNumber", "VerticalPosition", {-24, 0, 123})
end


-- Call:
local obj = finale.FCSeparateMeasureNumber()
obj:ConnectCell(finale.FCCell(12, 3))
local measnum_region = finale.FCMeasureNumberRegion()
AssureTrue(measnum_region:Load(1), "FCSeparateMeasureNumber_ClassTest FCMeasureNumberRegion:Load(1) loaded.")
local loaded_here = obj:LoadFirst()
if not loaded_here then
    obj = finale.FCSeparateMeasureNumber()
    obj:ConnectCell(finale.FCCell(12, 3))
    obj:AssignMeasureNumberRegion(measnum_region)
    AssureTrue(obj:SaveNew(), "FCSeparateMeasureNumber_ClassTest SaveNew()")
end
FCSeparateMeasureNumber_PropertyTests(obj)
if not loaded_here then
    obj:DeleteData()
end
