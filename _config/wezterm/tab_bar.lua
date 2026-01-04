local wezterm = require("wezterm")

-- Module to customize tab title rendering
wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local pane = tab.active_pane
	-- Get the foreground process name (e.g., /usr/bin/ssh)
	local process_name = pane:get_foreground_process_name() or ""
	local title = tab.active_pane.title

	-- Default colors
	local bg = "#3c3836"
	local fg = "#ebdbb2"

	-- Apply colors based on the process name
	-- Since process_name may return a full path, use string.find for matching
	if process_name:find("ssh") then
		bg = "#af5f00" -- Orange for SSH sessions
		fg = "#ffffff"
	elseif process_name:find("sudo") then
		bg = "#af0000" -- Red for sudo commands
		fg = "#ffffff"
	end

	-- Style for mouse hover
	if hover then
		bg = "#504945"
	end

	return {
		{ Background = { Color = bg } },
		{ Foreground = { Color = fg } },
		{ Text = " " .. title .. " " },
	}
end)

-- This file doesn't necessarily need to return anything
-- as wezterm.on registers a global event listener.
return {}
