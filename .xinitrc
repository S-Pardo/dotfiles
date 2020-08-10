#!/bin/sh

xrandr --auto

[ -f ~/.xprofile ] && . ~/.xprofile

setxkbmap us -variant altgr-intl
/usr/bin/prime-offload
while :; do
	ssh-agent dwm || break
done
