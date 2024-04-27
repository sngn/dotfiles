local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {
  -- Override plugin definition options
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "romgrk/nvim-treesitter-context",
      "windwp/nvim-ts-autotag",
    },
    opts = overrides.treesitter,
  },

  {
    "numToStr/Comment.nvim",
    opts = overrides.commentnvim,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  { -- A vim / nvim plugin that intelligently reopens files at your last edit position
    "farmergreg/vim-lastplace",
    lazy = false,
  },

  {
    "hiphish/rainbow-delimiters.nvim",
    dependencies = 'nvim-treesitter/nvim-treesitter',
    event = { 'BufReadPost', 'BufNewFile' },
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
      require("numb").setup {
        show_numbers = true, -- Enable 'number' for the window while peeking
        show_cursorline = true, -- Enable 'cursorline' for the window while peeking
      }
     end,
  },

  {
    "romgrk/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup {
        enable = true,   -- Enable this plugin (Can be enabled/disabled later via commands)
        max_lines = 0,   -- How many lines the window should span. Values <= 0 mean no limit.
        patterns = {     -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
          -- For all filetypes
          -- Note that setting an entry here replaces all other patterns for this entry.
          -- By setting the 'default' entry below, you can control which nodes you want to
          -- appear in the context window.
          default = {
            'class',
            'function',
            'method',
          },
        },
        throttle = true, -- Throttles plugin updates (may improve performance)
      }
    end
  },

  {
    "sindrets/diffview.nvim",
    event = "BufRead",
  },

  {
    "tpope/vim-fugitive",
    cmd = {
      "G",
      "GBrowse",
      "GDelete",
      "GMove",
      "GRemove",
      "GRename",
      "Gdiffsplit",
      "Gedit",
      "Ggrep",
      "Git",
      "Glgrep",
      "Gread",
      "Gwrite",
    },
    ft = { "fugitive" }
  },

  { -- Use treesitter to autoclose and autorename html tag
    "windwp/nvim-ts-autotag",
    config = true,
  },

  {
    "stevearc/oil.nvim",
    config = true,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    init = function ()
      require("core.utils").load_mappings "oil"
    end,
    lazy = false,
  },

  {
    "theRealCarneiro/hyprland-vim-syntax",
    ft = { "hypr", }
  },

  { -- a simple session manager plugin
    "natecraddock/sessions.nvim",
    cmd = { "SessionsLoad", "SessionsSave", "SessionsStop" },
    config = true,
  },

  {
    dir = "~/programming/projects/vim-i3blocks-syntax",
    lazy = true,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
