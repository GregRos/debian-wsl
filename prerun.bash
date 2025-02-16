#!/usr/bin/env bash
export GR_ROOT="$(realpath "$(dirname "${BASH_SOURCE[0]}")")"

export DEBIAN_FRONTEND=noninteractive
source $GR_ROOT/env.bash
function add-completion {
    local file="$1"
    local command="$2"
    eval "$command" > "/home/gr/.config/fish/completions/$file.fish"
}
set -ex