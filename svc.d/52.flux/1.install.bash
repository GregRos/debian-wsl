set -ex
# shellcheck source=utils.bash/source-me.bash
source "$PD_UTILS_ALL"
if [ ! -f /usr/bin/flux ]; then
    echo "Flux is already installed"
    exit 0
fi
curl -s https://fluxcd.io/install.sh | bash
