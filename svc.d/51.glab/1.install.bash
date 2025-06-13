tmp_dir=/tmp/install_glab
rm -rf "$tmp_dir"
mkdir -p "$tmp_dir"
cd "$tmp_dir" || exit 1
VERSION=1.59.2
if glab --version 2>/dev/null | grep -q "$VERSION"; then
    echo "glab version $VERSION is already installed."
    exit 0
fi
mkdir -p $tmp_dir
wget https://gitlab.com/gitlab-org/cli/-/releases/v$VERSION/downloads/glab_${VERSION}_linux_amd64.deb
dpkg -i glab_${VERSION}_linux_amd64.deb
