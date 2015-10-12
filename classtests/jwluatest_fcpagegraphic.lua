function FCPageGraphic_PropertyTests(pagegraphic)
   NumberPropertyTest(pagegraphic, "FCPageGraphic", "FirstPage", {1, 5, 10})
   BoolPropertyTest(pagegraphic, "FCPageGraphic", "FixedPercent")
   NumberPropertyTest(pagegraphic, "FCPageGraphic", "Height", {10, 100, 1000})
   NumberPropertyTest(pagegraphic, "FCPageGraphic", "HorizontalAlignment", {finale.GRAPHICHORIZALIGN_LEFT, 
finale.GRAPHICHORIZALIGN_RIGHT, finale.GRAPHICHORIZALIGN_CENTER})
   NumberPropertyTest(pagegraphic, "FCPageGraphic", "HorizontalAlignmentRightPage", {finale.GRAPHICHORIZALIGN_LEFT, 
finale.GRAPHICHORIZALIGN_RIGHT, finale.GRAPHICHORIZALIGN_CENTER})
   NumberPropertyTest(pagegraphic, "FCPageGraphic", "HorizontalPos", {-345, 0, 345})
   NumberPropertyTest(pagegraphic, "FCPageGraphic", "HorizontalPosRightPage", {-323, 0, 323})
   BoolPropertyTest(pagegraphic, "FCPageGraphic", "IndependentRightPage")
   NumberPropertyTest(pagegraphic, "FCPageGraphic", "LastPage", {1, 6, 15})
   NumberPropertyTest_RO(pagegraphic, "FCPageGraphic", "OriginalHeight")
   NumberPropertyTest_RO(pagegraphic, "FCPageGraphic", "OriginalWidth")
   BoolPropertyTest(pagegraphic, "FCPageGraphic", "PageEdgeRef")
   NumberPropertyTest(pagegraphic, "FCPageGraphic", "VerticalAlignment", {finale.GRAPHICVERTALIGN_TOP,
            finale.GRAPHICVERTALIGN_BOTTOM, finale.GRAPHICVERTALIGN_CENTER})
   NumberPropertyTest(pagegraphic, "FCPageGraphic", "VerticalPos", {-456, 0, 456})
   NumberPropertyTest(pagegraphic, "FCPageGraphic", "VerticalPosRightPage", {-434, 0, 434})
   BoolPropertyTest(pagegraphic, "FCPageGraphic", "Visible")
   NumberPropertyTest(pagegraphic, "FCPageGraphic", "Width", {10, 128, 965})
end


-- Call:
local pagegraphic = finale.FCPageGraphic()
AssureTrue(pagegraphic:Load(0, 0), "FCPageGraphic:Load()")
FCPageGraphic_PropertyTests(pagegraphic)
