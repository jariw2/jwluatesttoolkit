function FCPage_PropertyTests(page)
   NumberPropertyTest(page, "FCPage", "BottomMargin", {-30, 0, 120})
   NumberPropertyTest(page, "FCPage", "Height", {90, 900, 9000})
   BoolPropertyTest(page, "FCPage", "HoldMargins")
   NumberPropertyTest(page, "FCPage", "LeftMargin", {-62, 0, 120})
   NumberPropertyTest(page, "FCPage", "Percent", {10, 43, 210})
   NumberPropertyTest(page, "FCPage", "RightMargin", {-53, 0, 35})
   NumberPropertyTest(page, "FCPage", "TopMargin", {-21, 0, 92})
   NumberPropertyTest(page, "FCPage", "Width", {100, 1000, 10000})
end


-- Call:
local page = finale.FCPage()
AssureTrue(page:Load(1), "FCPage:Load(1)")
FCPage_PropertyTests(page)
