#!/bin/bash

for path in alacritty rofi starship.toml polybar gtk-3.0; do
    cp -r ~/.config/$path ./config/
done

for path in .xinitrc .zshrc .zshenv .gitconfig; do
    cp -r ~/$path ./home/
done

git submodule update --init --recursive
git add .
read -p "commitmsg: " msg
git commit -m "$msg"
git push origin master
