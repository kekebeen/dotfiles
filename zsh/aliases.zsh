# Movement
alias cls='clear'
alias cat='bat --theme GitHub'
alias ll='ls -alGh'
alias ls='ls -Gh'
alias ..='cd ..'
alias .='cd ~'

# Git
alias gp='git pull origin'
alias gs='git status'
alias gc='git commit -m'
alias gl='git log --graph --decorate --pretty=oneline --abbrev-commit'
alias gr='git rebase --interactive --autosquash origin'

# Apps
alias subl="open -a /Applications/Sublime\ Text.app"
alias vi='nvim'

# Misc
alias brewup="brew update; brew upgrade; brew cleanup; brew doctor"

# Working directories
alias .projects='cd ~/Projects'
alias .work='cd ~/Work'

alias .dotfiles='cd ~/.dotfiles'
alias edotfiles='nvim ~/.dotfiles'

alias .aliases='cat ~/.dotfiles/zsh/aliases.zsh'
alias ealiases='nvim ~/.dotfiles/zsh/aliases.zsh'

# Source
alias rzsh='source ~/.dotfiles/zsh/.zshrc'

# Tmux
alias ts='tmux new-session -d -s'
alias ta='tmux attach-session -d -t'
alias tk='tmux kill-session -t'
alias tl='tmux ls'

# Spotlight fix
alias fixspot="find . -type d -path './.*' -prune -o -path './Pictures*' -prune -o -path './Library*' -prune -o -path '*node_modules/*' -prune -o -type d -name 'node_modules' -exec touch '{}/.metadata_never_index' \; -print"
