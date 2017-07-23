" Die early if this Vim install is built with tiny or small.
" We don't want a Raspberry Pi, for example, running all of these.
if !1 | finish | endif

" Initialise vim-plug
if has('nvim')
  call plug#begin('~/.config/nvim/nplugged')
else
  call plug#begin()
endif

" Load plugin list for vim-plug to manage.
execute 'source' Dot('plugins.vim')

" Lock in the plugin list.
call plug#end()

" Load all plugin configuration files.
for file in split(glob(Dot('modules/plugins/*.vim')), '\n')
"for file in sort(glob(Dot('modules/plugins/*.vim'), 0, 1), 'n')
  exec 'source' file
endfor
