lin_path="$(wwhich minikube)"
rm -rf /home/gr/.local/bin/minikube || true
tee /home/gr/.local/bin/minikube <<EOF
    #!/usr/bin/env bash
    $lin_path "\$@"
EOF
chmod +x /home/gr/.local/bin/minikube