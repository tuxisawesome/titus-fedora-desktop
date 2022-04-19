#!/bin/bash
echo "Installing sddm..."
sudo dnf -y update
sudo dnf -y install sddm git vim wget
sudo systemctl enable sddm
sudo systemctl set-default graphical.target



