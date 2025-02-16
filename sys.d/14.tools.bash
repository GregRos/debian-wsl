

export DEBIAN_FRONTEND=noninteractive
apt-get update && apt-get upgrade -y
packs=(
    byobu         # Terminal multiplexer
    tree          # List directory contents
    htop          # Interactive process viewer
    jq            # Command-line JSON processor
    rsync         # Remote file copy
    p7zip-full    # 7z and 7za file archivers with high compression ratio
    unzip         # De-archiver for .zip files
    nano          # Text editor
)
apt-get install -y --no-install-recommends "${packs[@]}"
