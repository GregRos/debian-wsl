# shellcheck source=utils.bash/source-me.bash
source "$PD_UTILS_ALL"
set -ex
export DEBIAN_FRONTEND=noninteractive

helm upgrade --install ingress-nginx ingress-nginx \
    --repo https://kubernetes.github.io/ingress-nginx \
    --namespace ingress-nginx --create-namespace
