local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Color scheme
config.color_scheme = 'AdventureTime'

-- Font configuration
config.font = wezterm.font('FiraCode Nerd Font Mono')
config.font_size = 12.0

-- Keybindings
config.keys = {
  {key="Enter", mods="SHIFT", action=wezterm.action{SendString="\x1b\r"}},
}

return config
