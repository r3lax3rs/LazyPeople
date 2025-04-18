#!/bin/bash

clear_cache() {
    case "$1" in
        arch)
            echo "Clearing package cache for Arch..."
            sudo pacman -Scc
            ;;
        ubuntu)
            echo "Cleaning cache for Ubuntu..."
            sudo apt clean && sudo apt autoclean
            ;;
        rocky|centos)
            echo "Cleaning cache for RHEL-based system..."
            sudo dnf clean all
            ;;
        *)
            echo "Unsupported distro: $1"
            ;;
    esac
    pause
}
