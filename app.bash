#!/bin/bash
mkdir -p ~/.config/xfce4
mkdir -p ~/Pictures
cp -fr ~/.config/xfce4 ~/.config/xfce4-old
cp -fr ./Pictures ~/Pictures
cp -fr ./xfce4/* ~/.config/xfce4

cd ~
pw="$(pwd)"
find ~/.config/xfce4 -type f -exec sed -i "s|/home/owo|$pw|g" {} +

xfdesktop --reload

xdg-open https://screamer.spart.ovh

echo "finis :3"
