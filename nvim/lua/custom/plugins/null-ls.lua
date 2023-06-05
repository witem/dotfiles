local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
local sources = {
  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- GO
  b.formatting.golangci_lint
}

null_ls.setup {
  debug = true,
  sources = sources,
}
