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

-- Tests if the key name exists in the table
function AssureKeyInTable(t, keyname, testtext)    
    TestIncrease()
    for k, v in pairs(t) do
        if k == keyname then return true end
    end
    TestError(testtext .. keyname)
    return false
end

-- Tests that the property name exists
function TestPropertyName(classname, propertyname, testsetter)
    TestIncrease()
    for k,v in pairs(_G.finale) do
        if k == classname and v.__class then
            -- Class name found
            if not AssureNonNil(v.__class.__propget,  "Internal error: __propget wasn't found for class " .. classname) then return end
            if not AssureNonNil(v.__class.__propset, "Internal error: __propset wasn't found for class " .. classname) then return false end
            AssureKeyInTable(v.__class.__propget, propertyname, "Getter property not found for class " .. classname .. ": ")
            local methodname = "Get" .. propertyname
            AssureKeyInTable(v.__class, methodname, "Getter method not found for class " .. classname .. ": ")
            if testsetter then
                AssureKeyInTable(v.__class.__propset, propertyname, "Setter property not found for " .. classname .. ": ")
                methodname = "Set" .. propertyname
                AssureKeyInTable(v.__class, methodname, "Setter method not found for " .. classname .. ": ")
            end
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
    AssureTrue(obj:Reload(), classname .. "::Save()")
    if obj[propertyname] ~= false then
         TestError("Bool test error while trying to set/save " .. classname .. "." .. propertyname .. " to false." )
    end
    obj[propertyname] = oldvalue
    AssureTrue(obj:Save(), classname .. "::Save()")
end

-- Test for read-only boolean properties
function BoolPropertyTest_RO(obj, classname, propertyname)
    PropertyTest(obj, classname, propertyname, numbertable)
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
            break
        end        
    end
    -- Restore the previous value
    obj[propertyname] = oldvalue
    if obj["Save"] then AssureTrue(obj:Save(), classname .. "::Save()") end
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

function BoolValuePropertyTest(obj, classname, propertyname, expectedvalue)
    PropertyTest(obj, classname, propertyname)
    if not AssureType(obj[propertyname], "boolean", "property " .. classname .. "." .. propertyname) then return end
    TestIncrease()
    if obj[propertyname] ~= expectedvalue then
        TestError("Loaded boolean value for " .. classname .. "." .. propertyname .. " was " .. BoolString(obj[propertyname]) .. " instead of " .. BoolString(expectedvalue))
    end
end

function NumberValuePropertyTest(obj, classname, propertyname, expectedvalue)    
    PropertyTest(obj, classname, propertyname)
    if not AssureType(obj[propertyname], "number", "property " .. classname .. "." .. propertyname) then return end
    if obj[propertyname] ~= expectedvalue then
        if expectedvalue == nil then        
            TestError("Loaded number value for " .. classname .. "." .. propertyname .. " was " .. obj[propertyname] .. " instead of nil")
        else
            TestError("Loaded number value for " .. classname .. "." .. propertyname .. " was " .. obj[propertyname] .. " instead of " .. expectedvalue)
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
        TestError("Constant " .. constname .. " does not have the expected value. Expected: ", expectedvalue .. "  Actual: " .. constobj)
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
