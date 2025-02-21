for user in root gr; do
    user_home="$(eval echo ~$user)"
    file="$user_home/.config/fish/conf.d/20.go.fish"
    # shellcheck disable=SC2016
    echo '
        set -gx PATH $PATH /usr/local/go/bin
        set -gx PATH $PATH ~/go/bin
    ' | tee -a "$file"
    chown "$user:$user" "$file"
done
