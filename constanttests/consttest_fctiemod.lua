function TestConstants_TIEMODDIR_()
   NumberConstantTest(finale.TIEMODDIR_AUTOMATIC, "TIEMODDIR_AUTOMATIC", 0)
   NumberConstantTest(finale.TIEMODDIR_OVER, "TIEMODDIR_OVER", 1)
   NumberConstantTest(finale.TIEMODDIR_UNDER, "TIEMODDIR_UNDER", 2)
end

-- Test the constants:
TestConstants_TIEMODDIR_()


function TestConstants_TIEMODSEL_()
   NumberConstantTest(finale.TIEMODSEL_DEFAULT, "TIEMODSEL_DEFAULT", 0)
   NumberConstantTest(finale.TIEMODSEL_ON, "TIEMODSEL_ON", 1)
   NumberConstantTest(finale.TIEMODSEL_OFF, "TIEMODSEL_OFF", 2)
end

-- Test the constants:
TestConstants_TIEMODSEL_()
