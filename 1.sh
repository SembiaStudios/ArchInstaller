#!/usr/bin/env bash

echo
echo "Installiere XORG"
echo

PKGS=(
        'xorg-server'      
        'xorg-apps'             
        'xorg-xinit'            
        'xf86-video-intel'      
        'mesa'                  
        'xf86-input-libinput'   
)

for PKG in "${PKGS[@]}"; do
    echo "Installiert: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Fertig!"
echo
