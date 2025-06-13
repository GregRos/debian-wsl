set -euxo pipefail
GITLAB_SERVER="${GITLAB_SERVER_HOSTNAME:-laniakea.boo}"
GITLAB_API="${GITLAB_API:=gitlab.host}"
GITLAB_PROTOCOL="${GITLAB_PROTOCOL:-http}"
glab auth login \
    --hostname "${GITLAB_SERVER}" \
    --api-host "$GITLAB_API" \
    --git-protocol ssh --token "$LANIAKEA_GITLAB_TOKEN" \
    --api-protocol "$GITLAB_PROTOCOL"
glab config set -g hostname "${GITLAB_SERVER}"
glab config set -g host "${GITLAB_SERVER}"
glab auth status -h "${GITLAB_SERVER}"
