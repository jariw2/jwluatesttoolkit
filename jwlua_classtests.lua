function plugindef()   -- This function and the 'finaleplugin' namespace   -- are both reserved for the plug-in definition.   finaleplugin.NoStore = true   return "JW Lua Class Tests", "Class Tests", "Test the validity of JW Lua classes"end

-- Load the toolkit  functions needed for the tests:
require("tools/jwluatesttools")

-- Load and execute the unit tests for the classes:
require("classtests/jwluatest_fcarticulationdef")
require("classtests/jwluatest_fccategorydef")
require("classtests/jwluatest_fccellmetrics")
require("classtests/jwluatest_fcchordprefs")
require("classtests/jwluatest_fccustomsmartlinedef")
require("classtests/jwluatest_fcdistanceprefs")
require("classtests/jwluatest_fcfreezesystem")
require("classtests/jwluatest_fcfretinstrumentdef")
require("classtests/jwluatest_fcmeasure")
require("classtests/jwluatest_fcmiscdocprefs")
require("classtests/jwluatest_fcmusiccharacterprefs")
require("classtests/jwluatest_fcnumber")
require("classtests/jwluatest_fcpage")
require("classtests/jwluatest_fcpageformatprefs")
require("classtests/jwluatest_fcpagegraphic")
require("classtests/jwluatest_fcpianobraceprefs")
require("classtests/jwluatest_fcrepeatprefs")
require("classtests/jwluatest_fcsizeprefs")
require("classtests/jwluatest_fcsmartshapeprefs")
require("classtests/jwluatest_fcstaffsystem")
require("classtests/jwluatest_fcstring")
require("classtests/jwluatest_fctextexpressiondef")
require("classtests/jwluatest_fctextrepeatdef")
require("classtests/jwluatest_fcui")

-- Output the results from the tests:
PrintTestResult()

