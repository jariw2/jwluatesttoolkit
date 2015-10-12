function FCNumber_PropertyTests(num)
   NumberPropertyTest(num, "FCNumber", "Int", {-345690, -1234, 0, 4, 569812})
end


-- Call test:
 local num = finale.FCNumber(0)
FCNumber_PropertyTests(num)
