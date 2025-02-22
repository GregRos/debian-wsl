
cd fish
for user in gr root; do
    echo.section "Installing omf and other tools for $user"
    sudo -i -u $user fish "$(realpath omf.fish)" || true
done
