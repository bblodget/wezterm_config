-- References
-- https://ansidev.xyz/posts/2023-05-18-wezterm-cheatsheet
-- https://wezfurlong.org/wezterm/config/default-keys.html?h=config+keys

-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'AdventureTime'

-- Config ideas from
-- https://ansidev.xyz/posts/2023-05-18-wezterm-cheatsheet

-- Disable fancy tab style
-- config.use_fancy_tab_bar = false

-- Hide the tab bar if there is only one tab
-- config.hide_tab_bar_if_only_one_tab = true

-- Set window opacity
-- config.window_background_opacity = 0.80

-- Maximized window on start up
-- https://wezfurlong.org/wezterm/config/lua/gui-events/gui-startup.html
local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

local act = wezterm.action

config.keys = {
  {
    -- Display tab Navigator
    -- SUPER+SHIFT+T
    key = 'T',
    mods = 'SUPER|SHIFT',
    action = act.ShowTabNavigator,
  },
  {
    -- Rename tab title
    -- SUPER+SHIFT+R
    key = 'R',
    mods = 'SUPER|SHIFT',
    action = act.PromptInputLine {
      description = 'Enter new name for tab',
      action = wezterm.action_callback(function(window, _, line)
        if line then
          window:active_tab():set_title(line)
        end
      end),
    },
  },
  {
    -- Open WezTerm config file quickly
    -- SUPER + ,
    key = ',',
    mods = 'SUPER',
    action = act.SpawnCommandInNewTab {
      cwd = os.getenv('WEZTERM_CONFIG_DIR'),
      set_environment_variables = {
        TERM = 'screen-256color',
      },
      args = {
        '/usr/bin/vim',
        os.getenv('WEZTERM_CONFIG_FILE'),
      },
    },
  },
  -- other keys
}

-- and finally, return the configuration to wezterm
return config

