rm /home/pi/.config/autostart/tightvnc.desktop 2> /dev/null 1> /dev/null
vncserver -kill :1
echo " VNC server is disabled successfully "
echo

