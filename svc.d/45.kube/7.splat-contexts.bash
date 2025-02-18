#!/usr/bin/env bash
function join_by() {
  local d=${1-} f=${2-}
  if shift 2; then
    printf %s "$f" "${@/#/$d}"
  fi
}
joined=$(join_by : /etc/kubeconfig/*)
export KUBECONFIG="$joined"
flattened="$(kubectl config view --flatten)"
for user in root gr; do
  sudo -u $user bash -c "
    mkdir -p ~/.kube
    echo '$flattened' > ~/.kube/config
  "
done
