local wezterm = require("wezterm")
local M = {}

-- Function to apply the module's settings to the config object
function M.apply(config)
	-- --- Basic Settings ---
	config.use_fancy_tab_bar = false -- Disable the default fancy look
	config.tab_bar_at_bottom = false -- Move the tab bar to the bottom
	config.hide_tab_bar_if_only_one_tab = true -- Hide tab bar if only one tab is open

	config.window_frame = {
		font_size = 10.0,
		font = wezterm.font({ family = "Roboto", weight = "Bold" }),
	}

	-- --- Event Handlers ---
	wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
		local background = "#1e1e2e" -- Main tab bar background (adjust to match theme)
		local edge_background = "#11111b" -- Background for the tab edges
		local text_fg = ""

		if tab.is_active then
			background = "#89b4fa" -- Active tab color (blue-ish)
			text_fg = "#11111b" -- Active text color
		else
			background = "#313244" -- Inactive tab color
			text_fg = "#cdd6f4" -- Inactive text color
		end

		local title = " " .. tab.active_pane.title .. " "

		-- Left and right powerline symbols
		-- Requires Nerd Font (included by default in WezTerm)
		return {
			{ Background = { Color = edge_background } },
			{ Foreground = { Color = background } },
			{ Text = "" }, -- Left rounded edge or triangle ''
			{ Background = { Color = background } },
			{ Foreground = { Color = text_fg } },
			{ Text = title },
			{ Background = { Color = edge_background } },
			{ Foreground = { Color = background } },
			{ Text = "" }, -- Right rounded edge or triangle ''
		}
	end)
end

return M
