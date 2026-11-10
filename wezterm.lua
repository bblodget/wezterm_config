local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Color scheme
config.color_scheme = 'Gruvbox Dark (Gogh)'

-- Font configuration
config.font = wezterm.font('FiraCode Nerd Font Mono')
config.font_size = 12.0

-- Keybindings
-- Send CSI u sequence for Shift+Enter only (not global kitty protocol,
-- which breaks bash tab completion through tmux).
config.keys = {
  {key='Enter', mods='SHIFT', action=wezterm.action.SendString('\x1b[13;2u')},
}

return config
