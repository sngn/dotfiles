let g:ale_linters = {
\   'javascript': ['eslint'],
\   'vue': [],
\}

let g:ale_fixers = {}

let g:ale_enabled = 0

let g:airline#extensions#ale#enabled = 1

let g:ale_lint_on_enter = 0
let g:ale_lint_on_filetype_changed = 0
let g:ale_lint_on_save = 0
let g:ale_lint_on_text_changed = 'never'

