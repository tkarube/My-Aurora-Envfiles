local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- ---------------------------------------------------------
-- 1. Appearance Settings (Theme & Opacity)
-- ---------------------------------------------------------
-- config.color_scheme = 'Catppuccin Mocha'
-- config.color_scheme = "Tokyo Night"
config.color_scheme = "Dracula"
-- config.color_scheme = "Gruvbox Dark Hard"

config.window_background_opacity = 0.93

config.initial_cols = 120
config.initial_rows = 28

config.font = wezterm.font("Roboto Mono", { weight = "Medium", stretch = "Normal", style = "Normal" })
config.font_size = 12

-- ---------------------------------------------------------
-- 2. Appearance Settings (Styling)
-- ---------------------------------------------------------

-- local appearance = require("appearance_powerline")
local appearance = require("appearance_retro")
appearance.apply(config)

-- ---------------------------------------------------------
-- 3. Keybindings (config.keys)
-- ---------------------------------------------------------
local keys = require("keys")
keys.apply(config)

-- ---------------------------------------------------------
-- 4. Mouse Bindings (Middle-click to close tab)
-- ---------------------------------------------------------
config.mouse_bindings = require("mouse")

return config
