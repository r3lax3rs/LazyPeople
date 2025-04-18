#!/bin/bash

update_system() {
    case "$1" in
        arch)
            sudo pacman -Syu
            ;;
        ubuntu)
            sudo apt update && sudo apt upgrade -y
            ;;
        rocky|centos)
            sudo dnf update -y
            ;;
        *)
            echo "Unsupported distro: $1"
            ;;
    esac
    pause
}
