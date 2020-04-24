# This file is read by xenodm when launched (afaik)
# use UTF-8
export LANG=en_US.UTF-8

# location for kshrc
export ENV=$HOME/.kshrc

# load .Xresources file. You can this command to test changes
# on the fly. Change the Xresources file then use the following
# command so you won't need to restart xenodm
xrdb -merge $HOME/.Xresources

# set your background color
# not sure if this applies when using a wallpaper in spectrwm.conf
# probably not, but for now I will leave it here
xsetroot -solid dimgray

# this is needed to lock the display after an amount of time
# without any activity
xidle &

# sadly, xclock has a bug where the font selection is ignored when UTF-8
# is enabled, so we unset LANG here.
# I don't need this with spectrwm, so I commented it out.
# LANG= xclock -strftime "%a %e %b %Y %H:%M" &

# disable system beep
xset b off

# if you have a ThinkPad, the following lines enable TrackPoint
# scrolling by dragging with the middle button.
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5 

# finally launch the window manager
exec spectrwm
