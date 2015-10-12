-- Property test here
function FCCellFrameHold_PropertyTests(cellframehold)
   BoolPropertyTest(cellframehold, "FCCellFrameHold", "ClefAfterBarline")
   NumberPropertyTest(cellframehold, "FCCellFrameHold", "ClefIndex", {0, 1, 16})
   NumberPropertyTest(cellframehold, "FCCellFrameHold", "ClefPercent", {10, 100, 200})
   NumberPropertyTest(cellframehold, "FCCellFrameHold", "ClefShow", {finale.SHOWCLEF_NORMAL, finale.SHOWCLEF_HIDE, finale.SHOWCLEF_ALWAYS})
end



function FCCellFrameHold_ValueTests_Cell5_2(cellframehold)
   BoolValuePropertyTest(cellframehold, "FCCellFrameHold", "ClefAfterBarline", true)
   NumberValuePropertyTest(cellframehold, "FCCellFrameHold", "ClefIndex", 9)
   NumberValuePropertyTest(cellframehold, "FCCellFrameHold", "ClefPercent", 60)
   NumberValuePropertyTest(cellframehold, "FCCellFrameHold", "ClefShow", finale.SHOWCLEF_ALWAYS)
end


-- Call:
local cellframehold = finale.FCCellFrameHold()
local cell = finale.FCCell(5, 2)
cellframehold:ConnectCell(cell)
AssureTrue(cellframehold:Load(), "FCCellFrameHold:Load()")
-- Property test:
FCCellFrameHold_PropertyTests(cellframehold)
-- File-contents test:
FCCellFrameHold_ValueTests_Cell5_2(cellframehold)
