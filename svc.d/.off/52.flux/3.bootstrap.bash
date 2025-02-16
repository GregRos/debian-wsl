set -ex
# shellcheck source=utils.bash/source-me.bash
source "$PD_UTILS_ALL"

source "$PD_ROOT/secrets/gitlab.ops.bash"
export GITLAB_TOKEN="$GITLAB_OPS_TOKEN_VALUE"
flux check --pre
flux bootstrap gitlab \
    --hostname "$GITLAB_HOSTNAME" \
    --deploy-token-auth \
    --owner="$GITLAB_OPS_USERNAME" \
    --repository="$GITLAB_FLUX_REPO_NAME" \
    --branch=master \
    --path="$GITLAB_FLUX_PATH" \
    --personal
