#!/usr/bin/env bash
export INITWSL_ROOT="/etc/initwsl.d"
export GR_ROOT="$(realpath "$(dirname "${BASH_SOURCE[0]}")")"

export DEBIAN_FRONTEND=noninteractive
source $GR_ROOT/env.bash
add-completion() {
    local filename="$1"
    local command="$2"
    local user="${3:-gr}"
    local user_home
    user_home="$(eval echo "~$user")"
    local file="$user_home/.config/fish/completions/$filename.fish"
    eval "$command" >"$file"
    chown "$user:$user" "$file"
}
set -ex
