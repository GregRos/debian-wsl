# shellcheck source=utils.bash/source-me.bash
source "$PD_UTILS_ALL"
set -ex
export DEBIAN_FRONTEND=noninteractive

if [ -f /usr/local/bin/k0s ]; then
    echo "k0s already installed"
    exit 0
fi

curl --proto '=https' --tlsv1.2 -sSf https://get.k0s.sh | sudo sh
