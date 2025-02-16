#!/bin/bash
# shellcheck source=utils.bash/source-me.bash
source "$PD_UTILS_ALL"
set -ex

export DEBIAN_FRONTEND=noninteractive
if [ "$(glab ssh-key list | grep -c "Perdido Local Machine")" -eq 0 ]; then
    glab ssh-key add ~/.ssh/id_rsa.pub -t "Perdido Local Machine"
fi
