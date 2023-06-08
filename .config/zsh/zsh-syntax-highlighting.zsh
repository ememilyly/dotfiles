# keep your eye on the ball
ball="zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
cups=(
    "$HOME/.local/share"
    "/usr/local/share"
    "/usr/share"
    "/usr/share/zsh/plugins"
    "/opt/homebrew/share"
)

# i hope you were paying attention
for cup in $cups; do
    if [[ -f "${cup}/${ball}" ]]; then
        source "${cup}/${ball}"
        found="hooray!"
        break
    fi
done

# oof
[[ -z $found ]] && echo "Can't find zsh-syntax-highlighting.zsh"
