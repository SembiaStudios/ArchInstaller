#!/usr/bin/env bash

echo
echo "Installiere NETWORK COMPONENTS"
echo

PKGS=(
        'wpa_supplicant'           
        'dialog'                  
        'networkmanager'          
        'openvpn'                 
        'networkmanager-openvpn'   
        'networkmanager-vpnc'     
        'network-manager-applet'  
        'dhclient'               
        'libsecret'               
)

for PKG in "${PKGS[@]}"; do
    echo "Installiere: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Fertig!"
echo
