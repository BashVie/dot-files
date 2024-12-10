--[[
Settings, a part of a WezTerm configuration
Authored by Bash Vollink on Dec 10, 2024
For use macOS, Windows, Linux
--]]

local wezterm = require("wezterm")

local M = {}

local INITIAL_COLS = 120
local INITIAL_ROWS = 28

local HIDE_TAB_BAR = "only_one" -- Valid options, "never|only_one|always"

local function apply_initial_size(config)
  config.initial_cols = INITIAL_COLS
  config.initial_rows = INITIAL_ROWS
end

local function apply_tab_bar(config)
  if HIDE_TAB_BAR == "never" then
    config.hide_tab_bar_if_only_one_tab = false
    config.enable_tab_bar = true
  elseif HIDE_TAB_BAR == "only_one" then
    config.hide_tab_bar_if_only_one_tab = true
    config.enable_tab_bar = true
  elseif HIDE_TAB_BAR == "always" then
    config.hide_tab_bar_if_only_one_tab = false
    config.enable_tab_bar = false
  else
    -- This error is only visible in the debug overlay (Ctrl+Shift+L)
    -- Still printing it so it can be seen in the event of unexpected behavior
    wezterm.log_error(
      'HIDE_TAB_BAR must be set to one of "never|only_one|always"',
      "Check settings.lua in your Wezterm configuration folder."
    )
  end
end

function M.apply(config)
  apply_initial_size(config)
  apply_tab_bar(config)
end

return M
