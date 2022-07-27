function plugindef()
   -- This function and the 'finaleplugin' namespace
   -- are both reserved for the plug-in definition.
   finaleplugin.RequireDocument = false
   finaleplugin.NoStore = true
   finaleplugin.Author = "Jari Williamsson"
   finaleplugin.CategoryTags = "Debug, Development, Diagnose, UI"
   return "Create Finale Lua Constants Test", "Create constants test", "Creates a test for the constants available to Finale Lua."
end

local pattern = "UNDOSTATE_" -- edit as needed in RGP Lua

local get_finale_propget = function()
    if finenv.IsRGPLua then
        return _G.finale.__propget
    end
    for k,v in pairs(_G.finale) do
        if string.find(k, "__propget") == 1 and (type(v) == "table") then
            return v
        end
    end
    return nil
end

if finenv.IsRGPLua then
    require('mobdebug').start()
end
if not finenv.IsRGPLua then
    -- Show dialog
    local dialog = finenv.UserValueInput()
    dialog.Title = "Test JW Lua Constants"
    dialog:SetTypes("String")
    dialog:SetDescriptions("Search string (empty to list all):")

    local returnvalues = dialog:Execute()
    if returnvalues == nil then return end
    if returnvalues == "" then
        pattern = ""
    else
        pattern = returnvalues[1]
    end
end
local result = {}
-- Search for constants
local found = false
local propget = get_finale_propget()
if type(propget) == "table" then
    for k1, v1 in pairs(propget) do
        if string.find(k1, pattern) or pattern == "" then
            table.insert(result, k1)                
            found = true
        end
    end
end
if not found then
    print ("No constants found")
    return
end
-- Create sorted result as a test:
local ResultString = ""
ResultString = ResultString .. "function TestConstants_" .. pattern .. "()\n"

table.sort(result)

for k, v in pairs(result) do
    local value = _G.finale[v]
    local prefix = "Number"
    if type(value) == "boolean" then
        prefix = "Bool"
        if value then
            value = "true"
        else
            value = "false"
        end
    elseif type(value) == "string" then
        prefix = "String"
        value = '"' .. value .. '"'
    end
    ResultString = ResultString .. "   " .. prefix .. "ConstantTest(finale." .. v .. ", " .. '"' .. v .. '", ' .. value .. ")\n"
end
ResultString = ResultString .. "end\n\n"


ResultString = ResultString .. "-- Test the constants:\nTestConstants_" .. pattern .. "()\n"

if finenv.UI():TextToClipboard(ResultString) then
    finenv.UI():AlertInfo("Code has been copied to the clipboard.", "Test Created")
end












