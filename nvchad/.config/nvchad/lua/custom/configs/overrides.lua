local M = {}

M.treesitter = {
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
    "vue",
    "yaml",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    "clang-format",
    "clangd",
    "css-lsp",
    "cssmodules-language-server",
    "deno",
    "html-lsp",
    "lua-language-server",
    "prettier",
    "stylua",
    "svelte-language-server",
    "typescript-language-server",
  },
}

M.commentnvim = {
  padding = false,
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
