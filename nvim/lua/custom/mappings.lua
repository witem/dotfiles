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

return M
