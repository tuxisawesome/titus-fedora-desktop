echo "What is the username of the user??"

read uname
echo "Session=bspwm" >> /etc/sddm.conf
echo "User=$uname" >> /etc/sddm.conf