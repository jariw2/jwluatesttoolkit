function FCTieMod_ValueTests_Entry22_2_260_2(tie_mod)
   NumberValuePropertyTest(tie_mod, "FCTieMod", "EndHorizontalPos", 0, 12)
   NumberValuePropertyTest(tie_mod, "FCTieMod", "EndVerticalPos", 64, 12)
   NumberValuePropertyTest(tie_mod, "FCTieMod", "StartHorizontalPos", 8, -8)
   NumberValuePropertyTest(tie_mod, "FCTieMod", "StartVerticalPos", 64, -12)
   NumberValuePropertyTest(tie_mod, "FCTieMod", "TieDirection", finale.TIEMODDIR_OVER)
end

-- Call:
local tie_mod = finale.FCTieMod(true)
AssureNonNil(tie_mod)
local entry = LoadMeasureEntry(22, 2, 260)
if AssureNonNil(entry) and tie_mod then
    tie_mod:SetNoteEntry(entry)
    local note = entry:GetItemAt(2)
    AssureNonNil(note)
    AssureTrue(tie_mod:LoadAt(note), "Entry260_LoadAt(note)")    
    FCTieMod_ValueTests_Entry22_2_260_2(tie_mod)
end

function FCTieMod_ValueTests_Entry22_2_261_0(tie_mod)
   NumberValuePropertyTest(tie_mod, "FCTieMod", "EndHorizontalPos", -8, 12)
   NumberValuePropertyTest(tie_mod, "FCTieMod", "EndVerticalPos", -43, -12)
   NumberValuePropertyTest(tie_mod, "FCTieMod", "StartHorizontalPos", -8, 8)
   NumberValuePropertyTest(tie_mod, "FCTieMod", "StartVerticalPos", -43, -12)
   NumberValuePropertyTest(tie_mod, "FCTieMod", "TieDirection", finale.TIEMODDIR_AUTOMATIC)
end

-- Call:
local tie_mod = finale.FCTieMod(false)
AssureNonNil(tie_mod)
local entry = LoadMeasureEntry(23, 2, 261)
if AssureNonNil(entry) and tie_mod then
    tie_mod:SetNoteEntry(entry)
    local note = entry:GetItemAt(0)
    AssureNonNil(note)
    AssureTrue(tie_mod:LoadAt(note), "Entry261_LoadAt(note)")    
    FCTieMod_ValueTests_Entry22_2_261_0(tie_mod)
end


