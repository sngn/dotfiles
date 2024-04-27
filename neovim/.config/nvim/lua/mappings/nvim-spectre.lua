local spectre = require("spectre")

return {
  n = {
    ["<leader>sw"] = { function() spectre.open_visual({select_word=true}) end, "Search current word", opts = {}},
  },
  v = {
    ["<leader>sw"] = { '<Cmd>lua require("spectre").open_visual()<CR>', "Search current word", opts = {}},
  },
}

