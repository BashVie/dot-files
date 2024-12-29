--[[
Appearance, a module for a WezTerm configuration
Authored by Bash Vollink on Dec 10, 2024
For use on macOS, Windows, and Linux
--]]

-- This module contains appearance options for WezTerm
local M = {}

local COLOR_SCHEME = "Molokai (Gogh)"
local OPACITY = 0.85
local BACKGROUND_BLUR = 15

local function apply_colorscheme(config)
  config.color_scheme = COLOR_SCHEME
end

local function apply_window_opacity(config)
  config.window_background_opacity = OPACITY
  config.macos_window_background_blur = BACKGROUND_BLUR
end

function M.apply(config)
  apply_colorscheme(config)
  apply_window_opacity(config)
end

return M
