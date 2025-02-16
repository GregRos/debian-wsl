if [ ! -f /usr/local/bin/helm ]; then
  curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
fi
add-completion helm "helm completion fish"