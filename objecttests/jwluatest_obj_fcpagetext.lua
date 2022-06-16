function FCPageText_ValueTests_ItemNo1_0(obj)
   NumberValuePropertyTest(obj, "FCPageText", "FirstPage", 1)
   BoolValuePropertyTest(obj, "FCPageText", "FrameEdgeRef", true, true)
   NumberValuePropertyTest(obj, "FCPageText", "HorizontalAlignment", 2)
   NumberValuePropertyTest(obj, "FCPageText", "HorizontalAlignmentRightPage", 2)
   NumberValuePropertyTest(obj, "FCPageText", "HorizontalPos", 0)
   NumberValuePropertyTest(obj, "FCPageText", "HorizontalPosRightPage", 0)
   BoolValuePropertyTest(obj, "FCPageText", "IndependentRightPage", true)
   NumberValuePropertyTest(obj, "FCPageText", "LastPage", 1)
   NumberValuePropertyTest(obj, "FCPageText", "PageAssignment", 0)
   BoolValuePropertyTest(obj, "FCPageText", "PageEdgeRef", false)
   NumberValuePropertyTest_RO(obj, "FCPageText", "StringID", 14)
   NumberValuePropertyTest_RO(obj, "FCPageText", "TextBlockID", 85)
   NumberValuePropertyTest(obj, "FCPageText", "VerticalAlignment", 0)
   NumberValuePropertyTest(obj, "FCPageText", "VerticalPos", -36)
   NumberValuePropertyTest(obj, "FCPageText", "VerticalPosRightPage", -36)
   BoolValuePropertyTest(obj, "FCPageText", "Visible", true)
end


-- Call:
local obj = finale.FCPageText()
AssureTrue(obj:Load(1, 0), "FCPageText:Load(1, 0)")
FCPageText_ValueTests_ItemNo1_0(obj)
