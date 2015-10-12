function FCTextRepeatDef_PropertyTests(textrepeatdef)
   NumberPropertyTest(textrepeatdef, "FCTextRepeatDef", "Justification", 
        {finale.TEXTREPJUST_LEFT, finale.TEXTREPJUST_RIGHT,
        finale.TEXTREPJUST_CENTER, finale.TEXTREPJUST_FULL})
   NumberPropertyTest(textrepeatdef, "FCTextRepeatDef", "ReplaceMode", 
        {finale.REPEATREPLACE_TIMESPLAYED, finale.REPEATREPLACE_TARGETTEXT,
        finale.REPEATREPLACE_TARGETMEASURE})
   BoolPropertyTest(textrepeatdef, "FCTextRepeatDef", "UseThisFont")
end


-- Call:
local textrepeatdef = finale.FCTextRepeatDef()
AssureTrue(textrepeatdef:Load(1))
FCTextRepeatDef_PropertyTests(textrepeatdef)
