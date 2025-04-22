#!/bin/bash

set -ouex pipefail

# remove unwanted packages
dnf5 remove gnome-shell-extension-hanabi
dnf5 remove gnome-shell-extension-caffeine
dnf5 remove gnome-shell-extension-compiz-windows-effect
dnf5 remove gnome-shell-extension-blur-my-shell
dnf5 remove gnome-shell-extension-gsconnect
dnf5 remove sunshine
dnf5 remove waydroid
dnf5 remove input-remapper
dnf5 remove rom-properties
dnf5 remove discover-overlay
dnf5 remove btrfs-assistant
dnf5 remove firewalld

# remove unwanted flatpaks
flatpak --assumeyes uninstall io.github.flattool.Warehouse \
      io.github.dvlv.boxbuddyrs  \
      com.vysp3r.ProtonPlus \
      com.github.Matoking.protontricks \


# install flatpak packages
flatpak --assumeyes install com.google.Chrome \
      com.discordapp.Discord \



