function plugindef()
   -- This function and the 'finaleplugin' namespace
   -- are both reserved for the plug-in definition.
   finaleplugin.NoStore = true
   return "Finale Lua Unlink Tests", "Unlink Tests", "Test whether Finale Lua classes can be unlinked."
end

-- Load the toolkit  functions needed for the tests:
require("tools/jwluatesttools")

_G.skip_finale_version = 0x1b200000 -- Finale 27.2

-- Load and execute the unit tests for the classes:
require("unlinktests/jwluatest_unlink_fcarticulation")
require("unlinktests/jwluatest_unlink_fcbeammod")
require("unlinktests/jwluatest_unlink_fccelltext")
require("unlinktests/jwluatest_unlink_fcdotmod")
require("unlinktests/jwluatest_unlink_fcexpression")
require("unlinktests/jwluatest_unlink_fcnoteentry")
require("unlinktests/jwluatest_unlink_fctiemod")

-- Output the results from the tests:
PrintTestResult()

