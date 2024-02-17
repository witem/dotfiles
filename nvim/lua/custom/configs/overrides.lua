local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "c",
  },
}

M.mason = {
  ensure_installed = {
    "biome",
    "stylua",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "bash-language-server",
    "css-lsp",
    "dockerfile-language-server",
    "eslint-lsp",
    "lua-language-server",
    "js-debug-adapter",
    "prettier",
    "shellcheck",
    "yaml-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  view = {
    width = 40,
  },

  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
