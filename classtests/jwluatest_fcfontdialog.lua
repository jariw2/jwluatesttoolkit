function FCFontDialog_PropertyTests(dialog)
    -- These properties were not marked Lua-supported in the Framework 0.54 doc pages,
    -- but they appear to be hooked up in JW Lua 0.54.
    PropertyTest(dialog, "FCFontDialog", "UseSizes")
    PropertyTest(dialog, "FCFontDialog", "UseStyles")
    PropertyTest(dialog, "FCFontDialog", "FontInfo")
end


-- Call:
local font_info = finale.FCFontInfo()
local dialog = finale.FCFontDialog(finenv.UI(), font_info)

-- Mark this function to be hooked up in a future version

-- Test properties

FCFontDialog_PropertyTests(dialog)
