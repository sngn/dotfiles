"" => Langmap {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set langmap=ü[,+]
" can't map '+' because then cannot use register
set langmap=ü[

"" => Mapleader {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
"let mapleader        = ";"
"let g:mapleader      = ";"
let mapleader        = "ö"
let g:mapleader      = "ö"
"let maplocalleader   = ":"
"let g:maplocalleader = ":"
"let maplocalleader   = "Ö"
"let g:maplocalleader = "Ö"
let maplocalleader   = "ä"
let g:maplocalleader = "ä"

" => Key Mappings {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
nnoremap 00 ^

nmap gr :tabprev<CR>

" only works with 8th bit input terminal (ie xterm)
" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Easy escape.
inoremap jk <esc>

" resize window vertically
nnoremap <silent> <leader>+ :vertical resize +5<cr>
nnoremap <silent> <leader>- :vertical resize -5<cr>

" File Manager
let g:netrw_banner = 0
"let g:netrw_browse_split = 4
"let g:netrw_liststyle = 3
"nnoremap <leader>fx :Explore<cr>
nnoremap <leader>hx :Hexplore<cr>
nnoremap <leader>rx :Rexplore<cr>
nnoremap <leader>sx :Sexplore<cr>
nnoremap <leader>vx :Vexplore<cr>
nnoremap <leader>x :Explore<cr>

" open .vimrc file
":nnoremap <leader>ev :vsplit $HOME/dotfiles/vim/.vim/plugins.vim<cr>
:nnoremap <leader>ev :vsplit ~/dotfiles/vim/.vim/plugins.vim<cr>
:nnoremap <leader>EV :vsplit /etc/vimrc<cr>
" source .vimrc file
:nnoremap <leader>sv :source $MYVIMRC<cr>
":nnoremap <leader>sv :source /etc/vimrc<cr>:source $MYVIMRC<cr>
:nnoremap <leader>SV :source /etc/vimrc<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Trim the trailing white space from the file.
function! s:trim_trailing_whitespace()
  %s/\s\+$//e
endfunction

nnoremap <silent> <leader>cw :call <SID>trim_trailing_whitespace()<CR>

" Opens the split in a new tab. Kind like "distraction free" mode.
nnoremap <silent> <leader>wf :tab sp<CR>

" Pull from either side of a git conflict.
nnoremap <silent> <leader>gl :diffget LOCAL<CR>
nnoremap <silent> <leader>gr :diffget REMOTE<CR>

function! TabMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  if empty(message)
    echoerr "no output"
  else
    " use "new" instead of "tabnew" below if you prefer split windows instead of tabs
    tabnew
    setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted nomodified
    silent put=message
  endif
endfunction
command! -nargs=+ -complete=command VSplitMessage call VSplitMessage(<q-args>)

function! VSplitMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  if empty(message)
    echoerr "no output"
  else
    vnew
    setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted nomodified
    silent put=message
  endif
endfunction
command! -nargs=+ -complete=command VSplitMessage call VSplitMessage(<q-args>)

" Print out the current mappings.
function! s:show_mappings()
  ":VSplitMessage verbose map 
  :VSplitMessage map 
endfunction

nnoremap <silent> <leader><leader> :call <SID>show_mappings()<CR>

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
"map <space> /
noremap <space> /
"map <c-space> ?

" Smart way to move between windows
" used to be map, but collides with neosnippet
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" Deletes the hidden buffers.
function! s:delete_hidden_buffers()
  let tpbl=[]
  call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
  for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
    silent execute 'bwipeout' buf
  endfor
endfunction

nnoremap <silent> <leader>bd :call <SID>delete_hidden_buffers()<CR>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

