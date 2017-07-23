" => Autocommands {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd!	" Remove ALL autocommands for the current group
augroup save_last_position
	" Return to last edit position when opening files (You want this!)
	autocmd!
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ exe "normal! g`\"" |
	\ endif
augroup END

augroup delete_trailing_whitespace
	autocmd!
	autocmd BufWrite *.py :call DeleteTrailingWS()
	autocmd BufWrite *.coffee :call DeleteTrailingWS()
augroup END

" enable folding in vimrc files
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END


