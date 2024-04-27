return {
  "folke/which-key.nvim",
  cmd = "WhichKey",
  init = function()
    require("core.functions.load_mappings")(require("mappings.whichkey"), {})
  end,
  keys = { "<leader>", "<c-r>", '"', "'", "`", "c", "v", "g" },
  opts = {},
}

