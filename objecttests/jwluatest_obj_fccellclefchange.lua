-- Property test:
function FCCellClefChange_PropertyTests(clefchange)
   BoolPropertyTest(clefchange, "FCCellClefChange", "AllowVerticalDrag")
   BoolPropertyTest(clefchange, "FCCellClefChange", "ClefAfterBarline")
   NumberPropertyTest(clefchange, "FCCellClefChange", "ClefIndex", {0, 5, 14})
   NumberPropertyTest(clefchange, "FCCellClefChange", "ClefPercent", {0, 34, 199})
   NumberPropertyTest(clefchange, "FCCellClefChange", "ClefShow", {finale.SHOWCLEF_NORMAL, finale.SHOWCLEF_HIDE, finale.SHOWCLEF_ALWAYS})
   NumberPropertyTest(clefchange, "FCCellClefChange", "HorizontalOffset", {-345, 0, 456})
   NumberPropertyTest(clefchange, "FCCellClefChange", "MeasurePos", {0, 512, 2048})   
   NumberPropertyTest(clefchange, "FCCellClefChange", "VerticalOffset", {-325, 0, 426})
end

function FCCellClefChange_ValueTests_ItemNo1_0(clefchange)
   BoolValuePropertyTest(clefchange, "FCCellClefChange", "AllowVerticalDrag", false)
   BoolValuePropertyTest(clefchange, "FCCellClefChange", "ClefAfterBarline", false)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "ClefIndex", 9)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "ClefPercent", 75)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "ClefShow", finale.SHOWCLEF_NORMAL)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "HorizontalOffset", 0)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "MeasurePos", 0)  
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "VerticalOffset", 0)
   AssureValue(clefchange:IsStartClef(), true, "FCCellClefChange:IsStartClef()")
end

function FCCellClefChange_ValueTests_ItemNo1_1(clefchange)
   BoolValuePropertyTest(clefchange, "FCCellClefChange", "AllowVerticalDrag", false)
   BoolValuePropertyTest(clefchange, "FCCellClefChange", "ClefAfterBarline", false)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "ClefIndex", 1)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "ClefPercent", 75)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "ClefShow", finale.SHOWCLEF_NORMAL)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "HorizontalOffset", -45)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "MeasurePos", 405)   
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "VerticalOffset", 0)
    AssureValue(clefchange:IsStartClef(), false, "FCCellClefChange:IsStartClef()")
end

function FCCellClefChange_ValueTests_ItemNo1_2(clefchange)
   BoolValuePropertyTest(clefchange, "FCCellClefChange", "AllowVerticalDrag", true)
   BoolValuePropertyTest(clefchange, "FCCellClefChange", "ClefAfterBarline", false)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "ClefIndex", 2)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "ClefPercent", 75)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "ClefShow", finale.SHOWCLEF_HIDE)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "HorizontalOffset", -45)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "MeasurePos", 1878)   
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "VerticalOffset", 0)    
   AssureValue(clefchange:IsStartClef(), false, "FCCellClefChange:IsStartClef()")
end

function FCCellClefChange_ValueTests_ItemNo1_3(clefchange)
   BoolValuePropertyTest(clefchange, "FCCellClefChange", "AllowVerticalDrag", false)
   BoolValuePropertyTest(clefchange, "FCCellClefChange", "ClefAfterBarline", false)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "ClefIndex", 0)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "ClefPercent", 75)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "ClefShow", finale.SHOWCLEF_ALWAYS)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "HorizontalOffset", -45)
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "MeasurePos", 2406)   
   NumberValuePropertyTest(clefchange, "FCCellClefChange", "VerticalOffset", 0)
   AssureValue(clefchange:IsStartClef(), false, "FCCellClefChange:IsStartClef()")
end


-- Call all tests:
local cell = finale.FCCell(6,2)
local framehold = finale.FCCellFrameHold()
framehold:ConnectCell(cell)
if AssureTrue(framehold:Load(), "FCCellFrameHold:Load()") then
    local clefchanges = framehold:CreateCellClefChanges()
    if AssureNonNil(clefchanges, "FCCellFrameHold:CreateCellClefChanges()") then        
        local clefchange = clefchanges:GetItemAt(0)
        if (AssureNonNil(clefchange, "FCCellClefChanges:GetItemAt(0)")) then
            -- Property test here!
            FCCellClefChange_PropertyTests(clefchange)
            FCCellClefChange_ValueTests_ItemNo1_0(clefchange)
        end
        local clefchange = clefchanges:GetItemAt(1)
        if (AssureNonNil(clefchange, "FCCellClefChanges:GetItemAt(1)")) then
            FCCellClefChange_ValueTests_ItemNo1_1(clefchange)
        end
        local clefchange = clefchanges:GetItemAt(2)
        if (AssureNonNil(clefchange, "FCCellClefChanges:GetItemAt(2)")) then
            FCCellClefChange_ValueTests_ItemNo1_2(clefchange)
        end
        local clefchange = clefchanges:GetItemAt(3)
        if (AssureNonNil(clefchange, "FCCellClefChanges:GetItemAt(3)")) then
            FCCellClefChange_ValueTests_ItemNo1_3(clefchange)
        end
    end
end

for meas = 1, 2 do
    for staff = 1,3 do
        cell = finale.FCCell(meas, staff)
        local clefindex = 0
        if staff == 3 then
            clefindex = 3
        end
        AssureTrue(cell:CalcClefIndexAt(0) == clefindex, "FCCell:CalcClefIndexAt("..tostring(meas)..", "..tostring(staff) ..") returned "..tostring(cell:CalcClefIndexAt(0)).." expected "..tostring(clefindex)..".")
    end
end

