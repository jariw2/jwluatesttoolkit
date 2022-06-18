function FCCellText_PropertyTests(obj)
   NumberPropertyTest(obj, "FCCellText", "MeasurePos", {0, 1024, 1536})
   NumberPropertyTest_RO(obj, "FCCellText", "StringID")
   NumberPropertyTest_RO(obj, "FCCellText", "TextBlockID")
   NumberPropertyTest(obj, "FCCellText", "VerticalPos", {-144, 0, 144})
   BoolPropertyTest(obj, "FCCellText", "Visible")
end


-- Call:
local obj = finale.FCCellText()
obj:ConnectCell(finale.FCCell(12, 1))
AssureTrue(obj:LoadFirst(), "FCCellText:LoadFirst()")
FCCellText_PropertyTests(obj)
