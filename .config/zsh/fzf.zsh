# fzf
if [[ -f "$HOME/.fzf.zsh" ]]; then
    source "$HOME/.fzf.zsh"
elif [[ -d "/usr/share/fzf" ]]; then
    source "/usr/share/fzf/key-bindings.zsh"
    source "/usr/share/fzf/completion.zsh"
else
    echo "Can't find fzf"
fi
