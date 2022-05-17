function FCCellMetrics_ValueTests_Cell_6_2(metrics)
   NumberValuePropertyTest_RO(metrics, "FCCellMetrics", "AttachmentCount", 0)
   NumberValuePropertyTest_RO(metrics, "FCCellMetrics", "BackRepeatWidth", 0)
   NumberValuePropertyTest_RO(metrics, "FCCellMetrics", "BottomStafflinePos", 1567)
   NumberValuePropertyTest_RO(metrics, "FCCellMetrics", "FrontRepeatWidth", 0)
   NumberValuePropertyTest_RO(metrics, "FCCellMetrics", "HorizontalStretch", 9979)
   NumberValuePropertyTest_RO(metrics, "FCCellMetrics", "LeftEdge", finenv.UI():IsOnWindows() and 1497 or 1496)
   NumberValuePropertyTest_RO(metrics, "FCCellMetrics", "MusicStartPos", finenv.UI():IsOnWindows() and 1499 or 1498)
   NumberValuePropertyTest_RO(metrics, "FCCellMetrics", "MusicWidth", 567)
   NumberValuePropertyTest_RO(metrics, "FCCellMetrics", "ReferenceLinePos", 1663)
   NumberValuePropertyTest_RO(metrics, "FCCellMetrics", "SlotNumber", 2)
   NumberValuePropertyTest_RO(metrics, "FCCellMetrics", "StaffScaling", 8542)
   NumberValuePropertyTest_RO(metrics, "FCCellMetrics", "StaffSystem", 2)
   NumberValuePropertyTest_RO(metrics, "FCCellMetrics", "SystemScaling", 8542)
   NumberValuePropertyTest_RO(metrics, "FCCellMetrics", "SystemTopPos", 1983)
   NumberValuePropertyTest_RO(metrics, "FCCellMetrics", "TopStafflinePos", 1663)
   NumberValuePropertyTest_RO(metrics, "FCCellMetrics", "Width", 599)
   NumberValuePropertyTest_RO(metrics, "FCCellMetrics", "RightBarlineWidth", 0)
end


-- Call:
local metrics = finale.FCCellMetrics()
local cell = finale.FCCell(6,2)
AssureTrue(metrics:LoadAtCell(cell))

FCCellMetrics_ValueTests_Cell_6_2(metrics)
