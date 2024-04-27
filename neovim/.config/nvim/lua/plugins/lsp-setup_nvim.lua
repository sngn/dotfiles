local on_attach = function(_, bufnr)
  local mappings = require("mappings.lsp_buf")

  require("core.functions.load_mappings")(mappings, { buffer = bufnr })

  -- Create a command `:Format` local to the LSP buffer
  vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
    vim.lsp.buf.format({ async = true })
  end, { desc = 'Format current buffer with LSP' })
end

return {
  'junnplus/lsp-setup.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'williamboman/mason-lspconfig.nvim', -- optional
    'williamboman/mason.nvim', -- optional
  },
  opts = {
    default_mappings = false,
    inlay_hints = {
      enable = true,
      highlight = "Comment",
    },
    on_attach = on_attach,
    servers = {
      clangd = {},
      cssls = {},
      cssmodules_ls = {
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "svelte" },
        on_attach = function (client)
          client.server_capabilities.definitionProvider = false
        end,
      },
      groovyls = {},
      html = {},
      --java_language_server = {},
      jdtls = {
        init_options = {
        },
        settings = {
          java = {
          },
        },
      },
      lemminx = {},
      lua_ls = {
        Lua = {
          telemetry = { enable = false },
          workspace = { checkThirdParty = false },
        },
      },
      sqlls = {},
      svelte = {},
      tsserver = {},
    },
  },
  config = function(_, opts)
    local opts_capabilities = require('cmp_nvim_lsp').default_capabilities()

    opts["capabilities"] = opts_capabilities

    require("lsp-setup").setup(opts)
  end,
}

