return {
  "romgrk/nvim-treesitter-context",
  config = function()
    require("treesitter-context").setup {
      enable = true,   -- Enable this plugin (Can be enabled/disabled later via commands)
      max_lines = 5,   -- How many lines the window should span. Values <= 0 mean no limit.
      patterns = {     -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
        -- For all filetypes
        -- Note that setting an entry here replaces all other patterns for this entry.
        -- By setting the 'default' entry below, you can control which nodes you want to
        -- appear in the context window.
        default = {
          "class",
          "function",
          "method",
        },
      },
      throttle = true, -- Throttles plugin updates (may improve performance)
    }
  end
}

