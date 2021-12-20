function FCPartScopePrefs_PropertyTests(page)
   BoolPropertyTest(page, "FCPartScopePrefs", "DisplayInConcertPitch")
end


-- Call:
local page = finale.FCPartScopePrefs()
AssureTrue(page:Load(1), "FCPartScopePrefs:Load(1)")
FCPartScopePrefs_PropertyTests(page)
