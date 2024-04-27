-- NOTE: Here is where you install your plugins.
--  You can configure plugins using the `config` key.
--
--  You can also configure plugins after the setup call,
--    as they will be available in your neovim runtime.
require('lazy').setup({
  "JoosepAlviste/nvim-ts-context-commentstring",
  "MunifTanjim/nui.nvim",
  "hrsh7th/cmp-nvim-lsp", -- Adds LSP completion capabilities
  --'jupyter-vim/jupyter-vim', -- A two-way integration between Vim and Jupyter
  "mfussenegger/nvim-dap",
  "nvim-lua/plenary.nvim",
  "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
  "onsails/lspkind.nvim",
  "rafamadriz/friendly-snippets", -- Adds a number of user-friendly snippets
  "tpope/vim-rhubarb", -- Git related plugin
  "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
  require("plugins.better-escape"),
  { "sindrets/diffview.nvim", event = "BufRead", },
  require("plugins.fidget_nvim"), -- Useful status updates for LSP
  require("plugins.gitsigns_nvim"), -- Adds git related signs to the gutter, as well as utilities for managing changes
  require("plugins.hop_nvim"),
  { "theRealCarneiro/hyprland-vim-syntax", ft = { "hypr", }},
  require("plugins.indent-blankline_nvim"), -- Add indentation guides even on blank lines
  require("plugins.lualine_nvim"), -- Set lualine as statusline
  require("plugins.mason_nvim"), -- Automatically install LSPs to stdpath for neovim
  require("plugins.neodev_nvim"), -- Additional lua configuration, makes nvim stuff amazing!
  require("plugins.numb_nvim"),
  require("plugins.nvim-autopairs"), -- autopairing of (){}[] etc
  require("plugins.nvim-treesitter-context"), -- "gc" to comment visual regions/lines
  require("plugins.nvim-ts-autotag"), -- Use treesitter to autoclose and autorename html tag
  require("plugins.nvim-ts-context-commentstring"), -- TODO description
  require("plugins.onedark_nvim"), -- Theme inspired by Atom
  require("plugins.sessions_nvim"), -- a simple session manager plugin
  require("plugins.vim-fugitive"), -- Git related plugin
  require("plugins.vim-i3blocks-syntax"),
  require("plugins.vim-lastplace"), -- A vim / nvim plugin that intelligently reopens files at your last edit position
  require("plugins.which-key_nvim"), -- Useful plugin to show you pending keybinds.

  -- depends on "JoosepAlviste/nvim-ts-context-commentstring",
  require("plugins.Comment_nvim"), -- "gc" to comment visual regions/lines
  -- depends on: "rafamadriz/friendly-snippets",
  require("plugins.LuaSnip"), -- Snippet Engine & its associated nvim-cmp source
  -- depends on: plenary
  require("plugins.harpoon"), -- Fuzzy Finder (files, lsp, etc)
  -- depends on: plenary, devicons, nui
  require("plugins.neo-tree_nvim"), -- plugin to browse the file system and other tree like structures
  -- depends on: fidget, neodev
  require("plugins.nvim-lspconfig"), -- LSP Configuration & Plugins
  require("plugins.nvim-spectre"), -- A search panel for neovim
  -- depends on: "romgrk/nvim-treesitter-context", "windwp/nvim-ts-autotag",
  require("plugins.nvim-treesitter"), -- Highlight, edit, and navigate code
  -- depends on: "nvim-tree/nvim-web-devicons",
  require("plugins.oil_nvim"),
  -- depends on: nvim-treesitter
  require("plugins.rainbow-delimiters_nvim"),
  -- depends on: plenary
  require("plugins.telescope_nvim"), -- Fuzzy Finder (files, lsp, etc)
  -- depends on "mfussenegger/nvim-dap",
  "ldelossa/nvim-dap-projects",
  -- depends on "mfussenegger/nvim-dap",
  "rcarriga/nvim-dap-ui",

  -- depends on: "williamboman/mason.nvim", "hrsh7th/cmp-nvim-lsp", "neovim/nvim-lspconfig",
  require("plugins.mason-lspconfig_nvim"),
  -- depends on: Luasnip, autopairs, "hrsh7th/cmp-nvim-lsp", "nvim-tree/nvim-web-devicons", "rafamadriz/friendly-snippets", "onsails/lspkind.nvim",
  require("plugins.nvim-cmp"), -- Autocompletion

  -- depends on: 'neovim/nvim-lspconfig', 'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim',
  require("plugins.lsp-setup_nvim"),

  -- NOTE: Next Step on Your Neovim Journey: Add/Configure additional "plugins" for kickstart
  --       These are some example plugins that I've included in the kickstart repository.
  --       Uncomment any of the lines below to enable them.
  -- require 'kickstart.plugins.autoformat',
  -- require 'kickstart.plugins.debug',

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    You can use this folder to prevent any conflicts with this init.lua if you're interested in keeping
  --    up-to-date with whatever is in the kickstart repo.
  --    Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  --
  --    For additional information see: https://github.com/folke/lazy.nvim#-structuring-your-plugins
  --{ import = 'custom.plugins' },
}, {})

