-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- overriding NvChad core -START
--------------------------------
--vim.g.mapleader = " "
--vim.g.mapleader = "ö"

--vim.opt.expandtab = true
--vim.opt.shiftwidth = 2
--vim.opt.smartindent = true
--vim.opt.softtabstop = 2
--vim.opt.tabstop = 2
--vim.opt.whichwrap:append "<>[]hl"
vim.opt.whichwrap = "b,s" -- reset to default
--------------------------------
-- overriding NvChad core -END

vim.g.maplocalleader = "ä"

vim.opt.autoindent = true
vim.opt.smarttab = false

