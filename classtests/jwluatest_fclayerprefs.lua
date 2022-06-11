function FCLayerPrefs_PropertyTests(prefs)
   BoolPropertyTest(prefs, "FCLayerPrefs", "FreezeStemsUp")
   BoolPropertyTest(prefs, "FCLayerPrefs", "FreezeTiesSameDirection")
   BoolPropertyTest(prefs, "FCLayerPrefs", "HideWhenInactive")
   BoolPropertyTest(prefs, "FCLayerPrefs", "IgnoreHiddenLayers")
   BoolPropertyTest(prefs, "FCLayerPrefs", "IgnoreHiddenNotes")
   NumberPropertyTest_RO(prefs, "FCLayerPrefs", "LayerIndex")
   NumberPropertyTest_RO(prefs, "FCLayerPrefs", "LayerNumber")
   BoolPropertyTest(prefs, "FCLayerPrefs", "Playback")
   NumberPropertyTest(prefs, "FCLayerPrefs", "RestOffset", {-2, 0, 3})
   BoolPropertyTest(prefs, "FCLayerPrefs", "Spacing")
   BoolPropertyTest(prefs, "FCLayerPrefs", "UseFreezeStemsTies")
   BoolPropertyTest(prefs, "FCLayerPrefs", "UseRestOffset")
   BoolPropertyTest(prefs, "FCLayerPrefs", "UseRestOffsetInMultiple")
end

-- Call:
local prefs = finale.FCLayerPrefs()
AssureTrue(prefs:Load(1))
FCLayerPrefs_PropertyTests(prefs)

StaticFunctionTest("FCLayerPrefs", "GetMaxLayers")
AssureNonNil(finale.FCLayerPrefs.GetMaxLayers, "FCLayerPrefs.GetMaxLayers")
if finale.FCLayerPrefs.GetMaxLayers then
    local max_layers = finale.FCLayerPrefs.GetMaxLayers()
    AssureTrue(max_layers == 4, "FCLayerPrefs.GetMaxLayers() == 4.")
end
