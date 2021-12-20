function FCTupletPrefs_PropertyTests(prefs)
   BoolPropertyTest(prefs, "FCTupletPrefs", "AllowHorizontalDrag")
   BoolPropertyTest(prefs, "FCTupletPrefs", "AlwaysFlat")
   BoolPropertyTest(prefs, "FCTupletPrefs", "AvoidStaff")
   BoolPropertyTest(prefs, "FCTupletPrefs", "BracketFullDuration")
   NumberPropertyTest(prefs, "FCTupletPrefs", "BracketThickness", {0, 144, 256})
   NumberPropertyTest(prefs, "FCTupletPrefs", "BracketMode", 
        {finale.TUPLETBRACKET_ALWAYS, finale.TUPLETBRACKET_UNBEAMEDONLY,
        finale.TUPLETBRACKET_NEVERBEAMEDONBEAMSIDE})
   BoolPropertyTest(prefs, "FCTupletPrefs", "BreakSlurBracket")
   BoolPropertyTest(prefs, "FCTupletPrefs", "CenterUsingDuration")
   BoolPropertyTest(prefs, "FCTupletPrefs", "EngraverTuplet")
   NumberPropertyTest(prefs, "FCTupletPrefs", "HorizontalOffset", {-144, 0, 144})
   NumberPropertyTest(prefs, "FCTupletPrefs", "HorizontalShapeOffset", {-144, 0, 144})
   BoolPropertyTest(prefs, "FCTupletPrefs", "IgnoreNumberOffset")
   BoolPropertyTest(prefs, "FCTupletPrefs", "MatchHookLengths")
   NumberPropertyTest(prefs, "FCTupletPrefs", "MaxSlope", {0, 30, 90, 244})
   NumberPropertyTest(prefs, "FCTupletPrefs", "NumberOffsetDownstem", {-144, 0, 144})
   NumberPropertyTest(prefs, "FCTupletPrefs", "NumberOffsetUpstem", {-144, 0, 144})
   NumberPropertyTest(prefs, "FCTupletPrefs", "LeftExtension", {-144, 0, 144})
   NumberPropertyTest(prefs, "FCTupletPrefs", "LeftHookLength", {-144, 0, 144})
   NumberPropertyTest(prefs, "FCTupletPrefs", "NumberStyle", 
        {finale.TUPLETNUMBER_NONE, finale.TUPLETNUMBER_REGULAR,
        finale.TUPLETNUMBER_RATIO, finale.TUPLETNUMBER_RATIOANDNOTE,
        finale.TUPLETNUMBER_RATIOANDNOTE_BOTH})
   NumberPropertyTest(prefs, "FCTupletPrefs", "PlacementMode", 
        {finale.TUPLETPLACEMENT_MANUAL, finale.TUPLETPLACEMENT_STEMSIDE,
        finale.TUPLETPLACEMENT_NOTESIDE, finale.TUPLETPLACEMENT_ABOVE,
        finale.TUPLETPLACEMENT_BELOW})
   NumberPropertyTest(prefs, "FCTupletPrefs", "RightExtension", {-144, 0, 144})
   NumberPropertyTest(prefs, "FCTupletPrefs", "RightHookLength", {-144, 0, 144})
   NumberPropertyTest(prefs, "FCTupletPrefs", "ShapeStyle", 
        {finale.TUPLETSHAPE_NONE, finale.TUPLETSHAPE_BRACKET,
        finale.TUPLETSHAPE_SLUR})
   NumberPropertyTest(prefs, "FCTupletPrefs", "SlopeAdjust", {-144, 0, 144})
   BoolPropertyTest(prefs, "FCTupletPrefs", "UseBottomNote")
   NumberPropertyTest(prefs, "FCTupletPrefs", "VerticalOffset", {-144, 0, 144})
   NumberPropertyTest(prefs, "FCTupletPrefs", "VerticalShapeOffset", {-144, 0, 144})
end


-- Call:
local prefs = finale.FCTupletPrefs()
AssureTrue(prefs:Load(1))
FCTupletPrefs_PropertyTests(prefs)

