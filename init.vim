call plug#begin('~/.config/nvim/plugged')

" general
Plug 'Raimondi/delimitMate'
Plug 'junegunn/vim-easy-align'
Plug 'ludovicchabant/vim-gutentags'
Plug 'rizzatti/dash.vim'
Plug 'thaerkh/vim-indentguides'
Plug 'tmhedberg/matchit'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'

" Deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'uplus/deoplete-solargraph'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" FZF
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" markup
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss'] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['html', 'css', 'eruby'] }
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'eruby'] }
Plug 'othree/html5.vim', { 'for': ['html', 'javascript', 'eruby'] }
Plug 'plasticboy/vim-markdown', { 'for': ['mkd', 'markdown', 'mkd.markdown'] }

" Ruby
Plug 'ecomba/vim-ruby-refactoring'
Plug 'joker1007/vim-ruby-heredoc-syntax'
Plug 'kchmck/vim-coffee-script'
Plug 'noprompt/vim-yardoc'
Plug 'sunaku/vim-ruby-minitest', { 'for': ['ruby'] }
Plug 'thoughtbot/vim-rspec', { 'for': ['ruby'] }
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'eruby'] }

" text objects
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'

" themes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim'

call plug#end()

" set theme
set background=dark
colorscheme onedark
set termguicolors
syntax enable

" general
set cursorline
set fillchars+=vert:│ " vertical split character
set inccommand=split
set noshowmode " remove extra status line
set nowrap
set wildmenu
set sidescroll=1

" tab settings
set ai
set et
set sta
set sts=2
set sw=2
set ts=2

" searching
set ignorecase
set showmatch
set smartcase

" line numbers
set number
set numberwidth=2
set relativenumber
set ruler

for f in split(glob('~/.config/nvim/config/general/*.vim'), '\n')
  exe 'source' f
endfor

for f in split(glob('~/.config/nvim/config/plugin/*.vim'), '\n')
  exe 'source' f
endfor
