function FCCustomSmartLineDef_PropertyTests(customlinedef)
    local oldstyle = customlinedef.EndArrowheadStyle
    customlinedef.EndArrowheadStyle = finale.CLENDPOINT_CUSTOM
    NumberPropertyTest(customlinedef, "FCCustomSmartLineDef", "EndArrowheadShapeID", {0, 10, 345})
    customlinedef.EndArrowheadStyle = oldstyle

   PropertyTest(customlinedef, "FCCustomSmartLineDef", "EndArrowheadStyle", {finale.CLENDPOINT_NONE, finale.CLENDPOINT_PRESET, finale.CLENDPOINT_CUSTOM, finale.CLENDPOINT_HOOK} )
   PropertyTest(customlinedef, "FCCustomSmartLineDef", "EndHookLength", {-290, 0, 290})
   BoolPropertyTest(customlinedef, "FCCustomSmartLineDef", "Horizontal")
   PropertyTest(customlinedef, "FCCustomSmartLineDef", "LineCharacter", {0, 128, 258})
   PropertyTest(customlinedef, "FCCustomSmartLineDef", "LineCharacterBaselineShift")
   PropertyTest(customlinedef, "FCCustomSmartLineDef", "LineDashLength", {0, 24, 260})
   PropertyTest(customlinedef, "FCCustomSmartLineDef", "LineDashSpace", {0, 18, 258})
   NumberPropertyTest(customlinedef, "FCCustomSmartLineDef", "LineStyle", {finale.CUSTOMLINE_SOLID, finale.CUSTOMLINE_DASHED, finale.CUSTOMLINE_CHARACTER})
   PropertyTest(customlinedef, "FCCustomSmartLineDef", "LineWidth", {0, 100, 345} )

    local oldstyle = customlinedef.StartArrowheadStyle
    customlinedef.StartArrowheadStyle = finale.CLENDPOINT_CUSTOM    
    PropertyTest(customlinedef, "FCCustomSmartLineDef", "StartArrowheadShapeID", {0, 11, 456} )
    customlinedef.StartArrowheadStyle = oldstyle

   PropertyTest(customlinedef, "FCCustomSmartLineDef", "StartArrowheadStyle", {finale.CLENDPOINT_NONE, finale.CLENDPOINT_PRESET, finale.CLENDPOINT_CUSTOM, finale.CLENDPOINT_HOOK})
   PropertyTest(customlinedef, "FCCustomSmartLineDef", "StartHookLength", {-300, 0, 300})
end


-- Call:
local customlinedef = finale.FCCustomSmartLineDef()
AssureTrue(customlinedef:Load(1))
FCCustomSmartLineDef_PropertyTests(customlinedef)
