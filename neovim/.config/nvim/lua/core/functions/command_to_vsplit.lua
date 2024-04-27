local function command_to_vsplit(command)
  local commandOut = vim.fn.execute(command, "silent")

  require("core.functions.message_to_vsplit")(commandOut)
end

return command_to_vsplit

