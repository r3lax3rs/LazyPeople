#!/bin/bash

. ./00-core/distro-detect.sh
. ./90-menu/main-menu.sh

DISTRO=$(detect_distro)
main_menu "$DISTRO"
