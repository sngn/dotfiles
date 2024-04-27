---@type MappingsTable
local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  -- n = {
      -- ["<leader>h"] = "",
      -- ["<C-a>"] = "",
  -- }
  x = {
      ["p"] = "",
	}
}

M.general = {
  n = {
    --["<Space>"] = { "<Leader>", "Alternative leader <space>", opts = { nowait = true, remap = true }},
    ["ö"] = { "<Leader>", "Alternative mapleader key: ö", opts = { nowait = true, remap = true }},
    ["00"] = { "^", " Remap VIM 0 to first non-blank character", opts = {}},
    ["<A-Down>"] = { ":resize -5<CR>", "Decrease window height -5", opts = {}},
    ["<A-Left>"] = { ":vertical resize -5<CR>", "Decrease window width -5", opts = {}},
    ["<A-Right>"] = { ":vertical resize +5<CR>", "Increase window width +5", opts = {}},
    ["<A-Up>"] = { ":resize +5<CR>", "Increase window height +5", opts = {}},
    ["<leader><cr>"] = { ":nohlsearch<cr>", "Stop highlighting", opts = {}},
    ["<leader>pp"] = { ":setlocal paste!<cr>", "Toggle paste mode on and off", opts = {}},
    ["<leader>tc"] = { ":tabclose<cr>", "Close tab", opts = {}},
    ["<leader>tm"] = { ":tabmove", "Move tab", opts = {}},
    ["<leader>tn"] = { ":tabnew<cr>", "Open new tab", opts = {}},
    ["<leader>to>"] = { ":tabonly<cr>", "Close all other tabs", opts = {}},
  },
}

M.oil = {
  plugin = true,
  n = {
    ["-"] = { "<CMD>Oil<CR>", "Open parent directory", opts = {}}
  },
}

return M
