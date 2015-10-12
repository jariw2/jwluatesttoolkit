function FCPageGraphic_ValueTests_ItemNo0_0(graphics1)
   NumberValuePropertyTest(graphics1, "FCPageGraphic", "FirstPage", 2)
   BoolValuePropertyTest(graphics1, "FCPageGraphic", "FixedPercent", false)
   NumberValuePropertyTest(graphics1, "FCPageGraphic", "Height", 69)
   NumberValuePropertyTest(graphics1, "FCPageGraphic", "HorizontalAlignment", finale.GRAPHICHORIZALIGN_LEFT)
   NumberValuePropertyTest(graphics1, "FCPageGraphic", "HorizontalAlignmentRightPage", finale.GRAPHICHORIZALIGN_CENTER)
   NumberValuePropertyTest(graphics1, "FCPageGraphic", "HorizontalPos", 1635)
   NumberValuePropertyTest(graphics1, "FCPageGraphic", "HorizontalPosRightPage", 0)
   BoolValuePropertyTest(graphics1, "FCPageGraphic", "IndependentRightPage", true)
   NumberValuePropertyTest(graphics1, "FCPageGraphic", "LastPage", 3)
   NumberValuePropertyTest_RO(graphics1, "FCPageGraphic", "OriginalHeight", 115)
   NumberValuePropertyTest_RO(graphics1, "FCPageGraphic", "OriginalWidth", 192)
   BoolValuePropertyTest(graphics1, "FCPageGraphic", "PageEdgeRef", false)
   NumberValuePropertyTest(graphics1, "FCPageGraphic", "VerticalAlignment", finale.GRAPHICVERTALIGN_BOTTOM)
   NumberValuePropertyTest(graphics1, "FCPageGraphic", "VerticalPos", 0)
   NumberValuePropertyTest(graphics1, "FCPageGraphic", "VerticalPosRightPage", 10)
   BoolValuePropertyTest(graphics1, "FCPageGraphic", "Visible", true)
   NumberValuePropertyTest(graphics1, "FCPageGraphic", "Width", 96)
end


-- Call:
local graphics1 = finale.FCPageGraphic()
AssureTrue(graphics1:Load(0, 0), "FCPageGraphic:Load(0, 0)")
FCPageGraphic_ValueTests_ItemNo0_0(graphics1)


function FCPageGraphic_ValueTests_ItemNo1_0(graphics2)
   NumberValuePropertyTest(graphics2, "FCPageGraphic", "FirstPage", 1)
   BoolValuePropertyTest(graphics2, "FCPageGraphic", "FixedPercent", true)
   NumberValuePropertyTest(graphics2, "FCPageGraphic", "Height", 288)
   NumberValuePropertyTest(graphics2, "FCPageGraphic", "HorizontalAlignment", finale.GRAPHICHORIZALIGN_LEFT)
   NumberValuePropertyTest(graphics2, "FCPageGraphic", "HorizontalAlignmentRightPage", 2)  --Undefined since it's not used!
   NumberValuePropertyTest(graphics2, "FCPageGraphic", "HorizontalPos", 372)
   NumberValuePropertyTest(graphics2, "FCPageGraphic", "HorizontalPosRightPage", 0)
   BoolValuePropertyTest(graphics2, "FCPageGraphic", "IndependentRightPage", false)
   NumberValuePropertyTest(graphics2, "FCPageGraphic", "LastPage", 1)
   NumberValuePropertyTest_RO(graphics2, "FCPageGraphic", "OriginalHeight", 288)
   NumberValuePropertyTest_RO(graphics2, "FCPageGraphic", "OriginalWidth", 192)
   BoolValuePropertyTest(graphics2, "FCPageGraphic", "PageEdgeRef", true)
   NumberValuePropertyTest(graphics2, "FCPageGraphic", "VerticalAlignment", finale.GRAPHICVERTALIGN_TOP)
   NumberValuePropertyTest(graphics2, "FCPageGraphic", "VerticalPos", -2421)
   NumberValuePropertyTest(graphics2, "FCPageGraphic", "VerticalPosRightPage", 0)
   BoolValuePropertyTest(graphics2, "FCPageGraphic", "Visible", true)
   NumberValuePropertyTest(graphics2, "FCPageGraphic", "Width", 192)
end


-- Call:
local graphics2 = finale.FCPageGraphic()
AssureTrue(graphics2:Load(1, 0), "FCPageGraphic:Load(1, 0)")
FCPageGraphic_ValueTests_ItemNo1_0(graphics2)

