return {
  "hiphish/rainbow-delimiters.nvim",
  dependencies = 'nvim-treesitter/nvim-treesitter',
  event = { 'BufReadPost', 'BufNewFile' },
  --config = function()
  --	local rainbow_delimiters = require('rainbow-delimiters')
  --  local options = {
  --		strategy = {
  --				[''] = rainbow_delimiters.strategy['global'],
  --				vim = rainbow_delimiters.strategy['local'],
  --		},
  --		query = {
  --				[''] = 'rainbow-delimiters',
  --				lua = 'rainbow-blocks',
  --		},
  --		highlight = {
  --				'RainbowDelimiterRed',
  --				'RainbowDelimiterYellow',
  --				'RainbowDelimiterBlue',
  --				'RainbowDelimiterOrange',
  --				'RainbowDelimiterGreen',
  --				'RainbowDelimiterViolet',
  --				'RainbowDelimiterCyan',
  --		},
  --  }

  --  --vim.g.rainbow_delimiters = options
  --  require("rainbow-delimiters.setup")(options)
  --end,
}

