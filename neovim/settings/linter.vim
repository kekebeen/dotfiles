" Use coc.nvim as lsp
let g:ale_disable_lsp = 1

" Make errors pretty
highlight clear ALEErrorSign
highlight clear ALEWarningSign
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

" Never run ale on opening a file and text changed.
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_insert_leave = 0

let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \ 'javascriptreact': ['eslint'],
  \ 'typescript': ['eslint'],
  \ 'typescriptreact': ['eslint']
\}

let g:ale_fixes = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript': ['prettier', 'eslint'],
\  'typescript': ['prettier', 'eslint']
\}