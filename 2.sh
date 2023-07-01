#!/usr/bin/env bash
#-------------------------------------------------------------------------
#     
#    Sembia Studios  
#    
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "Installiere XFCE"
echo

PKGS=(
        'xfce4'                 # XFCE Desktop
        'xfce4-goodies'         # All the extras
)

for PKG in "${PKGS[@]}"; do
    echo "Installiere: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Fertig!"
echo
