return {
  i = {
    -- go to  beginning and end
    ["<C-b>"] = { "<ESC>^i", "Beginning of line" },
    ["<C-e>"] = { "<End>", "End of line" },

    -- navigate within insert mode
    ["<C-h>"] = { "<Left>", "Move left" },
    ["<C-l>"] = { "<Right>", "Move right" },
    ["<C-j>"] = { "<Down>", "Move down" },
    ["<C-k>"] = { "<Up>", "Move up" },
  },

  n = {
    ["ö"] = { "<Leader>", "Alternative mapleader key: ö", opts = { nowait = true, remap = true }},
    ["00"] = { "^", " Remap VIM 0 to first non-blank character", opts = {}},

    --["<Esc>"] = { ":noh <CR>", "Clear highlights" },
    ["<leader><cr>"] = { ":nohlsearch<cr>", "Clear highlights", opts = {}},

    -- switch between windows
    ["<C-h>"] = { "<C-w>h", "Window left" },
    ["<C-l>"] = { "<C-w>l", "Window right" },
    ["<C-j>"] = { "<C-w>j", "Window down" },
    ["<C-k>"] = { "<C-w>k", "Window up" },

    -- save
    ["<C-s>"] = { "<cmd> w <CR>", "Save file" },

    -- Copy all
    --["<C-c>"] = { "<cmd> %y+ <CR>", "Copy whole file" },

    -- line numbers
    --["<leader>n"] = { "<cmd> set nu! <CR>", "Toggle line number" },
    --["<leader>rn"] = { "<cmd> set rnu! <CR>", "Toggle relative number" },
    ["<leader>n"] = { "<cmd> set rnu! <CR>", "Toggle relative number" },

    -- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
    -- http://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
    -- empty mode is same as using <cmd> :map
    -- also don't use g[j|k] when in operator pending mode, so it doesn't alter d, y or c behaviour
    ["j"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', "Move down", opts = { expr = true } },
    ["k"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', "Move up", opts = { expr = true } },
    ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', "Move up", opts = { expr = true } },
    ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', "Move down", opts = { expr = true } },

    -- new buffer
    --["<leader>b"] = { "<cmd> enew <CR>", "New buffer" },
    --["<leader>ch"] = { "<cmd> NvCheatsheet <CR>", "Mapping cheatsheet" },

    -- ["<leader>fm"] = {
    --   function()
    --     vim.lsp.buf.format { async = true }
    --   end,
    --   "LSP formatting",
    -- },
    ["<leader>fm"] = { "<cmd>Format<cr>", "LSP [F]or[m]at" },

    ["<A-Down>"] = { "<cmd>resize -5<CR>", "Decrease window height -5", opts = {}},
    ["<A-Left>"] = { "<cmd>vertical resize -5<CR>", "Decrease window width -5", opts = {}},
    ["<A-Right>"] = { "<cmd>vertical resize +5<CR>", "Increase window width +5", opts = {}},
    ["<A-Up>"] = { "<cmd>resize +5<CR>", "Increase window height +5", opts = {}},

    ["<leader>pp"] = { ":setlocal paste!<cr>", "Toggle paste mode on and off", opts = {}},

    ["<leader>sl"] = { '<cmd>lua vim.g.LiteralSearch = not vim.g.LiteralSearch; print("LiteralSearch "..(vim.g.LiteralSearch and "on" or "off"))<cr>', "Toggle LiteralSearch (literal serach of visual selection)", opts = {}},
    ["<leader>sm"] = { '<cmd>lua require("core.functions.command_to_vsplit")("map")<cr>', "Output of :map in vertical split window ([s]how [m]appings)", opts = {}},

    ["<leader>tc"] = { ":tabclose<cr>", "Close tab", opts = {}},
    ["<leader>tm"] = { ":tabmove", "Move tab", opts = {}},
    ["<leader>tn"] = { ":tabnew<cr>", "Open new tab", opts = {}},
    ["<leader>to"] = { ":tabonly<cr>", "Close all other tabs", opts = {}},
  },

  t = {
    ["<C-x>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true), "Escape terminal mode" },
  },

  v = {
    ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', "Move up", opts = { expr = true } },
    ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', "Move down", opts = { expr = true } },
  },

  x = {
    ["j"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', "Move down", opts = { expr = true } },
    ["k"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', "Move up", opts = { expr = true } },
    -- Don't copy the replaced text after pasting in visual mode
    -- https://vim.fandom.com/wiki/Replace_a_word_with_yanked_text#Alternative_mapping_for_paste
    --["p"] = { 'p:let @+=@0<CR>:let @"=@0<CR>', "Dont copy replaced text", opts = { silent = true } },
  },
}

