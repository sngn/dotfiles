"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !has('nvim')
  source $VIMRUNTIME/vimrc_example.vim
end
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" => General (No Category - yet) {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

let &diffexpr='EnhancedDiff#Diff("git diff", "--diff-algorithm=patience")'
let g:tex_flavor = "latex"
let updatetime=5000

set autoread            " Set to auto read when a file is changed from the outside
set backspace=indent,eol,start
set binary              " Write files as they are, don't mess with line endings etc.
"set clipboard=unnamedplus
set completeopt-=preview
if !has('nvim')
    set cryptmethod=blowfish2
    set encoding=utf8       " Set utf8 as standard encoding and en_US as the standard language
end
set ffs=unix,dos,mac    " Use Unix as the standard file type
set hidden              " allow editing multiple unsaved buffers
set history=1000        " Sets how many lines of history VIM has to remember
set lazyredraw          " Don't redraw while executing macros (good performance config)
"set list                " Enable invisible characters.
set magic               " For regular expressions turn magic on
"set mouse=a             " Enable the use of the mouse.
set modeline
set modelines=5
"set modelines=0         " no modelines [http://www.guninski.com/vim1.html]
set noautowrite
set nobackup            " Turn backup off, since most stuff is in SVN, git et.c anyway...
set noswapfile
set nowb
"set path=.,,/usr/include
set sessionoptions=blank,curdir,folds,help,tabpages,winsize
set splitbelow
set splitright
set timeoutlen=700      " The time in milliseconds that is waited for a key code or mapped key sequence to complete.
if !has('nvim')
    set ttymouse=xterm2     " Name of the terminal type for which mouse codes are to be recognized.
endif
set viminfo^=%          " Remember info about open buffers on close
syntax on               " Enable syntax highlighting

" Specify the behavior when switching between buffers
try
    set switchbuf=useopen,usetab,newtab	" This option controls the behavior when switching between buffers.
    set showtabline=1   " The value of this option specifies when the line with tab page labels
                        " will be displayed:
                        "    0: never
                        "    1: only if there are at least two tab pages
                        "    2: always
catch
endtry

" => User Interface {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number              " Show line numbers
set ruler               " Show the line and column number of the cursor position, separated by a
                        " comma.  When there is room, the relative position of the displayed
                        " text in the file is shown on the far right:
                        " Top 	first line is visible
                        " Bot 	last line is visible
                        " All 	first and last line are visible
                        " 45% 	relative position in the file
set noerrorbells        " Beep or flash screen on errors
set novisualbell        " Use visual bell (no beeping)

" => Colors {{{2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" for a selection of colorschemes I like, look into:
" ~/.vim/colorschemes_list_for_terminal
set t_Co=256
set background=dark
"colorscheme Tomorrow-Night-Bright
"colorscheme afterglow
colorscheme hybrid
"colorscheme kkruby
"colorscheme radicalgoodspeed
"colorscheme tender 
"colorscheme termschool
"colorscheme twilight256 

" => Folding {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldcolumn=1        " When non-zero, a column with the specified width is shown at the side
                        " of the window which indicates open and closed folds.
set nofoldenable
"set foldlevel=2
"set foldmethod=indent
"set foldnestmax=10

" => Wrapping {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nowrap              " Wrap lines
set linebreak           " This option is not used when the 'wrap' option is off or 'list' is on.
set showbreak=+++\      " Wrap-broken line prefix
set textwidth=0         " Maximum width of text that is being inserted.  A longer line will be
                        " broken after white space to get this width.  A zero value disables this.

" => Status line {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=1        " The value of this option influences when the last window will have a status line:
                        "    0: never
                        "    1: only if there are at least two windows
                        "    2: always
" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" => Wildmenu {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu            " Turn on the WiLd menu
set wildmode=longest,list,full
set wildignore=*.o,*~,*.pyc,
set wildignore+=.git\*,.hg\*,.svn\*

" => Modeline {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Append modeline after last line in buffer.
" Use substitute() instead of printf() to handle '%%s' modeline in LaTeX
" files.
function! AppendModeline()
  let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d foldmethod=%s %set filetype=%s :",
        \ &tabstop, &shiftwidth, &textwidth, &foldmethod, &expandtab ? '' : 'no', &filetype)
  let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
  call append(line("$"), l:modeline)
endfunction
nnoremap <silent> <Leader>ml :call AppendModeline()<CR>

" => Helper functions {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
endfunc

function! CmdLine(str)
	exe "menu Foo.Bar :" . a:str
	emenu Foo.Bar
	unmenu Foo
endfunction

function! VisualSelection(direction, extra_filter) range
	let l:saved_reg = @"
	execute "normal! vgvy"

	let l:pattern = escape(@", '\\/.*$^~[]')
	let l:pattern = substitute(l:pattern, "\n$", "", "")
	
	if a:direction == 'b'
		execute "normal ?" . l:pattern . "^M"
	elseif a:direction == 'gv'
		call CmdLine("Ack \"" . l:pattern . "\" " )
	elseif a:direction == 'replace_global'
		call CmdLine("%s" . '/'. l:pattern . '/')
	elseif a:direction == 'replace_end'
		call CmdLine(".,$s" . '/'. l:pattern . '/')
	elseif a:direction == 'f'
		execute "normal /" . l:pattern . "^M"
	endif

	let @/ = l:pattern
	let @" = l:saved_reg
endfunction

" Returns true if paste mode is enabled
function! HasPaste()
	if &paste
		return 'PASTE MODE '
	en
	return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
	let l:currentBufNum = bufnr("%")
	let l:alternateBufNum = bufnr("#")

	if buflisted(l:alternateBufNum)
		buffer #
	else
		bnext
	endif
	
	if bufnr("%") == l:currentBufNum
		new
	endif
	
	if buflisted(l:currentBufNum)
		execute("bdelete! ".l:currentBufNum)
	endif
endfunction

