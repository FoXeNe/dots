#!/bin/bash
set -e # exit on any error

echo "🛠️ starting installation"

# update system
echo "📦 updating system"
sudo pacman -Syu --noconfirm

# install paru
read -p "Установить paru? (y/N): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  sudo pacman -S --needed base-devel
  git clone https://aur.archlinux.org/paru.git
  cd paru
  makepkg -si
  cd ../
  rm -rf paru
else
  echo "пропускаю"
fi

#install paru packages
echo "installing paru packages"
paru -S --needed --noconfirm \
  wlogout \
  zen-browser-bin \
  amneziavpn-bin

# core packages
echo "📦 installing core packages"
sudo pacman -S --needed --noconfirm \
  hyprland \
  hyprlock \
  hypridle \
  hyprpaper \
  waybar \
  kitty \
  rofi \
  fish \
  nvim \
  swaync \
  matugen \
  wl-clipboard \
  ttf-jetbrains-mono-nerd \
  btop \
  noto-fonts \
  noto-fonts-cjk \
  noto-fonts-emoji \
  7zip

# pipewire installation
sudo pacman -S --needed --noconfirm pipewire wireplumber pipewire-alsa pipewire-pulse pipewire-jack pipewire-v4l2 lib32-pipewire lib32-pipewire-jack libpipewire

# nvidia drivers
sudo pacman -S nvidia-open-dkms nvidia-utils lib32-nvidia-utils nvidia-settings xorg-xwayland linux-headers clang

# set fish as default shell
echo "🐟 setting up fish shell"
chsh -s "$(which fish)" "$USER"

# complete
echo "installation complete"
