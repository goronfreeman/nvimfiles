" misc
let mapleader=" "
inoremap jk <ESC>
nnoremap <C-n> :nohl<CR>
nnoremap <CR> o<ESC>
nnoremap <leader>o o<ESC>
nnoremap <leader>O O<ESC>
nmap <leader>cf :ClearQuickfixList<CR>
nmap <silent> <leader>d <Plug>DashSearch

" FZF
nmap <leader>a :Ag<Space>
nmap <leader>b :Buffers<CR>
nmap <leader>f :GFiles<CR>
nmap <leader>F :Files<CR>
nmap <leader>h :History<CR>
nmap <leader>l :BLines<CR>
nmap <leader>L :Lines<CR>
nmap <leader>t :BTags<CR>
nmap <leader>T :Tags<CR>
nmap <leader>' :Marks<CR>
nmap <leader>H :Helptags!<CR>
nmap <leader>C :Commands<CR>
nmap <leader>: :History:<CR>
nmap <leader>/ :History/<CR>
nnoremap <C-p> :FZF<CR>
" search for word under cursor
nnoremap <silent> <leader>A :Ag <C-r><C-w><CR>

" GitGutter
nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk

" NERDTree
map <silent> <leader>e :NERDTreeToggle<CR>

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
