return {
  n = {
    --["<leader>?"] = { require('telescope.builtin').oldfiles, "[?] Find recently opened files" },
    --["<leader><space>"] = { require('telescope.builtin').buffers, "[ ] Find existing buffers" },
    --["<leader>/"] = {
    --  function()
    --    -- You can pass additional configuration to telescope to change theme, layout, etc.
    --    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    --      winblend = 10,
    --      previewer = false,
    --    })
    --  end,
    --  "[/] Fuzzily search in current buffer"
    --},
    --["<leader>gf"] = { require("telescope.builtin").git_files,   "Search [G]it [F]iles" },
    --["<leader>sf"] = { require("telescope.builtin").find_files,  "[S]earch [F]iles" },
    --["<leader>sh"] = { require("telescope.builtin").help_tags,   "[S]earch [H]elp" },
    --["<leader>sw"] = { require("telescope.builtin").grep_string, "[S]earch current [W]ord" },
    --["<leader>sg"] = { require("telescope.builtin").live_grep,   "[S]earch by [G]rep" },
    --["<leader>sd"] = { require("telescope.builtin").diagnostics, "[S]earch [D]iagnostics" },

    -- find
    ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "Find files" },
    ["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "Find all" },
    ["<leader>fw"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
    ["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "Find buffers" },
    ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "Help page" },
    ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "Find oldfiles" },
    ["<leader>fz"] = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "Find in current buffer" },

    -- git
    ["<leader>cm"] = { "<cmd> Telescope git_commits <CR>", "Git commits" },
    ["<leader>gt"] = { "<cmd> Telescope git_status <CR>", "Git status" },

    -- pick a hidden term
    ["<leader>pt"] = { "<cmd> Telescope terms <CR>", "Pick hidden term" },

    -- theme switcher
    --["<leader>th"] = { "<cmd> Telescope themes <CR>", "Nvchad themes" },

    ["<leader>ma"] = { "<cmd> Telescope marks <CR>", "telescope bookmarks" },
  },
}
