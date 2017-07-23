function! Enter_python_mode()
	set tabstop=4 
	set softtabstop=4 
	set shiftwidth=4
	set expandtab
	set nosmarttab
	set autoindent
	set smartindent
	set nowrap
	set foldmethod=indent
	set foldlevel=99
	set noautochdir
endfunction

function! Venv_add_path()
  if $VIRTUAL_ENV != ""
    let venvpath = $VIRTUAL_ENV . "/lib/python3.4/site-packages"
    let &path .= ',' . venvpath
  endif
endfunction
:call Venv_add_path()

augroup enter_python_mode
	autocmd!
	"autocmd BufRead,BufNewFile,FileReadPost *.py Enter_python_mode()
    autocmd FileType python :call Enter_python_mode()
    "autocmd FileType python :call Enter_python_mode() | :call Venv_add_path()
    autocmd CursorHold * checktime
augroup END

if !has('nvim')
    "autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
endif
autocmd FileType python setlocal omnifunc=jedi#completions
