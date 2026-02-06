#!/bin/bash
set -e # exit on any error

echo "🛠️ starting installation..."

# Update system first
echo "📦 updating system..."
#sudo pacman -Syu --noconfirm

# TODO: install paru

# core hyprland packages
echo "📦 Installing core packages..."
sudo pacman -S --needed \
  hyprland \
  waybar \
  kitty \
  rofi \
  wlogout \
  fish \
  nvim \
  swaync \
  matugen \
  --noconfirm

# set fish as default shell
echo "🐟 setting up fish shell..."
chsh -s "$(which fish)" "$USER"

# complete
echo "✅ Installation complete!"
echo "🔄 Please log out and log back in to Fish shell"
