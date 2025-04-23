#!/bin/bash

set -ouex pipefail

# remove unwanted packages
dnf5 remove gnome-shell-extension-hanabi \
      gnome-shell-extension-caffeine \
      gnome-shell-extension-compiz-windows-effect \
      gnome-shell-extension-blur-my-shell \
      gnome-shell-extension-gsconnect \
      sunshine \
      waydroid \
      input-remapper \
      rom-properties \
      discover-overlay \
      btrfs-assistant \
      firewalld \
# install packages
dnf5 install gnome-shell-extension-dash-to-dock

# remove unwanted flatpaks
flatpak --assumeyes uninstall io.github.flattool.Warehouse \
      io.github.dvlv.boxbuddyrs  \
      com.vysp3r.ProtonPlus \
      com.github.Matoking.protontricks \


# install flatpak packages
flatpak --assumeyes install com.google.Chrome \
      com.discordapp.Discord \



