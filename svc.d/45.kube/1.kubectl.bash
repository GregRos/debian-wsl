install_dir="/tmp/install_kubectl"
rm -rf $install_dir
mkdir $install_dir
cd $install_dir
if [ ! -f "/usr/local/bin/kubectl" ]; then
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
fi

add-completion kubectl "kubectl completion fish"
kubectl version --client    