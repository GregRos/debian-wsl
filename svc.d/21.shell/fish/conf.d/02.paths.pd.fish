set -gx PYENV_ROOT $HOME/.pyenv
set -gx PATH $PYENV_ROOT/bin $PATH
set -gx PATH $PATH $GR_ROOT/cmds \
    /usr/sbin /snap/bin $HOME/.local/bin \
    /opt/winstubs
