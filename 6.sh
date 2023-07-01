#!/usr/bin/env bash
#-------------------------------------------------------------------------
#     
#    Sembia Studios  
#    
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "Installiere SOFTWARE"
echo

PKGS=(
  # System

  'linux-lts'

  # Terminal

  'bash-completion'
  'curl'
  'git'
  'htop'
  'neofetch'
  'unzip'
  'unrar'
  'xfce4-terminal'

  #Disk

  'gparted'

  # General

  'nautilus'
  'variety'
  'conky'

  # Dev

  'gcc'
  'nodejs'
  'nodejs'
  'npm'
  'yarn'
  'code'

  # Chat
  'discord'

  # Games

  'steam'

  # Media
  'vlc'
  'simplescreenrecorder'
  'xfce4-screenshooter'
  'kdenlive'

  # Graphic & Design

  'krita'
  'ristretto'

  # Prod

  'galculator'
  'mousepad'
  'xpdf'
  'libreoffice-fresh'

  # VM
   'virtualbox'
   'virtualbox-host-modules-arch'
)

for PKG in "${PKGS[@]}"; do
    echo "Installiert: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Fertig!"
echo
