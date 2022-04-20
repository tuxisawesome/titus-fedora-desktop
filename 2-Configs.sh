#!/bin/bash
# 2 - Configs.sh
echo "Installing configs..."
if [ "$1" == "-nctt" ]; then
    cd titus-fedora-desktop
    mkdir ~/.config
    cp bg.jpg ~/.config
    mv dotconfig/* ~/.config/
    # More packages
    echo "Installing more packages..."
    sudo dnf -y install bspwm dconf-editor kitty picom polybar rofi sxhkd thunar nitrogen
    # Installing ocs-url
    mv -n .* ~
    cd rpm-packages
    sudo dnf -y install ocs-url*.rpm
    cd ../../
    echo "Installing SDDM"
    sudo bash /home/*/titus-fedora-desktop/2.1-Sudo.sh
    echo "Installing FiraCode and Meslo nerd fonts."
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip
    mkdir ~/.fonts
    mv *.zip ~/.fonts/
    cd ~/.fonts/
    unzip FiraCode.zip
    unzip Meslo.zip
    sudo fc-cache -vf
    cd
fi
if [ "$1" == "-ctt" ]; then
    git clone https://github.com/christitustech/fedora-titus
    cd fedora-titus
    mkdir ~/.config
    cp bg.jpg ~/.config
    mv dotconfig/* ~/.config/
    # More packages
    echo "Installing more packages..."
    sudo dnf -y install bspwm dconf-editor kitty picom polybar rofi sxhkd thunar nitrogen
    # Installing ocs-url
    mv -n .* ~
    cd rpm-packages
    sudo dnf -y install ocs-url*.rpm
    cd ../../
    echo "Installing SDDM"
    sudo bash /home/*/titus-fedora-desktop/2.1-Sudo.sh
    echo "Installing FiraCode and Meslo nerd fonts."
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip
    mkdir ~/.fonts
    mv *.zip ~/.fonts/
    cd ~/.fonts/
    unzip FiraCode.zip
    unzip Meslo.zip
    sudo fc-cache -vf
    cd
fi

