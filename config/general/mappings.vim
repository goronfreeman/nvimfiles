" misc
let mapleader=" "
inoremap jk <esc>
nnoremap <C-N> :nohl<cr>
nnoremap <cr> o<esc>
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>
nmap <leader>cf :ClearQuickfixList<cr>
nmap <silent> <leader>d <Plug>DashSearch

" FZF
nmap <leader>a :Ag<Space>
nmap <leader>b :Buffers<cr>
nmap <leader>f :GFiles<cr>
nmap <leader>F :Files<cr>
nmap <leader>h :History<cr>
nmap <leader>l :BLines<cr>
nmap <leader>L :Lines<cr>
nmap <leader>t :BTags<cr>
nmap <leader>T :Tags<cr>
nmap <leader>' :Marks<cr>
nmap <leader>H :Helptags!<cr>
nmap <leader>C :Commands<cr>
nmap <leader>: :History:<cr>
nmap <leader>/ :History/<cr>
nnoremap <C-P> :FZF<cr>

" NERDTree
map <C-B> :NERDTreeToggle<cr>

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" terminal
nnoremap <C-K><C-T> :10sp<cr>:term<cr>
tnoremap jk <C-\><C-N>

" quickfix/location list
nnoremap ][q :copen<cr>
nnoremap []q :cclose<cr>
nnoremap ][l :lopen<cr>
nnoremap []l :lclose<cr>
