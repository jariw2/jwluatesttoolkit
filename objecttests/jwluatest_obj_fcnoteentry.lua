function FCNoteEntry_ValueTests_Cell5_3(entry)
   NumberValuePropertyTest(entry, "FCNoteEntry", "ActualDuration", 1024)
   BoolValuePropertyTest(entry, "FCNoteEntry", "ArticulationFlag", false)
   BoolValuePropertyTest(entry, "FCNoteEntry", "BeamBeat", true)
   BoolValuePropertyTest(entry, "FCNoteEntry", "CheckAccidentals", false, true) -- true: read-only
   NumberValuePropertyTest(entry, "FCNoteEntry", "ClefIndex", 3)
   BoolValuePropertyTest(entry, "FCNoteEntry", "CombineRests", true)
   BoolValuePropertyTest(entry, "FCNoteEntry", "CrossStaff", false)
   NumberValuePropertyTest(entry, "FCNoteEntry", "Duration", 1024)
   NumberValuePropertyTest_RO(entry, "FCNoteEntry", "EntryNumber", 135)
   BoolValuePropertyTest(entry, "FCNoteEntry", "FlatBeam", false)
   BoolValuePropertyTest(entry, "FCNoteEntry", "FlipTie", false)
   BoolValuePropertyTest(entry, "FCNoteEntry", "FloatingRest", false)
   BoolValuePropertyTest(entry, "FCNoteEntry", "FreezeBeam", false)
   BoolValuePropertyTest(entry, "FCNoteEntry", "FreezeStem", false)
   BoolValuePropertyTest(entry, "FCNoteEntry", "GraceNote", false)
   BoolValuePropertyTest(entry, "FCNoteEntry", "GraceNoteSlash", false)
   NumberValuePropertyTest_RO(entry, "FCNoteEntry", "LayerNumber", 1)
   BoolValuePropertyTest(entry, "FCNoteEntry", "LedgerLines", true)
   BoolValuePropertyTest(entry, "FCNoteEntry", "Legality", true)
   BoolValuePropertyTest(entry, "FCNoteEntry", "LyricFlag", false)
   NumberValuePropertyTest(entry, "FCNoteEntry", "ManualPosition", 0)
   NumberValuePropertyTest_RO(entry, "FCNoteEntry", "Measure", 5)
   NumberValuePropertyTest(entry, "FCNoteEntry", "MeasurePos", 0)
   BoolValuePropertyTest(entry, "FCNoteEntry", "NoteDetailFlag", false)
   BoolValuePropertyTest(entry, "FCNoteEntry", "PerformanceDataFlag", false)
   BoolValuePropertyTest(entry, "FCNoteEntry", "Playback", true)
   BoolValuePropertyTest(entry, "FCNoteEntry", "SecondaryBeamFlag", false)
   BoolValuePropertyTest(entry, "FCNoteEntry", "SmartShapeFlag", false)
   BoolValuePropertyTest(entry, "FCNoteEntry", "Spacing", true)
   BoolValuePropertyTest(entry, "FCNoteEntry", "SpecialAltsFlag", false)
   BoolValuePropertyTest(entry, "FCNoteEntry", "SplitRest", false)
   BoolValuePropertyTest(entry, "FCNoteEntry", "SplitStem", false)
   NumberValuePropertyTest_RO(entry, "FCNoteEntry", "Staff", 3)
   BoolValuePropertyTest(entry, "FCNoteEntry", "StemDetailFlag", false)
   BoolValuePropertyTest(entry, "FCNoteEntry", "StemUp", false)
   BoolValuePropertyTest(entry, "FCNoteEntry", "TupletStartFlag", false)
   BoolValuePropertyTest(entry, "FCNoteEntry", "Visible", true)
   BoolValuePropertyTest(entry, "FCNoteEntry", "Voice2", false)
   BoolValuePropertyTest(entry, "FCNoteEntry", "Voice2Launch", false)
end

-- Call:
local entry = LoadMeasureEntry(5, 3, 135)
AssureTrue(entry ~= nil, "LoadMeasureEntry(LoadMeasureEntry(5, 3, 135) for FCNoteEntry")
FCNoteEntry_ValueTests_Cell5_3(entry)


-- Scenarios:
function FCNoteEntry_Scenario_FindNote_Test(entry1, entry2)
    local note_string = function(note)
        if not note then return nil end
        return tostring(note.Entry.EntryNumber).."."..tostring(note.NoteID)
    end
    for note1 in each(entry1) do
        local note2 = entry2:FindPitch(note1)
        AssureNonNil(note2, "FCNoteEntry:FindPitch is nil for note: "..note_string(note1))
        if note2 then
            AssureTrue(note2.NoteIndex == note1.NoteIndex, "FCNoteEntry:FindPitch wrong note returned for note: "..note_string(note1).." (got note: "..note_string(note2)..")")
        end
    end
end

local entry1, notecell1 = LoadMeasureEntryLocal(27, 1, 264)
local entry2, notecell2 = LoadMeasureEntryLocal(28, 1, 265)
local entry3, notecell3 = LoadMeasureEntryLocal(28, 1, 266)
FCNoteEntry_Scenario_FindNote_Test(entry1, entry2)
FCNoteEntry_Scenario_FindNote_Test(entry2, entry3)

