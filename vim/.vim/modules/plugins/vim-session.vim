"let g:session_autoload = 'no'
"let g:session_autosave = 'prompt'
let g:session_autosave = 'no'
let g:session_autosave_periodic = 10

if has('nvim')
  let g:session_directory = '~/.config/nvim/nsessions'
endif
