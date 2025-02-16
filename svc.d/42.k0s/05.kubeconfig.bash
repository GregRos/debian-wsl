# shellcheck source=utils.bash/source-me.bash
source "$PD_UTILS_ALL"
set -ex

cd /root
mkdir -p .kube
cd .kube
k0s kubeconfig admin >./config
