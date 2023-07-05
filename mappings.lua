---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<F2>"] = { '<cmd>lua require("renamer").rename()<cr>', "rename", opts = { noremap = true, silent = true } },
    ["<leader>r"] = { '<cmd>lua require("renamer").rename()<cr>', "rename", opts = { noremap = true, silent = true } },
  },
  v = {
    ["<leader>r"] = { '<cmd>lua require("renamer").rename()<cr>', "rename", opts = { noremap = true, silent = true } },
  },
}

-- more keybinds!

return M
