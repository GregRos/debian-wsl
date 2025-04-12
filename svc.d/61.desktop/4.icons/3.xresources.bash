cp -rf ./config/cinnamon-cursor /usr/share/icons/cinnamon-cursor
cp -f ./config/.Xresources "$GR_HOME/.Xresources"
config_dest=$GR_HOME/.config/fish/conf.d/11.xresources.fish
echo "
    xrdb -load $GR_HOME/.Xresources
" >$config_dest

fish $config_dest
chown gr:gr "$GR_HOME/.Xresources" $config_dest
