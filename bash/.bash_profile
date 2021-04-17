if [ -f ~/.dotfiles/bash/.bashrc ]; then
  . ~/.dotfiles/bash/.bashrc
fi

# Load asdf
. $HOME/.asdf/asdf.sh

# deprecation wraning handle for bash on osx
export BASH_SILENCE_DEPRECATION_WARNING=1