call plug#begin('~/.dotfiles/neovim/plugged')

for f in split(glob('~/.dotfiles/neovim/plugins/*.vim'), '\n')
  exe 'source' f
endfor

call plug#end()