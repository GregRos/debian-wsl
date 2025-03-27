
tmp_dir=/tmp/install_k9s
mkdir -p $tmp_dir
cd $tmp_dir
wget https://github.com/derailed/k9s/releases/download/v0.40.10/k9s_linux_amd64.deb
dpkg -i k9s_linux_amd64.deb