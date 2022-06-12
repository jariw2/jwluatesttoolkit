Regression Tests for Lua on Finale
==================================

The files in this repository contain the script files required to run regression tests on RGP/JW Lua. The tests report issues found on the running RGP/JW Lua/Finale versions. Testing on this level is performed to make sure that RGP/JW Lua actually behaves the way it is meant to behave.

The following tests are performed.

### Constant tests:

- The existence of the constant.
- The value of the constat.

### Property tests:

- The property exists in Lua.
- The property also has a getter and setter method available in Lua.
- The property returns the expected Lua type.
- The property can be loaded, set and saved correctly in Finale.

### File-Specific:

- Properties are checked against actual values in the test template.

### Unlinkable:

This is useful for testing if a new version of Finale has added unlinkable properties.

- Properties are tested to see if editing them in the part unlinks them from the score.
- If an older version of Finale does not support unlinking a particular property, that unlinkable test is skipped.

## Installation Instructions

1. Put all the files in a folder, making sure the subfolders are extracted.
2. In JW Lua, open the Preferences dialog box (by clicking on the "..." button) and add the folder to the "require" paths. (This step is not necessary for RGP Lua.)
3. In RGP Lua, add the folder to the RGP Lua configuration. (In JW Lua you can load and run scripts directly from the JW Lua dialog.)

## To Run Tests

### RGP Lua:

1. Set up [ZeroBrane Studio](https://studio.zerobrane.com/) according to the instructions [here](https://www.finalelua.com/docs/rgp-lua/development-environment).
2. Open the folder as a project in ZeroBrane Studio.
3. Start the debugger server by selecting `Project->Start Debugger Server`.
4. In Finale, open the test file, `testtemplate/testtemplate-fin2011format.musx`.
5. Run test script. Output appears in the Output window of ZeroBrane Studio.

### JW Lua:

1. In Finale, open the test file, `testtemplate/testtemplate-fin2011format.musx`.
2. Open the JW Lua dialog.
3. Select the `Development` tab.
4. Open the test script file you wish to run.
5. Select the Run Script button. Output appears in the JW Lua window.

Note that with the current version of `jwluatesttools`, JW Lua generates several hundred errors, since JW Lua has not been updated since 2017. RGP Lua should generate no errors.

### Script Files

The following scripts each provide a report as described.

|Test Script|Description|
| --- | --- |
|`jwlua_classtests.lua`|Contains the tasks to run the available class-level unit tests.|
|`jwlua_consttests.lua`|Contains the tasks to run the tests for JW Lua constants. |
|`jwlua_filetests.lua`|Contains the tasks to run the tests on the Finale test document.|
|`jwlua_unlinktests.lua`|Contains the tasks to check whether properties unlink.|
|`jwlua_testall.lua`|Runs all tests at once.|

===

## To Create a New Test


The following scripts in the `creation_tools` directory create “skeleton” code for a PDK Framework Lua class as described. The skeleton code is put on the clipboard where it can be pasted to another document. Except as noted, these scripts can run on either JW Lua or RGP Lua. For example, `create_object_reflection.lua` was run in JW Lua to create the Lua framework code for RGP Lua. (But now RGP Lua returns more complete results.)

|Test Script|Description|
| --- | --- |
|`create_constants_test.lua`|Creates a test script for constants, filtering on an input string. (Only works with JW Lua.)|
|`create_object_reflection.lua`|Creates C++ macros for every method and property of the input classname. These can be used with [`refl-cpp`](https://github.com/veselink1/refl-cpp) (a compile-time reflection library for C++17.)|
|`create_object_test.lua`|Creates a test script for the class to be included in the file tests. Edit this script as needed to run for the desired classname.|
|`create_property_test.lua`|Creates a test for the class to be included in the class tests. Edit this script as needed to run for the desired classname.|
