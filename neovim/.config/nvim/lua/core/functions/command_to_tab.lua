local function command_to_tab(command)
  local commandOut = vim.fn.execute(command, "silent")

  require("core.functions.message_to_tab")(commandOut)
end

return command_to_tab

