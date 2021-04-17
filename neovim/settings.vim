for f in split(glob('~/.dotfiles/neovim/settings/*.vim'), '\n')
  exe 'source' f
endfor