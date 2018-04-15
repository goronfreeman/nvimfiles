let mapleader=","
inoremap jk <ESC>
nnoremap <leader>c :nohl<cr>
noremap <leader>rh :RubyHashSyntaxToggle<cr>

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" quickfix/location list
nnoremap ][q :copen<cr>
nnoremap []q :cclose<cr>
nnoremap ][l :lopen<cr>
nnoremap []l :lclose<cr>
