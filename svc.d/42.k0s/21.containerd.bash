# shellcheck source=utils.bash/source-me.bash
source "$PD_UTILS_ALL"
set -ex
export DEBIAN_FRONTEND=noninteractive
mkdir -p /run/containerd
rm -rf /run/containerd/containerd.sock
ln -sf /var/run/k0s/containerd.sock /run/containerd/containerd.sock
