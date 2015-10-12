function FCArticulationDef_PropertyTests(articdef)
    if Is2012OrAbove() then
        NumberPropertyTest(articdef, "FCArticulationDef", "AboveSymbolChar", {0, 126, 278})
    else
        NumberPropertyTest(articdef, "FCArticulationDef", "AboveSymbolChar", {0, 126, 254})
    end
   BoolPropertyTest(articdef, "FCArticulationDef", "AboveUsesMain")
   BoolPropertyTest(articdef, "FCArticulationDef", "AlwaysPlaceOutsideStaff")
   BoolPropertyTest(articdef, "FCArticulationDef", "AttachToTopNote")
   BoolPropertyTest(articdef, "FCArticulationDef", "AttackIsPercent")
   NumberPropertyTest(articdef, "FCArticulationDef", "AutoPosSide", {finale.ARTPOS_MANUAL_POSITIONING, 
    finale.ARTPOS_AUTO_NOTESTEM, finale.ARTPOS_ALWAYS_NOTE_SIDE, finale.ARTPOS_ALWAYS_STEM_SIDE,
    finale.ARTPOS_BELOW_ENTRY, finale.ARTPOS_ABOVE_ENTRY})
   BoolPropertyTest(articdef, "FCArticulationDef", "AvoidStaffLines")
    if Is2012OrAbove() then
        NumberPropertyTest(articdef, "FCArticulationDef", "BelowSymbolChar", {0, 132, 266})
    else
        NumberPropertyTest(articdef, "FCArticulationDef", "BelowSymbolChar", {0, 55, 253})
    end
   BoolPropertyTest(articdef, "FCArticulationDef", "BelowUsesMain")
   NumberPropertyTest(articdef, "FCArticulationDef", "BottomAttack", {-670, 0, 670})
   NumberPropertyTest(articdef, "FCArticulationDef", "BottomDuration", {-660, 0, 660})
   NumberPropertyTest(articdef, "FCArticulationDef", "BottomVelocity", {-650, 0, 650})
   BoolPropertyTest(articdef, "FCArticulationDef", "CenterHorizontally")
   BoolPropertyTest(articdef, "FCArticulationDef", "CopyMainSymbol")
   BoolPropertyTest(articdef, "FCArticulationDef", "CopyMainSymbolHorizontally")
   NumberPropertyTest(articdef, "FCArticulationDef", "DefaultVerticalPos", {-289, 0, 345})
   BoolPropertyTest(articdef, "FCArticulationDef", "DurationIsPercent")
   NumberPropertyTest(articdef, "FCArticulationDef", "FlippedHandleHorizontalOffset", {-345, 0, 567})
   NumberPropertyTest(articdef, "FCArticulationDef", "FlippedHandleVerticalOffset", {-348, 0, 348})
    if Is2012OrAbove() then
        NumberPropertyTest(articdef, "FCArticulationDef", "FlippedSymbolChar", {0, 126, 277})
    else
        NumberPropertyTest(articdef, "FCArticulationDef", "FlippedSymbolChar", {0, 126, 252})
    end
   StringPropertyTest(articdef, "FCArticulationDef", "FlippedSymbolFont", {"Maestro", "EngraverFontSet", "Petrucci"})
   BoolPropertyTest(articdef, "FCArticulationDef", "FlippedSymbolIsShape")
   articdef.FlippedSymbolIsShape = true
   NumberPropertyTest(articdef, "FCArticulationDef", "FlippedSymbolShapeID", {0, 12, 480})
    articdef.FlippedSymbolIsShape = false
   NumberPropertyTest(articdef, "FCArticulationDef", "FlippedSymbolSize", {2, 12, 48})
   BoolPropertyTest(articdef, "FCArticulationDef", "InsideSlurs")
   NumberPropertyTest(articdef, "FCArticulationDef", "MainHandleHorizontalOffset", {-456, 0, 456})
   NumberPropertyTest(articdef, "FCArticulationDef", "MainHandleVerticalOffset", {-457, 0, 457})
    if Is2012OrAbove() then
        NumberPropertyTest(articdef, "FCArticulationDef", "MainSymbolChar", {0, 133, 267})
    else
        NumberPropertyTest(articdef, "FCArticulationDef", "MainSymbolChar", {0, 123, 251})
    end
   StringPropertyTest(articdef, "FCArticulationDef", "MainSymbolFont", {"Maestro", "EngraverFontSet", "Petrucci"})
   BoolPropertyTest(articdef, "FCArticulationDef", "MainSymbolIsShape")
   articdef.MainSymbolIsShape = true
   NumberPropertyTest(articdef, "FCArticulationDef", "MainSymbolShapeID", {0, 11, 481})
    articdef.MainSymbolIsShape = false
   NumberPropertyTest(articdef, "FCArticulationDef", "MainSymbolSize", {0, 16, 52})
   BoolPropertyTest(articdef, "FCArticulationDef", "OnScreenOnly")
   BoolPropertyTest(articdef, "FCArticulationDef", "Playback")
   NumberPropertyTest(articdef, "FCArticulationDef", "TopAttack", {-345, 0, 345})
   NumberPropertyTest(articdef, "FCArticulationDef", "TopDuration", {-346, 0, 346})
   NumberPropertyTest(articdef, "FCArticulationDef", "TopVelocity", {-347, 0, 347})
   BoolPropertyTest(articdef, "FCArticulationDef", "VelocityIsPercent")
end


-- Call:
local articdef = finale.FCArticulationDef()
AssureTrue(articdef:Load(1), "FCArticulationDef:Load()")
FCArticulationDef_PropertyTests(articdef)
