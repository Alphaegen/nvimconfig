---@type ChadrcConfig 
local M = {}

-- Set theme
M.ui = {theme = 'catppuccin'}

-- Add plugins
M.plugins = 'custom.plugins'

-- Add mappings
M.mappings = require "custom.mappings"

return M
