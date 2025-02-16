# shellcheck source=utils.bash/source-me.bash
source "$PD_UTILS_ALL"
set -ex

k0s completion fish >~/.config/fish/completions/k0s.fish
