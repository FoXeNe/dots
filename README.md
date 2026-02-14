# 🌟 FoXeNe's Dotfiles

A modern, feature-rich Hyprland-based desktop environment configuration for Arch Linux.

## 📋 Overview

This repository contains my personal dotfiles and configuration for a complete Wayland desktop setup powered by Hyprland. It includes an automated installation script that sets up everything from the window manager to development tools.

## ✨ Features

- **🪟 Hyprland**: Modern Wayland compositor with beautiful animations
- **📊 Waybar**: Customizable status bar with system information
- **🔔 SwayNC**: Notification daemon with custom themes
- **🚀 Fuzzel**: Fast application launcher
- **🖥️ Kitty**: GPU-accelerated terminal emulator
- **🐟 Fish**: Modern shell with autosuggestions
- **✏️ Neovim**: Highly configured text editor
- **🎨 Matugen**: Material You color generation
- **🔒 Hyprlock**: Screen locker
- **💤 Hypridle**: Idle management
- **🖼️ Hyprpaper**: Wallpaper manager
- **🎬 MPV**: Media player
- **🌊 PipeWire**: Modern audio system

## 🖥️ System Requirements

- **OS**: Arch Linux
- **Display Protocol**: Wayland
- **GPU**: NVIDIA support included (nvidia-open-dkms)
- **AUR Helper**: Paru (can be installed via script)

## 📦 What's Included

### Core Components

- **Hyprland Configuration**: Complete window manager setup with:
  - Custom keybindings
  - Multi-monitor support
  - Workspace configuration
  - Animation settings
  - Window rules

- **Terminal Setup**:
  - Kitty terminal with custom configuration
  - Fish shell as default
  - Neovim with LazyVim configuration

- **UI Elements**:
  - Waybar configuration with multiple modules
  - SwayNC notification center with custom themes
  - Fuzzel launcher configuration
  - Wlogout session management

- **Additional Tools**:
  - Dolphin file manager
  - Btop system monitor
  - Zen Browser
  - AmneziaVPN

### Fonts

- JetBrains Mono Nerd Font
- Noto Sans (with CJK and Emoji support)

## 🚀 Installation

### Quick Install

```bash
git clone https://github.com/FoXeNe/dots.git
cd dots
chmod +x install.sh
./install.sh
```

### What the Script Does

1. Copies all configurations to `~/.config/`
2. Updates system packages with `pacman -Syu`
3. Optionally installs Paru (AUR helper)
4. Installs all required packages from official repos and AUR
5. Sets up PipeWire audio system
6. Installs NVIDIA drivers (nvidia-open-dkms)
7. Sets Fish as the default shell

### Manual Installation

If you prefer to install manually:

```bash
# 1. Copy configurations
cp -r config/* ~/.config/

# 2. Install packages
sudo pacman -S --needed hyprland hyprlock hypridle hyprpaper waybar \
  kitty fuzzel fish nvim swaync matugen wl-clipboard \
  ttf-jetbrains-mono-nerd btop noto-fonts noto-fonts-cjk \
  noto-fonts-emoji neovim dolphin mpv

# 3. Install AUR packages (requires paru or yay)
paru -S wlogout zen-browser-bin amneziavpn-bin

# 4. Set up audio
sudo pacman -S pipewire pipewire-pulse wireplumber pipewire-alsa pipewire-audio pavucontrol
systemctl --user enable --now pipewire pipewire-pulse wireplumber

# 5. Change default shell
chsh -s $(which fish)
```

## 📁 Configuration Structure

```
config/
├── fish/           # Fish shell configuration
├── fuzzel/         # Application launcher
├── hypr/           # Hyprland configurations
│   ├── custom/     # Custom user overrides
│   ├── hyprland/   # Main Hyprland config
│   └── scripts/    # Helper scripts
├── kitty/          # Terminal emulator
├── matugen/        # Color generation
├── nvim/           # Neovim configuration
├── swaync/         # Notification daemon
├── waybar/         # Status bar
└── wlogout/        # Session management
```

## ⚙️ Customization

### Hyprland

The Hyprland configuration is split into multiple files for easy customization:

- `hyprland.conf` - Main configuration
- `monitors.conf` - Monitor setup
- `workspaces.conf` - Workspace configuration
- `keybinds.conf` - Keyboard shortcuts

To override default settings, use the files in the `custom/` directory.

### Monitors

Edit `config/hypr/monitors.conf` to configure your monitor setup:

```conf
monitor=,preferred,auto,1
```

### Keybindings

Custom keybindings can be added to `config/hypr/custom/keybinds.conf`

## 🔧 Post-Installation

After installation:

1. **Restart your session** or reboot
2. Log in to Hyprland from your display manager
3. Press `Super + Return` to open Kitty terminal
4. Press `Super + D` to open Fuzzel launcher
5. Enjoy your new desktop environment!

## 🎨 Theming

This setup uses Matugen for Material You color generation. Colors are automatically generated based on your wallpaper.

## 🐛 Troubleshooting

### NVIDIA Issues

If you experience issues with NVIDIA:
- Ensure `nvidia-open-dkms` is properly installed
- Check that kernel modules are loaded: `lsmod | grep nvidia`
- Verify Wayland environment variables in Hyprland config

### Audio Not Working

If audio isn't working:
```bash
systemctl --user restart pipewire pipewire-pulse wireplumber
```

### Fish Shell Issues

If Fish doesn't become default:
```bash
chsh -s $(which fish)
```
Then log out and back in.

## 📸 Screenshots

<!-- Add your screenshots here -->
_Screenshots coming soon!_

## 🤝 Contributing

Feel free to fork this repository and customize it to your needs. If you have improvements or suggestions, pull requests are welcome!

## 📄 License

These dotfiles are provided as-is for personal use. Feel free to use and modify them as you wish.

## 🙏 Acknowledgments

- [Hyprland](https://hyprland.org/) - Amazing Wayland compositor
- The Arch Linux community
- All the developers of the included tools and applications

## 📞 Contact

- GitHub: [@FoXeNe](https://github.com/FoXeNe)

---

**Note**: This configuration is tailored for my personal setup. You may need to adjust settings based on your hardware and preferences.
