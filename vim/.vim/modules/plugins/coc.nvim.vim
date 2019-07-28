let g:coc_global_extensions = [
\  'coc-css',
\  'coc-eslint',
\  'coc-highlight',
\  'coc-html',
\  'coc-json',
\  'coc-lists',
\  'coc-omnisharp',
\  'coc-prettier',
\  'coc-snippets',
\  'coc-syntax',
\  'coc-tsserver',
\  'coc-vetur',
\  'coc-vimlsp',
\  'coc-yaml',
\]

"let g:coc_global_extensions = [
"\  'coc-git',
"\  'coc-neosnippet',
"\  'coc-python',
"\  'coc-svg',
""\  'coc-xml', "needs JDK? does not find it
"\]

" Use `[c` and `]c` to navigate diagnostics
"nmap <silent> [c <Plug>(coc-diagnostic-prev)
"nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD <Plug>(coc-declaration)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)

nmap <leader>rn <Plug>(coc-rename)
"" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)


nmap <silent> <localleader><localleader> <Plug>(coc-float-hide)
nmap <silent> <localleader>ca <Plug>(coc-codeaction)
nmap <silent> <localleader>cl <Plug>(coc-codelens-action)
nmap <silent> <localleader>cs <Plug>(coc-codeaction-selected)
xmap <silent> <localleader>cs <Plug>(coc-codeaction-selected)
nmap <silent> <localleader>d  <Plug>(coc-diagnostic-info)
nmap <silent> <localleader>fa <Plug>(coc-funcobj-a)
nmap <silent> <localleader>fi <Plug>(coc-funcobj-i)
nmap <silent> <localleader>fn <Plug>(coc-rename)
nmap <silent> <localleader>fr <Plug>(coc-refactor)
nmap <silent> <localleader>fs <Plug>(coc-format-selected)
nmap <silent> <localleader>fx <Plug>(coc-fix-current)
nmap <silent> <localleader>F  <Plug>(coc-format)
nmap <silent> <localleader>i  <Plug>(coc-diagnostic-info)
"nmap <silent> <localleader>i <Plug>(coc-implementation)
nmap <silent> <localleader>j  <Plug>(coc-diagnostic-next)
nmap <silent> <localleader>J  <Plug>(coc-diagnostic-next-error)
nmap <silent> <localleader>k  <Plug>(coc-diagnostic-prev)
nmap <silent> <localleader>K  <Plug>(coc-diagnostic-prev-error)
nmap <silent> <localleader>m  <Plug>(coc-implementation)
nmap <silent> <localleader>ol <Plug>(coc-openlink)
nmap <silent> <localleader>r  <Plug>(coc-references)
nmap <silent> <localleader>qx <Plug>(coc-fix-current)
nmap <silent> <localleader>s  <Plug>(coc-range-select)
vmap <silent> <localleader>s  <Plug>(coc-range-select)
nmap <silent> <localleader>S  <Plug>(coc-range-select-backward)
vmap <silent> <localleader>S  <Plug>(coc-range-select-backward)
nmap <silent> <localleader>t  <Plug>(coc-type-definition)
nmap <silent> <localleader>w  <Plug>(coc-float-jump)
nmap <silent> <localleader>x  <Plug>(coc-fix-current)
"nmap <silent> <localleader>y  <Plug>(coc-type-definition)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

augroup coc_augroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  "autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

"" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
"nmap <silent> <TAB> <Plug>(coc-range-select)
"xmap <silent> <TAB> <Plug>(coc-range-select)
"xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

"" Add status line support, for integration with other plugin, checkout `:h coc-status`
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

""""" Completion with sources 
" https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources
""" Trigger completion
" use <tab> for trigger completion and navigate to the next complete item
"inoremap <silent><expr> <Tab>
      "\ pumvisible() ? "\<C-n>" :
      "\ <SID>check_back_space() ? "\<Tab>" :
      "\ coc#refresh()

" use <c-space>for trigger completion
"inoremap <silent><expr> <c-space> coc#refresh()

""" Improve the completion experience
" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" you have to remap <cr> to make sure it confirm completion when pum is visible.
" Coc only does snippet and additional edit on confirm.
" \<C-g>u is used to break undo level
" Use <cr> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" To make <cr> select the first completion item and confirm the completion when no item has been selected:
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" To make coc.nvim format your code on <cr>
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Close the preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
""""" 

""""" coc-list
" https://github.com/neoclide/coc.nvim/wiki/Using-coc-list
" https://github.com/neoclide/coc-lists

"nnoremap <c-p> :CocList --normal buffers<CR>
"nnoremap <c-p> :CocList --interactive buffers<CR>
nnoremap <c-p> :CocList buffers<CR>

""" make grep easier
"command! -nargs=+ -complete=custom,s:GrepArgs Rg exe 'CocList grep '.<q-args>
command! -nargs=+ -complete=custom,s:AgArgs Ag exe 'CocList grep '.<q-args>

function! s:GrepArgs(...)
  let list = ['-S', '-smartcase', '-i', '-ignorecase', '-w', '-word',
        \ '-e', '-regex', '-u', '-skip-vcs-ignores', '-t', '-extension']
  return join(list, "\n")
endfunction

function! s:AgArgs(...)
  let outputOptions = [
        \ '-A', '--after', 
        \ '-B', '--before', 
        \ '-c', '--count', 
        \ '--column',
        \ '-H', '--heading', '--noheading', 
        \ '-C', '--context', 
        \ '-g', '--filename-pattern', 
        \ '-l', '--files-with-matches', 
        \ '-L', '--files-without-matches', 
        \ '-o', '--only-matching', 
        \ '--stats', '--stats-only', 
        \ '--vimgrep', 
  \]
  let searchOptions = [
        \ '-a', '--all-types', 
        \ '-f', '--follow', 
        \ '-G', '--file-search-regex', 
        \ '--hidden', 
        \ '-i', '--ignorecase',
        \ '--ignore',
        \ '--ignore-dir',
        \ '-m', '--max-count', 
        \ '-Q', '--literal', 
        \ '-s', '--case-sensitive', 
        \ '-S', '--smartcase', 
        \ '-t', '--all-text', 
        \ '-u', '--unrestricted', 
        \ '-U', '--skip-vcs-ignores', 
        \ '-v', '--invert-match', 
        \ '-w', '--word-regexp', 
        \ '-W', '--width', 
        \ '-z', '--search-zip', 
  \]

  let filetypes = [
        \ '--list-file-types', 
        \ '--cpp', 
        \ '--csharp', 
        \ '--css', 
        \ '--elm', 
        \ '--html', 
        \ '--js', 
        \ '--json', 
        \ '--log', 
        \ '--make', 
        \ '--markdown', 
        \ '--md', 
        \ '--nix', 
        \ '--python', 
        \ '--sass', 
        \ '--shell', 
        \ '--ts', 
        \ '--vim', 
        \ '--xml', 
        \ '--yaml', 
  \]

  return join(outputOptions + searchOptions + filetypes, "\n")
endfunction

" grep word under cursor
" Keymapping for grep word under cursor with interactive mode
nnoremap <silent> <Leader>cf :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>

""" grep by motion
"vnoremap <leader>g :<C-u>call <SID>GrepFromSelected(visualmode())<CR>
"nnoremap <leader>g :<C-u>set operatorfunc=<SID>GrepFromSelected<CR>g@

function! s:GrepFromSelected(type)
  let saved_unnamed_register = @@
  if a:type ==# 'v'
    normal! `<v`>y
  elseif a:type ==# 'char'
    normal! `[v`]y
  else
    return
  endif
  let word = substitute(@@, '\n$', '', 'g')
  let word = escape(word, '| ')
  let @@ = saved_unnamed_register
  execute 'CocList grep '.word
endfunction

" grep current word in current buffer
nnoremap <silent> <space>w  :exe 'CocList -I --normal --input='.expand('<cword>').' words'<CR>

"" Using CocList
"" Show all diagnostics
"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions
"nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
"" Show commands
"nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols
"nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list
"nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

""""" 

""""" coc-snippets
" https://github.com/neoclide/coc-snippets

" Use <C-l> for trigger snippet expand.
"imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
"vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
"let g:coc_snippet_next = '<c-j>'
"let g:coc_snippet_next = '<tab>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
"let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
"imap <C-j> <Plug>(coc-snippets-expand-jump)

" Make <tab> used for trigger completion, completion confirm, snippet expand and jump like VSCode.
"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? coc#_select_confirm() :
      "\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()
""""" 

autocmd CursorHold * silent call CocActionAsync('highlight')

autocmd FileType json syntax match Comment +\/\/.\+$+

command! -nargs=0 Prettier :CocCommand prettier.formatFile


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

