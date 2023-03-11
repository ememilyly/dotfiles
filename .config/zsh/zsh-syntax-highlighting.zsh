# Enable Zsh command highlighting
source_file="share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
if [[ -f "$HOME/.local/$source_file" ]]; then
    source "$HOME/.local/$source_file"
elif [[ -f "/usr/local/$source_file" ]]; then
    source "/usr/local/$source_file"
else
    echo "Can't find zsh-syntax-highlighting.zsh"
 fi
