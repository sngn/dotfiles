local harpoon = require("harpoon")

return {
  n = {
    ["<leader>ha"] = { function() harpoon:list():append() end, "Harpoon append file", opts = {}},
    ["<leader>hh"] = { function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, "Harpoon show list", opts = {}},
    ["<leader>hn"] = { function() harpoon:list():next() end, "Harpoon go to next item", opts = {}},
    ["<leader>hp"] = { function() harpoon:list():prev() end, "Harpoon go to previous item", opts = {}},
    ["<leader>hr"] = { function() harpoon:list():remove() end, "Harpoon remove file", opts = {}},
  },
}

