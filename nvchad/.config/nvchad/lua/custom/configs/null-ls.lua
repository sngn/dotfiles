local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {
  b.formatting.clang_format,
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes
  b.formatting.stylua,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
