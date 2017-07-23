" Make Vim more useful. This should always be your first configuration line.
set nocompatible

" Wraps paths to make them relative to this directory.
function! Dot(path)
  return '~/.vim/' . a:path
endfunction

function! NDot(path)
  return '~/.config/nvim/' . a:path
endfunction

" Load all configuration modules.
if has('nvim')
  let mods = glob(NDot('modules/*.vim'), 0, 1)
else
  let mods = glob(Dot('modules/*.vim'), 0, 1)
endif
"for file in split(glob(Dot('modules/*.vim')), '\n')
"for file in sort(glob(Dot('modules/*.vim'), 0, 1), 'n')
for file in sort(mods, 'n')
  execute 'source' file
endfor
