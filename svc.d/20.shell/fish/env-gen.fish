set HOME (eval echo ~$USER)
echo "GR_ROOT is $GR_ROOT"
echo "HOME is $HOME"
echo "USER is $USER"
set fish_conf "$HOME/.config/fish/conf.d"
set fish_func "$HOME/.config/fish/functions"
rm -f $fish_conf/*.*.fish

echo "
    set -gx GR_ROOT $GR_ROOT
" >"$HOME/.config/fish/conf.d/00.base.pd.fish"

mkdir -p "$fish_conf" "$fish_func"
for file in conf.d/*.fish
    echo "Installing in $fish_conf | $file"
    ln -sf (realpath "$file") "$fish_conf/"
end
for file in functions/*.fish
    echo "Installing in $fish_func | $file"
    ln -sf (realpath "$file") "$fish_func/"
end
