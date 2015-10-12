function FCPianoBracePrefs_PropertyTests(pbprefs)
   NumberPropertyTest(pbprefs, "FCPianoBracePrefs", "CenterThickness", {100, 10000, 100000})
   NumberPropertyTest(pbprefs, "FCPianoBracePrefs", "HorizontalInnerBody", {101, 10001, 100001})
   NumberPropertyTest(pbprefs, "FCPianoBracePrefs", "HorizontalInnerTip", {102, 10002, 100002})
   NumberPropertyTest(pbprefs, "FCPianoBracePrefs", "HorizontalOuterBody", {103, 10003, 100003})
   NumberPropertyTest(pbprefs, "FCPianoBracePrefs", "HorizontalOuterTip", {104, 10004, 100004})
   NumberPropertyTest(pbprefs, "FCPianoBracePrefs", "TipThickness", {105, 10005, 100005})
   NumberPropertyTest(pbprefs, "FCPianoBracePrefs", "VerticalInnerBody", {106, 10006, 100006})
   NumberPropertyTest(pbprefs, "FCPianoBracePrefs", "VerticalInnerTip", {107, 10007, 100007})
   NumberPropertyTest(pbprefs, "FCPianoBracePrefs", "VerticalOuterBody", {108, 10008, 100008})
   NumberPropertyTest(pbprefs, "FCPianoBracePrefs", "VerticalOuterTip", {109, 10009, 100009})
   NumberPropertyTest(pbprefs, "FCPianoBracePrefs", "Width", {110, 10010, 100010})
end


-- Call:
local pbprefs = finale.FCPianoBracePrefs()
AssureTrue(pbprefs:Load(1), "FCPianoBracePrefs:Load()")
FCPianoBracePrefs_PropertyTests(pbprefs)
