function plugindef()
   -- This function and the 'finaleplugin' namespace
   -- are both reserved for the plug-in definition.
   finaleplugin.NoStore = true
   return "Finale Lua File Tests", "File Tests", "Test the validity of Finale Lua classes against a specific debug file."
end

if finenv.IsRGPLua then -- if new lua
    require('mobdebug').start()
end

-- Load the toolkit  functions needed for the tests:
require("tools/jwluatesttools")

-- Validate the current file prior to the test:
if not CheckForOfficialTestTemplate() then return end

-- Load and execute the tests for the classes:
require("objecttests/jwluatest_obj_fcaccidentalmod")
require("objecttests/jwluatest_obj_fcarticulation")
require("objecttests/jwluatest_obj_fcarticulationdef")
require("objecttests/jwluatest_obj_fcbackwardrepeat")
require("objecttests/jwluatest_obj_fccategorydef")
require("objecttests/jwluatest_obj_fccellclefchange")
require("objecttests/jwluatest_obj_fccellframehold")
require("objecttests/jwluatest_obj_fccellmetrics")
require("objecttests/jwluatest_obj_fcchordprefs")
require("objecttests/jwluatest_obj_fccustomsmartlinedef")
require("objecttests/jwluatest_obj_fcdistanceprefs")
require("objecttests/jwluatest_obj_fcendingrepeat")
require("objecttests/jwluatest_obj_fcfreezesystem")
require("objecttests/jwluatest_obj_fcfretinstrumentdef")
require("objecttests/jwluatest_obj_fcgridsguidesprefs")
require("objecttests/jwluatest_obj_fclyricsprefs")
require("objecttests/jwluatest_obj_fcmeasure")
require("objecttests/jwluatest_obj_fcmiscdocprefs")
require("objecttests/jwluatest_obj_fcmultimeasurerest")
require("objecttests/jwluatest_obj_fcmultimeasurerestprefs")
require("objecttests/jwluatest_obj_fcmusiccharacterprefs")
require("objecttests/jwluatest_obj_fcnamepositionprefs")
require("objecttests/jwluatest_obj_fcnote")
require("objecttests/jwluatest_obj_fcnoteentry")
require("objecttests/jwluatest_obj_fcnoteheadmod")
require("objecttests/jwluatest_obj_fcpagegraphic")
require("objecttests/jwluatest_obj_fcpagetext")
require("objecttests/jwluatest_obj_fcpartscopeprefs")
require("objecttests/jwluatest_obj_fcpartstaffvoicing")
require("objecttests/jwluatest_obj_fcpianobraceprefs")
require("objecttests/jwluatest_obj_fcplaybackprefs")
require("objecttests/jwluatest_obj_fcrepeatprefs")
require("objecttests/jwluatest_obj_fcsizeprefs")
require("objecttests/jwluatest_obj_fcsmartshape")
require("objecttests/jwluatest_obj_fcsmartshapeprefs")
require("objecttests/jwluatest_obj_fcstaff")
require("objecttests/jwluatest_obj_fcstaffstyledef")
require("objecttests/jwluatest_obj_fcstemconnectiontable")
require("objecttests/jwluatest_obj_fctextexpressiondef")
require("objecttests/jwluatest_obj_fctextrepeat")
require("objecttests/jwluatest_obj_fctextrepeatdef")
require("objecttests/jwluatest_obj_fctiemod")
require("objecttests/jwluatest_obj_fctieprefs")

-- Output the results from the tests:
PrintTestResult()

