-- [[ Setting options ]]
-- See `:help vim.o`

vim.opt.autoindent = true
vim.opt.breakindent = true -- Enable break indent
vim.opt.clipboard = 'unnamedplus'
vim.opt.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.exrc = true
--vim.opt.fillchars = { eob = " " }
--vim.opt.hlsearch = false -- Set highlight on search
vim.opt.ignorecase = true
vim.opt.mouse = 'a' -- Enable mouse mode
vim.opt.number = true
vim.opt.numberwidth = 2
vim.opt.ruler = false
vim.opt.shiftwidth = 2
--vim.opt.shortmess:append "sI" -- disable nvim intro
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.smarttab = false
vim.opt.softtabstop = 2
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 2
vim.opt.termguicolors = true -- NOTE: You should make sure your terminal supports this
vim.opt.timeoutlen = 300
vim.opt.undofile = true -- Save undo history
vim.opt.updatetime = 250 -- interval for writing swap file to disk, also used by gitsigns
vim.opt.whichwrap = "b,s" -- vim default
--vim.opt.whichwrap:append "<>[]hl"

vim.wo.number = true -- Make line numbers default
vim.wo.signcolumn = 'yes' -- Keep signcolumn on by default

---- disable some default providers
--for _, provider in ipairs { "node", "perl", "python3", "ruby" } do
--  vim.g["loaded_" .. provider .. "_provider"] = 0
--end
--
---- add binaries installed by mason.nvim to path
--local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
--vim.env.PATH = vim.fn.stdpath "data" .. "/mason/bin" .. (is_windows and ";" or ":") .. vim.env.PATH

