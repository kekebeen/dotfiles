" ================================
" Define fzf attrs
" ================================
let g:fzf_layout = { 'window': 'call FloatingFZF()' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'CursorLine'],
  \ 'bg':      ['bg', 'CursorColumn', 'Conditional'],
  \ 'hl':      ['fg', 'CursorLine'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'Normal', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['bg', 'PreProc'],
  \ 'border':  ['bg', 'Normal'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" ================================
" Custom functions
" ================================
function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')

  let height = float2nr(20)
  let width = float2nr(120)
  let horizontal = float2nr((&columns - width) / 2)
  let vertical = 1

  let opts = {
  \ 'relative': 'editor',
  \ 'row': vertical,
  \ 'col': horizontal,
  \ 'width': width,
  \ 'height': height,
  \ 'style': 'minimal'
\ }

  call nvim_open_win(buf, v:true, opts)
endfunction

" ================================
" Key bindings
" ================================
nnoremap <Leader>p :Files<CR>
nnoremap <Leader>f :Rg<space>
nnoremap <Leader>ff :Files<CR>
nnoremap <Leader>fg :GFiles?<CR>
nnoremap <Leader>fo :History<CR>
nnoremap <Leader>fm :Maps<CR>
nnoremap <Leader>fs :Snippets<CR>
