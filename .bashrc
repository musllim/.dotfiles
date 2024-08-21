# ~/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
