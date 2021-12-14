function TestConstants_ARTPOS_()
   NumberConstantTest(finale.ARTPOS_ABOVE_ENTRY, "ARTPOS_ABOVE_ENTRY", 5)
   NumberConstantTest(finale.ARTPOS_ALWAYS_NOTE_SIDE, "ARTPOS_ALWAYS_NOTE_SIDE", 2)
   NumberConstantTest(finale.ARTPOS_ALWAYS_STEM_SIDE, "ARTPOS_ALWAYS_STEM_SIDE", 3)
   NumberConstantTest(finale.ARTPOS_AUTO_NOTESTEM, "ARTPOS_AUTO_NOTESTEM", 1)
   NumberConstantTest(finale.ARTPOS_BELOW_ENTRY, "ARTPOS_BELOW_ENTRY", 4)
   NumberConstantTest(finale.ARTPOS_MANUAL_POSITIONING, "ARTPOS_MANUAL_POSITIONING", 0)
   NumberConstantTest(finale.ARTPOS_ALWAYS_ON_STEM, "ARTPOS_MANUAL_POSITIONING", 6)

   NumberConstantTest(finale.ARTSLURINT_IGNORE, "ARTSLURINT_IGNORE", 0)
   NumberConstantTest(finale.ARTSLURINT_INSIDE, "ARTSLURINT_INSIDE", 1)
   NumberConstantTest(finale.ARTSLURINT_AUTO_INOUT, "ARTSLURINT_AUTO_INOUT", 2)

end

-- Test the constants:
TestConstants_ARTPOS_()
