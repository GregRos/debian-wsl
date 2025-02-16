set -ex
export DEBIAN_FRONTEND=noninteractive
snap install helm --classic

helm version
