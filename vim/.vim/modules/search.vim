" => Search {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase 			" Ignore case in search patterns.
set smartcase 			" Override the 'ignorecase' option if the search pattern
			       		" contains upper case characters.
set incsearch 			" While typing a search command, show immediately where the
set showmatch 			" When a bracket is inserted, briefly jump to the matching
                        " one. The jump is only done if the match can be seen on the
                        " screen. The time to show the match can be set with
                        " 'matchtime'.
set mat=2		    	" How many tenths of a second to blink when matching brackets
set hlsearch 			" When there is a previous search pattern, highlight all
                        " its matches.
" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>
