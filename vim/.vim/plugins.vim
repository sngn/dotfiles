" This is the main plugin list, sourced by modules/plugins.vim
" Configuration goes in the appropriate modules/plugins/*.vim file.
" So configuration for tmux.vim would go in modules/plugins/tmux.vim.vim

"Plug 'Shougo/unite-outline'
"Plug 'Shutnik/jshint2.vim'               "Lightweight, customizable and functional Vim plugin for JSHint integration
"Plug 'grassdog/tagman.vim'               "Vim plugin for managing ctags files
"Plug 'jelera/vim-javascript-syntax'      "Enhanced javascript syntax file for Vim
"Plug 'klen/python-mode'
"Plug 'ludovicchabant/vim-gutentags'      "A Vim plugin that manages your tag files
"Plug 'marijnh/tern_for_vim'              "Tern plugin for Vim
"Plug 'mustache/vim-mustache-handlebars'  "mustache and handlebars mode for vim http://mustache.github.io
"Plug 'skammer/vim-css-color'
"Plug 'szw/vim-tags'                      "Ctags generator for Vim

"Plug 'Glench/Vim-Jinja2-Syntax'          " An up-to-date jinja2 syntax file. https://github.com/mitsuhiko/jinja2
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neco-vim'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neopairs.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neosnippet.vim'             "adds snippet support
Plug 'Shougo/neossh.vim'                 "SSH interface for Vim plugins
Plug 'Shougo/unite-session'
Plug 'Shougo/unite.vim'                  "can search and display information from arbitrary sources like files, buffers, recently used files or registers
Plug 'Shougo/vimfiler.vim'               "File Manager
Plug 'Shougo/vimproc.vim', { 'do': 'make' } "Interactive command execution in Vim
Plug 'Slava/vim-spacebars'               "File Manager
Plug 'bling/vim-airline'                 "lean & mean status/tabline for vim that's light as air
Plug 'chrisbra/vim-diff-enhanced'        "Better Diff options for Vim
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'davidhalter/jedi-vim'              "awesome Python autocompletion with VIM
Plug 'easymotion/vim-easymotion'
"Plug 'farseer90718/vim-taskwarrior'      "vim interface for taskwarrior 
Plug 'flazz/vim-colorschemes'            "one colorscheme pack to rule them all!
"Plug 'flowtype/vim-flow', { 'for': 'javascript' } "A vim plugin for Flow 
Plug 'honza/vim-snippets'
"Plug 'jmcomets/vim-pony'                 "Pony power for working with Django projects
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'lambdatoast/elm.vim'               "Vim plugin for the Elm programming language
"Plug 'majutsushi/tagbar'                 "Vim plugin that displays tags in a window, ordered by scope http://majutsushi.github.com/tagbar/
Plug 'michaeljsmith/vim-indent-object'   "plugin that defines a new text object representing lines of code at the same indent level
Plug 'mileszs/ack.vim'
Plug 'nathanaelkane/vim-indent-guides'   "Indentation Guides
"Plug 'othree/javascript-libraries-syntax.vim'
"Plug 'othree/jspc.vim'                   "JavaScript Parameter Complete
"Plug 'posva/vim-vue'                     "Syntax Highligth for Vue.js components
Plug 'rafi/awesome-vim-colorschemes'     "Collection of awesome color schemes for Neo/vim, merged for quick use
Plug 'rking/ag.vim'                      "Vim plugin for the_silver_searcher, 'ag', a replacement for the Perl module / CLI script 'ack'
Plug 'scrooloose/nerdcommenter'          "Vim plugin for intensely orgasmic commenting
Plug 'scrooloose/syntastic'              "Syntastic is a syntax checking plugin
Plug 'sukima/xmledit'                    "A filetype plugin for VIM to help edit XML files
"Plug 'svjunic/RadicalGoodSpeed.vim'      "RadicalGoodSpeed.vim is a high-contrast Vim color scheme
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
"Plug 'tpope/vim-fugitive'                "fugitive.vim: a Git wrapper so awesome, it should be illegal
"Plug 'tpope/vim-git'                     "Vim Git runtime files
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'                "provides mappings to easily delete, change and add surroundings in pairs  
"Plug 'tweekmonster/braceless.vim'        "Text objects, folding, and more for Python and other indented languages.
Plug 'vim-scripts/openvpn'               "OpenVPN configuration syntax highlighter
"Plug 'vim-scripts/taglist.vim'           "Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)
"Plug 'vim-scripts/vimwiki'               "Personal Wiki for Vim https://github.com/vim-scripts/vimwiki
Plug 'xolox/vim-misc'                    "Miscellaneous auto-load Vim scripts
Plug 'xolox/vim-session'                 "Extended session management for Vim

Plug 'sheerun/vim-polyglot'
"Plug 'groenewege/vim-less'               "syntax highlighting, indenting and autocompletion for LESS
""Plug 'pangloss/vim-javascript', { 'for': 'javascript' }           "Vastly improved Javascript indentation and syntax support in Vim
"Plug 'pangloss/vim-javascript'           "Vastly improved Javascript indentation and syntax support in Vim


if has('nvim')
  Plug 'Shougo/deoplete.nvim'
else
  Plug 'Shougo/neocomplete.vim'            "completion framework
endif

