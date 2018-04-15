call plug#begin('~/.config/nvim/plugged')

" themes
Plug 'dracula/vim', { 'as': 'dracula' }

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

Plug 'junegunn/vim-easy-align'
Plug 'ludovicchabant/vim-gutentags'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'thaerkh/vim-indentguides'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-unimpaired'
Plug 'Valloric/MatchTagAlways'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" FZF
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Ruby
Plug 'joker1007/vim-ruby-heredoc-syntax'
Plug 'kchmck/vim-coffee-script'
Plug 'sunaku/vim-ruby-minitest', { 'for': ['ruby'] }
Plug 'thoughtbot/vim-rspec', { 'for': ['ruby'] }
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'eruby'] }

" markup
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss'] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['html', 'css', 'eruby'] }
Plug 'othree/html5.vim', { 'for': ['html', 'javascript', 'eruby'] }
Plug 'plasticboy/vim-markdown', { 'for': ['mkd', 'markdown', 'mkd.markdown'] }

call plug#end()

" set theme
set background=dark
colorscheme dracula
set termguicolors
syntax enable

" general
set cursorline
set fillchars+=vert:│ " vertical split character
set noshowmode " remove extra status line 
set nowrap
set wildmenu

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

for f in split(glob('~/.config/nvim/config/general/*.vim'), '\n')
  exe 'source' f
endfor

for f in split(glob('~/.config/nvim/config/plugin/*.vim'), '\n')
  exe 'source' f
endfor
