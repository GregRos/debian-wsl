
rm /etc/motd

echo "
HI THERE
" >/etc/motd

chmod 664 /etc/motd
# timedatectl set-timezone Asia/Jerusalem
