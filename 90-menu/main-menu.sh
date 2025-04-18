#!/bin/bash

. ./00-core/helpers.sh
. ./10-system/system-info.sh
. ./10-system/cache-clear.sh
. ./10-system/update-system.sh
. ./20-software/install-software.sh
. ./20-software/remove-software.sh
. ./20-software/mouse-config.sh

main_menu() {
    DISTRO="$1"

    while true; do
        clear
        echo "Main Menu ($DISTRO)"
        echo "1. Show System Info"
        echo "2. Update System"
        echo "3. Clear Package Cache"
        echo "4. Install Software"
        echo "5. Remove Software"
        echo "6. Mouse Settings"
        echo "0. Exit"
        read -p "Choose option: " choice

        case $choice in
            1) show_system_info ;;
            2) update_system "$DISTRO" ;;
            3) clear_cache "$DISTRO" ;;
            4) install_software "$DISTRO" ;;
            5) remove_software "$DISTRO" ;;
            6) mouse_settings ;;
            0) exit ;;
            *) echo "Invalid choice"; pause ;;
        esac
    done
}
