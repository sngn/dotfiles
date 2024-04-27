local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    "L3MON4D3/LuaSnip",
    "nvim-tree/nvim-web-devicons",
    "onsails/lspkind.nvim",
    "rafamadriz/friendly-snippets",
    "windwp/nvim-autopairs",
    { -- cmp sources plugins
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-path",
      "rcarriga/cmp-dap",
      "saadparwaiz1/cmp_luasnip",
    },
  },
  config = function(_, opts)
    local cmp = require("cmp")
    local lspkind = require("lspkind")
    local luasnip = require("luasnip")

    local lopts = {
      formatting = {
        format = lspkind.cmp_format({
          menu = ({
            buffer = "[Buffer]",
            cmdline = "[Cmdline]",
            latex_symbols = "[Latex]",
            luasnip = "[LuaSnip]",
            nvim_lsp = "[LSP]",
            nvim_lua = "[Lua]",
            path = "[Path]",
          }),
          mode = 'symbol_text',  -- show only symbol annotations
          ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)

          -- The function below will be called before any actual modifications from lspkind
          -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
          --before = function (entry, vim_item)
          --  ...
          --  return vim_item
          --end
        }),
      },
      mapping = {
        ['<Down>'] = {
          i = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
        },
        ['<Up>'] = {
          i = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
        },
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-Space>'] = cmp.mapping.complete {},
        ['<C-e>'] = {
          c = cmp.mapping.abort(),
          i = cmp.mapping.abort(),
        },
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-j>'] = {
          c = function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end,
          i = function()
            if cmp.visible() then
              cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
            else
              cmp.complete()
            end
          end,
        },
        ['<C-k>'] = {
          c = function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            else
              fallback()
            end
          end,
          i = function()
            if cmp.visible() then
              cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
            else
              cmp.complete()
            end
          end,
        },
        ['<C-y>'] = {
          i = cmp.mapping.confirm({ select = false }),
          c = cmp.mapping.confirm({ select = false }),
        },
        ['<C-z>'] = {
          c = function()
            if cmp.visible() then
              cmp.select_next_item()
            else
              cmp.complete()
            end
          end,
        },
        ["<CR>"] = cmp.mapping({
          c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false }),
          i = function(fallback)
            if cmp.visible() and cmp.get_active_entry() then
              cmp.confirm({
                behavior = cmp.ConfirmBehavior.Replace,
                select = false
              })
            else
              fallback()
            end
          end,
          s = cmp.mapping.confirm({ select = false }),
        }),
        ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_locally_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.locally_jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { 'i', 's' }),
      },
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "nvim_lua" },
        { name = "path" },
        { name = 'nvim_lsp_signature_help' },
      },
      window = {},
    }

    local mergedOpts = vim.tbl_deep_extend("force", opts or {}, lopts)

    cmp.setup(mergedOpts)

    ---- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({ '/', '?' }, {
      sources = {
        { name = 'buffer' }
      }
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
      sources = cmp.config.sources(
        { { name = 'path' } },
        { { name = 'cmdline' } }
      ),
    })

    cmp.setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
      sources = {
        { name = "dap" },
      },
    })
  end,
  opts = {},
}
