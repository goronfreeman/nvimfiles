" misc
let mapleader=" "
inoremap jk <ESC>
nnoremap <silent> <C-n> :nohl<CR>
nnoremap <leader>o o<ESC>
nnoremap <leader>O O<ESC>
nmap <leader>cf :ClearQuickfixList<CR>
nmap <silent> <leader>d <Plug>(DashSearch)

" CoC
nnoremap <silent> K :call <SID>show_documentation()<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <leader>rn <Plug>(coc-rename)

" fugitive
nmap <leader>gb :Gblame<CR>
nmap <leader>gg :Gbrowse<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit<CR>

" FZF
nmap <leader>a :Rg<Space>
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
nnoremap <silent> <leader>A :Rg <C-r><C-w><CR>

" GitGutter
nmap ]c <Plug>(GitGutterNextHunk)
nmap [c <Plug>(GitGutterPrevHunk)

" ranger
map <leader>rr :RangerEdit<CR>
map <leader>rv :RangerVSplit<CR>
map <leader>rs :RangerSplit<CR>
map <leader>rt :RangerTab<CR>
map <leader>ri :RangerInsert<CR>
map <leader>ra :RangerAppend<CR>
map <leader>rc :set operatorfunc=RangerChangeOperator<CR>g@

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
tnoremap <C-\> <C-\><C-n>

" undotree
nnoremap <leader>u :UndotreeToggle<CR>

" quickfix/location list
nnoremap ][q :copen<CR>
nnoremap []q :cclose<CR>
nnoremap ][l :lopen<CR>
nnoremap []l :lclose<CR>
