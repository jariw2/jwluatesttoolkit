function FCSizePrefs_ValueTests_ItemNo1(sizeprefs)
   NumberValuePropertyTest(sizeprefs, "FCSizePrefs", "BeamThickness", 768)
   NumberValuePropertyTest(sizeprefs, "FCSizePrefs", "GraceNoteSize", 60)
   NumberValuePropertyTest(sizeprefs, "FCSizePrefs", "GraceSlashThickness", 144)
   NumberValuePropertyTest(sizeprefs, "FCSizePrefs", "LedgerLeftHalf", 6)
   NumberValuePropertyTest(sizeprefs, "FCSizePrefs", "LedgerLeftRestHalf", 3)
   NumberValuePropertyTest(sizeprefs, "FCSizePrefs", "LedgerLineThickness", 115)
   NumberValuePropertyTest(sizeprefs, "FCSizePrefs", "LedgerRightHalf", 6)
   NumberValuePropertyTest(sizeprefs, "FCSizePrefs", "LedgerRightRestHalf", 3)
   NumberValuePropertyTest(sizeprefs, "FCSizePrefs", "StaffLineThickness", 115)
   NumberValuePropertyTest(sizeprefs, "FCSizePrefs", "ThinBarlineThickness", 115)
end


-- Call:
local sizeprefs = finale.FCSizePrefs()
AssureTrue(sizeprefs:Load(1))
FCSizePrefs_ValueTests_ItemNo1(sizeprefs)
