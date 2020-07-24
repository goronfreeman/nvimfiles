" misc
let mapleader=" "
inoremap jk <ESC>
nnoremap <silent> <C-n> :nohl<CR>

" split navigation
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
set splitbelow
set splitright

" terminal
tnoremap <C-\> <C-\><C-n>

" quickfix/location list
nnoremap ][q :copen<CR>
nnoremap []q :cclose<CR>
nnoremap ][l :lopen<CR>
nnoremap []l :lclose<CR>
