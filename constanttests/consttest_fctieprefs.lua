function TestConstants_TIESECONDS_()
   NumberConstantTest(finale.TIESECONDS_NONE, "TIESECONDS_NONE", 0x00)
   NumberConstantTest(finale.TIESECONDS_SHIFTSTART, "TIESECONDS_SHIFTSTART", 0x01)
   NumberConstantTest(finale.TIESECONDS_SHIFTEND , "TIESECONDS_SHIFTEND", 0x02)
   NumberConstantTest(finale.TIESECONDS_SHIFTBOTH, "TIESECONDS_SHIFTBOTH", 0x03)
end

-- Test the constants:
TestConstants_TIESECONDS_()

function TestConstants_TIECHORDDIR_()
   NumberConstantTest(finale.TIECHORDDIR_OUTSIDEINSIDE, "TIECHORDDIR_OUTSIDEINSIDE", 0)
   NumberConstantTest(finale.TIECHORDDIR_STEMREVERSAL , "TIECHORDDIR_STEMREVERSAL ", 1)
   NumberConstantTest(finale.TIECHORDDIR_SPLITEVENLY , "TIECHORDDIR_SPLITEVENLY", 2)
end

-- Test the constants:
TestConstants_TIECHORDDIR_()

function TestConstants_TIEMIXEDSTEM_()
   NumberConstantTest(finale.TIEMIXEDSTEM_OVER, "TIEMIXEDSTEM_OVER", 0)
   NumberConstantTest(finale.TIEMIXEDSTEM_UNDER , "TIEMIXEDSTEM_UNDER ", 1)
   NumberConstantTest(finale.TIEMIXEDSTEM_OPPOSITEFIRSTSTEM , "TIEMIXEDSTEM_OPPOSITEFIRSTSTEM", 2)
end

-- Test the constants:
TestConstants_TIEMIXEDSTEM_()
