function FCCellText_ValueTests_Cell12_1(cell_text)
   NumberValuePropertyTest(cell_text, "FCCellText", "MeasurePos", 454)
   NumberValuePropertyTest_RO(cell_text, "FCCellText", "StringID", 25)
   NumberValuePropertyTest_RO(cell_text, "FCCellText", "TextBlockID", 92)
   NumberValuePropertyTest(cell_text, "FCCellText", "VerticalPos", 87)
   BoolValuePropertyTest(cell_text, "FCCellText", "Visible", true)
end


-- Call:
local cell_text = finale.FCCellText()
cell_text:ConnectCell(finale.FCCell(12, 1))
AssureTrue(cell_text:LoadFirst(), "FCCellText:LoadFirst()")
FCCellText_ValueTests_Cell12_1(cell_text)
