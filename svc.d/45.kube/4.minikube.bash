win_path="$(cmd /c where minikube)"
lin_path="$(wslpath -u "$win_path")"
rm -rf /home/gr/.local/bin/minikube || true
tee /home/gr/.local/bin/minikube <<EOF
    #!/usr/bin/env bash
    $lin_path "\$@"
EOF
chmod +x /home/gr/.local/bin/minikube