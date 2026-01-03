local wezterm = require("wezterm")
local act = wezterm.action

-- ---------------------------------------------------------
-- 3. Keybindings (config.keys)
-- ---------------------------------------------------------
return {
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
	-- Copy (Ctrl + Shift + c)
	{
		key = "c",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CopyTo("Clipboard"),
	},

	-- Paste (Ctrl + Shift + v)
	{
		key = "v",
		mods = "CTRL|SHIFT",
		action = wezterm.action.PasteFrom("Clipboard"),
	},
}
