local M = {}

M.general = {
  i = {
    ["jk"] = { "<esc>", "exit from insert mode", opts = { noremap = true } },
  },
}

M.copilot = {
  i = {
    -- ["<C-j>"] = { "<Plug>(copilot-next)", "copilot next", opts = { nowait = true } },
    -- ["<C-k>"] = { "<Plug>(copilot-previous)", "copilot previous", opts = { nowait = true } },
    -- ["<C-l>"] = { "<Plug>(copilot-suggest)", "copilot suggest", opts = { nowait = true } },
    ["<Plug>(vimrc:copilot-dummy-map)"] = { 'copilot#Accept("")', "Copilot dummy accept", opts = { silent=true, expr=true } },
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the debugger"
    }
  },
}

return M
