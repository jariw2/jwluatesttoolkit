function FCSmartShape_ValueTests_ItemNo1(smartshape)
   NumberValuePropertyTest(smartshape, "FCSmartShape", "AvoidAccidentals", finale.SS_AUTOSTATE)
   BoolValuePropertyTest(smartshape, "FCSmartShape", "BeatAttached", true)
   NumberValuePropertyTest(smartshape, "FCSmartShape", "EngraverSlur", finale.SS_AUTOSTATE)
   BoolValuePropertyTest(smartshape, "FCSmartShape", "EntryBased", false)
   NumberValuePropertyTest(smartshape, "FCSmartShape", "LineID", 0)
   BoolValuePropertyTest(smartshape, "FCSmartShape", "MaintainAngle", false)
   BoolValuePropertyTest(smartshape, "FCSmartShape", "MakeHorizontal", true)
   BoolValuePropertyTest(smartshape, "FCSmartShape", "PresetShape", true)
   NumberValuePropertyTest(smartshape, "FCSmartShape", "ShapeType", finale.SMARTSHAPE_CRESCENDO)
   BoolValuePropertyTest(smartshape, "FCSmartShape", "Visible", true)
end


-- Call:
local smartshape = finale.FCSmartShape()
AssureTrue(smartshape:Load(1), "FCSmartShape:Load(1)")
FCSmartShape_ValueTests_ItemNo1(smartshape)


function FCSmartShape_ValueTests_ItemNo2(smartshape)
   NumberValuePropertyTest(smartshape, "FCSmartShape", "AvoidAccidentals", finale.SS_AUTOSTATE)
   BoolValuePropertyTest(smartshape, "FCSmartShape", "BeatAttached", false)
   NumberValuePropertyTest(smartshape, "FCSmartShape", "EngraverSlur", finale.SS_AUTOSTATE)
   BoolValuePropertyTest(smartshape, "FCSmartShape", "EntryBased", true)
   NumberValuePropertyTest(smartshape, "FCSmartShape", "LineID", 0)
   BoolValuePropertyTest(smartshape, "FCSmartShape", "MaintainAngle", true)
   BoolValuePropertyTest(smartshape, "FCSmartShape", "MakeHorizontal", false)
   BoolValuePropertyTest(smartshape, "FCSmartShape", "PresetShape", true)
   NumberValuePropertyTest(smartshape, "FCSmartShape", "ShapeType", finale.SMARTSHAPE_SLURAUTO)
   BoolValuePropertyTest(smartshape, "FCSmartShape", "Visible", true)
end


-- Call:
local smartshape = finale.FCSmartShape()
AssureTrue(smartshape:Load(2), "FCSmartShape:Load(2)")
FCSmartShape_ValueTests_ItemNo2(smartshape)
