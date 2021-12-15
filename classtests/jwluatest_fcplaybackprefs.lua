function FCPlaybackPrefs_PropertyTests(pref)
    NumberPropertyTest(pref, "FCPlaybackPrefs", "BaseKeyVelocity", {0, 24, 48, 64, 96, 127})
    NumberPropertyTest(pref, "FCPlaybackPrefs", "MetronomeBeat", {256, 512, 1024, 1536, 2048})
    NumberPropertyTest(pref, "FCPlaybackPrefs", "MetronomeSpeed", {30, 60, 96, 120, 144})
    NumberPropertyTest(pref, "FCPlaybackPrefs", "StartMeasure", {1, 10, 20})
    NumberPropertyTest(pref, "FCPlaybackPrefs", "StopMeasure", {1, 10, 20})
    NumberPropertyTest(pref, "FCPlaybackPrefs", "StartMode", {finale.PLAYBACKSTART_MEASURE, finale.PLAYBACKSTART_LEFTMOST,  finale.PLAYBACKSTART_CURRENTCOUNTER})
    NumberPropertyTest(pref, "FCPlaybackPrefs", "Swing", {10, 100, 100, 10000})
end


-- Call:
local pref = finale.FCPlaybackPrefs()
AssureTrue(pref:Load(1))
FCPlaybackPrefs_PropertyTests(pref)
