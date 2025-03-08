#!/bin/bash

set -e  # Exit on error

# Update system and install base packages
echo "Updating system..."
pacman -Syu --noconfirm

# Install packages from pacman list
echo "Installing pacman packages..."
pacman -S --needed --noconfirm - < packages/pacman.txt

# Install AUR helper (yay) if not installed
if ! command -v yay &> /dev/null; then
    echo "Installing yay..."
    git clone https://aur.archlinux.org/yay-bin.git /tmp/yay-bin
    cd /tmp/yay-bin
    makepkg -si --noconfirm
    cd -
    rm -rf /tmp/yay-bin
fi

# Install packages from AUR list
echo "Installing AUR packages..."
yay -S --needed --noconfirm - < packages/aur.txt

# Copy configuration files
echo "Copying configuration files..."
cp -r configs/* ~/.config/

# Enable essential services
echo "Enabling services..."
systemctl enable --now NetworkManager.service
systemctl enable --now pipewire.service
systemctl enable --now bluetooth.service  # Enable if using Bluetooth

# Set up Hyprland session
echo "Setting up Hyprland..."
echo 'exec Hyprland' > ~/.xinitrc

# Final message
echo "Installation complete! Reboot your system."
