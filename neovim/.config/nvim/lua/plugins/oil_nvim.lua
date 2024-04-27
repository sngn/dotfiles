return {
  "stevearc/oil.nvim",
  config = true,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  init = function ()
    require("core.functions.load_mappings")(require("mappings.oil"), {})
  end,
  lazy = false,
  opts = {},
}

