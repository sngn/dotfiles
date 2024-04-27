return {
  "JoosepAlviste/nvim-ts-context-commentstring",
  config = function (_, opts)
    require("ts_context_commentstring").setup(opts)

    vim.g.skip_ts_context_commentstring_module = true
  end,
  opts = {
    enable_autocmd = false,
  },
}

