function FCTextExpressionDef_ValueTests_ItemNo1(exprdef)
   BoolValuePropertyTest(exprdef, "FCTextExpressionDef", "BreakMMRest", false)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "CategoryID", 1)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "ExecutableShapeID", 0)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "HorizontalAlignmentPoint", 13)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "HorizontalJustification", finale.EXPRJUSTIFY_LEFT)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "HorizontalOffset", 0)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "RehearsalMarkStyle", 0)
   NumberValuePropertyTest_RO(exprdef, "FCTextExpressionDef", "TextID", 14)
   BoolValuePropertyTest(exprdef, "FCTextExpressionDef", "UseCategoryFont", true)
   BoolValuePropertyTest(exprdef, "FCTextExpressionDef", "UseCategoryPos", false)
   BoolValuePropertyTest(exprdef, "FCTextExpressionDef", "UseEnclosure", false)
   BoolValuePropertyTest(exprdef, "FCTextExpressionDef", "UseExecutableShape", false)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "VerticalAlignmentPoint", 9)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "VerticalBaselineOffset", 16)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "VerticalEntryOffset", -72)
end

-- Call:
local exprdef = finale.FCTextExpressionDef()
AssureTrue(exprdef:Load(1))
FCTextExpressionDef_ValueTests_ItemNo1(exprdef)



function FCTextExpressionDef_ValueTests_ItemNo2(exprdef)
   BoolValuePropertyTest(exprdef, "FCTextExpressionDef", "BreakMMRest", false)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "CategoryID", 1)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "ExecutableShapeID", 0)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "HorizontalAlignmentPoint", 13)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "HorizontalJustification", finale.EXPRJUSTIFY_CENTER)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "HorizontalOffset", 0)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "RehearsalMarkStyle", 0)
   NumberValuePropertyTest_RO(exprdef, "FCTextExpressionDef", "TextID", 15)
   BoolValuePropertyTest(exprdef, "FCTextExpressionDef", "UseCategoryFont", true)
   BoolValuePropertyTest(exprdef, "FCTextExpressionDef", "UseCategoryPos", false)
   BoolValuePropertyTest(exprdef, "FCTextExpressionDef", "UseEnclosure", false)
   BoolValuePropertyTest(exprdef, "FCTextExpressionDef", "UseExecutableShape", false)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "VerticalAlignmentPoint", 9)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "VerticalBaselineOffset", 16)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "VerticalEntryOffset", -72)
end


-- Call:
local exprdef = finale.FCTextExpressionDef()
AssureTrue(exprdef:Load(2))
FCTextExpressionDef_ValueTests_ItemNo2(exprdef)




function FCTextExpressionDef_ValueTests_ItemNo3(exprdef)
   BoolValuePropertyTest(exprdef, "FCTextExpressionDef", "BreakMMRest", false)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "CategoryID", 1)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "ExecutableShapeID", 0)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "HorizontalAlignmentPoint", 13)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "HorizontalJustification", finale.EXPRJUSTIFY_RIGHT)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "HorizontalOffset", 0)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "RehearsalMarkStyle", 0)
   NumberValuePropertyTest_RO(exprdef, "FCTextExpressionDef", "TextID", 16)
   BoolValuePropertyTest(exprdef, "FCTextExpressionDef", "UseCategoryFont", true)
   BoolValuePropertyTest(exprdef, "FCTextExpressionDef", "UseCategoryPos", false)
   BoolValuePropertyTest(exprdef, "FCTextExpressionDef", "UseEnclosure", false)
   BoolValuePropertyTest(exprdef, "FCTextExpressionDef", "UseExecutableShape", false)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "VerticalAlignmentPoint", 9)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "VerticalBaselineOffset", 16)
   NumberValuePropertyTest(exprdef, "FCTextExpressionDef", "VerticalEntryOffset", -72)
end


-- Call:
local exprdef = finale.FCTextExpressionDef()
AssureTrue(exprdef:Load(3))
FCTextExpressionDef_ValueTests_ItemNo3(exprdef)

