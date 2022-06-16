
function FCNoteEntry_Test_Unlinkable(measure, staff, entrynumber, partnumber)
    if finenv.RawFinaleVersion <= skip_finale_version then return end
    local entry = LoadMeasureEntry(measure, staff, entrynumber)
    if not AssureNonNil(entry, "LoadMeasureEntry("..measure..", "..staff..", "..entrynumber..")") then return end
    local score_manual_position = entry.ManualPosition
    local score_stem_up = entry.StemUp
    local score_freeze_stem = entry.FreezeStem
    
    if not AssureTrue(partnumber ~= finale.PARTID_SCORE, "FCNoteEntry_Test_Unlinkable Internal error: score passed instead of part. (FCNoteEntry)") then return end
    local part = finale.FCPart(partnumber)
    if not AssureTrue(part:Load(partnumber), "FCNoteEntry_Test_Unlinkable Internal error: load partnumber. (FCNoteEntry)") then return end
    
    part:SwitchTo()
    local part_entry, part_notecell = LoadMeasureEntryLocal(measure, staff, entrynumber)
    AssureNonNil(part_entry, "FCNoteEntry_Test_Unlinkable Internal error: part entry not nil. (FCNoteEntry)")
    part_entry.ManualPosition = score_manual_position + 24
    part_entry.StemUp = not score_stem_up
    part_entry.FreezeStem = not score_freeze_stem
    AssureTrue(part_notecell:Save(), "FCNoteEntry_Test_Unlinkable: Save part notecell succeeded.")
    part:SwitchBack()
    
    local score_entry, score_notecell = LoadMeasureEntryLocal(measure, staff, entrynumber)
    AssureNonNil(score_entry, "FCNoteEntry_Test_Unlinkable Internal error: score entry not nil. (FCNoteEntry)")
    AssureTrue(score_entry.ManualPosition == score_manual_position, "FCNoteEntry.ManualPosition is unlinkable.")
    AssureTrue(score_entry.StemUp == score_stem_up, "FCNoteEntry.StemUp is unlinkable.")
    AssureTrue(score_entry.FreezeStem == score_freeze_stem, "FCNoteEntry.FreezeStem is unlinkable.")
    score_entry.ManualPosition = score_manual_position
    score_entry.StemUp = score_stem_up
    score_entry.FreezeStem = score_freeze_stem
    score_notecell:Save()
end

-- Call:
FCNoteEntry_Test_Unlinkable(6, 2, 126, 2)
