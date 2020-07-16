"let g:polyglot_disabled = ['coffee', 'latex']
"let g:polyglot_disabled = ['coffee', 'latex', 'vue']
let g:polyglot_disabled = ['coffee', 'latex', 'javascript']
"let g:polyglot_disabled = ['coffee', 'latex', 'javascript', 'vue']
"let g:polyglot_disabled = ['javascript'] "issue with *.vue files <script> tag

"pangloss/vim-javascript
let g:javascript_plugin_jsdoc = 1
nnoremap <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>

"posva/vim-vue
"let g:vue_pre_processors = 'detect_on_enter'
let g:vue_pre_processors = ['scss',]
