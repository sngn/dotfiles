let g:coc_global_extensions = [
\  'coc-clangd',
\  'coc-css',
\  'coc-deno',
\  'coc-eslint',
\  'coc-highlight',
\  'coc-html',
\  'coc-json',
\  'coc-lists',
\  'coc-prettier',
\  'coc-prisma',
\  'coc-snippets',
\  'coc-svelte',
\  'coc-syntax',
\  'coc-tsserver',
\  'coc-vetur',
\  'coc-vimlsp',
\  'coc-yaml',
\]

"let g:coc_global_extensions = [
"\  'coc-git',
"\  'coc-neosnippet',
"\  'coc-omnisharp',
"\  'coc-python',
"\  'coc-svg',
""\  'coc-xml', "needs JDK? does not find it
"\]

"""
""" from coc example configuration on github -- start
"""
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  "autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
"""
""" from coc example configuration on github -- end
"""

" Remap keys for gotos
"nmap <silent> gD <Plug>(coc-declaration)

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

""""" Completion with sources 
" https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources

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
command! -nargs=+ -complete=custom,s:GrepArgs Rg exe 'CocList grep '.<q-args>
command! -nargs=+ -complete=custom,s:AgArgs Ag exe 'CocList grep '.<q-args>

function! s:GrepArgs(...)
  let list = [
        \ '-S', '-smartcase', 
        \ '-i', '-ignorecase', 
        \ '-l', '-literal', 
        \ '-w', '-word',
        \ '-e', '-regex', 
        \ '-u', '-skip-vcs-ignores', 
        \ '-t', '-extension',
        \ '-F', '-folder',
        \ '-W', '-workspace']
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

""""" 

autocmd FileType json syntax match Comment +\/\/.\+$+

command! -nargs=0 Prettier :CocCommand prettier.formatFile

