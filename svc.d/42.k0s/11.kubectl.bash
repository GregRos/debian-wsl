# shellcheck source=utils.bash/source-me.bash
source "$PD_UTILS_ALL"
set -ex
export DEBIAN_FRONTEND=noninteractive

snap install kubectl --classic
kubectl completion fish >~/.config/fish/completions/kubectl.fish
