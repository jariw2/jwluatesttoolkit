function FCCustomSmartLineDef_ValueTests_ItemNo1(smartlinedef)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "EndArrowheadShapeID", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "EndArrowheadStyle", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "EndHookLength", 0)
   BoolValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "Horizontal", false)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineCharacter", 126)    
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineCharacterBaselineShift", -88)    
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineDashLength", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineDashSpace", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineStyle", finale.CUSTOMLINE_CHARACTER)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineWidth", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "StartArrowheadShapeID", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "StartArrowheadStyle", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "StartHookLength", 0)
   
   BoolValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "UseAfterStartTextOffset", false)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "StartLineHorizontalOffset", 1)
   BoolValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "UseBeforeEndTextOffset", false)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "EndLineHorizontalOffset", 2)
   BoolValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "UseAfterContinuationTextOffset", false)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "ContinuationLineHorizontalOffset", 3)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineVerticalOffset", 4)
end


-- Call:
local smartlinedef = finale.FCCustomSmartLineDef()
AssureTrue(smartlinedef:Load(1))
FCCustomSmartLineDef_ValueTests_ItemNo1(smartlinedef)


function FCCustomSmartLineDef_ValueTests_ItemNo2(smartlinedef)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "EndArrowheadShapeID", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "EndArrowheadStyle", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "EndHookLength", 0)
   BoolValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "Horizontal", false)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineCharacter", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineCharacterBaselineShift", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineDashLength", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineDashSpace", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineStyle", finale.CUSTOMLINE_SOLID)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineWidth", 224)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "StartArrowheadShapeID", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "StartArrowheadStyle", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "StartHookLength", 0)
end


-- Call:
local smartlinedef = finale.FCCustomSmartLineDef()
AssureTrue(smartlinedef:Load(2))
FCCustomSmartLineDef_ValueTests_ItemNo2(smartlinedef)


function FCCustomSmartLineDef_ValueTests_ItemNo3(smartlinedef)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "EndArrowheadShapeID", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "EndArrowheadStyle", 1)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "EndHookLength", 0)
   BoolValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "Horizontal", false)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineCharacter", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineCharacterBaselineShift", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineDashLength", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineDashSpace", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineStyle", finale.CUSTOMLINE_SOLID)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineWidth", 224)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "StartArrowheadShapeID", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "StartArrowheadStyle", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "StartHookLength", 0)
end


-- Call:
local smartlinedef = finale.FCCustomSmartLineDef()
AssureTrue(smartlinedef:Load(3))
FCCustomSmartLineDef_ValueTests_ItemNo3(smartlinedef)


function FCCustomSmartLineDef_ValueTests_ItemNo12(smartlinedef)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "EndArrowheadShapeID", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "EndArrowheadStyle", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "EndHookLength", 0)
   BoolValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "Horizontal", true)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineCharacter", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineCharacterBaselineShift", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineDashLength", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineDashSpace", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineStyle", finale.CUSTOMLINE_SOLID)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineWidth", 115)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "StartArrowheadShapeID", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "StartArrowheadStyle", 3)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "StartHookLength", 1536)
end


-- Call:
local smartlinedef = finale.FCCustomSmartLineDef()
AssureTrue(smartlinedef:Load(12))
FCCustomSmartLineDef_ValueTests_ItemNo12(smartlinedef)



function FCCustomSmartLineDef_ValueTests_ItemNo31(smartlinedef)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "EndArrowheadShapeID", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "EndArrowheadStyle", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "EndHookLength", 0)
   BoolValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "Horizontal", true)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineCharacter", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineCharacterBaselineShift", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineDashLength", 832)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineDashSpace", 832)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineStyle", finale.CUSTOMLINE_DASHED)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineWidth", 224)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "StartArrowheadShapeID", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "StartArrowheadStyle", 0)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "StartHookLength", 0)
   
   BoolValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "UseAfterStartTextOffset", true)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "StartLineHorizontalOffset", 4)
   BoolValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "UseBeforeEndTextOffset", true)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "EndLineHorizontalOffset", 0)
   BoolValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "UseAfterContinuationTextOffset", true)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "ContinuationLineHorizontalOffset", 4)
   NumberValuePropertyTest(smartlinedef, "FCCustomSmartLineDef", "LineVerticalOffset", 0)
end


-- Call:
local smartlinedef = finale.FCCustomSmartLineDef()
AssureTrue(smartlinedef:Load(31))
FCCustomSmartLineDef_ValueTests_ItemNo31(smartlinedef)
