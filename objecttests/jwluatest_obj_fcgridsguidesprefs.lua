function FCGridsGuidesPrefs_ValueTests_ItemNo1(prefs)
    NumberValuePropertyTest(prefs, "FCGridsGuidesPrefs", "GravityZoneSize", 2304)
    NumberValuePropertyTest(prefs, "FCGridsGuidesPrefs", "GridColorBlue", 127)
    NumberValuePropertyTest(prefs, "FCGridsGuidesPrefs", "GridColorGreen", 127)
    NumberValuePropertyTest(prefs, "FCGridsGuidesPrefs", "GridColorRed", 127)
    NumberValuePropertyTest(prefs, "FCGridsGuidesPrefs", "GridDistance", 4608)
    NumberValuePropertyTest(prefs, "FCGridsGuidesPrefs", "GridLineStyle", finale.GGLINESTYLE_CROSSHAIR)
    BoolValuePropertyTest(prefs, "FCGridsGuidesPrefs", "GridShow", false)
    BoolValuePropertyTest(prefs, "FCGridsGuidesPrefs", "GridSnap", false)
    NumberValuePropertyTest(prefs, "FCGridsGuidesPrefs", "GridStep", 1)
    NumberValuePropertyTest(prefs, "FCGridsGuidesPrefs", "GuideColorBlue", 255)
    NumberValuePropertyTest(prefs, "FCGridsGuidesPrefs", "GuideColorGreen", 255)
    NumberValuePropertyTest(prefs, "FCGridsGuidesPrefs", "GuideColorRed", 0)
    NumberValuePropertyTest(prefs, "FCGridsGuidesPrefs", "GuideLineStyle", finale.GGLINESTYLE_DASHED)
    BoolValuePropertyTest(prefs, "FCGridsGuidesPrefs", "GuideShow", true)
    BoolValuePropertyTest(prefs, "FCGridsGuidesPrefs", "GuideSnap", false)
    for item = finale.SNAPITEM_BRACKETS, finale.SNAPITEM_TEXTBLOCKSIZING do
        AssureTrue(prefs:GetGridSnapToItem(item), "FCGridsGuidesPrefs:GetGridSnapToItem is false for item " .. item .. ". Expected true.")
        AssureTrue(prefs:GetGuideSnapToItem(item), "FCGridsGuidesPrefs:GetGuideSnapToItem is false for item " .. item .. ". Expected true.")
    end
end


-- Call:
local prefs = finale.FCGridsGuidesPrefs()
AssureTrue(prefs:Load(1), "FCGridsGuidesPrefs:Load(1)")
FCGridsGuidesPrefs_ValueTests_ItemNo1(prefs)
