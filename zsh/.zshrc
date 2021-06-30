export EDITOR="vim"
export ZPLUG_HOME=$HOME/.zplug
# create fake KBUILD Information by default
export KBUILD_BUILD_USER="ben"
export KBUILD_BUILD_HOST="F.R.I.D.A.Y."

# export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/sbin:$PATH:$HOME/.bin:$PATH

# zplug initialization
[[ ! -f $ZPLUG_HOME/init.zsh ]] && git clone https://github.com/zplug/zplug $ZPLUG_HOME
source $ZPLUG_HOME/init.zsh

# do self-manage
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# load nice libs from oh-my-zsh
zplug "lib/completion",   from:oh-my-zsh
zplug "lib/history",      from:oh-my-zsh

# naisu minimal theme
MNML_USER_CHAR=$USER
MNML_INSERT_CHAR='do 🙊'
zplug 'subnixr/minimal', use:minimal.zsh, as:theme

# another eyecandy
zplug 'zdharma/fast-syntax-highlighting', defer:2, hook-load:'FAST_HIGHLIGHT=()'

# finally install and load those plugins
zplug check || zplug install
zplug load

# returning command and folder completion when line is empty
# like a bash, but better
blanktab() { [[ $#BUFFER == 0 ]] && CURSOR=3 zle list-choices || zle expand-or-complete }
zle -N blanktab && bindkey '^I' blanktab

# load my own aliases
[[ -f $HOME/.dotfiles/zsh/aliases.zsh ]] && source $HOME/.dotfiles/zsh/aliases.zsh

if [ "$(uname 2> /dev/null)" != "Darwin" ]; then
	. $HOME/.asdf/asdf.sh
	. $HOME/.asdf/completions/asdf.bash
fi

if [ "$(uname 2> /dev/null)" != "Linux" ]; then
  # Not working currently with M1 apple silicon
  # . $HOME/.asdf/asdf.sh

  # Add homebrew opt installation for apple M1
  export PATH=/opt/homebrew/bin:$PATH
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --ignore-case --hidden -g "!{.git,node_modules,vendor}/*"'
  export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4"
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export BAT_THEME="GitHub"
fi

# Load nvm
export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
