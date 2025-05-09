#!/bin/bash

set -ouex pipefail

# Function to configure a custom wallpaper
configure_wallpaper() {
    local wallpaper_path="./Wallpaper 1.png"
    if [[ -f "$wallpaper_path" ]]; then
        echo "Setting custom wallpaper from $wallpaper_path"
        mkdir -p /usr/share/backgrounds/custom/
        cp "$wallpaper_path" /usr/share/backgrounds/custom/custom_wallpaper.jpg
        gsettings set org.gnome.desktop.background picture-uri "file:///usr/share/backgrounds/custom/custom_wallpaper.jpg"
        echo "Custom wallpaper has been applied."
    else
        echo "Error: Wallpaper file not found at $wallpaper_path"
        exit 1
    fi
}

# remove unwanted packages
dnf5 -y remove sunshine \
      waydroid \
      input-remapper \
      rom-properties \
      discover-overlay \
      btrfs-assistant \
      firewalld
      
# install packages
dnf5 -y install gnome-shell-extension-dash-to-dock

# remove unwanted flatpaks
flatpak --assumeyes uninstall io.github.flattool.Warehouse \
      io.github.dvlv.boxbuddyrs  \
      com.vysp3r.ProtonPlus \
      com.github.Matoking.protontricks \

# install flatpak packages
flatpak --assumeyes install com.google.Chrome \
      com.discordapp.Discord \
