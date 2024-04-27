return {
  n = {
    -- Navigation through hunks
    ["<leader>gn"] = { require('gitsigns').next_hunk, "[G]o to [N]ext Hunk" },
    ["<leader>gp"] = { require('gitsigns').prev_hunk, "[G]o to [P]revious Hunk" },
    --["]c"] = {
    --  function()
    --    if vim.wo.diff then
    --      return "]c"
    --    end
    --    vim.schedule(function()
    --      require("gitsigns").next_hunk()
    --    end)
    --    return "<Ignore>"
    --  end,
    --  "Jump to next hunk",
    --  opts = { expr = true },
    --},
    --["[c"] = {
    --  function()
    --    if vim.wo.diff then
    --      return "[c"
    --    end
    --    vim.schedule(function()
    --      require("gitsigns").prev_hunk()
    --    end)
    --    return "<Ignore>"
    --  end,
    --  "Jump to prev hunk",
    --  opts = { expr = true },
    --},

    -- Actions
    ["<leader>gb"] = { package.loaded.gitsigns.blame_line, "[G]it [B]lame line" },
    ["<leader>ph"] = { require('gitsigns').preview_hunk, "[P]review [H]unk" },
    ["<leader>rh"] = { require("gitsigns").reset_hunk, "[R]eset [H]unk" },
    ["<leader>td"] = { require("gitsigns").toggle_deleted, "[T]oggle [D]eleted" },
  },
}

