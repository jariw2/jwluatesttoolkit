function plugindef()
   -- This function and the 'finaleplugin' namespace
   -- are both reserved for the plug-in definition.
   finaleplugin.NoStore = true
   return "JW Lua Constants Tests", "Constants Tests", "Test the validity of the JW Lua constants."
end

-- Load the toolkit  functions needed for the tests:
require("tools/jwluatesttools")

-- Load and execute the unit tests for the classes:
require("constanttests/consttest_fcarticulationdef")
require("constanttests/consttest_fccategorydef")
require("constanttests/consttest_fccellframehold")
require("constanttests/consttest_fcchordprefs")
require("constanttests/consttest_fccustomsmartlinedef")
require("constanttests/consttest_fcgroup")
require("constanttests/consttest_fcmeasure")
require("constanttests/consttest_fcmiscdocprefs")
require("constanttests/consttest_fcpagegraphic")
require("constanttests/consttest_fcpagetext")
require("constanttests/consttest_fcplaybackprefs")
require("constanttests/consttest_fcrepeatprefs")
require("constanttests/consttest_fcstaff")
require("constanttests/consttest_fctextblock")
require("constanttests/consttest_fctextrepeat")
require("constanttests/consttest_fctextrepeatdef")
require("constanttests/consttest_fctiecontourprefs")
require("constanttests/consttest_fctieplacementprefs")
require("constanttests/consttest_fctieprefs")

-- Output the results from the tests:
PrintTestResult()
