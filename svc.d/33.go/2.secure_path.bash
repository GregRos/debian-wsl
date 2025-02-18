default_secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
echo "
    Defaults secure_path = \"$default_secure_path:/usr/local/go/bin\"
" | tee /etc/sudoers.d/20-secure_path
