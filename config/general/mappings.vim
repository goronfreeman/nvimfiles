let mapleader=","
inoremap jk <esc>
nnoremap <leader>c :nohl<cr>
nnoremap <leader>rcm :RubyConvertMultiline<cr>
noremap <leader>rh :RubyHashSyntaxToggle<cr>
nmap <leader>cf :ClearQuickfixList<cr>

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
