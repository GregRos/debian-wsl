cd /usr/local/bin
if [ ! -f /usr/local/bin/kustomize ]; then
    curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash
fi
add-completion kustomize "kustomize completion fish"