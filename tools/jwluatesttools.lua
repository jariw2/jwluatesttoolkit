-- Core test tool functions for the JW Lua Test cases
-- Used by the test scripts

local NoOfTests = 0
local NoOfTestErrors = 0

function PrintTestResult()
    print(NoOfTests, "tests made with", NoOfTestErrors, "test error(s).")
end

function Is2012OrAbove()
    return finenv.FinaleVersion >= 2012
end

function Is2014OrAbove()
    return finenv.FinaleVersion >= 2014
end

function Is2014BOrAbove()    
    return finenv.RawFinaleVersion >= 0x12020000
end

function Is26_2OrAbove()    
    return finenv.RawFinaleVersion >= 0x1a020000
end

-- A help method to assure a usable string value
function __StringVersion(expression)
    if expression == nil then return "(nil)" end
    if type(expression) == "boolean" then
        if expression then return "(true)" end
        return "(false)"
    end
    return "" .. expression
end

-- Increases the total test counter
function TestIncrease()
    NoOfTests = NoOfTests + 1
end

-- Report test error and increase error counter:
function TestError(errorstring)
    print("TEST ERROR: ", errorstring)
    NoOfTestErrors = NoOfTestErrors + 1
end

function AssureValue(testvalue, valueexpected, expression)
    TestIncrease()
    if testvalue == valueexpected then return true end
    TestError("Value test failed for " .. __StringVersion(expression) .. ". Value was " .. __StringVersion(testvalue) .. " but " ..  __StringVersion(valueexpected) .. " was expected.")
    return false
end

function AssureType(param, typestring, expression) 
    TestIncrease()
    if type(param) == typestring then return true end
    TestError("Type test failed for " .. expression .. ". Type was " .. type(param) .. " but " ..  typestring .. " was expected.")
    return false
end

-- Test that the value is true
function AssureTrue(value, expression)
    TestIncrease()
    if value == true then return true end
    TestError("Test for 'true' failed for " .. __StringVersion(expression))    
    return false
end


-- Test that the value is false
function AssureFalse(value, expression)
    TestIncrease()
    if value == false then return true end
    TestError("Test for 'false' failed for " .. __StringVersion(expression))
    return false
end


-- Tests that the value is non-nil
function AssureNonNil(value, testtext)
    TestIncrease()
    if value ~= nil then return true end
    TestError(testtext .. " (Value is nil.)")
    return false
end

-- Tests that the value is nil
function AssureNil(value, testtext)
    TestIncrease()
    if value == nil then return true end
    TestError(testtext .. " (Value is non-nil.)")
    return false
end

-- Tests if the key name exists in the parent table.
-- Test only one level back.
function TestKeyInParentTable(t, keyname, indexname)
    if not (indexname == "")  then
        t = t[indexname]
    end    
    for k, v in pairs(t) do
        --print (k, keyname)
        if (k == keyname) then return true end
    end
    return false
end

-- Tests if the key name exists in the table
function AssureKeyInTable(classtable, keyname, indexname, testtext)
    TestIncrease()
    local testtable = classtable.__class
    if not (indexname == "")  then
        if finenv.MinorVersion <= 54 then
            testtable = testtable[indexname]
        else
            testtable = classtable[indexname]
        end
    end
    for k, v in pairs(testtable) do
        if k == keyname then return true end        
    end
    -- Test parent  class info (one parent level only)
    local ptable = nil
    if finenv.IsRGPLua then
        ptable = classtable["__parent"]
        for k2, v2 in pairs(ptable) do
            ptable = _G.finale[k2]
            if ptable and indexname == "" then
                ptable = ptable.__class
            end
        end
    else
        ptable = classtable.__class["__parent"]
    end
    if ptable and (TestKeyInParentTable(ptable, keyname, indexname)) then
        return true
    end
    TestError(testtext .. keyname)    
    return false
end

function GetPropTable(classtable, key)
    if finenv.MinorVersion > 54 then
        return classtable[key]
    end
    return classtable.__class[key]
end

-- Tests that the property name exists
function TestPropertyName(classname, propertyname, testsetter)
    TestIncrease()
    for k,v in pairs(_G.finale) do
        if k == classname and v.__class then
            -- Class name found
            if not AssureNonNil(GetPropTable(v, "__propget"),  "Internal error: __propget wasn't found for class " .. classname) then return end
            if not AssureNonNil(GetPropTable(v, "__propset"), "Internal error: __propset wasn't found for class " .. classname) then return false end
            AssureKeyInTable(v, propertyname, "__propget", "Getter property not found for class " .. classname .. ": ")
            local methodname = "Get" .. propertyname
            AssureKeyInTable(v, methodname, "", "Getter method not found for class " .. classname .. ": ")
            if testsetter then
                AssureKeyInTable(v, propertyname, "__propset", "Setter property not found for " .. classname .. ": ")
                methodname = "Set" .. propertyname
                AssureKeyInTable(v, methodname, "", "Setter method not found for " .. classname .. ": ")
            end
            return
        end
    end
    TestError("Class name not found: " .. classname)
end

-- Tests that the function name exists
function TestFunctionName(classname, functionname)
    TestIncrease()
    for k,v in pairs(_G.finale) do
        if k == classname and v.__class then
            -- Class name found
            AssureKeyInTable(v, functionname, "", "Function not found for class " .. classname .. ": ")
            return
        end
    end
    TestError("Class name not found: " .. classname)
end

-- Test the availability of the class and that the ClassName() method returns the correct string
function TestClassName(obj, classname)
    TestIncrease()
    if (obj == nil) then
        TestError("'obj' is nil in TestClassName() when testing for classname " .. classname)
        return false
    end
    TestIncrease()
    for k,v in pairs(_G.finale) do
        if k == classname and v.__class then
            -- Class name found - test the Class name method in the object
            TestIncrease()
            if obj:ClassName() ~= classname then
                TestError("ClassName() method for class " .. classname .. " returns " .. obj:ClassName())
            end
            return true -- Class found, so that's considered a success
        end
    end
    TestError("Class name not found: " .. classname)
    return false
end

-- Read-only test for properties
function PropertyTest_RO(obj, classname, propertyname)
    if not TestClassName(obj, classname) then return end
    TestPropertyName(classname, propertyname, false)
end

-- Test for read/write properties
function PropertyTest(obj, classname, propertyname)
    if not TestClassName(obj, classname) then return end
    TestPropertyName(classname, propertyname, true)
end

-- Test for class methods
function FunctionTest(obj, classname, functionname)
    if not TestClassName(obj, classname) then return end
    TestFunctionName(classname, functionname, true)
end

-- Test for static function existence
function StaticFunctionTest(classname, functionname)
    TestIncrease()
    if (_G.finale[classname] == nil) then
        TestError("Classname not found in StaticFunctionTest() when testing for classname " .. classname .. "." .. functionname)
        return false
    end
    TestIncrease()
    if (_G.finale[classname][functionname] == nil) then
        TestError("Function is nil in StaticFunctionTest() when testing for classname " .. classname .. "." .. functionname)
        return false
    end
end

-- Test for boolean properties
function BoolPropertyTest(obj, classname, propertyname)
    PropertyTest(obj, classname, propertyname, numbertable)
    if not AssureType(obj[propertyname], "boolean", "property " .. classname .. "." .. propertyname) then return end
    -- Test to set each number in the number table
    local oldvalue = obj[propertyname]
    obj[propertyname] = true
    TestIncrease()
    AssureTrue(obj:Save(), classname .. "::Save()")
    obj[propertyname] = false
    AssureTrue(obj:Reload(), classname .. "::Reload()")
    if obj[propertyname] ~= true then
         TestError("Bool test error while trying to set/save " .. classname .. "." .. propertyname .. " to true." )
    end
    obj[propertyname] = false
    TestIncrease()
    AssureTrue(obj:Save(), classname .. "::Save()")
    obj[propertyname] = true
    AssureTrue(obj:Reload(), classname .. "::Reload()")
    if obj[propertyname] ~= false then
         TestError("Bool test error while trying to set/save " .. classname .. "." .. propertyname .. " to false." )
    end
    obj[propertyname] = oldvalue
    AssureTrue(obj:Save(), classname .. "::Save()")
end

-- Test for read-only boolean properties
function BoolPropertyTest_RO(obj, classname, propertyname)
    PropertyTest_RO(obj, classname, propertyname, numbertable)
    if not AssureType(obj[propertyname], "boolean", "property " .. classname .. "." .. propertyname) then return end
end

-- Test for number properties
function NumberPropertyTest(obj, classname, propertyname, numbertable)
    PropertyTest(obj, classname, propertyname)
    if not AssureType(obj[propertyname], "number", "property " .. classname .. "." .. propertyname) then return end
    -- Test to set each number in the number table
    if numbertable == nil then
        TestIncrease()
        TestError("Internal error - Number test table for property " .. classname .. "." .. propertyname .. " test is nil.")
        return
    end

    local oldvalue = obj[propertyname]    
    for k, v in pairs(numbertable) do        
        obj[propertyname] = v        
        TestIncrease()
        if obj["Save"] and obj["Reload"] then    
            AssureTrue(obj:Save(), classname .. "::Save()")
            obj[propertyname] = oldvalue
            AssureTrue(obj:Reload(), classname .. "::Reload()")
        end
        if obj[propertyname] ~= v then
            TestError("Number test failure while trying to set/save " .. classname .. "." .. propertyname .. " to " .. v .. " (received ".. obj[propertyname] .. ")" )
        end        
    end
    -- Restore the previous value
    obj[propertyname] = oldvalue
    if obj["Save"] then AssureTrue(obj:Save(), classname .. "::Save()") end
end

-- Test for indexed function pairs
function NumberIndexedFunctionPairsTest(obj, classname, gettername, settername, index, numbertable, savefunction, reloadfunction)
    if not AssureNonNil(obj, "nil passed to NumberIndexedFunctionPairsTest for " .. classname .. "." .. gettername .. " index " .. index) then return nil end
    if not savefunction and obj.Save then
        savefunction = function() return obj:Save() end
    end
    if not reloadfunction and obj.Reload then
        reloadfunction = function()
            if not obj:Reload() then return nil end
            return obj
        end
    end    
    FunctionTest(obj, classname, gettername)
    FunctionTest(obj, classname, settername)
    -- Test to set each number in the number table
    if numbertable == nil then
        TestIncrease()
        TestError("Internal error - Number test table for getter function " .. classname .. "." .. gettername .. " test is nil.")
        return obj
    end

    local oldvalue = obj[gettername](obj, index)
    for k, v in pairs(numbertable) do        
        obj[settername](obj, index, v)        
        TestIncrease()
        if savefunction and reloadfunction then    
            AssureTrue(savefunction(), classname .. " save function")
            obj[settername](obj, index, oldvalue)
            obj = reloadfunction() -- the reload function can replace the obj pointer with a new value, including nil
            if not AssureNonNil(obj, classname .. " reload function") then
                break
            end
        end
        if obj[gettername](obj, index) ~= v then
            TestError("Number test failure while trying to set/save " .. classname .. ":" .. settername .. " to " .. v .. " with index " .. index .. " (received ".. obj[gettername](obj, index) .. ")" )
        end        
    end
    -- Restore the previous value, if reloadfunction didn't kill it
    if obj then
        obj[settername](obj, index, oldvalue)
        if savefunction then AssureTrue(savefunction(), classname .. " save function") end
    end
    return obj
end

-- Test for indexed function pairs
function BoolIndexedFunctionPairsTest(obj, classname, gettername, settername, index, savefunction, reloadfunction)
    if not AssureNonNil(index, "nil index passed to BoolIndexedFunctionPairsTest for " .. classname .. "." .. gettername) then return nil end
    if not AssureNonNil(obj, "nil passed to BoolIndexedFunctionPairsTest for " .. classname .. "." .. gettername .. " index " .. index) then return nil end
    if not savefunction and obj.Save then
        savefunction = function() return obj:Save() end
    end
    if not reloadfunction and obj.Reload then
        reloadfunction = function()
            if not obj:Reload() then return nil end
            return obj
        end
    end    
    FunctionTest(obj, classname, gettername)
    FunctionTest(obj, classname, settername)

    local oldvalue = obj[gettername](obj, index)
    for k, v in pairs({true, false}) do        
        obj[settername](obj, index, v)        
        TestIncrease()
        if savefunction and reloadfunction then    
            AssureTrue(savefunction(), classname .. " save function")
            obj[settername](obj, index, oldvalue)
            obj = reloadfunction() -- the reload function can replace the obj pointer with a new value, including nil
            if not AssureNonNil(obj, classname .. " reload function") then
                break
            end
        end
        if obj[gettername](obj, index) ~= v then
            TestError("Boolean test failure while trying to set/save " .. classname .. ":" .. settername .. " to " .. v .. " with index " .. index .. " (received ".. obj[gettername](obj, index) .. ")" )
        end        
    end
    -- Restore the previous value, if reloadfunction didn't kill it
    if obj then
        obj[settername](obj, index, oldvalue)
        if savefunction then AssureTrue(savefunction(), classname .. " save function") end
    end
    return obj
end


-- Test for number properties read-only)
function NumberPropertyTest_RO(obj, classname, propertyname, numbertable)
    PropertyTest_RO(obj, classname, propertyname)
    if not AssureType(obj[propertyname], "number", "property " .. classname .. "." .. propertyname) then return end    
end

-- Test for string properties
function StringPropertyTest(obj, classname, propertyname, stringtable)
    PropertyTest(obj, classname, propertyname)
    if not AssureType(obj[propertyname], "string", "property " .. classname .. "." .. propertyname) then return end
    -- Test to set each number in the number table
    if stringtable == nil then
        TestIncrease()
        TestError("Internal error - String test table for property " .. classname .. "." .. propertyname .. " test is nil.")
        return
    end

    local oldvalue = obj[propertyname]    
    for k, v in pairs(stringtable) do        
        obj[propertyname] = v
        TestIncrease()
        AssureTrue(obj:Save(), classname .. "::Save()")
        obj[propertyname] = oldvalue
        AssureTrue(obj:Reload(), classname .. "::Reload()")
        if obj[propertyname] ~= v then
            TestError("String test failure while trying to set/save " .. classname .. "." .. propertyname .. " to " .. v .. " (received ".. obj[propertyname] .. ")" )
            break
        end
    end
    -- Restore the previous value
    obj[propertyname] = oldvalue
    AssureTrue(obj:Save(), classname .. "::Save()")
end


-- Test for object read-only properties
function ObjectPropertyTest_RO(obj, classname, propertyname, returnclass)
    PropertyTest_RO(obj, classname, propertyname)
    if not AssureType(obj[propertyname], "userdata", "property " .. classname .. "." .. propertyname) then return end
    -- Test that the class is correct (by looking at the ClassName() method)
    local returnvalue = obj[propertyname]    
    TestIncrease()
    if returnvalue:ClassName() ~= returnclass then
        TestError("Object class name for property " .. classname .. "." .. propertyname .. " was " .. returnvalue:ClassName() .. " instead of " .. returnclass)
    end
end

function BoolString(boolval)
    if boolval then return "true" end
    return "false"
end

function BoolValuePropertyTest(obj, classname, propertyname, expectedvalue, read_only)
    PropertyTest(obj, classname, propertyname)
    if not AssureType(obj[propertyname], "boolean", "property " .. classname .. "." .. propertyname) then return end
    TestIncrease()
    if obj[propertyname] ~= expectedvalue then
        TestError("Loaded boolean value for " .. classname .. "." .. propertyname .. " was " .. BoolString(obj[propertyname]) .. " instead of " .. BoolString(expectedvalue))
    else
        if (not read_only) and obj["Set" .. propertyname] then
            local tryvalue = not expectedvalue
            obj[propertyname] = tryvalue
            if obj[propertyname] ~= tryvalue then
                TestError("Tried boolean value for " .. classname .. "." .. propertyname .. " was " .. BoolString(obj[propertyname])  .. " instead of " .. BoolString(tryvalue))
            end
            obj[propertyname] = expectedvalue
        end
    end
end

function NumberValuePropertyTest(obj, classname, propertyname, expectedvalue, tryvalue)    
    PropertyTest(obj, classname, propertyname)
    if not AssureType(obj[propertyname], "number", "property " .. classname .. "." .. propertyname) then return end
    if obj[propertyname] ~= expectedvalue then
        if expectedvalue == nil then        
            TestError("Loaded number value for " .. classname .. "." .. propertyname .. " was " .. obj[propertyname] .. " instead of nil")
        else
            TestError("Loaded number value for " .. classname .. "." .. propertyname .. " was " .. obj[propertyname] .. " instead of " .. expectedvalue)
        end
    else
        if tryvalue and obj["Set" .. propertyname] then
            obj[propertyname] = tryvalue
            if obj[propertyname] ~= tryvalue then
                TestError("Tried number value for " .. classname .. "." .. propertyname .. " was " .. obj[propertyname] .. " instead of " .. tryvalue)
            end
            obj[propertyname] = expectedvalue
        end
    end
end

function StringValuePropertyTest(obj, classname, propertyname, expectedvalue)    
    PropertyTest(obj, classname, propertyname)
    if not AssureType(obj[propertyname], "string", "property " .. classname .. "." .. propertyname) then return end
    if obj[propertyname] ~= expectedvalue then
        TestError("Loaded string value for " .. classname .. "." .. propertyname .. " was " .. obj[propertyname] .. " instead of " .. expectedvalue)
    end
end

function BoolValuePropertyTest_RO(obj, classname, propertyname, expectedvalue)
    PropertyTest_RO(obj, classname, propertyname)
    if not AssureType(obj[propertyname], "boolean", "property " .. classname .. "." .. propertyname) then return end
    TestIncrease()
    if obj[propertyname] ~= expectedvalue then
        TestError("Loaded boolean value for " .. classname .. "." .. propertyname .. " was " .. BoolString(obj[propertyname]) .. " instead of " .. BoolString(expectedvalue))
    end
end

function NumberValuePropertyTest_RO(obj, classname, propertyname, expectedvalue)
    PropertyTest_RO(obj, classname, propertyname)
    if not AssureType(obj[propertyname], "number", "property " .. classname .. "." .. propertyname) then return end
    if obj[propertyname] ~= expectedvalue then
        TestError("Loaded number value for " .. classname .. "." .. propertyname .. " was " .. obj[propertyname] .. " instead of " .. expectedvalue)
    end
end

function NumberConstantTest(constobj, constname, expectedvalue)
    -- Test for nil
    TestIncrease()
    if not constobj then
        TestError("Constant " .. constname .. " doesn't exist.")
        return
    end
    -- Test type
    TestIncrease()
    if type(constobj) ~= "number" then
        TestError(constname .. " is not a number constant. Actual type: " .. type(constobj))
        return
    end
    -- Test expected value
    TestIncrease()
    if constobj ~= expectedvalue then
        TestError("Constant " .. constname .. " does not have the expected value. Expected: " .. tostring(expectedvalue) .. "  Actual: " .. tostring(constobj))
    end
end

function NumberIndexValueTest(obj, classname, numberfunction, index, expectedvalue)
    -- Test for nil
    TestIncrease()
    if not obj then
        TestError("Class " .. classname .. " doesn't exist.")
        return
    end
    -- Test for method
    TestIncrease()
    if not obj[numberfunction] then
        TestError(numberfunction .. " is not a method in class " .. classname)
        return
    end
    local val = obj[numberfunction](obj, index)
    -- Test type
    TestIncrease()
    if type(val) ~= "number" then
        TestError(classname .. ":" .. numberfunction .. " does not return a number constant. It returns type: " .. type(val))
        return
    end
    -- Test expected value
    TestIncrease()
    if val ~= expectedvalue then
        TestError(classname .. ":" .. numberfunction .. " does not have the expected value. Expected: " .. tostring(expectedvalue) .. "  Actual: " .. tostring(val))
    end
end

function StringConstantTest(constobj, constname, expectedvalue)
    -- Test for nil
    TestIncrease()
    if not constobj then
        TestError("Constant " .. constname .. " doesn't exist.")
        return
    end
    -- Test type
    TestIncrease()
    if type(constobj) ~= "string" then
        TestError(constname .. " is not a string constant. Actual type: " .. type(constobj))
        return
    end
    -- Test expected value
    TestIncrease()
    if constobj ~= expectedvalue then
        TestError("Constant " .. constname .. " does not have the expected value. Expected: ", expectedvalue .. "  Actual: " .. constobj)
    end
end


-- Tries to find a specific note entry in the file. At each call, it clears the old loaded frames.
function LoadMeasureEntry(measureno, staffno, entryid)
    if LME_notecell then LME_notecell:ClearFrame() end
    LME_notecell = finale.FCNoteEntryCell(measureno, staffno)
    LME_notecell:Load()
    return LME_notecell:FindEntryNumber(entryid)    
end
