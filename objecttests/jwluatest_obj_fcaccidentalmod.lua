function FCAccidentalMod_PropertyTests(accimod)
   NumberPropertyTest(accimod, "FCAccidentalMod", "CustomChar", {0, 56, 312})

   local oldcustomfont = accimod.UseCustomFont
   accimod.UseCustomFont = true
   StringPropertyTest(accimod, "FCAccidentalMod", "FontName", {"Maestro", "Jazz", "Broadway"}) 
   NumberPropertyTest(accimod, "FCAccidentalMod", "FontSize", {6, 12, 48})
   accimod.UseCustomFont = oldcustomfont

   NumberPropertyTest(accimod, "FCAccidentalMod", "HorizontalPos", {-268, 0, 268})
   NumberPropertyTest(accimod, "FCAccidentalMod", "Resize", {1, 100, 260})
   BoolPropertyTest(accimod, "FCAccidentalMod", "UseCustomFont")
   BoolPropertyTest(accimod, "FCAccidentalMod", "UseCustomVerticalPos")
   NumberPropertyTest(accimod, "FCAccidentalMod", "VerticalPos", {-267, 0, 267})
end



function FCAccidentalMod_ValueTests_Entry6_2_127(accimod)
   NumberValuePropertyTest(accimod, "FCAccidentalMod", "CustomChar", 91)
   StringValuePropertyTest(accimod, "FCAccidentalMod", "FontName", "")
   NumberValuePropertyTest(accimod, "FCAccidentalMod", "FontSize", 0)
   NumberValuePropertyTest(accimod, "FCAccidentalMod", "HorizontalPos", 3)
   NumberValuePropertyTest(accimod, "FCAccidentalMod", "Resize", 100)
   BoolValuePropertyTest(accimod, "FCAccidentalMod", "UseCustomFont", false)
   BoolValuePropertyTest(accimod, "FCAccidentalMod", "UseCustomVerticalPos", false)
   NumberValuePropertyTest(accimod, "FCAccidentalMod", "VerticalPos", 0)
end


-- Call:
local accimod = finale.FCAccidentalMod()
local entry = LoadMeasureEntry(6, 2, 127)
if AssureNonNil(entry, "LoadMeasureEntry(6, 2, 127)") then
    accimod:SetNoteEntry(entry)
    local note = entry:GetItemAt(0)
    AssureNonNil(note, "entry:GetItemAt(0)")
    AssureTrue(accimod:LoadAt(note), "Entry127_LoadAt(note)")
    FCAccidentalMod_PropertyTests(accimod)
    FCAccidentalMod_ValueTests_Entry6_2_127(accimod)
end



function FCAccidentalMod_ValueTests_Entry6_2_128(accimod)
   NumberValuePropertyTest(accimod, "FCAccidentalMod", "CustomChar", 98)
   StringValuePropertyTest(accimod, "FCAccidentalMod", "FontName", "Jazz")
   NumberValuePropertyTest(accimod, "FCAccidentalMod", "FontSize", 24)
   NumberValuePropertyTest(accimod, "FCAccidentalMod", "HorizontalPos", 3)
   NumberValuePropertyTest(accimod, "FCAccidentalMod", "Resize", 80)
   BoolValuePropertyTest(accimod, "FCAccidentalMod", "UseCustomFont", true)
   BoolValuePropertyTest(accimod, "FCAccidentalMod", "UseCustomVerticalPos", true)
   NumberValuePropertyTest(accimod, "FCAccidentalMod", "VerticalPos", 2)
end


local accimod = finale.FCAccidentalMod()
local entry = LoadMeasureEntry(6, 2, 128)
if AssureNonNil(entry, "LoadMeasureEntry(6, 2, 128)") then
    accimod:SetNoteEntry(entry)
    local note = entry:GetItemAt(0)
    AssureNonNil(note, "entry:GetItemAt(0)")
    AssureTrue(accimod:LoadAt(note), "Entry128_LoadAt(note)")   
    FCAccidentalMod_ValueTests_Entry6_2_128(accimod)
end