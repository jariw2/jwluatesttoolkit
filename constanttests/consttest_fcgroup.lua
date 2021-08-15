function TestConstants_GRBRAC_()
   NumberConstantTest(finale.GRBRAC_NONE, "GRBRAC_NONE", 0)
   NumberConstantTest(finale.GRBRAC_PLAIN, "GRBRAC_PLAIN", 1)
   NumberConstantTest(finale.GRBRAC_CHORUS, "GRBRAC_CHORUS", 2)
   NumberConstantTest(finale.GRBRAC_PIANO, "GRBRAC_PIANO ", 3)
   NumberConstantTest(finale.GRBRAC_REVERSECHORUS, "GRBRAC_REVERSECHORUS ", 4)
   NumberConstantTest(finale.GRBRAC_REVERSEPIANO, "GRBRAC_REVERSEPIANO", 5)
   NumberConstantTest(finale.GRBRAC_CURVEDCHORUS, "GRBRAC_CURVEDCHORUS", 6)
   NumberConstantTest(finale.GRBRAC_REVERSECURVEDCHORUS, "GRBRAC_REVERSECURVEDCHORUS", 7)
   NumberConstantTest(finale.GRBRAC_DESK, "GRBRAC_DESK", 8)
   NumberConstantTest(finale.GRBRAC_REVERSEDESK, "GRBRAC_REVERSEDESK", 9)
end

-- Test the constants:
TestConstants_GRBRAC_()


function TestConstants_GROUPBARLINESTYLE_()
   NumberConstantTest(finale.GROUPBARLINESTYLE_ONLYON, "GROUPBARLINESTYLE_ONLYON", 0)
   NumberConstantTest(finale.GROUPBARLINESTYLE_ONLYBETWEEN, "GROUPBARLINESTYLE_ONLYBETWEEN", 1)
   NumberConstantTest(finale.GROUPBARLINESTYLE_THROUGH, "GROUPBARLINESTYLE_THROUGH", 2)
end

-- Test the constants:
TestConstants_GROUPBARLINESTYLE_()



function TestConstants_GROUPSTAFFHIDE_()
   NumberConstantTest(finale.GROUPSTAFFHIDE_NORMAL, "GROUPSTAFFHIDE_NORMAL", 0)
   NumberConstantTest(finale.GROUPSTAFFHIDE_ALLEMPTY, "GROUPSTAFFHIDE_ALLEMPTY", 1)
   NumberConstantTest(finale.GROUPSTAFFHIDE_NEVER, "GROUPSTAFFHIDE_NEVER", 2)
end

-- Test the constants:
TestConstants_GROUPSTAFFHIDE_()
