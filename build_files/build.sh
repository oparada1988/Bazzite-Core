#!/bin/bash

set -ouex pipefail

# remove unwanted packages
dnf5 remove gnome-shell-extension-hanabi
dnf5 remove gnome-shell-extension-caffeine
dnf5 remove gnome-shell-extension-compiz-windows-effect
dnf5 remove gnome-shell-extension-blur-my-shell
dnf5 remove sunshine
dnf5 remove waydroid
dnf5 remove input-remapper
dnf5 remove rom-properties
dnf5 remove discover-overlay
dnf5 remove btrfs-assistant
dnf5 remove firewalld

# remove unwanted flatpaks
flatpak uninstall io.github.flattool.Warehouse
flatpak uninstall io.github.dvlv.boxbuddyrs
flatpak uninstall com.vysp3r.ProtonPlus
flatpak uninstall com.github.Matoking.protontricks



# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
