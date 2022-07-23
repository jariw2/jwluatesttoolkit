function FCGeneralPrefs_PropertyTests(obj)
   BoolPropertyTest(obj, "FCGeneralPrefs", "AutomaticUpdateLayout")
   NumberPropertyTest(obj, "FCGeneralPrefs", "MeasurementUnit", {finale.MEASUREMENTUNIT_DEFAULT, finale.MEASUREMENTUNIT_EVPUS,
        finale.MEASUREMENTUNIT_INCHES, finale.MEASUREMENTUNIT_CENTIMETERS, finale.MEASUREMENTUNIT_PICAS, finale.MEASUREMENTUNIT_POINTS,
        finale.MEASUREMENTUNIT_SPACES, finale.MEASUREMENTUNIT_MILLIMETERS})
   NumberPropertyTest(obj, "FCGeneralPrefs", "PitchRepresentationType", {0, 1})
   NumberPropertyTest(obj, "FCGeneralPrefs", "PitchRepresentationValue", {0, -12, 12})
   BoolPropertyTest(obj, "FCGeneralPrefs", "RebarWhenTimeSigChanged")
   BoolPropertyTest(obj, "FCGeneralPrefs", "RecalcMeasures")
   BoolPropertyTest(obj, "FCGeneralPrefs", "RecalcSystems")
   BoolPropertyTest(obj, "FCGeneralPrefs", "RespaceMeasureLayout")
   BoolPropertyTest(obj, "FCGeneralPrefs", "RetainFrozenMeasures")
   BoolPropertyTest(obj, "FCGeneralPrefs", "ShowDefaultGroupNames")
   BoolPropertyTest(obj, "FCGeneralPrefs", "ShowDefaultStaffNames")
end


-- Call:
local obj = finale.FCGeneralPrefs()
AssureTrue(obj:Load(1), "FCGeneralPrefs:Load()")
FCGeneralPrefs_PropertyTests(obj)
