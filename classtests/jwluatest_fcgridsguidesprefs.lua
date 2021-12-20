function FCGridsGuidesPrefs_PropertyTests(prefs)
   NumberPropertyTest(prefs, "FCGridsGuidesPrefs", "GravityZoneSize", {260, 0, 300})
    
    
   NumberPropertyTest(prefs, "FCGridsGuidesPrefs", "FlatBaselineAdjustment", {-260, 0, 300})
   BoolPropertyTest(prefs, "FCGridsGuidesPrefs", "LeftAlignment")
   NumberPropertyTest(prefs, "FCGridsGuidesPrefs", "NaturalBaselineAdjustment", {-259, 0, 301})
   NumberPropertyTest(prefs, "FCGridsGuidesPrefs", "SharpBaselineAdjustment", {-258, 0, 302})
   NumberPropertyTest(prefs, "FCGridsGuidesPrefs", "Style", {finale.CHRDSTYLE_NORMAL,
                finale.CHRDSTYLE_ROMAN, finale.CHRDSTYLE_NASHVILLE_A,  
                finale.CHRDSTYLE_GERMAN, finale.CHRDSTYLE_SOLFEGGIO, finale.CHRDSTYLE_EUROPEAN,
                finale.CHRDSTYLE_SCANDINAVIAN, finale.CHRDSTYLE_NASHVILLE_B})
   BoolPropertyTest(prefs, "FCGridsGuidesPrefs", "UseSimpleSpelling")
end

-- Call:
local prefs = finale.FCGridsGuidesPrefs()
AssureTrue(prefs:Load(1))
FCGridsGuidesPrefs_PropertyTests(prefs)
