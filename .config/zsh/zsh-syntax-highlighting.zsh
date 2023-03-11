# Enable Zsh command highlighting
source_file="zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
if [[ -f "$HOME/.local/share/$source_file" ]]; then
    source "$HOME/.local/share/$source_file"
elif [[ -f "/usr/local/share/$source_file" ]]; then
    source "/usr/local/share/$source_file"
elif [[ -f "/usr/share/zsh/plugins/$source_file" ]]; then
    source "/usr/share/zsh/plugins/$source_file"
else
    echo "Can't find zsh-syntax-highlighting.zsh"
 fi
