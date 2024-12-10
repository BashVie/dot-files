--[[
__        __       _                         ____             __ _
\ \      / /__ ___| |_ ___ _ __ _ __ ___    / ___|___  _ __  / _(_) __ _
 \ \ /\ / / _ \_  / __/ _ \ '__| '_ ` _ \  | |   / _ \| '_ \| |_| |/ _` |
  \ V  V /  __// /| ||  __/ |  | | | | | | | |__| (_) | | | |  _| | (_| |
   \_/\_/ \___/___|\__\___|_|  |_| |_| |_|  \____\___/|_| |_|_| |_|\__, |
                                                                   |___/

Authored by Bash Vollink on Dec 10, 2024
For use on macOS, Windows, and Linux
--]]

local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- We partition our configuration into parts for easy editing
require("appearance").apply(config)
require("settings").apply(config)

-- and finally, return the configuration to wezterm
return config
