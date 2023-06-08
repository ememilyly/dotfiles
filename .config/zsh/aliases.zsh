if [ -d /opt/homebrew/Cellar/coreutils ]; then
    # use coreutils functions on mac
    ls="gls"
    alias date="gdate"
    alias sed="gsed"
else
    ls="ls"
fi
alias ls="${ls} --group-directories-first --time-style=+'%d.%m.%Y %H:%M' --color=auto -F"
alias ll="${ls} -lh --group-directories-first --time-style=+'%d.%m.%Y %H:%M' --color=auto -F"
alias la="${ls} -lha --group-directories-first --time-style=+'%d.%m.%Y %H:%M' --color=auto -F"
alias rm='rm -I'

alias grep='grep --color=auto'

alias cls='echo -ne "\033c"'
alias :q='exit'
alias :wq='exit'
alias :q!='exit'

# bat stuff
if command -v bat &> /dev/null; then
    alias cat='bat --style="plain" --paging="never"'
    alias bat='bat --style="numbers,changes,header"'
    alias man='batman'
fi

alias vimf='vim $(fzf)'

alias vc='python3 -m venv venv'
alias va='source ./venv/bin/activate'

cheat() { curl -s cht.sh/$@ }

copy() {
    if command -v pbcopy &> /dev/null; then
        pbcopy
    elif command -v xclip &> /dev/null; then
        xclip -sel clip
    else
        echo "pbcopy nor xclip found."
        exit 1
    fi
}

note() {
    case $@ in
        '-e') vim ~/.note;;
          '') bat ~/.note;;
           *) echo -e "$@\n" >> ~/.note
              echo -e "\"$@\" added to your notes.";;
    esac
}
