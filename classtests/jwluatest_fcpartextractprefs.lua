-- This test file is not used, because FCPartExtractPrefs is not hooked up to Lua
-- These preferences are obsolete in the post-Finale 2007 era of linked parts.

function FCPartExtractPrefs_PropertyTests(prefs)
   BoolPropertyTest(prefs, "FCPartExtractPrefs", "CreateNameHeader")
   BoolPropertyTest(prefs, "FCPartExtractPrefs", "FitMeasuresPerSystem")
   BoolPropertyTest(prefs, "FCPartExtractPrefs", "FitMultimeasureRestAsOne")
   NumberPropertyTest(prefs, "FCPartExtractPrefs", "MeasuresPerSystem", {2, 4, 10})
   NumberPropertyTest(prefs, "FCPartExtractPrefs", "NameHeaderEndPage", {1, 2, 10})
   NumberPropertyTest(prefs, "FCPartExtractPrefs", "NameHeaderHorizontal", {144, 250, 897})
   NumberPropertyTest(prefs, "FCPartExtractPrefs", "NameHeaderResize", {60, 76, 90})
   NumberPropertyTest(prefs, "FCPartExtractPrefs", "NameHeaderStartPage", {1, 2, 10})
   BoolPropertyTest(prefs, "FCPartExtractPrefs", "NameHeaderUseFontName")
   NumberPropertyTest(prefs, "FCPartExtractPrefs", "NameHeaderVertical", {144, 250, 897})
   BoolPropertyTest(prefs, "FCPartExtractPrefs", "OpenExtractedParts")
   BoolPropertyTest(prefs, "FCPartExtractPrefs", "PromptForEachName")
   BoolPropertyTest(prefs, "FCPartExtractPrefs", "RemoveMultiPageBlocks")
   BoolPropertyTest(prefs, "FCPartExtractPrefs", "RemovePageOneBlocks")
   BoolPropertyTest(prefs, "FCPartExtractPrefs", "RemovePageTwoPlusBlocks")
   BoolPropertyTest(prefs, "FCPartExtractPrefs", "RemoveStaffGroupNames")
   BoolPropertyTest(prefs, "FCPartExtractPrefs", "SpaceSystemsEvenly")
   BoolPropertyTest(prefs, "FCPartExtractPrefs", "UseNewStaffPlacement")
end


-- Call:
local prefs = finale.FCPartExtractPrefs()
AssureTrue(prefs:Load(1), "FCPartExtractPrefs:Load(1)")
FCPartExtractPrefs_PropertyTests(prefs)
