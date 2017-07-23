nnoremap <silent> <leader>ti :IndentGuidesToggle<CR>
"let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

highlight IndentGuidesOdd ctermfg=222222 ctermbg=234
highlight IndentGuidesEven ctermfg=2a2a2a ctermbg=236

augroup indent_guide_settings
  autocmd!
  autocmd BufEnter,VimEnter,Colorscheme * :hi IndentGuidesOdd ctermfg=222222 ctermbg=234
  autocmd BufEnter,VimEnter,Colorscheme * :hi IndentGuidesEven ctermfg=2a2a2a ctermbg=236
augroup END
