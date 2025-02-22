win32_stubs=(
    "clip.exe"
    "ipconfig.exe"
    "mklink.exe"
)

for winstub in "${win32_stubs[@]}"; do
    rm -f "$WINSTUB_DIR/$winstub"
    ln -sf "/mnt/c/Windows/System32/$winstub" "$WINSTUB_DIR/$winstub"
done
