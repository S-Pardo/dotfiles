#!/bin/sh

xrandr --auto

[ -f ~/.xprofile ] && . ~/.xprofile

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

setxkbmap us -variant altgr-intl
/usr/bin/prime-offload
while :; do
	ssh-agent dwm || break
done
