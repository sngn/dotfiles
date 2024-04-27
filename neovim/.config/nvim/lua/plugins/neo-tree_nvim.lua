return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
    dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  cmd = { "Neotree" },
  init = function()
    require("core.functions.load_mappings")(require("mappings.neotree"), {})
  end,
  opts = {
    close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
  },
}

