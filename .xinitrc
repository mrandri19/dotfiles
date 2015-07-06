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
xrdb -load ~/.config/X11/.Xresources
xrdb -merge ~/.config/X11/.Xcolors
xrdb -merge ~/.config/X11/.Xcolors-solarized
#Removes mouse accel
xset m 1 1
#Starts the window manager
#exec startfluxbox
exec awesome -c ~/.awesomerc.lua
#fbsetbg /home/andrea/Downloads/bg.jpg  
