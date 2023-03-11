alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -lh --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -lha --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias rm='rm -I'

alias grep='grep --color=auto'

alias cls='echo -ne "\033c"'
alias :q='exit'
alias :wq='exit'
alias :q!='exit'

# coloured manuals
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;40;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}

alias vimf='vim $(fzf)'
alias vc='python3 -m venv venv'
alias va='source ./venv/bin/activate'

cheat() { curl -s cht.sh/$@ }

# check pbcopy, clip.exe
copy() { cat $1 | xclip -sel clip}

service() { systemctl $2 $1; }

twitch() { mpv --volume=80 https://twitch.tv/$1 & }

note() {
    case $@ in
        '-e') vim ~/.note;;
          '') less -~ +g ~/.note;;
           *) echo -e "$@\n" >> ~/.note
              echo -e "\"$@\" added to your notes.";;
    esac
}

cal() {
    case $@ in
        '') khal calendar --format "{bold}{start-time}{reset} {title}{repeat-symbol}";;
        'sync') synccal;;
        'i') ikhal;;
        *) khal $@;;
    esac
}
