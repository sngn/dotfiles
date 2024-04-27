-- from https://neovim.discourse.group/t/function-that-return-visually-selected-text/1601/2
-- and modified a little

local function get_visual_selection()
  local mode = vim.fn.mode()

  local s_start
  local s_end

  if mode == "" or mode == "v" or mode == "V" or "" then -- really need to include "" here?
  --if mode == "" or mode == "v" or mode == "V" then
    -- if we are in visual mode use the live position
    s_start = vim.fn.getpos("v")
    s_end = vim.fn.getpos(".")

    ---- exit visual mode
    local esc = vim.api.nvim_replace_termcodes("<Esc>", true, false, true)

    vim.api.nvim_feedkeys(
      esc,
      "nx",
      false
    )
  else
    -- otherwise, use the last known visual position
    s_start = vim.fn.getpos("'<")
    s_end = vim.fn.getpos("'>")
  end

  local firstline_col =  s_start[3]
  local firstline_lnum = s_start[2]
  local lastline_col =  s_end[3]
  local lastline_lnum = s_end[2]

  local top_lnum = lastline_lnum < firstline_lnum and lastline_lnum or firstline_lnum
  local bottom_lnum  = lastline_lnum < firstline_lnum and firstline_lnum or lastline_lnum
  local leftmost_col  = lastline_col < firstline_col and lastline_col or firstline_col
  local rightmost_col = lastline_col < firstline_col and firstline_col or lastline_col

  local lines = vim.api.nvim_buf_get_lines(0, top_lnum - 1, bottom_lnum, false)
  local n_lines = bottom_lnum - top_lnum + 1
  local visualmode = vim.fn.visualmode() -- visualmode can be "", "v", "V" or "<CTRL-V>"

  -- TODO move begin/end_col lines into "v" case, cause not needed elsewhere except debug message
  local begin_col
  local end_col

  if (n_lines == 1) then
    begin_col = leftmost_col
    end_col = rightmost_col
  else
    begin_col = firstline_lnum == top_lnum and firstline_col or lastline_col
    end_col   = firstline_lnum == top_lnum and lastline_col or firstline_col
  end

  if n_lines <= 0 or visualmode == "" then
    return ""
  elseif visualmode == "v" then
    --reduce lines to actually selected content
    lines[n_lines] = string.sub(lines[n_lines], 1, end_col)
    lines[1] = string.sub(lines[1], begin_col)

    return table.concat(lines, '\n')
  elseif visualmode == "V" then
    return table.concat(lines, '\n')
  elseif visualmode == "" then
    -- <CTRL-V> mode
    for i=1, n_lines, 1 do
      lines[i] = string.sub(lines[i], leftmost_col, rightmost_col)
    end

    return table.concat(lines, '\n')
  else
    -- should not get here
    return ""
  end
end

return get_visual_selection

