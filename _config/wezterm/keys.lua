local wezterm = require("wezterm")
local act = wezterm.action
local M = {}

function M.apply(config)
	config.keys = {
		-- Create a new tab in the home directory (Ctrl + Shift + T)
		{
			key = "T",
			mods = "CTRL|SHIFT",
			action = act.SpawnCommandInNewTab({
				cwd = wezterm.home_dir,
			}),
		},
		-- Create a new window in the home directory (Ctrl + Shift + N)
		{
			key = "n",
			mods = "CTRL|SHIFT",
			action = act.SpawnCommandInNewWindow({
				cwd = wezterm.home_dir,
			}),
		},
		-- Switch to the previous tab (Ctrl + Shift + LeftArrow)
		{
			key = "LeftArrow",
			mods = "CTRL|SHIFT",
			action = act.ActivateTabRelative(-1),
		},
		-- Switch to the next tab (Ctrl + Shift + RightArrow)
		{
			key = "RightArrow",
			mods = "CTRL|SHIFT",
			action = act.ActivateTabRelative(1),
		},
		-- Copy to clipboard (Ctrl + Shift + C)
		{
			key = "c",
			mods = "CTRL|SHIFT",
			action = act.CopyTo("Clipboard"),
		},
		-- Paste from clipboard (Ctrl + Shift + V)
		{
			key = "v",
			mods = "CTRL|SHIFT",
			action = act.PasteFrom("Clipboard"),
		},
	}
end

return M
