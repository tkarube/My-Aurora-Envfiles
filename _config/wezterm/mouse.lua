local wezterm = require("wezterm")
local act = wezterm.action

-- ---------------------------------------------------------
-- 4. Mouse Bindings (Middle-click to close tab)
-- ---------------------------------------------------------
return {
  {
    event = { Down = { streak = 1, button = "Middle" } },
    mods = "NONE",
    mouse_inside = { "TabBar" },
    action = act.CloseCurrentTab({ confirm = true }),
  },
}
