
cd fish
for user in gr root; do
    echo.section "Setting env variables for $user"
    sudo -u $user fish -C "set GR_ROOT $GR_ROOT; set PERDIDO_IP $PERDIDO_IP" "$(realpath env-gen.fish)"
done
