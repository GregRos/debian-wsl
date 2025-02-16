win32_stubs=(
    "clip.exe"
    "ipconfig.exe"
    "mklink.exe"
)
rm -rf /home/gr/.winstubs || true
WINSTUB_DIR="/opt/winstubs"
rm -rf "$WINSTUB_DIR" || true
mkdir -p "$WINSTUB_DIR"
for winstub in "${win32_stubs[@]}"; do
    ln -sf "/mnt/c/Windows/System32/$winstub" "$WINSTUB_DIR/$winstub"
done