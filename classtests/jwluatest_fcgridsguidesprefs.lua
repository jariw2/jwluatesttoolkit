function FCGridsGuidesPrefs_PropertyTests(prefs)
    NumberPropertyTest(prefs, "FCGridsGuidesPrefs", "GravityZoneSize", {1200, 2304, 3500})
    NumberPropertyTest(prefs, "FCGridsGuidesPrefs", "GridColorBlue", {0, 127, 255})
    NumberPropertyTest(prefs, "FCGridsGuidesPrefs", "GridColorGreen", {0, 127, 255})
    NumberPropertyTest(prefs, "FCGridsGuidesPrefs", "GridColorRed", {0, 127, 255})
    NumberPropertyTest(prefs, "FCGridsGuidesPrefs", "GridDistance", {2300, 4608, 7894})
    NumberPropertyTest(prefs, "FCGridsGuidesPrefs", "GridLineStyle", {finale.GGLINESTYLE_SOLID,
            finale.GGLINESTYLE_DASHED, finale.GGLINESTYLE_DOTTED, finale.GGLINESTYLE_CROSSHAIR})
            --[[
            finale.SNAPITEM_CHORDS, finale.SNAPITEM_EXPRESSIONS, finale.SNAPITEM_FRETBOARDS, 
            finale.SNAPITEM_GRAPHICSMOVE, finale.SNAPITEM_GRAPHICSSIZING, finale.SNAPITEM_MEASURENUMBERS,
            finale.SNAPITEM_REPEATS, finale.SNAPITEM_SPECIALTOOLS, finale.SNAPITEM_STAFFNAMES, 
            finale.SNAPITEM_STAVES, finale.SNAPITEM_TEXTBLOCKMOVE, finale.SNAPITEM_TEXTBLOCKSIZING})
            ]]
    BoolPropertyTest(prefs, "FCGridsGuidesPrefs", "GridShow")
    BoolPropertyTest(prefs, "FCGridsGuidesPrefs", "GridSnap")
    NumberPropertyTest(prefs, "FCGridsGuidesPrefs", "GridStep", {1, 4, 10})
    NumberPropertyTest(prefs, "FCGridsGuidesPrefs", "GuideColorBlue", {0, 127, 255})
    NumberPropertyTest(prefs, "FCGridsGuidesPrefs", "GuideColorGreen", {0, 127, 255})
    NumberPropertyTest(prefs, "FCGridsGuidesPrefs", "GuideColorRed", {0, 127, 255})
    NumberPropertyTest(prefs, "FCGridsGuidesPrefs", "GuideLineStyle", {finale.GGLINESTYLE_SOLID,
            finale.GGLINESTYLE_DASHED, finale.GGLINESTYLE_DOTTED})
    BoolPropertyTest(prefs, "FCGridsGuidesPrefs", "GuideShow")
    BoolPropertyTest(prefs, "FCGridsGuidesPrefs", "GuideSnap")
    for item = finale.SNAPITEM_BRACKETS, finale.SNAPITEM_TEXTBLOCKSIZING do
        prefs = BoolIndexedFunctionPairsTest(prefs, "FCGridsGuidesPrefs", "GetGridSnapToItem", "SetGridSnapToItem", item)
        prefs = BoolIndexedFunctionPairsTest(prefs, "FCGridsGuidesPrefs", "GetGuideSnapToItem", "SetGuideSnapToItem", item)
    end
end

function FCGridsGuidesPrefs_GuidesTests(guidesdesc, guides, prefs, for_vertical)
    if not AssureNonNil(guides, "FCGridsGuidesPrefs: " .. guidesdesc .. " Guides") then return end
    AssureTrue(guides.Count == 0, "FCGridsGuidesPrefs: The count for " .. guidesdesc .. " Guides was not zero. Found " .. guides.Count .. ".")
    guides:ClearAll()
    local add_this_many = 7
    for x = 1, add_this_many do
        guides:AddGuide(x * 100*64)
    end
    if not AssureTrue(prefs:Save(), "FCGridsGuidesPrefs:Save for " .. guidesdesc .. " Guides") then return end
    if not AssureTrue(prefs:Reload(), "FCGridsGuidesPrefs:Reload for " .. guidesdesc .. " Guides") then return end
    local newguides
    if (for_vertical) then
        newguides = prefs:GetVerticalGuides()
    else
        newguides = prefs:GetHorizontalGuides()
    end
    AssureTrue(newguides.Count == add_this_many, "FCGridsGuidesPrefs: The count for the saved " .. guidesdesc .. " Guides was not " .. add_this_many .. ". Found " .. newguides.Count .. ".")
    local x = 0
    for newguide in each(newguides) do
        x = x + 100*64
        AssureTrue(newguide.Position == x, "FCGridsGuidesPrefs: The guide position for " .. guidesdesc .. " guide was not " .. x .. ". Found " .. newguide.Position .. ".")
    end
    newguides:ClearAll()
    if not AssureTrue(prefs:Save(), "FCGridsGuidesPrefs:Save for " .. guidesdesc .. " Guides") then return end
    if not AssureTrue(prefs:Reload(), "FCGridsGuidesPrefs:Reload for " .. guidesdesc .. " Guides") then return end
    if (for_vertical) then
        newguides = prefs:GetVerticalGuides()
    else
        newguides = prefs:GetHorizontalGuides()
    end
    AssureTrue(newguides.Count == 0, "FCGridsGuidesPrefs: The count for the saved " .. guidesdesc .. " Guides after deleting was not 0. Found " .. newguides.Count .. ".")
end

-- Call:
local prefs = finale.FCGridsGuidesPrefs()
AssureTrue(prefs:Load(1), "FCGridsGuidesPrefs:Load(1)")
FCGridsGuidesPrefs_PropertyTests(prefs)

local guides = prefs:GetHorizontalGuides()
FCGridsGuidesPrefs_GuidesTests("Horizontal", guides, prefs, false)

local guides = prefs:GetVerticalGuides()
FCGridsGuidesPrefs_GuidesTests("Vertical", guides, prefs, true)
