function FCFretInstrumentDef_ValueTests_ItemNo1(fretinst)
   NumberValuePropertyTest(fretinst, "FCFretInstrumentDef", "FretCount", 20)
   NumberValuePropertyTest(fretinst, "FCFretInstrumentDef", "SpeedyClef", 0)
   NumberValuePropertyTest(fretinst, "FCFretInstrumentDef", "StringCount", 6)
   AssureFalse(fretinst:IsDiatonic(), "FCFretInstrumentDef:IsDiatonic()")   

   local name = finale.FCString()
   if AssureTrue(fretinst:GetName(name), "FCFretInstrumentDef:GetName()") then
        AssureValue(name.LuaString, "Standard Guitar", "FCFretInstrumentDef:GetName() result")
   end
end


-- Call:
local fretinst = finale.FCFretInstrumentDef()
AssureTrue(fretinst:Load(1))
FCFretInstrumentDef_ValueTests_ItemNo1(fretinst)




function FCFretInstrumentDef_ValueTests_ItemNo3(fretinst)
   NumberValuePropertyTest(fretinst, "FCFretInstrumentDef", "FretCount", 14)
   NumberValuePropertyTest(fretinst, "FCFretInstrumentDef", "SpeedyClef", 5)
   NumberValuePropertyTest(fretinst, "FCFretInstrumentDef", "StringCount", 3)

   local name = finale.FCString()
   if AssureTrue(fretinst:GetName(name), "FCFretInstrumentDef:GetName()") then
        AssureValue(name.LuaString, "Dulcimer - DAA", "FCFretInstrumentDef:GetName() result")
   end

   if AssureTrue(fretinst:IsDiatonic(), "FCFretInstrumentDef:IsDiatonic()") then
        local nums = finale.FCNumbers()
        AssureTrue(fretinst:GetDiatonicInfo(nums), "FCFretInstrumentDef:GetDiatonicInfo()")
        if AssureValue(nums.Count, 14, "FCFretInstrumentDef:GetDiatonicInfo().Count") then
            -- 2,2,1,2,2,2,1,2,2,1,2,2,2,1
            AssureValue(nums:GetItemAt(0).Int, 2, "FCFretInstrumentDef:GetDiatonicInfo():ItemAt(0)")
            AssureValue(nums:GetItemAt(1).Int, 2, "FCFretInstrumentDef:GetDiatonicInfo():ItemAt(1)")
            AssureValue(nums:GetItemAt(2).Int, 1, "FCFretInstrumentDef:GetDiatonicInfo():ItemAt(2)")
            AssureValue(nums:GetItemAt(3).Int, 2, "FCFretInstrumentDef:GetDiatonicInfo():ItemAt(3)")
            AssureValue(nums:GetItemAt(4).Int, 2, "FCFretInstrumentDef:GetDiatonicInfo():ItemAt(4)")
            AssureValue(nums:GetItemAt(5).Int, 2, "FCFretInstrumentDef:GetDiatonicInfo():ItemAt(5)")
            AssureValue(nums:GetItemAt(6).Int, 1, "FCFretInstrumentDef:GetDiatonicInfo():ItemAt(6)")
            AssureValue(nums:GetItemAt(7).Int, 2, "FCFretInstrumentDef:GetDiatonicInfo():ItemAt(7)")
            AssureValue(nums:GetItemAt(8).Int, 2, "FCFretInstrumentDef:GetDiatonicInfo():ItemAt(8)")
            AssureValue(nums:GetItemAt(9).Int, 1, "FCFretInstrumentDef:GetDiatonicInfo():ItemAt(9)")
            AssureValue(nums:GetItemAt(10).Int, 2, "FCFretInstrumentDef:GetDiatonicInfo():ItemAt(10)")
            AssureValue(nums:GetItemAt(11).Int, 2, "FCFretInstrumentDef:GetDiatonicInfo():ItemAt(11)")
            AssureValue(nums:GetItemAt(12).Int, 2, "FCFretInstrumentDef:GetDiatonicInfo():ItemAt(12)")
            AssureValue(nums:GetItemAt(13).Int, 1, "FCFretInstrumentDef:GetDiatonicInfo():ItemAt(13)")
        end
   end
end


-- Call:
local fretinst = finale.FCFretInstrumentDef()
AssureTrue(fretinst:Load(3))
FCFretInstrumentDef_ValueTests_ItemNo3(fretinst)




function FCFretInstrumentDef_ValueTests_ItemNo7(fretinst)
   NumberValuePropertyTest(fretinst, "FCFretInstrumentDef", "FretCount", 21)
   NumberValuePropertyTest(fretinst, "FCFretInstrumentDef", "SpeedyClef", 5)
   NumberValuePropertyTest(fretinst, "FCFretInstrumentDef", "StringCount", 7)
    AssureFalse(fretinst:IsDiatonic(), "FCFretInstrumentDef:IsDiatonic()")   

    local name = finale.FCString()
   if AssureTrue(fretinst:GetName(name), "FCFretInstrumentDef:GetName()") then
        AssureValue(name.LuaString, "Guitar - 7 String", "FCFretInstrumentDef:GetName() result")
   end
end


-- Call:
local fretinst = finale.FCFretInstrumentDef()
AssureTrue(fretinst:Load(7))
FCFretInstrumentDef_ValueTests_ItemNo7(fretinst)

