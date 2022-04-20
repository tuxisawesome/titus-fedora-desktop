#!/bin/bash
echo "Updating system..."
sudo dnf -y update
echo "Installing essential tools..."
sudo dnf -y install sddm git vim wget
sudo systemctl enable sddm
sudo systemctl set-default graphical.target



