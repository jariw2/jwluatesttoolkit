function FCTextRepeatDef_ValueTests_ItemNo1(textrepeatdef)
   NumberValuePropertyTest(textrepeatdef, "FCTextRepeatDef", "Justification", finale.TEXTREPJUST_RIGHT)
   NumberValuePropertyTest(textrepeatdef, "FCTextRepeatDef", "ReplaceMode", finale.REPEATREPLACE_TIMESPLAYED)
   BoolValuePropertyTest(textrepeatdef, "FCTextRepeatDef", "UseThisFont", false)
   AssureValue(textrepeatdef:CreateTextString().LuaString, "D.C. al Fine", "textrepeatdef:CreateString().LuaString")
   AssureNil(textrepeatdef:CreateEnclosure(), "textrepeatdef(1):CreateEnclosure()")
end


-- Call:
local textrepeatdef = finale.FCTextRepeatDef()
AssureTrue(textrepeatdef:Load(1))
FCTextRepeatDef_ValueTests_ItemNo1(textrepeatdef)


function FCTextRepeatDef_ValueTests_ItemNo2(textrepeatdef)
   NumberValuePropertyTest(textrepeatdef, "FCTextRepeatDef", "Justification", finale.TEXTREPJUST_LEFT)
   NumberValuePropertyTest(textrepeatdef, "FCTextRepeatDef", "ReplaceMode", finale.REPEATREPLACE_TARGETTEXT)
   BoolValuePropertyTest(textrepeatdef, "FCTextRepeatDef", "UseThisFont", true)
   AssureValue(textrepeatdef:CreateTextString().LuaString, "D.C. al Coda", "textrepeatdef:CreateString().LuaString")
   local enclosure = textrepeatdef:CreateEnclosure()
   if AssureNonNil(enclosure, "textrepeatdef(2):CreateEnclosure()") then        
        NumberValuePropertyTest(enclosure, "FCEnclosure", "Shape",  finale.ENCLOSURE_RECTANGLE)
   end
end


-- Call:
local textrepeatdef = finale.FCTextRepeatDef()
AssureTrue(textrepeatdef:Load(2))
FCTextRepeatDef_ValueTests_ItemNo2(textrepeatdef)


function FCTextRepeatDef_ValueTests_ItemNo3(textrepeatdef)
   NumberValuePropertyTest(textrepeatdef, "FCTextRepeatDef", "Justification", finale.TEXTREPJUST_CENTER)
   NumberValuePropertyTest(textrepeatdef, "FCTextRepeatDef", "ReplaceMode", finale.REPEATREPLACE_TARGETMEASURE)
   BoolValuePropertyTest(textrepeatdef, "FCTextRepeatDef", "UseThisFont", false)
   AssureValue(textrepeatdef:CreateTextString().LuaString, "D.S. al Fine", "textrepeatdef:CreateString().LuaString")
   local enclosure = textrepeatdef:CreateEnclosure()
   if AssureNonNil(enclosure, "textrepeatdef(3):CreateEnclosure()") then        
        NumberValuePropertyTest(enclosure, "FCEnclosure", "Shape",  finale.ENCLOSURE_TRIANGLE)
   end
end


-- Call:
local textrepeatdef = finale.FCTextRepeatDef()
AssureTrue(textrepeatdef:Load(3))
FCTextRepeatDef_ValueTests_ItemNo3(textrepeatdef)
