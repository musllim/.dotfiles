# General aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alF'
alias cd='z'
alias dog='/usr/bin/cat'
alias cat='bat --color=always'
alias ..='cd ..'
alias ...='cd ../..'
alias grep='grep --color=auto'
alias h='history'
alias j='jobs -l'
alias v='vim $(fzf --preview="bat --color=always {}")'
alias vim="nvim"
alias config='/usr/bin/git --git-dir=$HOME/Documents/projects/dotfiles/ --work-tree=$HOME'

# Navigation aliases
alias projects='cd $HOME/Documents/projects/'

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# Git aliases
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gcane='git commit --amend --no-edit'
alias gd='git diff'
alias gs='git status'
alias gb='git branch'
alias gco='git checkout'
alias gl='git log --oneline --decorate --color'
alias gp='git pull'
alias gps='git push'
alias gpsf='git push -f'

# Docker aliases
alias compose='docker-compose'
alias d='docker'
alias dps='docker ps'
alias dexec='docker exec -it'
alias dlogs='docker logs -f'

# Node.js and npm aliases
alias n='npm'
alias npmi='npm install'
alias npmd='npm install --save-dev'
alias npmg='npm install -g'
alias nr='npm run'
alias nt='npm test'

# Alias to edit bash_aliases
alias bae='nano ~/.bash_aliases'

# Shortcut to reload bash_aliases
alias reload='source ~/.bashrc'

# Shortcut to clear the terminal
alias cls='clear'
