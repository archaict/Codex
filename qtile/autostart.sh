#!/bin/sh
mpd &
picom &
dropbox &
unclutter &
light -S 20 &
xset b off &
xset r rate 200 &
nitrogen --restore &
emacs --daemon &
systemctl --user enable --now emacs &
setxkbmap -option caps:super &
xmodmap ~/.Xmodmap &
