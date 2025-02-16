
echo.section "Installing rust"

if [ ! -d "/root/.cargo" ]; then
    echo.warn "Rust is not installed. Installing..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
else
    echo.warn "Rust is already installed. Skipping..."
fi
export PATH="/root/.cargo/bin:$PATH"

rustup default stable
rustup update
rustup component add rustfmt

cargo -V
