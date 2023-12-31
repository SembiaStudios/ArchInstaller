#!/usr/bin/env bash

echo
echo "Installiere BLUETOOTH COMPONENTS"
echo

PKGS=(
        'bluez'           
        'bluez-utils'         
        'bluez-firmware'      
        'blueberry'          
        'pulseaudio-bluetooth' 
        'bluez-libs' 
)

for PKG in "${PKGS[@]}"; do
    echo "Installiere: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Fertig!"
echo
