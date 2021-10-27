function plugindef()
   -- This function and the 'finaleplugin' namespace
   -- are both reserved for the plug-in definition.
   finaleplugin.RequireDocument = false -- ignored by jw lua 0.54
   finaleplugin.NoStore = true
   finaleplugin.Author = "Jari Williamsson"
   finaleplugin.CategoryTags = "Debug, Development, Diagnose, UI"
   return "Create Object Reflection", "Create Object Reflection", "Reflect selected class(es) to the clipboard in refl-cpp format."
end

if finenv.MinorVersion > 54 then -- if new lua
    require('mobdebug').start()
end

local refl_output = ""
local classname = "FCEntryMetrics" -- change this to the class you want, if the dialog isn't available (i.e. RGP Lua)

-- Show dialog
local dialog = nil
if finenv.MinorVersion <= 54 then -- old jw lua version
    dialog = finenv.UserValueInput()
    dialog.Title = "Class Name To Reflect"
    dialog:SetTypes("String")
    dialog:SetDescriptions("Class name (empty to list all):")
end

local num_methods = 0
local num_classes = 0
local refl_auto_max = 98 -- maximum number before REFL_AUTO crashes and burns

function __static_table(classtable)
    if finenv.MinorVersion <= 54 then
        return classtable -- this doesn't actually work in jw lua 0.54, even though it seems like it should :-(
    end
    return classtable.__static
end

function __prop_table(classtable, key)
    if finenv.MinorVersion <= 54 then
        return classtable.__class[key]
    end
    return classtable[key]
end

function CountMethods(classtable)
    local retval = 0
    for k, v in pairs(__static_table(classtable)) do
        if type(v) == "function" then
            retval = retval + 1
        end
    end
    for k, v in pairs(classtable.__class) do
        if finenv.MinorVersion > 54 or type(v) == "function" then
            retval = retval + 1
        end
    end
    return retval
end

function ProcessClass(classname, classtable)
    local proptable = {}
    local __propget = __prop_table(classtable,"__propget")
    if __propget then
        for k, _ in pairs(__propget) do
            local kstr = tostring(k)
            proptable["Get" .. kstr] = false
--            print ("found property get" .. kstr)
        end
    end
    local __propget = __prop_table(classtable,"__propset")
    if __propget then
        for k, _ in pairs(__propget) do
            local kstr = tostring(k)
            proptable["Set" .. kstr] = false
--            print ("found property set" .. kstr)
        end
    end
    local method_count = CountMethods(classtable)
    local use_auto_syntax = method_count < refl_auto_max
    if use_auto_syntax then
        refl_output = refl_output .. "REFL_AUTO\n(\n   type(" .. classname .. "),"
        refl_output = refl_output .. "\n   func(ClassName)," -- adding these in forces us to add them to any class where they are missing
    else
        refl_output = refl_output .. "REFL_TYPE(" .. classname .. ")\n"
        refl_output = refl_output .. "   REFL_FUNC(ClassName)\n"
    end
    -- this search for static functions does not work in jw lua 0.54 even though it seems like it should
    for k, v in pairs(__static_table(classtable)) do
        local kstr = tostring(k)
--        print ("type(v) static " .. type(v) .. " [" .. classname .. ":" .. kstr .. "]")
        if finenv.MinorVersion > 54 or type(v) == "function" then
            if use_auto_syntax then
                refl_output = refl_output .. "\n   func(" .. kstr .. ", static_func()),"
            else
                refl_output = refl_output .. "   REFL_FUNC(" .. kstr .. ", static_func())\n"
            end
            num_methods = num_methods + 1
        end
    end
    for k, v in pairs(classtable.__class) do
        local kstr = tostring(k)
--        print (type(v) .. " method " .. tostring(v) .. " [" .. classname .. ":" .. kstr .. "]")
        if (finenv.MinorVersion > 54 or type(v) == "function") and kstr:find("_") ~= 1 and kstr ~= "ClassName" then
            if use_auto_syntax then
                refl_output = refl_output .. "\n   func(" .. kstr
            else
                refl_output = refl_output .. "   REFL_FUNC(" .. kstr
            end
            if kstr:find("Create") == 1 then
                refl_output = refl_output .. '_GC, special_name("' .. kstr .. '")'
            end
            if nil ~= proptable[k] then
                refl_output = refl_output .. ", property()"
                proptable[k] = true
            end
            refl_output = refl_output .. ")"
            if use_auto_syntax then
                refl_output = refl_output .. ","
            else
                refl_output = refl_output .. "\n"
            end
            num_methods = num_methods + 1
        end
    end
    if use_auto_syntax then
        refl_output = refl_output:sub(1, -2) -- remove final comma
        refl_output = refl_output .. "\n)\n\n"
    else
        refl_output = refl_output .. "REFL_END\n"
    end
    num_classes = num_classes + 1
    for k, v in pairs(proptable) do
        if not v then
            print ("WARNING: Property getter or setter not found in functions: " .. classname .. "." .. k)
        end
    end
end

if dialog ~= nil then
    local returnvalues = dialog:Execute()
    if returnvalues == nil then return end
    classname = returnvalues[1]
end

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
    finenv.UI():AlertInfo("Class " .. classname .. " not found. Nothing has been copied to the clipboard.", "Code Not Created")
    return
end

if finenv.UI():TextToClipboard(refl_output) then
    finenv.UI():AlertInfo("Reflection code for refl-cpp has been copied to the clipboard.", "Code Created")
end

