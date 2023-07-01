#!/usr/bin/env bash
#-------------------------------------------------------------------------
#     
#    Sembia Studios  
#    
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "Installiere AUR SOFTWARE"
echo

cd "${HOME}"

echo "Klaue: AURIC von anderen xD"
git clone "https://github.com/rickellis/AURIC.git"

PKGS=(
  # System
  
  'menulibre'

  # UTILS

  'enpass-bin'
  'oomox'

  # Browser
  'brave-bin'

  # Games

  'heroic-games-launcher-bin'

  # Media

  'spotify'

)

cd ${HOME}/AURIC
chmod +x auric.sh

for PKG in "${PKGS[@]}"; do
    ./auric.sh -i $PKG
done

echo
echo "Fertig!"
echo
