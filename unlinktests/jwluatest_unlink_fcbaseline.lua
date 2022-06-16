
function FCBaseline_Test_Unlinkable(baseline, partnumber)
    UnlinkableNumberPropertyTest(baseline, "FCBaseline", "VerticalOffset", "Reload", nil, 144, partnumber, skip_finale_version)
end

-- Call:

local process_mode = function(mode, lyric_number)
    local global_baseline = finale.FCBaseline()
    if lyric_number then 
        global_baseline:LoadDefaultForLyricNumber(mode, lyric_number)
    else
        global_baseline:LoadDefaultForMode(mode)
    end
    FCBaseline_Test_Unlinkable(global_baseline, staff_to_part[2])
    local baselines = finale.FCBaselines()
    baselines:LoadAllForPiece(mode)
    local sys_staves = finale.FCSystemStaves()
    sys_staves:LoadAllForItem(0)
    for sys_staff in each(sys_staves) do
        local baseline = nil
        if lyric_number then
            baseline = baselines:AssureSavedLyricNumberForPiece(mode, sys_staff.Staff, lyric_number)
        else
            baseline = baselines:AssureSavedStaffForPiece(mode, sys_staff.Staff)
        end
        if AssureNonNil(baseline, "Function baselines:AssureSaved failed.") then
            FCBaseline_Test_Unlinkable(baseline, staff_to_part[sys_staff.Staff])
        end
    end
end

for _, mode in pairs({finale.BASELINEMODE_EXPRESSIONABOVE, finale.BASELINEMODE_EXPRESSIONBELOW, finale.BASELINEMODE_CHORD, finale.BASELINEMODE_FRETBOARD}) do
    process_mode(mode)
end

for _, mode in pairs({finale.BASELINEMODE_LYRICSVERSE, finale.BASELINEMODE_LYRICSCHORUS, finale.BASELINEMODE_LYRICSSECTION}) do
    for lyric_number = 1, 5 do
        process_mode(mode, lyric_number)
    end
end

