function FCPageText_PropertyTests(obj)
   NumberPropertyTest(obj, "FCPageText", "FirstPage", {1, 2})
   -- due to a bug, FrameEdgeRef is effectively read-only in Finale 27.2 and lower. 
   local frame_ref_tester = finenv.RawFinaleVersion <= 0x1b200000 and BoolPropertyTest_RO or BoolPropertyTest
   frame_ref_tester(obj, "FCPageText", "FrameEdgeRef") 
   NumberPropertyTest(obj, "FCPageText", "HorizontalAlignment",
       {finale.TEXTHORIZALIGN_LEFT, finale.TEXTHORIZALIGN_RIGHT, finale.TEXTHORIZALIGN_CENTER})
   NumberPropertyTest(obj, "FCPageText", "HorizontalAlignmentRightPage",
       {finale.TEXTHORIZALIGN_LEFT, finale.TEXTHORIZALIGN_RIGHT, finale.TEXTHORIZALIGN_CENTER})
   NumberPropertyTest(obj, "FCPageText", "HorizontalPos", {-144, 0, 288})
   NumberPropertyTest(obj, "FCPageText", "HorizontalPosRightPage", {-144, 0, 288})
   BoolPropertyTest(obj, "FCPageText", "IndependentRightPage")
   NumberPropertyTest(obj, "FCPageText", "LastPage", {3, 4})
   NumberPropertyTest(obj, "FCPageText", "PageAssignment", {finale.TEXTASSIGN_ALL, finale.TEXTASSIGN_ODD, finale.TEXTASSIGN_EVEN})
   BoolPropertyTest(obj, "FCPageText", "PageEdgeRef")
   NumberPropertyTest_RO(obj, "FCPageText", "StringID")
   NumberPropertyTest_RO(obj, "FCPageText", "TextBlockID")
   NumberPropertyTest(obj, "FCPageText", "VerticalAlignment",
       {finale.TEXTVERTALIGN_TOP, finale.TEXTVERTALIGN_BOTTOM, finale.TEXTVERTALIGN_CENTER})
   NumberPropertyTest(obj, "FCPageText", "VerticalPos", {-144, 0, 288})
   NumberPropertyTest(obj, "FCPageText", "VerticalPosRightPage", {-144, 0, 288})
   BoolPropertyTest(obj, "FCPageText", "Visible")
end


-- Call:
local obj = finale.FCPageText()
AssureTrue(obj:Load(1, 0), "FCPageText:Load()")
FCPageText_PropertyTests(obj)
