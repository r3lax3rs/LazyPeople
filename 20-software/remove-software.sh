#!/bin/bash

remove_software() {
    case "$1" in
        arch)
            read -p "Enter package to remove: " pkg
            sudo pacman -Rns "$pkg"
            ;;
        ubuntu)
            read -p "Enter package to remove: " pkg
            sudo apt remove "$pkg" -y
            ;;
        rocky|centos)
            read -p "Enter package to remove: " pkg
            sudo dnf remove "$pkg" -y
            ;;
        *)
            echo "Unsupported distro: $1"
            ;;
    esac
    pause
}
