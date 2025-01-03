# ~/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILECONTROL=2000
shopt -s checkwinsize
export HISTCONTROL=ignoreboth:erasedups

export PATH=$HOME/.local/bin:$PATH

PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='  \W ${PS1_CMD1:+($PS1_CMD1) } \e[m'

eval "$(zoxide init bash)"

_gt_yargs_completions()
{
    local cur_word args type_list

    cur_word="${COMP_WORDS[COMP_CWORD]}"
    args=("${COMP_WORDS[@]}")

    # ask yargs to generate completions.
    type_list=$(gt --get-yargs-completions "${args[@]}")

    COMPREPLY=( $(compgen -W "${type_list}" -- ${cur_word}) )

    # if no match was found, fall back to filename completion
    if [ ${#COMPREPLY[@]} -eq 0 ]; then
      COMPREPLY=()
    fi

    return 0
}
complete -o bashdefault -o default -F _gt_yargs_completions gt
