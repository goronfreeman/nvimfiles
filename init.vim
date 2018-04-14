call plug#begin('~/.config/nvim/plugged')

" themes
Plug 'altercation/vim-colors-solarized'
Plug 'NLKNguyen/papercolor-theme'
Plug 'dracula/vim', { 'as': 'dracula' }

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

Plug 'airblade/vim-gitgutter'
Plug 'aliou/sql-heredoc.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'ludovicchabant/vim-gutentags'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'

" FZF
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" ruby
Plug 'Keithbsmiley/rspec.vim', { 'for': ['ruby'] }
Plug 'sunaku/vim-ruby-minitest', { 'for': ['ruby'] }
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'eruby'] }

" markup
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss'] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['html', 'css', 'eruby'] }
Plug 'othree/html5.vim', { 'for': ['html', 'javascript', 'eruby'] }
Plug 'plasticboy/vim-markdown', { 'for': ['mkd', 'markdown', 'mkd.markdown'] }

call plug#end()

" set theme
syntax enable
set background=dark
colorscheme dracula
set termguicolors

" general
set nowrap
:au FocusLost * :wa

" tab settings
set ai
set et
set sta
set ts=2
set sw=2
set sts=2

" searching
set showmatch
set ignorecase
set smartcase

" line numbers
set number
set relativenumber
set ruler
set numberwidth=2

" mappings
inoremap jk <ESC>

set cursorline
set wildmenu

" FZF
nnoremap <c-p> :FZF<cr>
nnoremap <c-o> :BTags<cr>

" ale
let g:airline#extensions#ale#enabled = 1

" deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" gitgutter update interval
set updatetime=250

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" automatically strip whitespace
autocmd BufWritePre *.py :%s/\s\+$//e
