function FCFreezeSystem_ValueTests_ItemNo1(fs)
   NumberValuePropertyTest(fs, "FCFreezeSystem", "NextSysMeasure", 4)
end


-- Call:
local fs = finale.FCFreezeSystem()
AssureTrue(fs:Load(1))
FCFreezeSystem_ValueTests_ItemNo1(fs)



function FCFreezeSystem_ValueTests_ItemNo4(fs)
   NumberValuePropertyTest(fs, "FCFreezeSystem", "NextSysMeasure", 8)
end


-- Call:
local fs = finale.FCFreezeSystem()
AssureTrue(fs:Load(4))
FCFreezeSystem_ValueTests_ItemNo4(fs)
