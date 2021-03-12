#	Utility to enable VNC Raspberry Pi
#
#			Author: Viki (a) Vignesh Natarajan
#			Contact: vikiworks.io
#

mkdir -p /home/pi/.config/autostart
touch /home/pi/.config/autostart/tightvnc.desktop

vncserver -kill :1

cat << EOL >> /home/pi/.config/autostart/tightvnc.desktop

[Desktop Entry]
Type=Application
Name=TightVNC
Exec=vncserver :1
StartupNotify=false

EOL

vncserver 2>/dev/null 1>/dev/null

echo
echo " You can vnc to your pi using the details,"
echo
ip_list=`hostname -I`
for ip in $ip_list
do
	echo " URL		: $ip:1"
done

echo " Username 	: your current username"
echo " Password 	: your current password"

echo

