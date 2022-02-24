function FCMultiMeasureRest_PropertyTests(obj)
    NumberPropertyTest(obj, "FCMultiMeasureRest", "EndMeasure", {33, 38, 41})
    NumberPropertyTest(obj, "FCMultiMeasureRest", "NumberHorizontalAdjust", {-12, 0, 28})
    NumberPropertyTest(obj, "FCMultiMeasureRest", "NumberVerticalAdjust", {-12, 0, 28})
    NumberPropertyTest(obj, "FCMultiMeasureRest", "ShapeEndAdjust", {-12, 0, 28})
    NumberPropertyTest(obj, "FCMultiMeasureRest", "ShapeID", {1, 2, 3})
    NumberPropertyTest(obj, "FCMultiMeasureRest", "ShapeStartAdjust", {-12, 0, 28})
    NumberPropertyTest_RO(obj, "FCMultiMeasureRest", "StartMeasure")
    NumberPropertyTest(obj, "FCMultiMeasureRest", "StartNumberingAt", {1, 4, 9})
    if finenv.RawFinaleVersion >= 0x1b200000 then -- Fin27.2
        BoolPropertyTest(obj, "FCMultiMeasureRest", "StretchHorizontally")
    else
        BoolPropertyTest_RO(obj, "FCMultiMeasureRest", "StretchHorizontally")
    end
    NumberPropertyTest(obj, "FCMultiMeasureRest", "SymbolSpace", {-12, 0, 28})
    BoolPropertyTest(obj, "FCMultiMeasureRest", "UseSymbols")
    NumberPropertyTest(obj, "FCMultiMeasureRest", "UseSymbolsLessThan", {4, 7, 20})
    NumberPropertyTest(obj, "FCMultiMeasureRest", "Width", {144, 288, 346})
end


-- Call:
local obj = finale.FCMultiMeasureRest()
AssureTrue(obj:Load(32), "FCMultiMeasureRest:Load()")
FCMultiMeasureRest_PropertyTests(obj)
