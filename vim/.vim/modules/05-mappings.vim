"" => Mapleader {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader        = "ö"
let g:mapleader      = "ö"
let maplocalleader   = "Ö"
let g:maplocalleader = "Ö"

" => Key Mappings {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings for DE keyboard layout
" nnoremap ö ; als leader bzw.
" nnoremap Ö : als localleader gemappt. siehe oben.
"map ä ]
"map Ä }
"map ü [
"map Ü {
"imap ä ]
"imap Ä }
"imap ü [
"imap Ü {

" Remap VIM 0 to first non-blank character
"noremap 00 0
"map 0 ^
nnoremap 00 ^

nmap gr :tabprev<CR>

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Easy escape.
inoremap jk <esc>

" resize window vertically
nnoremap <silent> <leader>+ :vertical resize +5<cr>
nnoremap <silent> <leader>- :vertical resize -5<cr>

" File searching
"nnoremap <C-p> :Unite file_rec/async<cr>
"nnoremap <C-p> :CtrlP<cr>
nnoremap <C-p> :CtrlPBuffer<cr>
" this should be in ctrlp config file
let g:ctrlp_match_window = 'top,order:ttb'
nnoremap <leader>fx :VimFiler<cr>
" open .vimrc file
":nnoremap <leader>ev :vsplit ~/.vimrc<cr>
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>EV :vsplit /etc/vimrc<cr>
" source .vimrc file
:nnoremap <leader>sv :source $MYVIMRC<cr>
":nnoremap <leader>sv :source /etc/vimrc<cr>:source $MYVIMRC<cr>
:nnoremap <leader>SV :source /etc/vimrc<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

" Clears the search.
function! s:clear_search_results()
  let @/ = ""
endfunction

nnoremap <silent> <leader>/d :call <SID>clear_search_results()<CR>

" Shows the amount of matches for the previous search.
function! s:count_search_results()
  %s///gn
endfunction

nnoremap <silent> <leader>/c :call <SID>count_search_results()<CR>

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

" Print out the current mappings.
function! s:show_mappings()
  let path = Dot('mappings.sh')
  exec '!' . path
endfunction

nnoremap <silent> <leader><leader> :call <SID>show_mappings()<CR>

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
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

