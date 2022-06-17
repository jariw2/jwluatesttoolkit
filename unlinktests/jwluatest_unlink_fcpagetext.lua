
function FCPageText_Test_Unlinkable(page, inci, partnumber)
    local pagetext = finale.FCPageText()
    if AssureTrue(pagetext:Load(page,inci), "FCPageText_Test_Unlinkable: FCPageText:Load()") then
        UnlinkableNumberPropertyTest(pagetext, "FCPageText", "HorizontalPos", "Reload", nil, -12, partnumber)
        UnlinkableNumberPropertyTest(pagetext, "FCPageText", "VerticalPos", "Reload", nil, 12, partnumber)
        UnlinkableNumberPropertyTest(pagetext, "FCPageText", "Visible", "Reload", nil, 12, partnumber)
    end
end

-- Call:
FCPageText_Test_Unlinkable(0, 0, 1)
