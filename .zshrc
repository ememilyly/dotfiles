HISTFILE=~/.history
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -e

bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
bindkey "\e[3~" delete-char

#If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Open tmux
#[[ $TERM != "screen-256color" ]] && exec tmux

# Variables
export PATH=$PATH:~/.local/bin
export EDITOR=vim
#export BROWSER=chromium
#export TERM=rxvt-256color
export LANG="en_GB.UTF-8"
export LC_ALL="en_GB.UTF-8"

# -- Prompt/PS1
autoload -U promptinit && promptinit
autoload -U colors && colors
setopt promptsubst
setopt nonomatch

#ACCENT="yellow"
#PROMPT="%{\$fg[$ACCENT]%}em %{\$reset_color%}%1~ > "
#PROMPT="%F{217}em %{\$reset_color%}%1~ > "
blue=117
pink=218
white=231
PROMPT="%F{$blue}e%F{$pink}m%F{$white}i%F{$pink}l%F{$blue}y %{\$reset_color%}%1~ > "

LS_COLORS='rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:';
export LS_COLORS

alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -lh --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -lha --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
#alias rm='rm -I'

alias grep='grep --color=auto'
alias more='less'
alias mkdir='mkdir -p -v'

alias cls=' echo -ne "\033c"'
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

# Enable Zsh command highlighting
source ~/.local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fzf
#source /usr/share/fzf/key-bindings.zsh
#source /usr/share/fzf/completion.zsh
source ~/.fzf.zsh

# ssh-agent
#if ! pgrep -u "$USER" ssh-agent > /dev/null; then
#    ssh-agent -t 12h > "~/.cache/ssh-agent.env"
#fi
#if [[ ! "$SSH_AUTH_SOCK" ]]; then
#    source "~/.cache/ssh-agent.env" >/dev/null
#fi

# aliases
source ~/dev/scripts/aliases
