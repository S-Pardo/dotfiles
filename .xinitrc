#!/bin/sh

xrandr --auto

[ -f ~/.xprofile ] && . ~/.xprofile

setxkbmap us -variant altgr-intl
/usr/bin/prime-offload
ssh-agent dwm || break
