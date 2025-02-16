set -gx PYENV_ROOT $HOME/.pyenv
set -gx PATH $PYENV_ROOT/bin $PATH
set -gx PATH $PATH $PD_ROOT/cmds \
    /usr/sbin /snap/bin $HOME/.local/bin
