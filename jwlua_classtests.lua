function plugindef()
   -- This function and the 'finaleplugin' namespace
   -- are both reserved for the plug-in definition.
   finaleplugin.NoStore = true
   return "Finale Lua Class Tests", "Class Tests", "Test the validity of Finale Lua classes"
end

if finenv.IsRGPLua then -- if new lua
    require('mobdebug').start()
end

-- Load the toolkit  functions needed for the tests:
require("tools/jwluatesttools")

-- Validate the current file prior to the test:
if not CheckForOfficialTestTemplate() then return end

-- Load and execute the unit tests for the classes:
require("classtests/jwluatest_fcarticulationdef")
require("classtests/jwluatest_fccategorydef")
require("classtests/jwluatest_fccellmetrics")
require("classtests/jwluatest_fccelltext")
require("classtests/jwluatest_fcchordprefs")
require("classtests/jwluatest_fccustomsmartlinedef")
require("classtests/jwluatest_fcdistanceprefs")
require("classtests/jwluatest_fcentrymetrics")
require("classtests/jwluatest_fcfontdialog")
require("classtests/jwluatest_fcfreezesystem")
require("classtests/jwluatest_fcfretinstrumentdef")
require("classtests/jwluatest_fcgeneralprefs")
require("classtests/jwluatest_fcgridsguidesprefs")
require("classtests/jwluatest_fcgroup")
require("classtests/jwluatest_fclayerprefs")
require("classtests/jwluatest_fclyricsprefs")
require("classtests/jwluatest_fcmeasure")
require("classtests/jwluatest_fcmiscdocprefs")
require("classtests/jwluatest_fcmultimeasurerest")
require("classtests/jwluatest_fcmultimeasurerestprefs")
require("classtests/jwluatest_fcmusiccharacterprefs")
require("classtests/jwluatest_fcmusicspacingprefs")
require("classtests/jwluatest_fcnamepositionprefs")
require("classtests/jwluatest_fcnumber")
require("classtests/jwluatest_fcpage")
require("classtests/jwluatest_fcpageformatprefs")
require("classtests/jwluatest_fcpagegraphic")
require("classtests/jwluatest_fcpagetext")
--require("classtests/jwluatest_fcpartextractprefs") -- not actually accessible from Lua
require("classtests/jwluatest_fcpartscopeprefs")
require("classtests/jwluatest_fcpartstaffvoicing")
require("classtests/jwluatest_fcpianobraceprefs")
require("classtests/jwluatest_fcplaybackprefs") -- FCPlaybackPrefs crashes Finale in JW Lua due to #define typo in source (fixed for RGP Lua)
require("classtests/jwluatest_fcrepeatprefs")
require("classtests/jwluatest_fcseparatemeasurenumber")
require("classtests/jwluatest_fcsizeprefs")
require("classtests/jwluatest_fcsmartshapeprefs")
require("classtests/jwluatest_fcstaff")
require("classtests/jwluatest_fcstaffnameposition")
require("classtests/jwluatest_fcstaffstyledef")
require("classtests/jwluatest_fcstaffsystem")
require("classtests/jwluatest_fcstemconnectiontable")
require("classtests/jwluatest_fcstring")
require("classtests/jwluatest_fctextexpressiondef")
require("classtests/jwluatest_fctextrepeatdef")
require("classtests/jwluatest_fctiecontourprefs")
require("classtests/jwluatest_fctieplacementprefs")
require("classtests/jwluatest_fctiemod")
require("classtests/jwluatest_fctieprefs")
require("classtests/jwluatest_fctupletprefs")
require("classtests/jwluatest_fcui")

-- Output the results from the tests:
PrintTestResult()

