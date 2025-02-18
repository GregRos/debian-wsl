
echo.section "Configuring swappiness, inotify watches (sysctl)"
swappiness=15
watches=1048576

echo "
vm.swappiness=$swappiness
fs.inotify.max_user_watches=$watches
net.ipv4.ping_group_range=\"0 1000\"
" >/etc/sysctl.d/31-gr.conf

sysctl -p
