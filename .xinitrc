#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

#Loads the resources (urvt in this case)
xrdb -merge .config/X11/.Xresources
#Removes mouse accel
xset m 1 1

#Remaps CAPSLOCK to ESCAPE
setxkbmap -option caps:escape

#Starts urxvt daemon
urxvtd -q -o -f

#Starts the window manager
exec awesome -c ~/configs/rc.lua
