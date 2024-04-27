return {
  'numToStr/Comment.nvim',
  config = function(_, opts)
    local newopts = {
      pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
    }
    for k,v in pairs(opts) do newopts[k] = v end

    require("Comment").setup(newopts)

    require("core.functions.load_mappings")(require("mappings.Comment"), {})
  end,
  opts = {
    padding = false,
    --pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
  },
}

