function plugindef()
   -- This function and the 'finaleplugin' namespace
   -- are both reserved for the plug-in definition.
   finaleplugin.NoStore = true
   finaleplugin.Author = "Jari Williamsson"
   finaleplugin.CategoryTags = "Debug, Development, Diagnose, UI"
   return "Create Object Reflection", "Create Object Test", "Create a test for the properties found for a object."
end

local refl_output = ""

-- Show dialog
local dialog = finenv.UserValueInput()
dialog.Title = "Class Name To Reflect"
dialog:SetTypes("String")
dialog:SetDescriptions("Class name (empty to list all):")

local num_methods = 0
local num_classes = 0

function ProcessClass(classname, classtable)
    local proptable = {}
    if classtable.__class.__propget then
        for k, _ in pairs(classtable.__class.__propget) do
            local kstr = tostring(k)
            proptable["Get" .. kstr] = 1
--            print ("found property get" .. kstr)
        end
    end
    if classtable.__class.__propset then
        for k, _ in pairs(classtable.__class.__propset) do
            local kstr = tostring(k)
            proptable["Set" .. kstr] = 1
--            print ("found property set" .. kstr)
        end
    end
    refl_output = refl_output .. "REFL_AUTO\n(\n   type(" .. classname .. "),"
    refl_output = refl_output .. "\n   func(ClassName)," -- adding these in forces us to add them to any class where they are missing
    -- this search for static functions does not work, but leave it here in case it is every possible some day
    for k, v in pairs(classtable) do
        local kstr = tostring(k)
--        print ("type(v) static " .. type(v) .. " [" .. classname .. ":" .. kstr .. "]")
        if type(v) == "function" then
            refl_output = refl_output .. "\n   func(" .. kstr .. ", static_func()),"
            num_methods = num_methods + 1
        end
    end
    for k, v in pairs(classtable.__class) do
        local kstr = tostring(k)
--        print ("type(v) method " .. tostring(v) .. " [" .. classname .. ":" .. kstr .. "]")
        if type(v) == "function" and kstr:find("_") ~= 1 then
            refl_output = refl_output .. "\n   func(" .. kstr
            if kstr:find("Create") == 1 then
                refl_output = refl_output .. '_GC, special_name("' .. kstr .. '")'
            end
            if proptable[k] then
                refl_output = refl_output .. ", property()"
            end
            refl_output = refl_output .. "),"
            num_methods = num_methods + 1
        end
    end
    refl_output = refl_output:sub(1, -2) -- remove final comma
    refl_output = refl_output .. "\n)\n\n"
    num_classes = num_classes + 1
end

local returnvalues = dialog:Execute()
if returnvalues == nil then return end
local classname = returnvalues[1]

for k, v in pairs(_G.finale) do
    local kstr = tostring(k)
    if kstr:find("FC") == 1  or kstr:find("__FC") == 1 then
        if v.__class then
            if kstr == classname or classname == "" then
                ProcessClass(k, v)
            end
        end
    end
end

if classname == "" then  classname = "All Classes" end
print ("Found " .. tostring(num_methods) .. " methods in " .. tostring(num_classes) .. " classes. (" .. classname .. ")")

if num_classes <= 0 then
    finenv.UI():AlertInfo("Class " .. returnvalues[1] .. " not found. Nothing has been copied to the clipboard.", "Code Not Created")
    return
end

if finenv.UI():TextToClipboard(refl_output) then
    finenv.UI():AlertInfo("Reflection code for refl-cpp has been copied to the clipboard.", "Code Created")
end

