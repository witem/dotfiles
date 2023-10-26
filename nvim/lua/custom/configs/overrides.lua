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
    "stylua",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "bash-language-server",
    "chrome-debug-adapter",
    "css-lsp",
    "dockerfile-language-server",
    "eslint-lsp",
    "eslint_d",
    "lua-language-server",
    "node-debug2-adapter",
    "prettierd",
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
