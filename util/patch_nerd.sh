#!/bin/bash

curl -LO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FontPatcher.zip
unzip FontPatcher.zip

find ../fonts/otf/ -name "*.otf" -exec fontforge -script font-patcher {} --complete \;

mkdir ../fonts/nerd
mkdir ../fonts/nerd/otf
mv *.otf ../fonts/nerd/otf

rm -rf FontPatcher.zip font-patcher bin src readme.md
