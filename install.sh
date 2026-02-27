#!/bin/bash

echo "starting installation"

# copy config
cp -rup config/* ~/.config/

# update system
echo "updating system"
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
echo "installing core packages"
sudo pacman -S --needed --noconfirm \
  hyprland \
  hyprlock \
  hypridle \
  hyprpaper \
  waybar \
  kitty \
  fuzzel \
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
  7zip \
  neovim \
  dolphin \
  mpv

# pipewire installation and start
sudo pacman -Syu pipewire pipewire-pulse wireplumber pipewire-alsa pipewire-audio pavucontrol
systemctl --user daemon-reload
systemctl --user start pipewire pipewire-pulse wireplumber
systemctl --user enable pipewire pipewire-pulse wireplumber

# nvidia drivers
sudo pacman -S nvidia-open-dkms nvidia-utils lib32-nvidia-utils nvidia-settings xorg-xwayland linux-headers clang

# set fish as default shell
echo "setting up fish shell"
chsh -s "$(which fish)" "$USER"

# complete
echo "installation complete"
echo "restart your session"
