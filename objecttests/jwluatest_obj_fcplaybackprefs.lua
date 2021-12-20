function FCPlaybackPrefs_ValueTests_ItemNo1(pref)
    NumberValuePropertyTest(pref, "FCPlaybackPrefs", "BaseKeyVelocity", 64, 72)
    NumberValuePropertyTest(pref, "FCPlaybackPrefs", "MetronomeBeat", 1024, 1536)
    NumberValuePropertyTest(pref, "FCPlaybackPrefs", "MetronomeSpeed", 120, 80)
    NumberValuePropertyTest(pref, "FCPlaybackPrefs", "StartMeasure", 1, 2)
    NumberValuePropertyTest(pref, "FCPlaybackPrefs", "StopMeasure", 32766, 12)
    if finenv.IsRGPLua then
        -- a typo in the PDK Framework source code (now fixed in RGP Lua) caused JW Lua to crash Finale if it executed this line:
        NumberValuePropertyTest(pref, "FCPlaybackPrefs", "StartMode", finale.PLAYBACKSTART_MEASURE, finale.PLAYBACKSTART_LEFTMOST)
    end
    NumberValuePropertyTest(pref, "FCPlaybackPrefs", "Swing", 0, 1000)
end


-- Call:
local pref = finale.FCPlaybackPrefs()
AssureTrue(pref:Load(1))
FCPlaybackPrefs_ValueTests_ItemNo1(pref)
