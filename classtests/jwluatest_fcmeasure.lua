-- Test for FCMeasure


function FCMeasure_PropertyTests(measure)
   BoolPropertyTest(measure, "FCMeasure", "AllowHorizontalSplit")
   BoolPropertyTest(measure, "FCMeasure", "BackwardRepeat")
   NumberPropertyTest(measure, "FCMeasure", "Barline", {finale.BARLINE_NONE, finale.BARLINE_NORMAL, 
    finale.BARLINE_DOUBLE, finale.BARLINE_DASHED, finale.BARLINE_THICK,
    finale.BARLINE_FINAL, finale.BARLINE_TICK, finale.BARLINE_SHAPE })
   NumberPropertyTest(measure, "FCMeasure", "BarlineShapeID", {0, 21, 210})
   BoolPropertyTest(measure, "FCMeasure", "BreakMMRest")
   BoolPropertyTest(measure, "FCMeasure", "BreakWordExtension")
   BoolPropertyTest(measure, "FCMeasure", "ChordFlag")
   BoolPropertyTest(measure, "FCMeasure", "ContainsManualMeasureNumbers")
   BoolPropertyTest(measure, "FCMeasure", "ExpressionFlag")
   BoolPropertyTest(measure, "FCMeasure", "ForwardRepeat")
   BoolPropertyTest(measure, "FCMeasure", "HideCautionary")
   BoolPropertyTest(measure, "FCMeasure", "IncludeInNumbering")
   ObjectPropertyTest_RO(measure, "FCMeasure", "KeySignature", "FCKeySignature")
   NumberPropertyTest(measure, "FCMeasure", "LeftBarline", {finale.BARLINE_NONE, finale.BARLINE_NORMAL, 
    finale.BARLINE_DOUBLE, finale.BARLINE_DASHED, finale.BARLINE_THICK,
    finale.BARLINE_FINAL, finale.BARLINE_TICK, finale.BARLINE_SHAPE,
    finale.BARLINE_DEFAULT })
   NumberPropertyTest(measure, "FCMeasure", "LeftBarlineShapeID", {0, 12, 300})
   BoolPropertyTest(measure, "FCMeasure", "OverrideGroupBarlines")
   BoolPropertyTest(measure, "FCMeasure", "PageBreak")
   BoolPropertyTest(measure, "FCMeasure", "PositionEvenly")
   NumberPropertyTest(measure, "FCMeasure", "PositioningNotesMode", {finale.POSITIONING_TIMESIG, finale.POSITIONING_MANUALLY, finale.POSITIONING_BEATCHART })
   BoolPropertyTest(measure, "FCMeasure", "RepeatBracketFlag")
   BoolPropertyTest(measure, "FCMeasure", "ShowFullNames")
   NumberPropertyTest(measure, "FCMeasure", "ShowKeySignature", {finale.SHOWSTATE_IFNEEDED, finale.SHOWSTATE_SHOW, finale.SHOWSTATE_HIDE} )
   NumberPropertyTest(measure, "FCMeasure", "ShowTimeSignature", {finale.SHOWSTATE_IFNEEDED, finale.SHOWSTATE_SHOW, finale.SHOWSTATE_HIDE})
   BoolPropertyTest(measure, "FCMeasure", "SmartShapeFlag")
   NumberPropertyTest(measure, "FCMeasure", "SpaceAfter", {-180, 0, 10, 210})
   NumberPropertyTest(measure, "FCMeasure", "SpaceBefore", {-190, 0, 8, 209})
   BoolPropertyTest(measure, "FCMeasure", "SystemBreak")
   BoolPropertyTest(measure, "FCMeasure", "TextFlag")
   BoolPropertyTest(measure, "FCMeasure", "TextRepeatFlag")
   ObjectPropertyTest_RO(measure, "FCMeasure", "TimeSignature", "FCTimeSignature")
   PropertyTest_RO(measure, "FCMeasure", "TimeSignatureForDisplay", true) -- true allow nil value
   BoolPropertyTest(measure, "FCMeasure", "UseTimeSigForDisplay")
   NumberPropertyTest(measure, "FCMeasure", "Width", {0, 100, 299})
    if Is2014OrAbove() then
        BoolPropertyTest(measure, "FCMeasure", "Keyless")
        BoolPropertyTest(measure, "FCMeasure", "HideKeySigShowAccis")
    end
end


-- Call:
local measure = finale.FCMeasure()
AssureTrue(measure:Load(1), "FCMeasure:Load(1)")
FCMeasure_PropertyTests(measure)

