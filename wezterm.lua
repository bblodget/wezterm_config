local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- For example, changing the color scheme:
config.color_scheme = 'AdventureTime'

config.keys = {
  {key="Enter", mods="SHIFT", action=wezterm.action{SendString="\x1b\r"}},
}

return config
