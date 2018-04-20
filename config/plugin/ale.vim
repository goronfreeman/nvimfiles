let g:airline#extensions#ale#enabled = 1
let g:ale_set_highlights = 0
let g:ale_set_signs = 1
let g:ale_fixers = {
\   'ruby': ['rubocop'],
\}
let g:ale_linters = {
\   'ruby': ['rubocop', 'ruby']
\}
let g:ale_pattern_options = {
\   'schema.rb': {'ale_enabled': 0},
\   'structure.sql': {'ale_enabled': 0},
\}
