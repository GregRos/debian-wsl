set -ex
# shellcheck source=utils.bash/source-me.bash
source "$PD_UTILS_ALL"

tmp_dir="/tmp/install_agentk"
rm -rf "$tmp_dir"
mkdir -p "$tmp_dir"
cd "$tmp_dir"
source "$PD_SECRETS/gitlab.ops.bash"

glab repo clone "$GITLAB_FLUX_REPO_GITLAB_PATH" .
glab cluster agent bootstrap --manifest-path "$GITLAB_FLUX_PATH" labdude
