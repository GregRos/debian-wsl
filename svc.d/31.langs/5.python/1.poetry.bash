pipx ensurepath
pipx install poetry

sudo -i -u gr fish -c "
    pipx ensurepath;
    pipx install poetry
"

add-completion poetry "poetry completions fish"
