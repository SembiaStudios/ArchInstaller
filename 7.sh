#!/usr/bin/env bash

echo
echo "Installiere AUR SOFTWARE"
echo

cd "${HOME}"

echo "Klaue: AURIC von anderen xD"
git clone "https://github.com/rickellis/AURIC.git"

PKGS=(
  # System
  
  'menulibre'
  'yay'

  # UTILS

  'enpass-bin'
  'oomox'

  # Dev

  'visual-studio-code-bin'

  # Browser
  'brave-bin'

  # Games

  'heroic-games-launcher-bin'

  # Media

  'spotify'

  # VM

  'quickemu'
  ' quickgui'
  

)

cd ${HOME}/AURIC
chmod +x auric.sh

for PKG in "${PKGS[@]}"; do
    ./auric.sh -i $PKG
done

echo
echo "Fertig!"
echo
