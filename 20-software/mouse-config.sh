#!/bin/bash

mouse_settings() {
    echo "1. Enable acceleration"
    echo "2. Disable acceleration"
    read -p "Choose option: " opt
    case "$opt" in
        1)
            xinput --set-prop "pointer:Logitech USB Optical Mouse" "libinput Accel Profile Enabled" 0, 1
            ;;
        2)
            xinput --set-prop "pointer:Logitech USB Optical Mouse" "libinput Accel Profile Enabled" 1, 0
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
    pause
}
