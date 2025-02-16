

echo.section "Installing extra tools"
packages=(
    "exa"         # A modern replacement for ls
    "zoxide"      # A smarter cd command
    "bat"         # A cat clone with syntax highlighting
    "fzf"         # A command-line fuzzy finder
    "sd"          # A replacement for sed
    "tre-command" # A replacement for tree
    "ripgrep"     # A line-oriented search tool that recursively searches your current directory for a regex pattern
)
apt-get install -y --no-install-recommends "${packages[@]}"


