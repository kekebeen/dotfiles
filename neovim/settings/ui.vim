" Colors

" Light theme example
set background=light
"colorscheme one
"let g:one_allow_italics = 1

" Dark variant
" set background=dark
colorscheme iceberg
" hi Normal ctermbg=NONE guibg=NONE

" Light variant
" set background=light

" Fonts
set linespace=16

" Indent guides
" Use colors from my scheme instead of grey
" let g:indentLine_setColors = 0

" Remove bg from number and gutter columns
hi clear LineNr
hi clear CursorLineNR
hi clear SignColumn
" Set bg to be transparent
hi Normal ctermfg=NONE ctermbg=NONE guibg=NONE
" Set line hl color
hi CursorLine term=bold cterm=bold guibg=NONE

" Relative numbers
autocmd BufWinEnter,WinEnter,TermOpen term://* setlocal norelativenumber
autocmd BufWinEnter,WinEnter,TermOpen term://* setlocal nonumber
autocmd BufWinEnter,WinEnter,TermOpen term://* setlocal signcolumn=no

set cursorline
