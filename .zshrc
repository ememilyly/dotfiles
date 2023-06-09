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

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Open tmux
#[[ $TERM != "screen-256color" ]] && exec tmux

# Variables
export PATH=$PATH:~/.local/bin:/usr/local/sbin
export EDITOR=vim

# Prompt/PS1
autoload -U promptinit && promptinit
autoload -U colors && colors
setopt promptsubst
setopt nonomatch

# Base prompt
# user@host ~ >
PROMPT="%F{218}%n%{\$reset_color%}@%F{117}%m %F{15}%1~ > "

# Source homebrew before vivid etc.
[ -d "/opt/homebrew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"

if command -v vivid &> /dev/null; then
    LS_COLORS="$(vivid generate one-dark)"
else
    LS_COLORS='rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:';
fi
export LS_COLORS

# Load all the other things
for file in $(find $HOME/.config/zsh -name *.zsh); do
    source "${file}"
done

# Start X if available and not running
if command -v xset &> /dev/null && ! xset -q &> /dev/null; then
    startx
fi
