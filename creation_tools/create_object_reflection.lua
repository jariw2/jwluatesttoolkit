function plugindef()
   -- This function and the 'finaleplugin' namespace
   -- are both reserved for the plug-in definition.
   finaleplugin.RequireDocument = false -- ignored by jw lua 0.54
   finaleplugin.NoStore = true
   finaleplugin.Author = "Robert Patterson"
   finaleplugin.CategoryTags = "Debug, Development, Diagnose, UI"
   return "Create Object Reflection", "Create Object Reflection", "Reflect selected class(es) to the clipboard in refl-cpp format."
end

if finenv.IsRGPLua then -- if new lua
    require('mobdebug').start()
end

local refl_output = ""
local classname = ""

-- Show dialog
local dialog = function()
    local str = finale.FCString()
    local dialog = finale.FCCustomWindow()
    str.LuaString = "Class Name To Reflect"
    dialog:SetTitle(str)
    local current_y = 0
    local x_increment = 105
    -- number of steps
    local static = dialog:CreateStatic(0, current_y+2)
    str.LuaString = "Class name (empty to list all):"
    static:SetText(str)
    static:SetWidth(200)
    current_y = current_y + 20
    local class_name = dialog:CreateEdit(0, current_y)
    class_name:SetWidth(200)
    -- ok/cancel
    dialog:CreateOkButton()
    dialog:CreateCancelButton()
    if finale.EXECMODAL_OK == dialog:ExecuteModal(nil) then
        local classname_entered = finale.FCString()
        class_name:GetText(classname_entered)
        return true, classname_entered
    end
    return false
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
        if classtable.__class then
            return classtable.__class[key]
        end
    end
    return classtable[key]
end

local get_parent_name = function(class, classname)
    if finenv.MinorVersion <= 54 then -- old jw lua
        classt = class.__class
        if classt and classname ~= "__FCBase" then
            classtp = classt["__parent"] -- this line will crash Finale (in jw lua 0.54) if "__parent" doesn't exist, so we excluded "__FCBase" above, the only class without a parent
            if classtp and type(classtp) == "table" then            
                for k, v in pairs(_G.finale) do
                    if type(v) == "table" then
                        if v.__class and v.__class == classtp then
                            return tostring(k)
                        end
                    end                
                end
            end
        end
    else
        for k, v in pairs(class.__parent) do
            return tostring(k)  -- post 0.54 the v is just a dummy value, and the key is the classname of the parent
        end
    end
    return nil
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

classes_found = {}

function ProcessClass(classname, classtable)
    if finenv.MinorVersion <= 54 and refl_output == "" then
        refl_output = refl_output .. "// This script cannot detect static functions when run with OG JW Lua (0.54 and earlier).\n\n"
    end
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
            if kstr:find("Create") == 1 and classname ~= "FCCustomWindow" then
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
    classes_found[classname] = {parent_name = get_parent_name(classtable, classname), has_constructor = (nil ~= classtable.__call)}
    for k, v in pairs(proptable) do
        if not v then
            print ("WARNING: Property getter or setter not found in functions: " .. classname .. "." .. k)
        end
    end
end

if dialog ~= nil then
    local success, str = dialog()
    if not success then return end
    classname = str.LuaString
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

if num_classes > 0 then
    refl_output = refl_output .. "\n// Be sure to check the constructor signatures.\n"
    refl_output = refl_output .. "// This script can detect the presence of constructors but not their signatures.\n"
    refl_output = refl_output .. "// (The c++ compiler will refuse to compile if a constructor signature is wrong.)\n\n"
    for k, v in pairs(classes_found) do
        if v.parent_name then
            refl_output = refl_output .. "AddDerivedClass<" .. k .. ", " .. v.parent_name
        else
            refl_output = refl_output .. "AddClass<" .. k
        end
        if v.has_constructor then
            refl_output = refl_output .. ", void(*) (void)" -- the no-parameters constructor used by the vast majority of FC classes
        end
        refl_output = refl_output .. ">(nameSpace, l);\n"
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

