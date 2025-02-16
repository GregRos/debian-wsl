
cd fish
for user in gr root; do
    echo.section "Setting shell for $user"
    usermod -s "$(which fish)" $user
done
