local on_attach = function(_, bufnr)
  require("core.functions.load_mappings")(require("mappings.gitsigns"), { buffer = bufnr })
end

return {
  'lewis6991/gitsigns.nvim',
  opts = {
    -- See `:help gitsigns.txt`
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      changedelete = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
    },
    on_attach = on_attach,
  },
}

