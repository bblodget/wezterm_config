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

-- Each new window/tab starts its own tmux session; the session is killed
-- when the tab/window closes (destroy-unattached), so none pile up.
-- Note: this also means tmux detach (prefix d) kills the session.
config.default_prog = { 'tmux', 'new-session', ';', 'set-option', 'destroy-unattached', 'on' }

-- Super+1..9: switch to tab N in every WezTerm window that has a tab N
-- (one keystroke switches all monitors to project N; windows with fewer
-- tabs are left alone).
for i = 1, 9 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'SUPER',
    action = wezterm.action_callback(function(_, _)
      for _, w in ipairs(wezterm.mux.all_windows()) do
        local tabs = w:tabs()
        if tabs[i] then tabs[i]:activate() end
      end
    end),
  })
end

return config
