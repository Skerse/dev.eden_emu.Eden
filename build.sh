#!/bin/sh

# Clean up leftover flatpak build files
BUILD_FILES=".flatpak-builder build export dev.eden_emu.Eden.flatpak"
for item in $BUILD_FILES; do
    if [ -e "$item" ]; then
        echo "Removing $item..."
        rm -rf "$item"
    fi
done

# Build, export, and bundle into a flatpak application
flatpak-builder build dev.eden_emu.Eden.json &&
flatpak build-export export build &&
flatpak build-bundle export dev.eden_emu.Eden.flatpak dev.eden_emu.Eden --runtime-repo=https://flathub.org/repo/flathub.flatpakrepo
