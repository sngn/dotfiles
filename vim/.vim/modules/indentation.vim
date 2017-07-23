" => Tabs & Indentation {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab			" Use the appropriate number of spaces to insert a <Tab>.
                        " Spaces are used in indents with the '>' and '<' commands
                        " and when 'autoindent' is on. To insert a real tab when
                        " 'expandtab' is on, use CTRL-V <Tab>.
set nosmarttab			" When on, a <Tab> in front of a line inserts blanks
                        " according to 'shiftwidth'. 'tabstop' is used in other
                        " places. A <BS> will delete a 'shiftwidth' worth of space
                        " at the start of the line.
set shiftwidth=2 		" Number of spaces to use for each step of (auto)indent.
set tabstop=4 			" Number of spaces that a <Tab> in the file counts for.
set softtabstop=2 		" Controls how many columns vim uses when you hit Tab in
                        " insert mode. If softtabstop is less than tabstop and 
                        " expandtab is not set, vim will use a combination of tabs 
                        " and spaces to make up the desired spacing.
set autoindent 			" Copy indent from current line when starting a new line
                        " (typing <CR> in Insert mode or when using the "o" or "O"
                        " command).
set smartindent 		" Enable smart-indent
"set cindent 			" Enables automatic C program indenting.  See 'cinkeys' to set the keys
                        " keysthat trigger reindenting in insert mode and 'cinoptions' to set your
                        " yourpreferred indent style.

