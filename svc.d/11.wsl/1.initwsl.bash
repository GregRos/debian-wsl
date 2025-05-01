if [ -z "$GR_HOSTNAME" ]; then
    GR_HOSTNAME=$(hostname)
fi
echo "
    [network]
    hostname=$GR_HOSTNAME
    [interop]
    appendWindowsPath = false
    [boot]
    command = /etc/initwsl
    [user]
    default = gr
" >/etc/wsl.conf
mkdir -p /etc/initwsl.d /var/initwsl
cp -f ./initwsl /etc/initwsl
chmod +x /etc/initwsl
