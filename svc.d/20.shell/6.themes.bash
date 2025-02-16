
cd fish
for user in gr root; do
    echo.section "Installing themes for $user"
    sudo -i -u $user fish "$(realpath themes.fish)" || true
done
