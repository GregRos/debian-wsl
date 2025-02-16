
mkdir -p /home/gr/.ssh
ssh-keygen -t rsa -b 4096 -C "gr@Greg-SuperPC" -f /home/gr/.ssh/id_rsa -N ""
chown -R gr:gr /home/gr/.ssh
echo "
gr ALL=(ALL) NOPASSWD: ALL
" >/etc/sudoers.d/gr
