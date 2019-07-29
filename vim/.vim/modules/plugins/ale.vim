let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'vue': ['eslint', 'vls'],
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}

" Do not lint or fix minified files.
let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\}

let g:ale_enabled = 0
"let g:ale_enabled = 1

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_filetype_changed = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_list_window_size = 10
" If you configure g:ale_pattern_options outside of vimrc, you need this.
let g:ale_pattern_options_enabled = 1

let g:airline#extensions#ale#enabled = 1

