# Movement
alias cls='clear'
alias cat='bat --theme gruvbox-light'
alias ll='ls -alGh'
alias ls='ls -Gh'

# Git
alias gp='git pull origin'
alias gs='git status'
alias gc='git commit -m'
alias gl='git log --graph --decorate --pretty=oneline --abbrev-commit'
alias gr='git rebase --interactive --autosquash origin'

# package publishing
alias npmpublish='npm publish --access public'

# Apps
alias subl="open -a /Applications/Sublime\ Text.app"
alias vi='nvim'

# For development purposes only
alias chrome="open -n -a /Applications/Google\ Chrome\ Dev.app/Contents/MacOS/Google\ Chrome\ Dev --user-data-dir="/tmp/chrome_dev" --disable-web-security"
alias edge="open -n -a /Applications/Microsoft\ Edge.app/Contents/MacOS/Microsoft\ Edge --args --disable-web-security --user-data-dir=/tmp/edge_dev"
alias viv="open -n -a /Applications/Vivaldi.app/Contents/MacOS/Vivaldi --args --disable-web-security --user-data-dir=/tmp/vivaldi_dev"

# Misc
alias brewup="brew update; brew upgrade; brew cleanup; brew doctor"
alias f="fzf --ansi --preview 'bat --color=always --theme=gruvbox-light --style=header,numbers,changes --line-range :300 {}'"

# Working directories
alias .='cd ~'
alias .projects='cd ~/Projects'
alias .work='cd ~/Work'
alias .dev='cd ~/Dev'

alias .dotfiles='cd ~/.dotfiles'
alias edotfiles='vi ~/.dotfiles'

alias .aliases='cat ~/.dotfiles/fish/aliases.fish'
alias ealiases='vi ~/.dotfiles/fish/aliases.fish'

# Source
alias reload='exec fish'

# Tmux
alias ts='tmux new-session -d -s'
alias ta='tmux attach-session -d -t'
alias tk='tmux kill-session -t'
alias tl='tmux ls'

# Spotlight fix
alias fixspot="find . -type d -path './.*' -prune -o -path './Pictures*' -prune -o -path './Library*' -prune -o -path '*node_modules/*' -prune -o -type d -name 'node_modules' -exec touch '{}/.metadata_never_index' \; -print"
