return {
  "nvim-pack/nvim-spectre",
  config = function(_, opts)
    require("spectre").setup(opts)
  end,
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  init = function ()
    require("core.functions.load_mappings")(require("mappings.nvim-spectre"), {})
  end,
  opts = {
  },
}

