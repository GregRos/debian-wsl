apt-get install -y moby-cli
add-completion docker "docker completion fish"
for user in root gr; do
    user_home="$(eval echo ~$user)"
    file="$user_home/.config/fish/conf.d/10.docker.fish"
    echo '
    set -gx DOCKER_HOST "tcp://localhost:2375"
    set -e DOCKER_TLS_VERIFY
' | tee -a "$file"
    chown gr:gr "$file"
done
