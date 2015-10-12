function FCSizePrefs_PropertyTests(sizeprefs)
   PropertyTest(sizeprefs, "FCSizePrefs", "BeamThickness")
   PropertyTest(sizeprefs, "FCSizePrefs", "GraceNoteSize")
   PropertyTest(sizeprefs, "FCSizePrefs", "GraceSlashThickness")
   PropertyTest(sizeprefs, "FCSizePrefs", "LedgerLeftHalf")
   PropertyTest(sizeprefs, "FCSizePrefs", "LedgerLeftRestHalf")
   PropertyTest(sizeprefs, "FCSizePrefs", "LedgerLineThickness")
   PropertyTest(sizeprefs, "FCSizePrefs", "LedgerRightHalf")
   PropertyTest(sizeprefs, "FCSizePrefs", "LedgerRightRestHalf")
   PropertyTest(sizeprefs, "FCSizePrefs", "StaffLineThickness")
   PropertyTest(sizeprefs, "FCSizePrefs", "ThinBarlineThickness")
end


-- Call:
local sizeprefs = finale.FCSizePrefs()
AssureTrue(sizeprefs:Load(1))
FCSizePrefs_PropertyTests(sizeprefs)
