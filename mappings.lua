---@type MappingsTable
local M = {}

local rename_mapping = {
  '<cmd>lua require("renamer").rename()<cr>',
  "rename",
  opts = {
    noremap = true,
    silent = true,
  },
}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<F2>"] = rename_mapping,
    ["<leader>r"] = rename_mapping,
  },
  v = {
    ["<leader>r"] = rename_mapping,
  },
}

-- more keybinds!

return M
