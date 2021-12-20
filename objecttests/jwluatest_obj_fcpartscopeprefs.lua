function FCPartScopePrefs_PropertyTests(page)
   BoolValuePropertyTest(page, "FCPartScopePrefs", "DisplayInConcertPitch", false)
end


-- Call:
local page = finale.FCPartScopePrefs()
AssureTrue(page:Load(1), "FCPartScopePrefs:Load(1)")
FCPartScopePrefs_PropertyTests(page)
