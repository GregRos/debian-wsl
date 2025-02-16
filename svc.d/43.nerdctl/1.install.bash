
tmp="/tmp/install_nerdctl"
mkdir -p "$tmp"
cd "$tmp"

version="2.0.3"
release="nerdctl-full-$version-linux-amd64.tar.gz"
if [ -f "$release" ]; then
    rm -f "$release"
fi
wget \
    https://github.com/containerd/nerdctl/releases/download/v$version/$release

tar -zvxf $release bin/nerdctl

mv bin/nerdctl /usr/bin/nerdctl
chmod +x /usr/bin/nerdctl

add-completion nerdctl "nerdctl completion fish"
