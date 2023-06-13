---@type ChadrcConfig 
local M = {}
M.ui = {theme = 'catppuccin'}
M.plugins = 'custom.plugins'
M.mappings = require "custom.mappings"

vim.keymap.set("n", "<leader>i", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)

return M
