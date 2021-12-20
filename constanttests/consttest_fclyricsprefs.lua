function TestConstants_LYRICS_ALIGNMENTS_()
   NumberConstantTest(finale.LYRICS_ALIGN_CENTER, "LYRICS_ALIGN_CENTER", 1)
   NumberConstantTest(finale.LYRICS_ALIGN_LEFT, "LYRICS_ALIGN_LEFT", 2)
   NumberConstantTest(finale.LYRICS_ALIGN_RIGHT, "LYRICS_ALIGN_RIGHT ", 3)
end

-- Test the constants:
TestConstants_LYRICS_ALIGNMENTS_()


function TestConstants_LYRICS_JUSTIFICATIONS_()
   NumberConstantTest(finale.LYRICS_JUSTI_CENTER, "LYRICS_JUSTI_CENTER", 1)
   NumberConstantTest(finale.LYRICS_JUSTI_LEFT, "LYRICS_JUSTI_LEFT", 2)
   NumberConstantTest(finale.LYRICS_JUSTI_RIGHT, "LYRICS_JUSTI_RIGHT", 3)
end

-- Test the constants:
TestConstants_LYRICS_JUSTIFICATIONS_()



function TestConstants_SMARTHYPHEN_SYSTEMSTART_()
   NumberConstantTest(finale.SMARTHYPHEN_SYSSTART_ALWAYS, "SMARTHYPHEN_SYSSTART_ALWAYS", 0)
   NumberConstantTest(finale.SMARTHYPHEN_SYSSTART_ONLYLATERSYLLABLE, "SMARTHYPHEN_SYSSTART_ONLYLATERSYLLABLE", 1)
   NumberConstantTest(finale.SMARTHYPHEN_SYSSTART_NEVER, "SMARTHYPHEN_SYSSTART_NEVER", 2)
end

-- Test the constants:
TestConstants_SMARTHYPHEN_SYSTEMSTART_()
