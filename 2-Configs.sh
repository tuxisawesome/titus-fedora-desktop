#!/bin/bash

echo "Installing configs..."

git clone https://github.com/christitustech/fedora-titus
cd fedora-titus
mkdir ~/.config
cp bg.jpg ~/.config
mv dotconfig/* ~/.config/
echo "Installing more packages..."
sudo dnf -y install bspwm dconf-editor kitty picom polybar rofi sxhkd thunar nitrogen

mv -n .* ~
cd rpm-packages
sudo dnf -y install ocs-url*.rpm
cd ../../

sudo bash 2.1-sudo.sh
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip
mkdir ~/.fonts
mv *.zip ~/.fonts/
cd ~/.fonts/
unzip FiraCode.zip
unzip Meslo.zip
fc-cache -vf
cd
