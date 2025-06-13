for user in gr root; do
    sudo --preserve-env=LANIAKEA_GITLAB_TOKEN,GITLAB_HOST -u "$user" bash ./auth.bash
done
