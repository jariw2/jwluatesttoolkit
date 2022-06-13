function plugindef()
   -- This function and the 'finaleplugin' namespace
   -- are both reserved for the plug-in definition.
   finaleplugin.NoStore = true
   return "Finale Lua Unlink Tests", "Unlink Tests", "Test whether Finale Lua classes can be unlinked."
end

if finenv.IsRGPLua then -- if new lua
    require('mobdebug').start()
end

-- Load the toolkit  functions needed for the tests:
require("tools/jwluatesttools")

-- Validate the current file prior to the test:
if not CheckForOfficialTestTemplate() then return end

_G.skip_finale_version = 0x1b200000 -- Finale 27.2
_G.staff_to_part = {3, 2, 1} -- The Part numbers are in reverse staff order

-- Load and execute the unit tests for the classes:
require("unlinktests/jwluatest_unlink_fcarticulation")
require("unlinktests/jwluatest_unlink_fcbaseline")
require("unlinktests/jwluatest_unlink_fcbeammod")
require("unlinktests/jwluatest_unlink_fccelltext")
require("unlinktests/jwluatest_unlink_fcdotmod")
require("unlinktests/jwluatest_unlink_fcexpression")
require("unlinktests/jwluatest_unlink_fcnoteentry")
require("unlinktests/jwluatest_unlink_fcpagegraphic")
require("unlinktests/jwluatest_unlink_fcpagetext")
require("unlinktests/jwluatest_unlink_fctiemod")

-- Output the results from the tests:
PrintTestResult()

