function FCPianoBracePrefs_ValueTests_ItemNo1(pbprefs)
   NumberValuePropertyTest(pbprefs, "FCPianoBracePrefs", "CenterThickness", 35999)
   NumberValuePropertyTest(pbprefs, "FCPianoBracePrefs", "HorizontalInnerBody", 0)
   NumberValuePropertyTest(pbprefs, "FCPianoBracePrefs", "HorizontalInnerTip", 240000)
   NumberValuePropertyTest(pbprefs, "FCPianoBracePrefs", "HorizontalOuterBody", 60000)
   NumberValuePropertyTest(pbprefs, "FCPianoBracePrefs", "HorizontalOuterTip", -120000)
   NumberValuePropertyTest(pbprefs, "FCPianoBracePrefs", "TipThickness", 71998)
   NumberValuePropertyTest(pbprefs, "FCPianoBracePrefs", "VerticalInnerBody", -120000)
   NumberValuePropertyTest(pbprefs, "FCPianoBracePrefs", "VerticalInnerTip", 240000)
   NumberValuePropertyTest(pbprefs, "FCPianoBracePrefs", "VerticalOuterBody", 240000)
   NumberValuePropertyTest(pbprefs, "FCPianoBracePrefs", "VerticalOuterTip", 480000)
   NumberValuePropertyTest(pbprefs, "FCPianoBracePrefs", "Width", 240000)
end


-- Call:
local pbprefs = finale.FCPianoBracePrefs()
AssureTrue(pbprefs:Load(1), "FCPianoBracePrefs:Load(1)")
FCPianoBracePrefs_ValueTests_ItemNo1(pbprefs)
