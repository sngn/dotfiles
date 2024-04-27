local merge_tb = vim.tbl_deep_extend

local function load_mappings(mappings, mapping_opts)
  local function set_mappings()
    for mode, mode_values in pairs(mappings) do
      local default_opts = merge_tb("force", { mode = mode }, mapping_opts or {})

      for keybind, mapping_info in pairs(mode_values) do
        local opts = merge_tb("force", default_opts, mapping_info.opts or {})

        mapping_info.opts = nil
        opts.mode = nil
        opts.desc = mapping_info[2]

        vim.keymap.set(mode, keybind, mapping_info[1], opts)
      end
    end
  end

  vim.schedule(set_mappings)
end

return load_mappings

