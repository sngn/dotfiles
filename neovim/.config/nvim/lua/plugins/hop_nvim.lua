return {
  "phaazon/hop.nvim",
  config = function(_, opts)
    require("hop").setup(opts)
    --vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
    --vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
  end,
  event = "BufRead",
}

