" This is the main plugin list, sourced by modules/plugins.vim
" Configuration goes in the appropriate modules/plugins/*.vim file.
" So configuration for tmux.vim would go in modules/plugins/tmux.vim.vim

if !has('win32') && !has('win32unix')

" loads matchit plugin (included in vim distribution)
if !has('nvim') 
  packadd! matchit
endif

Plug 'Shougo/context_filetype.vim'        "Context filetype library for Vim script
Plug 'Shougo/neossh.vim'                 "SSH interface for Vim plugins
Plug 'Shougo/vimproc.vim', { 'do': 'make' } "Interactive command execution in Vim
Plug 'alvan/vim-closetag'                "Auto close (X)HTML tags 

endif

Plug 'bling/vim-airline'                 "lean & mean status/tabline for vim that's light as air
Plug 'easymotion/vim-easymotion'

if !has('win32') && !has('win32unix')

Plug 'flazz/vim-schemes'            "one colorscheme pack to rule them all!

endif

Plug 'honza/vim-snippets'

if !has('win32') && !has('win32unix')

"Plug 'jelera/vim-javascript-syntax'      "Enhanced javascript syntax file for Vim
Plug 'jmcomets/vim-pony'                 "Pony power for working with Django projects
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
"Plug '~/.fzf', { 'do': './install --bin --no-update-rc' } "junegunn/fzf already cloned to ~/.fzf
"Plug '~/.fzf', { 'do': './install --bin --no-update-rc --64' } "junegunn/fzf already cloned to ~/.fzf
"Plug 'junegunn/fzf.vim'                  "fzf ❤️ vim
Plug 'ledger/vim-ledger'                 "Vim plugin for Ledger
Plug 'lervag/vimtex'                     "A modern vim plugin for editing LaTeX files
Plug 'majutsushi/tagbar'                 "Vim plugin that displays tags in a window, ordered by scope http://majutsushi.github.com/tagbar/
Plug 'michaeljsmith/vim-indent-object'   "plugin that defines a new text object representing lines of code at the same indent level
Plug 'mileszs/ack.vim'                   "Vim plugin for the Perl module / CLI script 'ack'

endif

Plug 'nathanaelkane/vim-indent-guides'   "Indentation Guides
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Intellisense engine for vim8 & neovim, full language server protocol support as VSCode

if !has('win32') && !has('win32unix')

Plug 'othree/javascript-libraries-syntax.vim' "Syntax for JavaScript libraries
"Plug 'othree/jspc.vim'                   "JavaScript Parameter Complete
""" this makes vim VERY slow, at least in *.vue files
"Plug 'othree/yajs.vim'                   "YAJS.vim: Yet Another JavaScript Syntax for Vim 
Plug 'rafi/awesome-vim-colorschemes'     "Collection of awesome color schemes for Neo/vim, merged for quick use
"Plug 'rking/ag.vim'                      "Vim plugin for the_silver_searcher, 'ag', a replacement for the Perl module / CLI script 'ack'
Plug 'severin-lemaignan/vim-minimap'     "A Sublime-like minimap for VIM, based on the Drawille console-based drawing library
Plug 'scrooloose/nerdcommenter'          "Vim plugin for intensely orgasmic commenting
"Plug 'scrooloose/syntastic'              "Syntastic is a syntax checking plugin
"Plug 'sukima/xmledit'                    "A filetype plugin for VIM to help edit XML files
"Plug 'ternjs/tern_for_vim', { 'do': 'npm install' } "Tern plugin for Vim
Plug 'tpope/vim-fugitive'                "fugitive.vim: a Git wrapper so awesome, it should be illegal
"Plug 'tpope/vim-git'                     "Vim Git runtime files
Plug 'tpope/vim-repeat'                  "repeat.vim: enable repeating supported plugin maps with '.'
Plug 'tpope/vim-surround'                "provides mappings to easily delete, change and add surroundings in pairs  
Plug 'tpope/vim-unimpaired'              "Pairs of handy bracket mappings
Plug 'tpope/vim-vinegar'                 "Combine with netrw to create a delicious salad dressing
"Plug 'tweekmonster/braceless.vim'        "Text objects, folding, and more for Python and other indented languages.
Plug 'vim-scripts/openvpn'               "OpenVPN configuration syntax highlighter
Plug 'vim-scripts/taglist.vim'           "Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)
"Plug 'vim-scripts/vimwiki'               "Personal Wiki for Vim https://github.com/vim-scripts/vimwiki
"Plug 'w0rp/ale'                          "Asynchronous Lint Engine
"Plug 'wincent/ferret'                    "Enhanced multi-file search for Vim
Plug 'xolox/vim-misc'                    "Miscellaneous auto-load Vim scripts
Plug 'xolox/vim-session'                 "Extended session management for Vim
"Plug 'zchee/deoplete-jedi'

" the following plugins are contained in vim-polyglot
"Plug 'groenewege/vim-less'               "syntax highlighting, indenting and autocompletion for LESS
"Plug 'lambdatoast/elm.vim'                "Vim plugin for the Elm programming language
"Plug 'mustache/vim-mustache-handlebars'   "mustache and handlebars mode for vim http://mustache.github.io
"Plug 'pangloss/vim-javascript'            "Vastly improved Javascript indentation and syntax support in Vim
"Plug 'pangloss/vim-javascript', { 'for': 'javascript' } "Vastly improved Javascript indentation and syntax support in Vim
"Plug 'posva/vim-vue'                      "Syntax Highlight for Vue.js components
Plug 'sheerun/vim-polyglot'


"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plug 'Shougo/deoplete.nvim'            "Dark powered asynchronous completion framework for neovim/Vim8
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
"endif


Plug '~/programming/projects/vim-i3blocks-syntax'

endif
