# Flatpak for Eden Emulator

Eden is an experimental open-source emulator for the Nintendo Switch, based on the yuzu emulator.

For more information, please visit the [main website](https://eden-emulator.github.io).

For issues with basic functionality and usage, please join the [official discord server](https://discord.gg/edenemu).

## Manual Installation

If you would like to build and install the Flatpak version of Eden Emulator, please follow these steps: 

> [!IMPORTANT]
> Make sure you have flatpak-builder and the required dependencies installed: 
> 
> ```
> sudo apt install flatpak-builder # Debian/Ubuntu
> sudo dnf install flatpak-builder # Fedora
> sudo pacman -S flatpak-builder # Arch Linux
> ```
> 
> ```
> flatpak install org.kde.Platform//6.7 org.kde.Sdk//6.7 io.qt.qtwebengine.BaseApp//6.7
> ```
> 
> If you already do, you can skip those steps.

```shell
git clone --recursive https://github.com/Skerse/dev.eden_emu.Eden.git
cd ./dev.eden_emu.Eden
./build.sh
flatpak install dev.eden_emu.Eden.flatpak
```
