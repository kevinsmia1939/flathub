#!/bin/bash
# Generate _cmcm-modules directory for Cytopia to not download deps
rm -rf cytopia-cmcm
rm -rf _cmcm-modules
git clone https://github.com/CytopiaTeam/Cytopia cytopia-cmcm
mkdir cytopia-cmcm/build
cd cytopia-cmcm/build
cmake ..
cp -r _cmcm-modules ../../
cd ../../
rm -rf cytopia-cmcm
