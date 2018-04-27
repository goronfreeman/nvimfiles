" misc
let mapLeader=" "
inoremap jk <ESC>
nnoremap <C-n> :nohl<CR>
nnoremap <CR> o<ESC>
nnoremap <Leader>o o<ESC>
nnoremap <Leader>O O<ESC>
nmap <Leader>cf :ClearQuickfixList<CR>
nmap <silent> <Leader>d <Plug>DashSearch

" FZF
nmap <Leader>a :Ag<Space>
nmap <Leader>b :Buffers<CR>
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>h :History<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>
nmap <Leader>t :BTags<CR>
nmap <Leader>T :Tags<CR>
nmap <Leader>' :Marks<CR>
nmap <Leader>H :Helptags!<CR>
nmap <Leader>C :Commands<CR>
nmap <Leader>: :History:<CR>
nmap <Leader>/ :History/<CR>
nnoremap <C-p> :FZF<CR>
" search for word under cursor
nnoremap <silent> <Leader>A :Ag <C-R><C-W><CR>

" NERDTree
map <Leader>e :NERDTreeToggle<CR>

" split navigation
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
set splitbelow
set splitright

" RSpec
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" terminal
nnoremap <C-t><C-t> :10sp<CR>:term<cr>
tnoremap <ESC> <C-\><C-n>
tnoremap jk <C-\><C-n>

" quickfix/location list
nnoremap ][q :copen<CR>
nnoremap []q :cclose<CR>
nnoremap ][l :lopen<CR>
nnoremap []l :lclose<CR>
