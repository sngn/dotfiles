return {
  n = {
    --["f"] = { function()
    --  require("hop").hint_char1({
    --    current_line_only = true,
    --    direction = require'hop.hint'.HintDirection.AFTER_CURSOR,
    --  })
    --end, "Search char forwards on line", opts = {}},
    --["F"] = { function()
    --  require("hop").hint_char1({
    --    current_line_only = true,
    --    direction = require'hop.hint'.HintDirection.BEFORE_CURSOR,
    --  })
    --end, "Search char backwards on line", opts = {}},
    ["s"] = { "<cmd>HopChar2<cr>", "HopChar2", opts = { silent = true }},
    ["S"] = { "<cmd>HopWord<cr>", "HopWord", opts = { silent = true }},
    ["t"] = { function()
      require("hop").hint_char1({
        current_line_only = true,
        direction = require'hop.hint'.HintDirection.AFTER_CURSOR,
        hint_offset = -1,
      })
    end, "Search char forwards on line", opts = {}},
    ["T"] = { function()
      require("hop").hint_char1({
        current_line_only = true,
        direction = require'hop.hint'.HintDirection.BEFORE_CURSOR,
        hint_offset = -1,
      })
    end, "Search char backwards on line", opts = {}},
    ["<leader>j"] = { "<cmd>HopLineAC<cr>", "Jump to line (down)", opts = {}},
    ["<leader>k"] = { "<cmd>HopLineBC<cr>", "Jump to line (up)", opts = {}},
    --["/"] = { "<cmd>HopPattern<cr>", "Search", opts = {}},
  }
}
