#!/bin/bash
## Add various resolutions that Xorg keeps wanting to forget

xrandr --newmode "1920x1200_60.00" 193.25  1920 2056 2256 2592  1200 1203 1209 1245 -hsync +vsync
xrandr --newmode "2560x1600_60.00" 348.50  2560 2760 3032 3504  1600 1603 1609 1658 -hsync +vsync
xrandr --newmode "3840x2160_60.00"  712.75  3840 4160 4576 5312  2160 2163 2168 2237 -hsync +vsync
xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
xrandr --newmode "2160x1440_60.00"  263.50  2160 2320 2552 2944  1440 1443 1453 1493 -hsync +vsync
xrandr --addmode eDP-1 "1920x1200_60.00"
xrandr --addmode eDP-1 "2560x1600_60.00"
xrandr --addmode eDP-1 "3840x2160_60.00"
xrandr --addmode eDP-1 "1920x1080_60.00"
xrandr --addmode eDP-1 "2160x1440_60.00"
