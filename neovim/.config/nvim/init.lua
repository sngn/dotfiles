-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = 'ä'


require("install-package-manager")
require("plugins") -- plugins loaded here
require("config")

-- vim: ts=2 sts=2 sw=2 et
