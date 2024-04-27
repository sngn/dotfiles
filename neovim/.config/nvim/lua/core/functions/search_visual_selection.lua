local get_visual_selection = require("core.functions.get_visual_selection")

local insertSearchRegister = vim.api.nvim_replace_termcodes("<C-R>/", true, false, true)
local enter = vim.api.nvim_replace_termcodes("<CR>", true, false, true)

if vim.g.LiteralSearch == nil then
  vim.g.LiteralSearch = false
end

local function search_visual_selection(searchcmd)
  local literal = vim.g.LiteralSearch
  local visualselection = get_visual_selection()

  local nicecharswithoutspaces = string.find(visualselection, "^[0-9a-z,_]*$") and true or false
  local nicecharswithspaces = function() return string.find(visualselection, "^[0-9a-z ,_]*$") and true or false end

  local isNiceStringAndVLiteral = nicecharswithoutspaces or nicecharswithspaces() and literal

  if isNiceStringAndVLiteral then
    vim.fn.setreg("/", visualselection)
  else
    local charactersToEscape = searchcmd.."\\"
    local pat = vim.fn.escape(visualselection, charactersToEscape)

    if literal then
      pat = vim.fn.substitute(pat, "\n", "\\\\n", "g")
    else
      pat = vim.fn.substitute(pat, '^\\_s\\+', '\\\\s\\\\+', '')
      pat = vim.fn.substitute(pat, "\\_s\\+$", "\\\\s\\\\*", "")
      pat = vim.fn.substitute(pat, "\\_s\\+", "\\\\_s\\\\+", "g")
    end

    vim.fn.setreg("/", "\\V"..pat)
  end

  local opensearch = vim.api.nvim_replace_termcodes(searchcmd, true, false, true)

  vim.api.nvim_feedkeys(opensearch, "n", false)
  vim.api.nvim_feedkeys(insertSearchRegister, "n", false)
  vim.api.nvim_feedkeys(enter, "nx", false)
end

return search_visual_selection

