# init starship prompt
eval "$(starship init bash)"

# aliases
if [ -f ~/.dotfiles/bash/aliases.sh ]; then
  . ~/.dotfiles/bash/aliases.sh
fi

# misc
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  # export FZF_DEFAULT_OPTS='-m --height 50% --border'
  export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export BAT_THEME="Solarized (light)"
fi