"Enable fenced code block syntax highlighting only in these languages
let g:markdown_fenced_languages= ['html', 'json', 'javascript', 'bash=sh']
"Set md to be filetype of markdown
au BufNewFile,BufRead *.md set filetype=markdown

"Declare goyo keybinds
map<leader>gy :Goyo<CR>
map<leader>ll :Limelight!!<CR>

"Run limelight automatically when running goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

"Goyo settings
let g:goyo_width = 100
