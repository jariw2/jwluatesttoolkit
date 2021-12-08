function FCEntryMetrics_PropertyTests(metrics)
    NumberPropertyTest_RO(metrics, "FCEntryMetrics", "TopPosition")
    NumberPropertyTest_RO(metrics, "FCEntryMetrics", "StemTopPosition")
    NumberPropertyTest_RO(metrics, "FCEntryMetrics", "BottomPosition")
    NumberPropertyTest_RO(metrics, "FCEntryMetrics", "StemBottomPosition")
    NumberPropertyTest_RO(metrics, "FCEntryMetrics", "LeftPosition")
    NumberPropertyTest_RO(metrics, "FCEntryMetrics", "StemLeftPosition")
    NumberPropertyTest_RO(metrics, "FCEntryMetrics", "RightPosition")
    NumberPropertyTest_RO(metrics, "FCEntryMetrics", "StemRightPosition")
end


-- Call:
local metrics = finale.FCEntryMetrics()

FunctionTest(metrics, "FCEntryMetrics", "GetNoteLeftPosition")
FunctionTest(metrics, "FCEntryMetrics", "GetNoteCenterVerticalPos")
FunctionTest(metrics, "FCEntryMetrics", "GetNoteID")

-- Test properties

FCEntryMetrics_PropertyTests(metrics)
