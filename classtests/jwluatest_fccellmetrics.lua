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
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "SlotNumber")
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "StaffScaling")
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "StaffSystem")
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "SystemScaling")
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "SystemTopPos")
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "TopStafflinePos")
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "Width")
   NumberPropertyTest_RO(metrics, "FCCellMetrics", "RightBarlineWidth")
end


-- Call:
local metrics = finale.FCCellMetrics()
local cell = finale.FCCell(1,1)
AssureTrue(metrics:LoadAtCell(cell))

-- These functions were not marked Lua-supported in the Framework 0.54 doc pages,
-- but they appear to be hooked up in JW Lua 0.54.

StaticFunctionTest("FCCellMetrics", "MarkMetricsForRebuild")
FunctionTest(metrics, "FCCellMetrics", "LoadAtCell")

-- Test properties

FCCellMetrics_PropertyTests(metrics)
