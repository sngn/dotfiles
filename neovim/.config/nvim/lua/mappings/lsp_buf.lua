return {
  n = {
    ["gD"] = { vim.lsp.buf.declaration, "LSP [G]oto [D]eclaration" },
    ["gd"] = { vim.lsp.buf.definition, "LSP [G]oto [D]efinition" },
    --["gI"] = { vim.lsp.buf.implementation, "LSP [G]oto [I]mplementation" },
    ["gi"] = { vim.lsp.buf.implementation, "LSP [G]oto [I]mplementation" },

    ["K"] = { vim.lsp.buf.hover, "LSP Hover Documentation" },

    ["<leader>ca"] = { vim.lsp.buf.code_action, "LSP [C]ode [A]ction" },
    ["<leader>D"] = { vim.lsp.buf.type_definition, "LSP Type [D]efinition" },
    --["<leader>ds"] = { require('telescope.builtin').lsp_document_symbols, "LSP [D]ocument [S]ymbols" },

    --["<C-k>"]      = { vim.lsp.buf.signature_help, "LSP Signature Documentation" },
    ["<leader>ls"] = { vim.lsp.buf.signature_help, "LSP Signature Documentation" },

    --["<leader>rn"] = { vim.lsp.buf.rename, "LSP [R]e[n]ame" },
    --["<leader>ra"] = { require("nvchad.renamer").open, "LSP [R]e[n]ame" },
    ["<leader>ra"] = { vim.lsp.buf.rename, "LSP [R]e[n]ame" },

    ["<leader>wa"] = { vim.lsp.buf.add_workspace_folder, "LSP [W]orkspace [A]dd Folder" },
    ["<leader>wl"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "LSP [W]orkspace [L]ist Folders",
    },
    ["<leader>wr"] = { vim.lsp.buf.remove_workspace_folder, "LSP [W]orkspace [R]emove Folder" },
    --["<leader>ws"] = { require('telescope.builtin').lsp_dynamic_workspace_symbols, "LSP [W]orkspace [S]ymbols" },

    --["gr"] = { require('telescope.builtin').lsp_references, "LSP [G]oto [R]eferences" },
    ["gr"] = { vim.lsp.buf.references, "LSP [G]oto [R]eferences" },
  },
}

