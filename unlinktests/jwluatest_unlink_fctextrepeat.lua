
function FCTextRepeat_Test_Unlinkable(measure, partnumber)
    local obj = finale.FCTextRepeat()
    local loadfunc = function() return obj:Load(measure, 0) end
    UnlinkableNumberPropertyTest(obj, "FCTextRepeat", "HorizontalPos", loadfunc, nil, 24, partnumber)
    UnlinkableNumberPropertyTest(obj, "FCTextRepeat", "VerticalPos", loadfunc, nil, -24, partnumber)
end

-- Call:
FCTextRepeat_Test_Unlinkable(2, staff_to_part[1])
FCTextRepeat_Test_Unlinkable(14, staff_to_part[2])
