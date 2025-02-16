# shellcheck source=utils.bash/source-me.bash
source "$PD_UTILS_ALL"
set -ex
export DEBIAN_FRONTEND=noninteractive

if [ -f /etc/systemd/system/k0scontroller.service ]; then
    echo "k0s controller already installed"
    exit 0
fi
k0s install controller --single
k0s start
