--[[
Appearance, a module for a WezTerm configuration
Authored by Bash Vollink on Dec 10, 2024
For use on macOS, Windows, and Linux
--]]

-- This module contains appearance options for WezTerm
local M = {}

local COLOR_SCHEME = "Molokai (Gogh)"

local function apply_colorscheme(config)
  config.color_scheme = COLOR_SCHEME
end

function M.apply(config)
  apply_colorscheme(config)
end

return M
