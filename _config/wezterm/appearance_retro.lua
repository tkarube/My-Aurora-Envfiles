local wezterm = require("wezterm")
local M = {}

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local target_width = 16

	local title = tab.active_pane.title

	title = wezterm.truncate_right(title, target_width)
	title = wezterm.pad_right(title, target_width)

	title = " " .. title .. " "

	return {
		{ Text = title },
	}
end)

function M.apply(config)
	local opacity = 0.9

	-- 2D303F = 45, 48, 63
	local tab_bar_bg = "rgba(45, 48, 63, 0.95)"

	-- Set the color scheme
	config.color_scheme = "Catppuccin Mocha"
	config.window_background_opacity = opacity

	-- Disable the default fancy look
	config.use_fancy_tab_bar = false
	config.tab_bar_at_bottom = false

	-- Detailed color settings (e.g., transparent tab bar background)
	config.colors = {
		tab_bar = {
			-- Background color of the entire tab bar
			background = tab_bar_bg,

			-- Active tab styles
			active_tab = {
				bg_color = "#b4befe",
				fg_color = "#1e1e2e",
				intensity = "Bold",
			},

			-- Inactive tab styles
			inactive_tab = {
				bg_color = "#1e1e2e",
				fg_color = "#a6adc8",
			},

			-- Tab hover styles (e.g. for the new tab button)
			new_tab_hover = {
				bg_color = "#89b4fa",
				fg_color = "#1e1e2e",
			},
		},
	}
end

return M
