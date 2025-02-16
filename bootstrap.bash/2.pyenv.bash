set -ex
source $BOOTSTRAP_DIR/_utils.bash

if check_install pyenv; then
    echo "pyenv already installed"
    exit 0
fi


rm -rf /root/.pyenv
curl -fsSL https://pyenv.run | bash
