finish

"if has('nvim')
"""""

let g:deoplete#enable_at_startup = 0
"let g:deoplete#enable_at_startup = 1

call deoplete#custom#option('smart_case', v:true)

"call deoplete#custom#option('sources', {
"\ '_': ['ale'],
"\})

set completeopt+=noinsert

"let g:deoplete#omni#input_patterns = {}

"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"

" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function() abort
  return deoplete#close_popup() . "\<CR>"
endfunction

"""""
"endif
