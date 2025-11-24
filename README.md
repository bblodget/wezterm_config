# WezTerm Configuration

Minimal WezTerm configuration optimized for use with tmux.

## Installation

### Install WezTerm (Debian-based distros)

[Using the Apt repo](https://wezterm.org/install/linux.html)

### Install Config

```bash
# Clone the repository
git clone https://github.com/bblodget/wezterm_config.git ~/.config/wezterm

# Start WezTerm
wezterm
```

## Configuration

This config provides:

- **AdventureTime** color scheme
- **Shift+Enter** for multi-line input (added by Claude Code's `/terminal-setup`)
- Minimal setup - no tab navigation (using tmux instead)

### Color Scheme

Change the color scheme by modifying `wezterm.lua`:

```lua
config.color_scheme = 'AdventureTime'
```

Browse available schemes at [WezTerm Color Schemes](https://wezfurlong.org/wezterm/colorschemes/)

## Resources

- [WezTerm Official Docs](https://wezfurlong.org/wezterm/)
- [WezTerm Default Keybindings](https://wezfurlong.org/wezterm/config/default-keys.html)

