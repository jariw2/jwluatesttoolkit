UNIT TESTS FOR JW LUA

The files in this ZIP contains the script files required to run unit tests on JW Lua. The
tests will report issues found on the running JW Lua/Finale versions. Unit testing on this level is
performed to make sure that JW Lua actually behaves the way it is meant to behave.

Currently, tests are available for properties. The JW Lua properties get tested for:
* That the property exists in JW Lua
* That the property also have a getter and setter method available in JW Liua
* That the property are returning the expected Lua type
* That the property can be loaded, set and saved correctly in Finale

There are also tests available for file-specific data and JW Lua constants.

===

INSTALLATION INSTRUCTIONS

1. Put all the files in a folder (make sure the subfolders are extracted)
2. In JW Lua, open the Preferences dialog box (by clicking on the "..." button) and add the folder to the "require" paths

===

TO RUN TESTS

The script "jwlua_classtests.lua" contains the tasks to run the available unit tests. Run that file to run the test and get a report.

The script "jwlua_consttests.lua" contains the tasks to run the tests for JW Lua constants. Run that file to run the test and get a report.

The script "jwlua_filetests.lua" contains the tasks to run the tests on the Finale test document. Run that file to run the test and get a report.

The script "jwlua_testall.lua" will run all 3 tests above.

===

TO CREATE A NEW TEST

The script "create_property_test.lua" contains the code to create a "skeleton" test code for a JW Lua class. The
skeleton code is put in the clipboard, where it can be pasted to another document.

===