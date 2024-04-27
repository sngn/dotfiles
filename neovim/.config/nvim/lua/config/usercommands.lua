local function removeEnclosingParensAndQuotes(str)
    local swoparens = vim.fn.substitute(
      str,
      "^\\s*(\\(.*\\))\\s*$",
      "\\1",
      ""
    )
    local swoquotes = vim.fn.substitute(
      swoparens,
      "^\"\\(.*\\)\"$",
      "\\1",
      ""
    )
    local rv = #swoparens == #swoquotes and vim.fn.substitute(
      swoparens,
      "^'\\(.*\\)'$",
      "\\1",
      ""
    ) or swoparens

    return rv
end

vim.api.nvim_create_user_command("CommandToTab",
  function(opts)
    local arg1 = removeEnclosingParensAndQuotes(opts.fargs[1])
    --print("Calling CommandToTab--"..opts.fargs[1].."-- with arg1 --"..arg1.."--")

    require("core.functions.command_to_tab")(arg1)
  end,
  {
    desc = "Show output of <command> in a new tab",
    force = false,
    nargs = 1,
  }
)

vim.api.nvim_create_user_command("CommandToVSplit",
  function(opts)
    local arg1 = removeEnclosingParensAndQuotes(opts.fargs[1])
    --print("Calling CommandToVSplit--"..opts.fargs[1].."-- with arg1 --"..arg1.."--")

    require("core.functions.command_to_vsplit")(arg1)
  end,
  {
    desc = "Show output of <command> in a vertical split window",
    force = false,
    nargs = 1,
  }
)

vim.api.nvim_create_user_command("MessageToTab",
  function(opts)
    local arg1 = removeEnclosingParensAndQuotes(opts.fargs[1])
    --print("Calling TabMessage--"..opts.fargs[1].."-- with arg1 --"..arg1.."--")

    require("core.functions.message_to_tab")(arg1)
  end,
  {
    desc = "Show <msg> in a new tab",
    force = false,
    nargs = 1,
  }
)

vim.api.nvim_create_user_command("MessageToVSplit",
  function(opts)
    local arg1 = removeEnclosingParensAndQuotes(opts.fargs[1])
    --print("Calling VSplitMessage--"..opts.fargs[1].."-- with arg1 --"..arg1.."--")

    require("core.functions.message_to_vsplit")(arg1)
  end,
  {
    desc = "Show <msg> in a vertical split window",
    force = false,
    nargs = 1,
  }
)

