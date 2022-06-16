function plugindef()   -- This function and the 'finaleplugin' namespace   -- are both reserved for the plug-in definition.   finaleplugin.NoStore = true   return "Finale Lua - All Tests", "All Tests", "Run all the Finale Lua tests. Requires the debug file template."end

if finenv.IsRGPLua then -- if new lua
    require('mobdebug').start()
end

-- Load the toolkit  functions needed for the tests:
require("tools/jwluatesttools")

-- Validate the current file prior to the test:
if not CheckForOfficialTestTemplate() then return end

print("Running on Finale "..((finenv.FinaleVersion > 10000) and (finenv.FinaleVersion - 10000) or finenv.FinaleVersion))

-- Load the toolkit  functions needed for the tests.
-- Make sure to run jwlua_filetests first, to assure that the file contents is intact.
require("jwlua_filetests")
require("jwlua_consttests")
require("jwlua_classtests")
require("jwlua_unlinktests")

-- No need to output the result, since that's already been done
