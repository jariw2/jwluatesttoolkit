local stretch_is_readonly = finenv.RawFinaleVersion < 0x1b200000 -- Finale 27.2

function FCMultiMeasureRest_ValueTests_ItemNo32(obj)
    NumberValuePropertyTest(obj, "FCMultiMeasureRest", "EndMeasure", 35)
    NumberValuePropertyTest(obj, "FCMultiMeasureRest", "NumberHorizontalAdjust", 0)
    NumberValuePropertyTest(obj, "FCMultiMeasureRest", "NumberVerticalAdjust", -32)
    NumberValuePropertyTest(obj, "FCMultiMeasureRest", "ShapeEndAdjust", -30)
    NumberValuePropertyTest(obj, "FCMultiMeasureRest", "ShapeID", 50)
    NumberValuePropertyTest(obj, "FCMultiMeasureRest", "ShapeStartAdjust", 30)
    NumberValuePropertyTest(obj, "FCMultiMeasureRest", "StartMeasure", 32, 25)
    NumberValuePropertyTest(obj, "FCMultiMeasureRest", "StartNumberingAt", 2)
    BoolValuePropertyTest(obj, "FCMultiMeasureRest", "StretchHorizontally", stretch_is_readonly, stretch_is_readonly) -- this is set not to stretch in Fin27.2
    NumberValuePropertyTest(obj, "FCMultiMeasureRest", "SymbolSpace", 48)
    BoolValuePropertyTest(obj, "FCMultiMeasureRest", "UseSymbols", false)
    NumberValuePropertyTest(obj, "FCMultiMeasureRest", "UseSymbolsLessThan", 9)
    NumberValuePropertyTest(obj, "FCMultiMeasureRest", "Width", 576)
end


-- Call:
local obj = finale.FCMultiMeasureRest()
AssureTrue(obj:Load(32), "FCMultiMeasureRest:Load(32)")
FCMultiMeasureRest_ValueTests_ItemNo32(obj)



function FCMultiMeasureRest_ValueTests_ItemNo36(obj)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "EndMeasure", 38)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "NumberHorizontalAdjust", 18)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "NumberVerticalAdjust", -48)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "ShapeEndAdjust", -30)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "ShapeID", 50)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "ShapeStartAdjust", 30)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "StartMeasure", 36, 38)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "StartNumberingAt", 2)
   BoolValuePropertyTest(obj, "FCMultiMeasureRest", "StretchHorizontally", true, stretch_is_readonly)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "SymbolSpace", 48)
   BoolValuePropertyTest(obj, "FCMultiMeasureRest", "UseSymbols", true)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "UseSymbolsLessThan", 9)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "Width", 360)
end


-- Call:
obj = finale.FCMultiMeasureRest()
AssureTrue(obj:Load(36), "FCMultiMeasureRest:Load(36)")
FCMultiMeasureRest_ValueTests_ItemNo36(obj)



function FCMultiMeasureRest_ValueTests_ItemNo39(obj)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "EndMeasure", 40)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "NumberHorizontalAdjust", 0)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "NumberVerticalAdjust", -18)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "ShapeEndAdjust", -48)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "ShapeID", 50)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "ShapeStartAdjust", 30)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "StartMeasure", 39, 22)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "StartNumberingAt", 2)
   BoolValuePropertyTest(obj, "FCMultiMeasureRest", "StretchHorizontally", true, stretch_is_readonly)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "SymbolSpace", 48)
   BoolValuePropertyTest(obj, "FCMultiMeasureRest", "UseSymbols", false)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "UseSymbolsLessThan", 9)
   NumberValuePropertyTest(obj, "FCMultiMeasureRest", "Width", 244)
end


-- Call:
obj = finale.FCMultiMeasureRest()
AssureTrue(obj:Load(39), "FCMultiMeasureRest:Load(39)")
FCMultiMeasureRest_ValueTests_ItemNo39(obj)

