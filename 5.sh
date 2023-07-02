#!/usr/bin/env bash

echo
echo "Installiere AUDIO COMPONENTS"
echo

PKGS=(
            'alsa-utils'      
            'alsa-plugins'     
            'pulseaudio'       
            'pulseaudio-alsa'   
            'pavucontrol'    
            'volumeicon'      
)

for PKG in "${PKGS[@]}"; do
    echo "Installiere: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Fertig!"
echo
