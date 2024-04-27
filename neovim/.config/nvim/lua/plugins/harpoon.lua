return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  config = function(_, opts)
    require("harpoon"):setup(opts)
  end,
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  init = function ()
    require("core.functions.load_mappings")(require("mappings.harpoon"), {})
  end,
  opts = {
  },
}

