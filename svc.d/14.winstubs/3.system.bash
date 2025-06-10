win32_stubs=(
    "clip.exe"
    "ipconfig.exe"
    "mklink.exe"
    "gh"
    "minikube"
    "docker-credential-desktop.exe"
)
WINSTUB_DIR="/opt/winstubs"
rm -rf /home/gr/.winstubs || true
rm -rf "$WINSTUB_DIR" || true
mkdir -p "$WINSTUB_DIR"

for winstub in "${win32_stubs[@]}"; do
    win_path="$(wwhich -f "$winstub")"
    echo "#!/bin/bash
$win_path \"\$@\"    
    " >"$WINSTUB_DIR/$winstub"
    chmod +x "$WINSTUB_DIR/$winstub"
done
