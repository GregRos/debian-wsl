function check_install() (
    if [ -z "$(command -v $1)" ]; then
        exit 0
    else
        exit 1
    fi
)