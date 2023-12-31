#!/usr/bin/env bash

echo
echo "Installiere XFCE"
echo

PKGS=(
        'xfce4'              
        'xfce4-goodies'  
        'lightdm'
        'lightdm-gtk-greeter'
)

for PKG in "${PKGS[@]}"; do
    echo "Installiere: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Fertig!"
echo
