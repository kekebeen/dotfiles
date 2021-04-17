#!/bin/bash
red="\033[0;31m"
green="\033[0;32m"
yellow="\033[0;33m"
nocolor="\033[0m"

printf "${yellow}Install antibody plugin manager... \n"
curl -sfL git.io/antibody | sh -s - -b /usr/local/bin

printf "\n${yellow}Symlink zshrc, zshenv, hush_login, bat.conf\n"
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/zsh/.zshenv ~/.zshenv
ln -s ~/.dotfiles.zsh/.hushlogin ~/.hushlogin
ln -s ~/.dotfiles/zsh/.bat.conf ~/.bat.conf

printf "\n${yellow}Install oh my zsh... \n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

printf "\n${yellow}done\n"
