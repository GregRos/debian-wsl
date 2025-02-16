win32_stubs=(
    "cmd.exe"
    "clip.exe"
    "ipconfig.exe"
    "mklink.exe"
)
WINSTUB_DIR="/home/gr/.winstubs"
rm -rf "$WINSTUB_DIR" || true
mkdir -p "$WINSTUB_DIR"
for winstub in "${win32_stubs[@]}"; do
    ln -sf "/mnt/c/Windows/System32/$winstub" "$WINSTUB_DIR/$winstub"
done