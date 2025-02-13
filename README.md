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

```bash
wget https://github.com/wez/wezterm/releases/latest/download/WezTerm-Ubuntu.zip
unzip WezTerm-Ubuntu.zip -d wezterm
sudo mv wezterm/* /usr/local/bin/
```

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

### **Tabs Navigation**

| Key Combination    | Action             |
| ------------------ | ------------------ |
| `Ctrl + Shift + T` | Open Tab Navigator |
| `Ctrl + Shift + R` | Rename Current Tab |
| `Ctrl + Shift + ,` | Open Config in Vim |

### **Font Size Adjustments**

| Key Combination        | Action             |
| ---------------------- | ------------------ |
| `Ctrl + Shift + Plus`  | Increase Font Size |
| `Ctrl + Shift + Minus` | Decrease Font Size |
| `Ctrl + Shift + 0`     | Reset Font Size    |

---

## 🖱️ Mouse Bindings (Not Supported)

We attempted to configure **Ctrl + Scroll Wheel** for font size adjustments, but WezTerm **does not support mouse wheel bindings**. Instead, use:

```lua
{ key = '=', mods = 'CTRL', action = act.IncreaseFontSize },
{ key = '-', mods = 'CTRL', action = act.DecreaseFontSize },
{ key = '0', mods = 'CTRL', action = act.ResetFontSize },
```

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

