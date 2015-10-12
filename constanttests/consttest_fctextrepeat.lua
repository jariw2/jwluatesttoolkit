function TestConstants_REPSHOW_()
   NumberConstantTest(finale.REPSHOW_ALL, "REPSHOW_ALL", 0)
   NumberConstantTest(finale.REPSHOW_STAFFLIST, "REPSHOW_STAFFLIST", 2)
   NumberConstantTest(finale.REPSHOW_TOPSTAFF, "REPSHOW_TOPSTAFF", 1)
end

-- Test the constants:
TestConstants_REPSHOW_()


function TestConstants_REPTARGET_()
   NumberConstantTest(finale.REPTARGET_BACKWARDS, "REPTARGET_BACKWARDS", 2)
   NumberConstantTest(finale.REPTARGET_DEFID, "REPTARGET_DEFID", 3)
   NumberConstantTest(finale.REPTARGET_FORWARDS, "REPTARGET_FORWARDS", 8)
   NumberConstantTest(finale.REPTARGET_MEASURENUM, "REPTARGET_MEASURENUM", 1)
   NumberConstantTest(finale.REPTARGET_NEVERSKIPENDING, "REPTARGET_NEVERSKIPENDING", 5)
   NumberConstantTest(finale.REPTARGET_NEXTENDING, "REPTARGET_NEXTENDING", 9)
   NumberConstantTest(finale.REPTARGET_UNDEFINED, "REPTARGET_UNDEFINED", 0)
end

-- Test the constants:
TestConstants_REPTARGET_()


function TestConstants_TEXTREPACTION_()
   NumberConstantTest(finale.REPACTION_ALWAYSJUMP, "REPACTION_ALWAYSJUMP", 1)
   NumberConstantTest(finale.REPACTION_JUMPONPASS, "REPACTION_JUMPONPASS", 2)
   NumberConstantTest(finale.REPACTION_NEVERJUMP, "REPACTION_NEVERJUMP", 0)
   NumberConstantTest(finale.REPACTION_PLAYSECTION, "REPACTION_PLAYSECTION", 3)
   NumberConstantTest(finale.REPACTION_STOPONPASS, "REPACTION_STOPONPASS", 4)
end

-- Test the constants:
TestConstants_TEXTREPACTION_()
