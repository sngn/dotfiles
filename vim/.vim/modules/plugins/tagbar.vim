let g:tagbar_show_linenumbers = 1
let g:tagbar_left = 1
let g:tagbar_foldlevel = 0

nnoremap <silent> <leader>tt :let g:tagbar_autofocus=1<cr>:TagbarToggle<cr>
nnoremap <silent> <leader>tbt :let g:tagbar_autofocus=0<cr>:TagbarToggle<cr>
nnoremap <silent> <leader>tbp :TagbarTogglePause<cr>


