tmp_dir="/tmp/install_go"
mkdir -p "$tmp_dir"
cd "$tmp_dir"
wget https://dl.google.com/go/go1.24.0.linux-amd64.tar.gz -O go.tar.gz
rm -rf /usr/local/go
tar -C /usr/local -xzf go.tar.gz
