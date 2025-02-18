#!/usr/bin/env bash

echo '
    #!/usr/bin/env bash
    service wireguard start
' > /etc/initwsl.d/33.wireguard
chmod +x /etc/initwsl.d/33.wireguard
service wireguard start