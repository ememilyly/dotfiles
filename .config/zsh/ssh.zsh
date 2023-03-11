# ssh-agent
if [[ ! -d "$HOME/.cache" ]]; then
    mkdir "$HOME/.cache"
fi
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 12h > "$HOME/.cache/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$HOME/.cache/ssh-agent.env" >/dev/null
fi
