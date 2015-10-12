function FCFreezeSystem_PropertyTests(freezesys)
   PropertyTest(freezesys, "FCFreezeSystem", "NextSysMeasure")
end


-- Call:
local freezesys = finale.FCFreezeSystem()
--AssureTrue(freezesys:Load(1))
FCFreezeSystem_PropertyTests(freezesys)
