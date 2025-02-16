#!/bin/bash
set -ex
export BOOTSTRAP_DIR=$(dirname $(readlink -f $0))
export DEBIAN_FRONTEND=noninteractive
source $BOOTSTRAP_DIR/_utils.bash
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# check if root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit 1
fi

bash $BOOTSTRAP_DIR/*.pyenv_deps.bash
bash $BOOTSTRAP_DIR/*.pyenv.bash
bash $BOOTSTRAP_DIR/*.python3.11.bash
bash $BOOTSTRAP_DIR/*.pipx.bash
bash $BOOTSTRAP_DIR/*.pyrun.bash
echo "Installing pipx and pyrun"



echo "Done!"
