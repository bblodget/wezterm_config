# Ubuntu Installation Guide for WezTerm

This guide provides step-by-step instructions to install WezTerm on Ubuntu and set up a custom application launcher with an icon.

---

## 📥 Install WezTerm
### **1. Download the Latest WezTerm Release**
```bash
wget https://github.com/wez/wezterm/releases/latest/download/WezTerm-Ubuntu.zip
unzip WezTerm-Ubuntu.zip -d wezterm
```

### **2. Move WezTerm to /usr/local/bin**
```bash
sudo mv wezterm/* /usr/local/bin/
```

### **3. Verify Installation**
```bash
wezterm --version
```

---

## 🖼️ Add WezTerm to Ubuntu Dock with a Custom Icon
### **1. Move Icon to the Correct Directory**
We have provided **icons** in the `images/` directory. Move them to the appropriate location:
```bash
mkdir -p ~/.local/share/icons/hicolor/128x128/apps
cp images/wezterm_128x128.png ~/.local/share/icons/hicolor/128x128/apps/wezterm.png
```

### **2. Create a Desktop Entry for WezTerm**
Create a file named `wezterm.desktop` in `~/.local/share/applications/`:
```bash
nano ~/.local/share/applications/wezterm.desktop
```

Paste the following contents:
```ini
[Desktop Entry]
Name=WezTerm
Exec=wezterm
Icon=wezterm
Terminal=false
Type=Application
Categories=Terminal;Utility;
StartupWMClass=wezterm
```

### **3. Refresh the Desktop Database**
```bash
gtk-update-icon-cache ~/.local/share/icons/hicolor
update-desktop-database ~/.local/share/applications/
```

### **4. Add WezTerm to the Ubuntu Dock**
1. Open **Applications menu** (`Super` key or "Show Applications").
2. Search for **WezTerm**.
3. **Right-click** and select **"Add to Favorites"**.

---

## 🚀 Final Steps
- Restart GNOME Shell to apply changes:
  ```bash
  gnome-shell --replace
  ```
- **Or simply log out and back in.**

Now, WezTerm should be installed, with an icon and an easy-to-launch shortcut from your Ubuntu dock! 🚀

---

## 🔗 Additional Resources
- [WezTerm Official Docs](https://wezfurlong.org/wezterm/)
- [WezTerm Releases](https://github.com/wez/wezterm/releases)

