# WezTerm Configuration

This repository contains my **WezTerm configuration** for easy setup and portability across machines. It includes:

- A customized `wezterm.lua` configuration file
- Keybindings for productivity
- Custom settings for appearance and behavior

## ⚡ Quick Start

```bash
# Clone the repository
git clone https://github.com/bblodget/wezterm_config.git ~/.config/wezterm

# Create symbolic link
ln -s ~/.config/wezterm/wezterm.lua ~/.wezterm.lua
```

## 📥 Installation

### **1. Install WezTerm**

#### **Ubuntu (Debian-based distros)**

For detailed instructions, see [ubuntu_install.md](ubuntu_install.md).

#### **Arch Linux (via AUR)**

```bash
yay -S wezterm
```

#### **MacOS (via Homebrew)**

```bash
brew install --cask wezterm
```

#### **Windows (via Scoop or Chocolatey)**

```powershell
scoop install wezterm
```

OR

```powershell
choco install wezterm
```

---

## 🔧 Setup

### **1. Clone this repository**

```bash
git clone https://github.com/YOUR_USERNAME/wezterm_config.git ~/.wezterm
```

### **2. Symlink the configuration file**

```bash
ln -sf ~/.wezterm/wezterm.lua ~/.wezterm.lua
```

### **3. Restart WezTerm**

```bash
wezterm
```

---

## 🎨 Customizations

### **Color Scheme**

- Uses **AdventureTime** color scheme (modify in `wezterm.lua`).
- You can change it by modifying:

```lua
config.color_scheme = 'AdventureTime'
```

### **Opacity**

- Uncomment this line in `wezterm.lua` to enable a **semi-transparent** background:

```lua
config.window_background_opacity = 0.80
```

### **Maximized Window on Startup**

- Ensures WezTerm **starts maximized** automatically:

```lua
wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)
```

---

## ⌨️ Keybindings

See the [wezterm_cheatsheet.md](wezterm_cheatsheet.md) file for a list of keybindings.

---

## 🔗 Additional Resources

- [WezTerm Official Docs](https://wezfurlong.org/wezterm/)
- [WezTerm Keybindings](https://wezfurlong.org/wezterm/config/default-keys.html)
- [WezTerm Color Schemes](https://wezfurlong.org/wezterm/colorschemes/)

---

## 🤝 Contributing

Feel free to fork this repo and submit **pull requests** for improvements or personal tweaks!

---

## 📜 License

MIT License - Free to use and modify. 🚀

