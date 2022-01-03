function TestConstants_COMMAND_MOD_KEYS_()
   NumberConstantTest(finale.CMDMODKEY_SHIFT, "CMDMODKEY_SHIFT", 0x00000001)
   NumberConstantTest(finale.CMDMODKEY_ALT, "CMDMODKEY_ALT", 0x00000002)
   NumberConstantTest(finale.CMDMODKEY_CTRL, "CMDMODKEY_CTRL", 0x00000004)
   NumberConstantTest(finale.CMDMODKEY_COMMAND, "CMDMODKEY_COMMAND", 0x00000008)
   NumberConstantTest(finale.CMDMODKEY_FUNCTION, "CMDMODKEY_FUNCTION", 0x00000010)
end

-- Test the constants:
TestConstants_COMMAND_MOD_KEYS_()

function TestConstants_EXECMODAL_RETURNS_()
   NumberConstantTest(finale.EXECMODAL_CLOSE, "EXECMODAL_CLOSE", 0)
   NumberConstantTest(finale.EXECMODAL_OK, "EXECMODAL_OK", 1)
   NumberConstantTest(finale.EXECMODAL_CANCEL, "EXECMODAL_CANCEL", 2)
end

-- Test the constants:
TestConstants_EXECMODAL_RETURNS_()
