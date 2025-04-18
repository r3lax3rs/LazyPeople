#!/bin/bash

install_software() {
    case "$1" in
        arch)
            read -p "Enter package to install: " pkg
            sudo pacman -S "$pkg" --needed --noconfirm
            ;;
        ubuntu)
            read -p "Enter package to install: " pkg
            sudo apt install "$pkg" -y
            ;;
        rocky|centos)
            read -p "Enter package to install: " pkg
            sudo dnf install "$pkg" -y
            ;;
        *)
            echo "Unsupported distro: $1"
            ;;
    esac
    pause
}
