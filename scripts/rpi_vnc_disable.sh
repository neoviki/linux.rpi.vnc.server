#	Utility to disable VNC Raspberry Pi
#
#			Author: Viki (a) Vignesh Natarajan
#			Contact: vikiworks.io
#


rm /home/pi/.config/autostart/tightvnc.desktop 2> /dev/null 1> /dev/null
vncserver -kill :1
echo " VNC server is disabled successfully "
echo

