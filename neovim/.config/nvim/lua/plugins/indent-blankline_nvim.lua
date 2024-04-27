local highlightWhitespace = {
    "CursorColumn",
    "Whitespace",
}

local highlightFunLab = {
    "Function",
    "Label",
}

local highlightRainbow = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
}

return {
  -- Add indentation guides even on blank lines
  'lukas-reineke/indent-blankline.nvim',
  -- See `:help ibl.config`
  main = "ibl",
  opts = {
    indent = {
      char = { "│", "┊" },
      tab_char = "•"
    },
    scope = {
      char = "|",
    },
    whitespace = {
    },
  },
}

