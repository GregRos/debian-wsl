service dbus start
apt-get install -y --no-install-recommends dbus-x11

# shellcheck disable=SC2016
echo '
    export $(dbus-launch)
' >"$INITWSL_ROOT/dbus.bash"

apt-get install -y --no-install-recommends udisks2
