function FCMeasure_ValueTests_ItemNo1(meas)
   BoolValuePropertyTest(meas, "FCMeasure", "AllowHorizontalSplit", true)
   BoolValuePropertyTest(meas, "FCMeasure", "BackwardRepeat", false)
   NumberValuePropertyTest(meas, "FCMeasure", "Barline", finale.BARLINE_NORMAL)
   NumberValuePropertyTest(meas, "FCMeasure", "BarlineShapeID", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "BreakMMRest", true)
   BoolValuePropertyTest(meas, "FCMeasure", "BreakWordExtension", true)
   BoolValuePropertyTest(meas, "FCMeasure", "ChordFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ContainsManualMeasureNumbers", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ExpressionFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ForwardRepeat", false)
   BoolValuePropertyTest(meas, "FCMeasure", "HideCautionary", true)
   BoolValuePropertyTest(meas, "FCMeasure", "HideKeySigShowAccis", false)
   BoolValuePropertyTest(meas, "FCMeasure", "IncludeInNumbering", false)
   ObjectPropertyTest_RO(meas, "FCMeasure", "KeySignature", "FCKeySignature")
   BoolValuePropertyTest(meas, "FCMeasure", "Keyless", false)
   NumberValuePropertyTest(meas, "FCMeasure", "LeftBarline", finale.BARLINE_DEFAULT)
   NumberValuePropertyTest(meas, "FCMeasure", "LeftBarlineShapeID", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "OverrideGroupBarlines", false)
   BoolValuePropertyTest(meas, "FCMeasure", "PageBreak", false)
   BoolValuePropertyTest(meas, "FCMeasure", "PositionEvenly", true)
   NumberValuePropertyTest(meas, "FCMeasure", "PositioningNotesMode", finale.POSITIONING_MANUALLY)
   BoolValuePropertyTest(meas, "FCMeasure", "RepeatBracketFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ShowFullNames", true)
   NumberValuePropertyTest(meas, "FCMeasure", "ShowKeySignature", finale.SHOWSTATE_SHOW)
   NumberValuePropertyTest(meas, "FCMeasure", "ShowTimeSignature", finale.SHOWSTATE_SHOW)
   BoolValuePropertyTest(meas, "FCMeasure", "SmartShapeFlag", false)
   NumberValuePropertyTest(meas, "FCMeasure", "SpaceAfter", 0)
   NumberValuePropertyTest(meas, "FCMeasure", "SpaceBefore", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "SystemBreak", true)
   BoolValuePropertyTest(meas, "FCMeasure", "TextFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "TextRepeatFlag", false)
   ObjectPropertyTest_RO(meas, "FCMeasure", "TimeSignature", "FCTimeSignature")
   AssureNil(meas.TimeSignatureForDisplay)
   BoolValuePropertyTest(meas, "FCMeasure", "UseTimeSigForDisplay", false)
   NumberValuePropertyTest(meas, "FCMeasure", "Width", 684)
end


-- Call:
local meas = finale.FCMeasure()
AssureTrue(meas:Load(1))
FCMeasure_ValueTests_ItemNo1(meas)




function FCMeasure_ValueTests_ItemNo2(meas)
   BoolValuePropertyTest(meas, "FCMeasure", "AllowHorizontalSplit", false)
   BoolValuePropertyTest(meas, "FCMeasure", "BackwardRepeat", false)
   NumberValuePropertyTest(meas, "FCMeasure", "Barline", finale.BARLINE_DOUBLE)
   NumberValuePropertyTest(meas, "FCMeasure", "BarlineShapeID", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "BreakMMRest", true)
   BoolValuePropertyTest(meas, "FCMeasure", "BreakWordExtension", true)
   BoolValuePropertyTest(meas, "FCMeasure", "ChordFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ContainsManualMeasureNumbers", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ExpressionFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ForwardRepeat", false)
   BoolValuePropertyTest(meas, "FCMeasure", "HideCautionary", false)
   BoolValuePropertyTest(meas, "FCMeasure", "HideKeySigShowAccis", false)
   BoolValuePropertyTest(meas, "FCMeasure", "IncludeInNumbering", true)
   ObjectPropertyTest_RO(meas, "FCMeasure", "KeySignature", "FCKeySignature")
   BoolValuePropertyTest(meas, "FCMeasure", "Keyless", false)
   NumberValuePropertyTest(meas, "FCMeasure", "LeftBarline", finale.BARLINE_NORMAL)
   NumberValuePropertyTest(meas, "FCMeasure", "LeftBarlineShapeID", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "OverrideGroupBarlines", true)
   BoolValuePropertyTest(meas, "FCMeasure", "PageBreak", false)
   BoolValuePropertyTest(meas, "FCMeasure", "PositionEvenly", false)
   NumberValuePropertyTest(meas, "FCMeasure", "PositioningNotesMode", finale.POSITIONING_BEATCHART)
   BoolValuePropertyTest(meas, "FCMeasure", "RepeatBracketFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ShowFullNames", false)
   NumberValuePropertyTest(meas, "FCMeasure", "ShowKeySignature", finale.SHOWSTATE_HIDE)
   NumberValuePropertyTest(meas, "FCMeasure", "ShowTimeSignature", finale.SHOWSTATE_HIDE)
   BoolValuePropertyTest(meas, "FCMeasure", "SmartShapeFlag", false)
   NumberValuePropertyTest(meas, "FCMeasure", "SpaceAfter", 0)
   NumberValuePropertyTest(meas, "FCMeasure", "SpaceBefore", 39)
   BoolValuePropertyTest(meas, "FCMeasure", "SystemBreak", false)
   BoolValuePropertyTest(meas, "FCMeasure", "TextFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "TextRepeatFlag", true)
   ObjectPropertyTest_RO(meas, "FCMeasure", "TimeSignature", "FCTimeSignature")
   AssureNil(meas.TimeSignatureForDisplay)
   BoolValuePropertyTest(meas, "FCMeasure", "UseTimeSigForDisplay", false)
   NumberValuePropertyTest(meas, "FCMeasure", "Width", 480)
end


-- Call:
local meas = finale.FCMeasure()
AssureTrue(meas:Load(2))
FCMeasure_ValueTests_ItemNo2(meas)



function FCMeasure_ValueTests_ItemNo3(meas)
   BoolValuePropertyTest(meas, "FCMeasure", "AllowHorizontalSplit", false)
   BoolValuePropertyTest(meas, "FCMeasure", "BackwardRepeat", false)
   NumberValuePropertyTest(meas, "FCMeasure", "Barline", finale.BARLINE_FINAL)
   NumberValuePropertyTest(meas, "FCMeasure", "BarlineShapeID", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "BreakMMRest", true)
   BoolValuePropertyTest(meas, "FCMeasure", "BreakWordExtension", true)
   BoolValuePropertyTest(meas, "FCMeasure", "ChordFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ContainsManualMeasureNumbers", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ExpressionFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ForwardRepeat", false)
   BoolValuePropertyTest(meas, "FCMeasure", "HideCautionary", false)
   BoolValuePropertyTest(meas, "FCMeasure", "HideKeySigShowAccis", false)
   BoolValuePropertyTest(meas, "FCMeasure", "IncludeInNumbering", true)
   ObjectPropertyTest_RO(meas, "FCMeasure", "KeySignature", "FCKeySignature")
   BoolValuePropertyTest(meas, "FCMeasure", "Keyless", false)
   NumberValuePropertyTest(meas, "FCMeasure", "LeftBarline", finale.BARLINE_DOUBLE)
   NumberValuePropertyTest(meas, "FCMeasure", "LeftBarlineShapeID", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "OverrideGroupBarlines", true)
   BoolValuePropertyTest(meas, "FCMeasure", "PageBreak", false)
   BoolValuePropertyTest(meas, "FCMeasure", "PositionEvenly", false)
   NumberValuePropertyTest(meas, "FCMeasure", "PositioningNotesMode", finale.POSITIONING_TIMESIG)
   BoolValuePropertyTest(meas, "FCMeasure", "RepeatBracketFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ShowFullNames", false)
   NumberValuePropertyTest(meas, "FCMeasure", "ShowKeySignature", finale.SHOWSTATE_IFNEEDED)
   NumberValuePropertyTest(meas, "FCMeasure", "ShowTimeSignature", finale.SHOWSTATE_IFNEEDED)
   BoolValuePropertyTest(meas, "FCMeasure", "SmartShapeFlag", false)
   NumberValuePropertyTest(meas, "FCMeasure", "SpaceAfter", 60)
   NumberValuePropertyTest(meas, "FCMeasure", "SpaceBefore", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "SystemBreak", false)
   BoolValuePropertyTest(meas, "FCMeasure", "TextFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "TextRepeatFlag", true)
   ObjectPropertyTest_RO(meas, "FCMeasure", "TimeSignature", "FCTimeSignature")
   AssureNil(meas.TimeSignatureForDisplay)
   BoolValuePropertyTest(meas, "FCMeasure", "UseTimeSigForDisplay", false)
   NumberValuePropertyTest(meas, "FCMeasure", "Width", 636)
end


-- Call:
local meas = finale.FCMeasure()
AssureTrue(meas:Load(3))
FCMeasure_ValueTests_ItemNo3(meas)


function FCMeasure_ValueTests_ItemNo4(meas)
   BoolValuePropertyTest(meas, "FCMeasure", "AllowHorizontalSplit", false)
   BoolValuePropertyTest(meas, "FCMeasure", "BackwardRepeat", false)
   NumberValuePropertyTest(meas, "FCMeasure", "Barline", finale.BARLINE_THICK)
   NumberValuePropertyTest(meas, "FCMeasure", "BarlineShapeID", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "BreakMMRest", true)
   BoolValuePropertyTest(meas, "FCMeasure", "BreakWordExtension", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ChordFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ContainsManualMeasureNumbers", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ExpressionFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ForwardRepeat", false)
   BoolValuePropertyTest(meas, "FCMeasure", "HideCautionary", false)
   BoolValuePropertyTest(meas, "FCMeasure", "HideKeySigShowAccis", false)
   BoolValuePropertyTest(meas, "FCMeasure", "IncludeInNumbering", true)
   ObjectPropertyTest_RO(meas, "FCMeasure", "KeySignature", "FCKeySignature")
   BoolValuePropertyTest(meas, "FCMeasure", "Keyless", false)
   NumberValuePropertyTest(meas, "FCMeasure", "LeftBarline", finale.BARLINE_FINAL)
   NumberValuePropertyTest(meas, "FCMeasure", "LeftBarlineShapeID", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "OverrideGroupBarlines", true)
   BoolValuePropertyTest(meas, "FCMeasure", "PageBreak", false)
   BoolValuePropertyTest(meas, "FCMeasure", "PositionEvenly", false)
   NumberValuePropertyTest(meas, "FCMeasure", "PositioningNotesMode", finale.POSITIONING_TIMESIG)
   BoolValuePropertyTest(meas, "FCMeasure", "RepeatBracketFlag", true)
   BoolValuePropertyTest(meas, "FCMeasure", "ShowFullNames", false)
   NumberValuePropertyTest(meas, "FCMeasure", "ShowKeySignature", finale.SHOWSTATE_SHOW)
   NumberValuePropertyTest(meas, "FCMeasure", "ShowTimeSignature", finale.SHOWSTATE_IFNEEDED)
   BoolValuePropertyTest(meas, "FCMeasure", "SmartShapeFlag", false)
   NumberValuePropertyTest(meas, "FCMeasure", "SpaceAfter", 0)
   NumberValuePropertyTest(meas, "FCMeasure", "SpaceBefore", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "SystemBreak", true)
   BoolValuePropertyTest(meas, "FCMeasure", "TextFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "TextRepeatFlag", false)
   ObjectPropertyTest_RO(meas, "FCMeasure", "TimeSignature", "FCTimeSignature")
   AssureNil(meas.TimeSignatureForDisplay)
   BoolValuePropertyTest(meas, "FCMeasure", "UseTimeSigForDisplay", false)
   NumberValuePropertyTest(meas, "FCMeasure", "Width", 600)
end


-- Call:
local meas = finale.FCMeasure()
AssureTrue(meas:Load(4))
FCMeasure_ValueTests_ItemNo4(meas)


function FCMeasure_ValueTests_ItemNo5(meas)
   BoolValuePropertyTest(meas, "FCMeasure", "AllowHorizontalSplit", true)
   BoolValuePropertyTest(meas, "FCMeasure", "BackwardRepeat", false)
   NumberValuePropertyTest(meas, "FCMeasure", "Barline", finale.BARLINE_DASHED)
   NumberValuePropertyTest(meas, "FCMeasure", "BarlineShapeID", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "BreakMMRest", false)
   BoolValuePropertyTest(meas, "FCMeasure", "BreakWordExtension", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ChordFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ContainsManualMeasureNumbers", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ExpressionFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ForwardRepeat", false)
   BoolValuePropertyTest(meas, "FCMeasure", "HideCautionary", false)
   BoolValuePropertyTest(meas, "FCMeasure", "HideKeySigShowAccis", false)
   BoolValuePropertyTest(meas, "FCMeasure", "IncludeInNumbering", false)
   ObjectPropertyTest_RO(meas, "FCMeasure", "KeySignature", "FCKeySignature")
   BoolValuePropertyTest(meas, "FCMeasure", "Keyless", false)
   NumberValuePropertyTest(meas, "FCMeasure", "LeftBarline", finale.BARLINE_THICK)
   NumberValuePropertyTest(meas, "FCMeasure", "LeftBarlineShapeID", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "OverrideGroupBarlines", false)
   BoolValuePropertyTest(meas, "FCMeasure", "PageBreak", false)
   BoolValuePropertyTest(meas, "FCMeasure", "PositionEvenly", true)
   NumberValuePropertyTest(meas, "FCMeasure", "PositioningNotesMode", finale.POSITIONING_TIMESIG)
   BoolValuePropertyTest(meas, "FCMeasure", "RepeatBracketFlag", true)
   BoolValuePropertyTest(meas, "FCMeasure", "ShowFullNames", true)
   NumberValuePropertyTest(meas, "FCMeasure", "ShowKeySignature", finale.SHOWSTATE_IFNEEDED)
   NumberValuePropertyTest(meas, "FCMeasure", "ShowTimeSignature", finale.SHOWSTATE_IFNEEDED)
   BoolValuePropertyTest(meas, "FCMeasure", "SmartShapeFlag", false)
   NumberValuePropertyTest(meas, "FCMeasure", "SpaceAfter", 0)
   NumberValuePropertyTest(meas, "FCMeasure", "SpaceBefore", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "SystemBreak", false)
   BoolValuePropertyTest(meas, "FCMeasure", "TextFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "TextRepeatFlag", false)
   ObjectPropertyTest_RO(meas, "FCMeasure", "TimeSignature", "FCTimeSignature")
   AssureNil(meas.TimeSignatureForDisplay)
   BoolValuePropertyTest(meas, "FCMeasure", "UseTimeSigForDisplay", false)
   NumberValuePropertyTest(meas, "FCMeasure", "Width", 600)
end


-- Call:
local meas = finale.FCMeasure()
AssureTrue(meas:Load(5))
FCMeasure_ValueTests_ItemNo5(meas)


function FCMeasure_ValueTests_ItemNo6(meas)
   BoolValuePropertyTest(meas, "FCMeasure", "AllowHorizontalSplit", true)
   BoolValuePropertyTest(meas, "FCMeasure", "BackwardRepeat", false)
   NumberValuePropertyTest(meas, "FCMeasure", "Barline", finale.BARLINE_NONE)
   NumberValuePropertyTest(meas, "FCMeasure", "BarlineShapeID", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "BreakMMRest", false)
   BoolValuePropertyTest(meas, "FCMeasure", "BreakWordExtension", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ChordFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ContainsManualMeasureNumbers", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ExpressionFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ForwardRepeat", false)
   BoolValuePropertyTest(meas, "FCMeasure", "HideCautionary", false)
   BoolValuePropertyTest(meas, "FCMeasure", "HideKeySigShowAccis", false)
   BoolValuePropertyTest(meas, "FCMeasure", "IncludeInNumbering", true)
   ObjectPropertyTest_RO(meas, "FCMeasure", "KeySignature", "FCKeySignature")
   BoolValuePropertyTest(meas, "FCMeasure", "Keyless", false)
   NumberValuePropertyTest(meas, "FCMeasure", "LeftBarline", finale.BARLINE_DASHED)
   NumberValuePropertyTest(meas, "FCMeasure", "LeftBarlineShapeID", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "OverrideGroupBarlines", false)
   BoolValuePropertyTest(meas, "FCMeasure", "PageBreak", false)
   BoolValuePropertyTest(meas, "FCMeasure", "PositionEvenly", false)
   NumberValuePropertyTest(meas, "FCMeasure", "PositioningNotesMode", finale.POSITIONING_TIMESIG)
   BoolValuePropertyTest(meas, "FCMeasure", "RepeatBracketFlag", true)
   BoolValuePropertyTest(meas, "FCMeasure", "ShowFullNames", false)
   NumberValuePropertyTest(meas, "FCMeasure", "ShowKeySignature", finale.SHOWSTATE_IFNEEDED)
   NumberValuePropertyTest(meas, "FCMeasure", "ShowTimeSignature", finale.SHOWSTATE_HIDE)
   BoolValuePropertyTest(meas, "FCMeasure", "SmartShapeFlag", false)
   NumberValuePropertyTest(meas, "FCMeasure", "SpaceAfter", 0)
   NumberValuePropertyTest(meas, "FCMeasure", "SpaceBefore", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "SystemBreak", false)
   BoolValuePropertyTest(meas, "FCMeasure", "TextFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "TextRepeatFlag", false)
   ObjectPropertyTest_RO(meas, "FCMeasure", "TimeSignature", "FCTimeSignature")
   AssureNil(meas.TimeSignatureForDisplay)
   BoolValuePropertyTest(meas, "FCMeasure", "UseTimeSigForDisplay", false)
   NumberValuePropertyTest(meas, "FCMeasure", "Width", 600)
end


-- Call:
local meas = finale.FCMeasure()
AssureTrue(meas:Load(6))
FCMeasure_ValueTests_ItemNo6(meas)


function FCMeasure_ValueTests_ItemNo7(meas)
   BoolValuePropertyTest(meas, "FCMeasure", "AllowHorizontalSplit", false)
   BoolValuePropertyTest(meas, "FCMeasure", "BackwardRepeat", false)
   NumberValuePropertyTest(meas, "FCMeasure", "Barline", finale.BARLINE_TICK)
   NumberValuePropertyTest(meas, "FCMeasure", "BarlineShapeID", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "BreakMMRest", false)
   BoolValuePropertyTest(meas, "FCMeasure", "BreakWordExtension", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ChordFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ContainsManualMeasureNumbers", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ExpressionFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ForwardRepeat", false)
   BoolValuePropertyTest(meas, "FCMeasure", "HideCautionary", false)
   BoolValuePropertyTest(meas, "FCMeasure", "HideKeySigShowAccis", false)
   BoolValuePropertyTest(meas, "FCMeasure", "IncludeInNumbering", true)
   ObjectPropertyTest_RO(meas, "FCMeasure", "KeySignature", "FCKeySignature")
   BoolValuePropertyTest(meas, "FCMeasure", "Keyless", false)
   NumberValuePropertyTest(meas, "FCMeasure", "LeftBarline", finale.BARLINE_NONE)
   NumberValuePropertyTest(meas, "FCMeasure", "LeftBarlineShapeID", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "OverrideGroupBarlines", false)
   BoolValuePropertyTest(meas, "FCMeasure", "PageBreak", false)
   BoolValuePropertyTest(meas, "FCMeasure", "PositionEvenly", false)
   NumberValuePropertyTest(meas, "FCMeasure", "PositioningNotesMode", finale.POSITIONING_MANUALLY)
   BoolValuePropertyTest(meas, "FCMeasure", "RepeatBracketFlag", true)
   BoolValuePropertyTest(meas, "FCMeasure", "ShowFullNames", false)
   NumberValuePropertyTest(meas, "FCMeasure", "ShowKeySignature", finale.SHOWSTATE_HIDE)
   NumberValuePropertyTest(meas, "FCMeasure", "ShowTimeSignature", finale.SHOWSTATE_IFNEEDED)
   BoolValuePropertyTest(meas, "FCMeasure", "SmartShapeFlag", false)
   NumberValuePropertyTest(meas, "FCMeasure", "SpaceAfter", 0)
   NumberValuePropertyTest(meas, "FCMeasure", "SpaceBefore", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "SystemBreak", false)
   BoolValuePropertyTest(meas, "FCMeasure", "TextFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "TextRepeatFlag", false)
   ObjectPropertyTest_RO(meas, "FCMeasure", "TimeSignature", "FCTimeSignature")
   AssureNil(meas.TimeSignatureForDisplay)
   BoolValuePropertyTest(meas, "FCMeasure", "UseTimeSigForDisplay", false)
   NumberValuePropertyTest(meas, "FCMeasure", "Width", 600)
end


-- Call:
local meas = finale.FCMeasure()
AssureTrue(meas:Load(7))
FCMeasure_ValueTests_ItemNo7(meas)


function FCMeasure_ValueTests_ItemNo8(meas)
   BoolValuePropertyTest(meas, "FCMeasure", "AllowHorizontalSplit", false)
   BoolValuePropertyTest(meas, "FCMeasure", "BackwardRepeat", true)
   NumberValuePropertyTest(meas, "FCMeasure", "Barline", finale.BARLINE_SHAPE)
   NumberValuePropertyTest(meas, "FCMeasure", "BarlineShapeID", 51)
   BoolValuePropertyTest(meas, "FCMeasure", "BreakMMRest", false)
   BoolValuePropertyTest(meas, "FCMeasure", "BreakWordExtension", true)
   BoolValuePropertyTest(meas, "FCMeasure", "ChordFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ContainsManualMeasureNumbers", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ExpressionFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "ForwardRepeat", false)
   BoolValuePropertyTest(meas, "FCMeasure", "HideCautionary", false)
   BoolValuePropertyTest(meas, "FCMeasure", "HideKeySigShowAccis", false)
   BoolValuePropertyTest(meas, "FCMeasure", "IncludeInNumbering", true)
   ObjectPropertyTest_RO(meas, "FCMeasure", "KeySignature", "FCKeySignature")
   BoolValuePropertyTest(meas, "FCMeasure", "Keyless", false)
   NumberValuePropertyTest(meas, "FCMeasure", "LeftBarline", finale.BARLINE_SHAPE)
   NumberValuePropertyTest(meas, "FCMeasure", "LeftBarlineShapeID", 52)
   BoolValuePropertyTest(meas, "FCMeasure", "OverrideGroupBarlines", false)
   BoolValuePropertyTest(meas, "FCMeasure", "PageBreak", false)
   BoolValuePropertyTest(meas, "FCMeasure", "PositionEvenly", false)
   NumberValuePropertyTest(meas, "FCMeasure", "PositioningNotesMode", finale.POSITIONING_BEATCHART)
   BoolValuePropertyTest(meas, "FCMeasure", "RepeatBracketFlag", true)
   BoolValuePropertyTest(meas, "FCMeasure", "ShowFullNames", false)
   NumberValuePropertyTest(meas, "FCMeasure", "ShowKeySignature", finale.SHOWSTATE_HIDE)
   NumberValuePropertyTest(meas, "FCMeasure", "ShowTimeSignature", finale.SHOWSTATE_IFNEEDED)
   BoolValuePropertyTest(meas, "FCMeasure", "SmartShapeFlag", false)
   NumberValuePropertyTest(meas, "FCMeasure", "SpaceAfter", 0)
   NumberValuePropertyTest(meas, "FCMeasure", "SpaceBefore", 0)
   BoolValuePropertyTest(meas, "FCMeasure", "SystemBreak", false)
   BoolValuePropertyTest(meas, "FCMeasure", "TextFlag", false)
   BoolValuePropertyTest(meas, "FCMeasure", "TextRepeatFlag", false)
   ObjectPropertyTest_RO(meas, "FCMeasure", "TimeSignature", "FCTimeSignature")
   AssureNil(meas.TimeSignatureForDisplay)
   BoolValuePropertyTest(meas, "FCMeasure", "UseTimeSigForDisplay", false)
   NumberValuePropertyTest(meas, "FCMeasure", "Width", 600)
end


-- Call:
local meas = finale.FCMeasure()
AssureTrue(meas:Load(8))
FCMeasure_ValueTests_ItemNo8(meas)
