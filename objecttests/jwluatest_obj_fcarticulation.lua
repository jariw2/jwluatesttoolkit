
function FCArticulation_PropertyTests(acci)
    local acci_def = acci:CreateArticulationDef()
    NumberPropertyTest(acci, "FCArticulation", "HorizontalPos", {-144, 0, 144})
    NumberPropertyTest(acci, "FCArticulation", "VerticalPos", {-144, 0, 144})
    if acci_def.CopyMainSymbol then
        if acci_def.CopyMainSymbolHorizontally then
            NumberPropertyTest(acci, "FCArticulation", "HorizontalCopyToPos", {-144, 0, 144})
        else
            NumberPropertyTest(acci, "FCArticulation", "VerticalCopyToPos", {-144, 0, 144})
        end
    end
    if Is26_2OrAbove()  then
        NumberPropertyTest(acci, "FCArticulation", "PlacementMode", {finale.ARTICPLACEMENT_AUTOMATIC, finale.ARTICPLACEMENT_ABOVE, finale.ARTICPLACEMENT_BELOW})
        NumberPropertyTest(acci, "FCArticulation", "StackingMode", {finale.ARTICSTACKING_USEDEFINITION, finale.ARTICSTACKING_NEVER})
    end
    BoolPropertyTest(acci, "FCArticulation", "Visible")
end

function FCArticulation_ValueTests_Entry19_2_134(acci)
    local acci_def = acci:CreateArticulationDef()
    if not AssureTrue(acci_def.CopyMainSymbol, "Definition for FCArticulation at #19, 2, 134 does not copy main symbol.") then return end
    if acci_def.CopyMainSymbolHorizontally then
        NumberValuePropertyTest(acci, "FCArticulation", "HorizontalPos", 11)
        NumberValuePropertyTest(acci, "FCArticulation", "HorizontalCopyToPos", 137)
        NumberValuePropertyTest(acci, "FCArticulation", "VerticalPos", 87)
    else
        NumberValuePropertyTest(acci, "FCArticulation", "HorizontalPos", -24)
        NumberValuePropertyTest(acci, "FCArticulation", "VerticalPos", -22)
        NumberValuePropertyTest(acci, "FCArticulation", "VerticalCopyToPos", -46)
    end        
    NumberValuePropertyTest(acci, "FCArticulation", "PlacementMode", finale.ARTICPLACEMENT_AUTOMATIC)
    NumberValuePropertyTest(acci, "FCArticulation", "StackingMode", finale.ARTICSTACKING_USEDEFINITION)
    BoolValuePropertyTest(acci, "FCArticulation", "Visible", true)
end

-- Call:
local entry = LoadMeasureEntry(19, 2, 134)
if AssureNonNil(entry, "Entry at #19, 2, 134") then
    local accis = entry:CreateArticulations()
    AssureTrue(accis.Count == 2, "FCArticulation count is not 2.")
    for acci in each(accis) do
        FCArticulation_PropertyTests(acci)
        FCArticulation_ValueTests_Entry19_2_134(acci)
    end
end
