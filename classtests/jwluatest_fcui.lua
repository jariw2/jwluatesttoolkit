function FCUI_PropertyTests(ui)
   NumberPropertyTest_RO(ui, "FCUI", "CurrentMeasure")
   NumberPropertyTest_RO(ui, "FCUI", "CurrentPage")
   NumberPropertyTest_RO(ui, "FCUI", "MaxLayers")
   NumberPropertyTest_RO(ui, "FCUI", "ScreenHeight")
   NumberPropertyTest_RO(ui, "FCUI", "ScreenWidth")
   NumberPropertyTest_RO(ui, "FCUI", "ZoomLevel")
end


-- Call:
local ui = finenv.UI()
AssureNonNil(ui)
FCUI_PropertyTests(ui)
