return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function (_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "romgrk/nvim-treesitter-context",
    "windwp/nvim-ts-autotag",
  },
  opts = {
    auto_install = false,
    ensure_installed = {
      "arduino",
      "bash",
      "c",
      "c_sharp",
      "cmake",
      --"comment",
      "cpp",
      "css",
      "diff",
      "dockerfile",
      --"git_config",
      "git_rebase",
      "gitattributes",
      "gitcommit",
      "gitignore",
      "go",
      "groovy",
      "html",
      "htmldjango",
      "ini",
      "java",
      "javascript",
      "json",
      "jsonc",
      "kotlin",
      "latex",
      "ledger",
      "lua",
      "make",
      "markdown",
      "markdown_inline",
      "passwd",
      "pem",
      "perl",
      "php",
      "python",
      "regex",
      "ruby",
      "rust",
      "scss",
      "sql",
      "svelte",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "vue",
      "xml",
      "yaml",
    },
    highlight = {
      enable = true,
      use_languagetree = true,
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<c-space>",
        node_incremental = "<c-space>",
        scope_incremental = "<c-s>",
        node_decremental = "<M-space>",
      },
    },
    indent = {
      enable = true,
      -- disable = {
      --   "python"
      -- },
    },
    textobjects = {
      select = {
        enable = true,
        lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ["aa"] = "@parameter.outer",
          ["ia"] = "@parameter.inner",
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
        },
      },
      move = {
        enable = true,
        set_jumps = true, -- whether to set jumps in the jumplist
        goto_next_start = {
          ["]m"] = "@function.outer",
          ["]]"] = "@class.outer",
        },
        goto_next_end = {
          ["]M"] = "@function.outer",
          ["]["] = "@class.outer",
        },
        goto_previous_start = {
          ["[m"] = "@function.outer",
          ["[["] = "@class.outer",
        },
        goto_previous_end = {
          ["[M"] = "@function.outer",
          ["[]"] = "@class.outer",
        },
      },
      swap = {
        enable = true,
        swap_next = {
          ["<leader>a"] = "@parameter.inner",
        },
        swap_previous = {
          ["<leader>A"] = "@parameter.inner",
        },
      },
    },
  },
}

