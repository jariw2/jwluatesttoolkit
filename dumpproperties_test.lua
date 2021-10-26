if finenv.MinorVersion > 54 then -- if new lua
    require('mobdebug').start()
end

local function view_properties(o)
    local ret = dumpproperties(o)
    print (o:ClassName() .. " returned " .. type(ret))
    for k, v in pairs(ret) do
        print(tostring(k) .. ": " .. tostring(v))
    end
    print("")
end

local region = finale.FCMeasureNumberRegion()
if not region:Load(1) then
	return "FCMeasureNumberRegion failed to load"
end
view_properties(region)

local x = finale.FCString()
x.LuaString = "This is a test"
view_properties(x)
