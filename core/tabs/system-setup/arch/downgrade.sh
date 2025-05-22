#!/bin/sh

. ../../common-script.sh

installDowngrade() {
    if command_exists downgrade; then
        printf "%b\n" "${GREEN}downgrade is already installed.${RC}"
        return 0
    fi

    printf "%b\n" "${YELLOW}Installing downgrade using $AUR_HELPER...${RC}"
    "$AUR_HELPER" -S --noconfirm downgrade
    printf "%b\n" "${GREEN}downgrade installed successfully!${RC}"
}

checkEnv
installDowngrade