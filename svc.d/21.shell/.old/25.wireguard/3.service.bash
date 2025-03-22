mkdir -p /etc/wireguard
chmod 700 /etc/wireguard
cp -f ./secrets/* /etc/wireguard/

cp -f ./wg0.conf /etc/wireguard/wg0.conf
chmod 644 /etc/wireguard/gr.wg.key
service wireguard stop || true
cp -f ./wireguard.initd /etc/init.d/wireguard
chmod +x /etc/init.d/wireguard
