if [ -z "${LANIAKEA_GITLAB_TOKEN:-}" ]; then
    echo.error "LANIAKEA_GITLAB_TOKEN is not defined; will fail to authenticate!"
    exit 55
fi
