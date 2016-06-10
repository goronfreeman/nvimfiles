call plug#begin('~/.config/nvim/plugged')

" themes
Plug 'altercation/vim-colors-solarized'
Plug 'NLKNguyen/papercolor-theme'

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes n \| ./install' }

" ruby
Plug 'tpope/vim-rbenv', { 'for': ['ruby', 'eruby'] }
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'eruby'] }
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }
Plug 'Keithbsmiley/rspec.vim', { 'for': ['ruby'] }
Plug 'sunaku/vim-ruby-minitest', { 'for': ['ruby'] }

" markup
Plug 'othree/html5.vim', { 'for': ['html', 'javascript', 'eruby'] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['html', 'css', 'eruby'] }
Plug 'plasticboy/vim-markdown', { 'for': ['mkd', 'markdown', 'mkd.markdown'] }
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss'] }

call plug#end()

" set theme
syntax enable
set background=dark
colorscheme PaperColor

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

let g:ctrlp_map = '<c-p>'
let g:ctrl_cmd = 'CtrlP'

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers=['rubocop']
let g:deoplete#enable_at_startup = 1
