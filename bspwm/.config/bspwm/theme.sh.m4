#!/bin/sh
#
# Theme for bspwm.

# set a wallpaper
if [ -s "${XDG_CONFIG_HOME:=$HOME/.config}/setroot/.setroot-restore" ]; then
    setroot --restore &
else
    setroot --store --blank-color 'COLOR_BACKGROUND_ALT' \
        --on 0 -z \
        "${DOTFILES:=$HOME/.dotfiles}/bspwm/_wallpaper/nenuphar.jpg" \
        --on 1 -z \
        "$DOTFILES/bspwm/_wallpaper/nenuphar.jpg" &
fi

# bspwm
bspc config border_width 2
bspc config normal_border_color "COLOR_FOREGROUND"
bspc config active_border_color "COLOR_SECONDARY"
bspc config focused_border_color "COLOR_TERTIARY"
bspc config presel_feedback_color "COLOR_BACKGROUND_ALT"
