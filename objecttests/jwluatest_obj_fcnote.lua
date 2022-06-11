function FCNote_ValueTests_Note5_3_135_1(note)
   BoolValuePropertyTest(note, "FCNote", "Accidental", false)
   BoolValuePropertyTest(note, "FCNote", "AccidentalFreeze", false)
   BoolValuePropertyTest(note, "FCNote", "AccidentalParentheses", false)
   BoolValuePropertyTest(note, "FCNote", "CrossStaff", false)
   NumberValuePropertyTest(note, "FCNote", "Displacement", 0)
   BoolValuePropertyTest_RO(note, "FCNote", "Downstem2nd", true, true)
   ObjectPropertyTest_RO(note, "FCNote", "Entry", "FCNoteEntry")
   BoolValuePropertyTest(note, "FCNote", "Legality", true)
   NumberValuePropertyTest(note, "FCNote", "NoteID", 1)
   BoolValuePropertyTest(note, "FCNote", "Playback", true)
   NumberValuePropertyTest(note, "FCNote", "RaiseLower", 0)
   BoolValuePropertyTest(note, "FCNote", "Spacing", true)
   BoolValuePropertyTest(note, "FCNote", "Tie", false)
   BoolValuePropertyTest(note, "FCNote", "TieBackwards", false)
   BoolValuePropertyTest_RO(note, "FCNote", "Upstem2nd", false, true)
   BoolValuePropertyTest(note, "FCNote", "UpstemSplit", false)
end

function FCNote_ValueTests_Note5_3_135_2(note)
   BoolValuePropertyTest(note, "FCNote", "Accidental", false)
   BoolValuePropertyTest(note, "FCNote", "AccidentalFreeze", false)
   BoolValuePropertyTest(note, "FCNote", "AccidentalParentheses", false)
   BoolValuePropertyTest(note, "FCNote", "CrossStaff", false)
   NumberValuePropertyTest(note, "FCNote", "Displacement", 1)
   BoolValuePropertyTest_RO(note, "FCNote", "Downstem2nd", false, true)
   ObjectPropertyTest_RO(note, "FCNote", "Entry", "FCNoteEntry")
   BoolValuePropertyTest(note, "FCNote", "Legality", true)
   NumberValuePropertyTest(note, "FCNote", "NoteID", 2)
   BoolValuePropertyTest(note, "FCNote", "Playback", true)
   NumberValuePropertyTest(note, "FCNote", "RaiseLower", 0)
   BoolValuePropertyTest(note, "FCNote", "Spacing", true)
   BoolValuePropertyTest(note, "FCNote", "Tie", false)
   BoolValuePropertyTest(note, "FCNote", "TieBackwards", false)
   BoolValuePropertyTest_RO(note, "FCNote", "Upstem2nd", true, true)
   BoolValuePropertyTest(note, "FCNote", "UpstemSplit", false)
end

-- Call:
local entry = LoadMeasureEntry(5, 3, 135)
AssureTrue(entry ~= nil, "LoadMeasureEntry(LoadMeasureEntry(5, 3, 135) for FCNote")
local got1 = false
local got2 = false
for note in each(entry) do
    if note.NoteID == 1 then
        FCNote_ValueTests_Note5_3_135_1(note)
        got1 = true
    end
    if note.NoteID == 2 then
        FCNote_ValueTests_Note5_3_135_2(note)
        got2 = true
    end
end
AssureTrue(got1 and got2, "FCNotes at (5, 3, 0) not found.")

entry = LoadMeasureEntry(59, 3, 268)
AssureTrue(entry ~= nil, "LoadMeasureEntry(LoadMeasureEntry(59, 3, 268) for FCNote")
for note in each(entry) do
    local raise_lower = note:CalcPitchRaiseLower(true)
    AssureTrue(raise_lower == 1, "1st FCNote at (59, 3, 268) returned raise_lower of "..tostring(raise_lower)..". (Expected 1.)")
    break
end

