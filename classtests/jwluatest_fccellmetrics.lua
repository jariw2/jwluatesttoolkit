function FCCellMetrics_PropertyTests(metrics)
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "AttachmentCount")
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "BackRepeatWidth")
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "BottomStafflinePos")
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "FrontRepeatWidth")
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "HorizontalStretch")
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "LeftEdge")
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "MusicStartPos")
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "MusicWidth")
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "ReferenceLinePos")
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "StaffScaling")
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "SystemScaling")
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "TopStafflinePos")
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "Width")
end


-- Call:
local metrics = finale.FCCellMetrics()
local cell = finale.FCCell(1,1)
AssureTrue(metrics:LoadAtCell(cell))
FCCellMetrics_PropertyTests(metrics)
