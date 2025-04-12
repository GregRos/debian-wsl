#!/usr/bin/env bash
export GR_ROOT="$(realpath "$(dirname "${BASH_SOURCE[0]}")")"
export PATH="$PATH:/root/.local/bin:/root/.pyenv/bin:$GR_ROOT/cmds:$HOME/.local/bin:/opt/winstubs"
export PYENV_ROOT="$GR_ROOT/.pyenv"
export GR_HOME=/home/gr
