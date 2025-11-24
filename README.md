# WezTerm Configuration

Minimal WezTerm configuration optimized for use with tmux.

## Installation

### Install WezTerm (Debian-based distros)

[Using the Apt repo](https://wezterm.org/install/linux.html)

### Install FiraCode Nerd Font

```bash
# Download the latest FiraCode Nerd Font
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip
unzip FiraCode.zip
rm FiraCode.zip

# Refresh font cache
fc-cache -fv
```

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
- **FiraCode Nerd Font Mono** - includes programming ligatures and icons
- **Shift+Enter** for multi-line input (added by Claude Code's `/terminal-setup`)
- Minimal setup - no tab navigation (using tmux instead)

### Color Scheme

Change the color scheme by modifying `wezterm.lua`:

```lua
config.color_scheme = 'AdventureTime'
```

Browse available schemes at [WezTerm Color Schemes](https://wezfurlong.org/wezterm/colorschemes/)

### Font

Change the font or size in `wezterm.lua`:

```lua
config.font = wezterm.font('FiraCode Nerd Font Mono')
config.font_size = 12.0
```

## Resources

- [WezTerm Official Docs](https://wezfurlong.org/wezterm/)
- [WezTerm Default Keybindings](https://wezfurlong.org/wezterm/config/default-keys.html)
- [Nerd Fonts](https://www.nerdfonts.com/)

