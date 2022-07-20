local load_sep_num = function(measure, staff)
    local sep_num = finale.FCSeparateMeasureNumber()
    sep_num:ConnectCell(finale.FCCell(measure, staff))
    local measnum_region = finale.FCMeasureNumberRegion()
    AssureTrue(measnum_region:Load(1), "FCSeparateMeasureNumber_ValueTests FCMeasureNumberRegion:Load(1) loaded.")
    -- Due to complications in how SaveNew works, we have to create it here before calling UnlinkableNumberPropertyTest
    local loaded_here = sep_num:LoadFirst()
    if not loaded_here then
        sep_num = finale.FCSeparateMeasureNumber()
        sep_num:ConnectCell(finale.FCCell(measure, staff))
        sep_num:AssignMeasureNumberRegion(measnum_region)
        AssureTrue(sep_num:SaveNew(), "FCSeparateMeasureNumber_ValueTests SaveNew()")
    end
    return sep_num, loaded_here
end

function FCSeparateMeasureNumber_ValueTests_Cell12_3(sep_num)
   BoolValuePropertyTest(sep_num, "FCSeparateMeasureNumber", "HideOverride", false)
   NumberValuePropertyTest(sep_num, "FCSeparateMeasureNumber", "HorizontalPosition", 33)
   BoolValuePropertyTest(sep_num, "FCSeparateMeasureNumber", "IsAlternateNumber", false)
   NumberValuePropertyTest(sep_num, "FCSeparateMeasureNumber", "RegionNumberID", 1)
   BoolValuePropertyTest(sep_num, "FCSeparateMeasureNumber", "ShowOverride", true)
   BoolValuePropertyTest(sep_num, "FCSeparateMeasureNumber", "UseEnclosure", false)
   NumberValuePropertyTest(sep_num, "FCSeparateMeasureNumber", "VerticalPosition", 0)
end


-- Call:
local sep_num, loaded_here = load_sep_num(12, 3)
FCSeparateMeasureNumber_ValueTests_Cell12_3(sep_num)
if not loaded_here then
    sep_num:DeleteData()
end


function FCSeparateMeasureNumber_ValueTests_Cell13_2(sep_num)
   BoolValuePropertyTest(sep_num, "FCSeparateMeasureNumber", "HideOverride", false)
   NumberValuePropertyTest(sep_num, "FCSeparateMeasureNumber", "HorizontalPosition", 0)
   BoolValuePropertyTest(sep_num, "FCSeparateMeasureNumber", "IsAlternateNumber", false)
   NumberValuePropertyTest(sep_num, "FCSeparateMeasureNumber", "RegionNumberID", 1)
   BoolValuePropertyTest(sep_num, "FCSeparateMeasureNumber", "ShowOverride", false)
   BoolValuePropertyTest(sep_num, "FCSeparateMeasureNumber", "UseEnclosure", false)
   NumberValuePropertyTest(sep_num, "FCSeparateMeasureNumber", "VerticalPosition", 0)
end


-- Call:
sep_num, loaded_here = load_sep_num(13, 2)
FCSeparateMeasureNumber_ValueTests_Cell13_2(sep_num)
if not loaded_here then
    sep_num:DeleteData()
end
