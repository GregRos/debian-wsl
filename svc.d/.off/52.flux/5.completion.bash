set -ex
# shellcheck source=utils.bash/source-me.bash
source "$PD_UTILS_ALL"

echo '
    flux completion fish | source
' >~/.config/fish/functions/flux.fish
