
function FCNoteheadMod_PropertyTests(noteheadmod)
   NumberPropertyTest(noteheadmod, "FCNoteheadMod", "CustomChar", {0, 64, 516})
   StringPropertyTest(noteheadmod, "FCNoteheadMod", "FontName", {"Maestro", "Jazz", "Broadway"})
   NumberPropertyTest(noteheadmod, "FCNoteheadMod", "FontSize", {0, 24, 36})
   NumberPropertyTest(noteheadmod, "FCNoteheadMod", "HorizontalPos", {-258, 0, 258})
   NumberPropertyTest(noteheadmod, "FCNoteheadMod", "Resize", {0, 80, 270})
   BoolPropertyTest_RO(noteheadmod, "FCNoteheadMod", "UseCustomChar")
   BoolPropertyTest(noteheadmod, "FCNoteheadMod", "UseCustomFont")
   BoolPropertyTest(noteheadmod, "FCNoteheadMod", "UseCustomVerticalPos")
   NumberPropertyTest(noteheadmod, "FCNoteheadMod", "VerticalPos", {-257, 0, 257})
end



function FCNoteheadMod_ValueTests_Entry6_2_125(nmod)
   NumberValuePropertyTest(nmod, "FCNoteheadMod", "CustomChar", 0)
   StringValuePropertyTest(nmod, "FCNoteheadMod", "FontName", "Jazz")
   NumberValuePropertyTest(nmod, "FCNoteheadMod", "FontSize", 26)
   NumberValuePropertyTest(nmod, "FCNoteheadMod", "HorizontalPos", 12)
   NumberValuePropertyTest(nmod, "FCNoteheadMod", "Resize", 82)
   BoolValuePropertyTest_RO(nmod, "FCNoteheadMod", "UseCustomChar", false)
   BoolValuePropertyTest(nmod, "FCNoteheadMod", "UseCustomFont", true)
   BoolValuePropertyTest(nmod, "FCNoteheadMod", "UseCustomVerticalPos", true)
   NumberValuePropertyTest(nmod, "FCNoteheadMod", "VerticalPos", 11)
end


-- Call:
local noteheadmod = finale.FCNoteheadMod()
local entry = LoadMeasureEntry(6, 2, 125)
if AssureNonNil(entry) then
    noteheadmod:SetNoteEntry(entry)
    local note = entry:GetItemAt(0)
    AssureNonNil(note)
    AssureTrue(noteheadmod:LoadAt(note), "Entry125_LoadAt(note)")
    FCNoteheadMod_PropertyTests(noteheadmod)
    FCNoteheadMod_ValueTests_Entry6_2_125(noteheadmod)
end


function FCNoteheadMod_ValueTests_Entry6_2_126(noteheadmod)
   NumberValuePropertyTest(noteheadmod, "FCNoteheadMod", "CustomChar", 208)
   StringValuePropertyTest(noteheadmod, "FCNoteheadMod", "FontName", "")
   NumberValuePropertyTest(noteheadmod, "FCNoteheadMod", "FontSize", 0)
   NumberValuePropertyTest(noteheadmod, "FCNoteheadMod", "HorizontalPos", 0)
   NumberValuePropertyTest(noteheadmod, "FCNoteheadMod", "Resize", 100)
   BoolValuePropertyTest(noteheadmod, "FCNoteheadMod", "UseCustomFont", false)
   BoolValuePropertyTest(noteheadmod, "FCNoteheadMod", "UseCustomVerticalPos", false)
   NumberValuePropertyTest(noteheadmod, "FCNoteheadMod", "VerticalPos", 0)
end


-- Call:
local noteheadmod = finale.FCNoteheadMod()
local entry = LoadMeasureEntry(6, 2, 126)
if AssureNonNil(entry) then
    noteheadmod:SetNoteEntry(entry)
    local note = entry:GetItemAt(0)
    AssureNonNil(note)
    AssureTrue(noteheadmod:LoadAt(note), "Entry126_LoadAt(note)")    
    FCNoteheadMod_ValueTests_Entry6_2_126(noteheadmod)
end



