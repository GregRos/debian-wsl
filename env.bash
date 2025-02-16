#!/usr/bin/env bash
export GR_ROOT="$(realpath "$(dirname "${BASH_SOURCE[0]}")")"
export PATH="$PATH:/root/.local/bin:/root/.pyenv/bin:$GR_ROOT/cmds"
export PYENV_ROOT="$GR_ROOT/.pyenv"
