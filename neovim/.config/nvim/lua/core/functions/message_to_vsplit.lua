local function message_to_vsplit(msg)
  if msg == ""  or msg == nil or msg == false then
    print "no output"
  else
    local processedout = vim.fn.split(msg, "\n")

    local vimcmd = [[
      vnew
      setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted nomodified
    ]]

    vim.api.nvim_exec2(vimcmd, {})
    vim.api.nvim_buf_set_lines(0, 0, -1, false, processedout)
  end
end

return message_to_vsplit

