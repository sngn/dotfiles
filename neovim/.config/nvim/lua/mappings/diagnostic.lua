return {
  n = {
    --["<leader>e"] = { vim.diagnostic.open_float, "Open floating diagnostic message" },
    ["<leader>e"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "Open floating diagnostic message",
    },

    ["<leader>q"] = { vim.diagnostic.setloclist, "Open diagnostics list" },

    ["[d"] = {
      function()
        vim.diagnostic.goto_prev { float = { border = "rounded" } }
      end,
      "Go to previous diagnostic message",
    },

    ["]d"] = {
      function()
        vim.diagnostic.goto_next { float = { border = "rounded" } }
      end,
      "Go to next diagnostic message",
    },
  }
}

