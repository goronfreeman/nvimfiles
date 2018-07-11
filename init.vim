call plug#begin('~/.config/nvim/plugged')

" general
Plug 'AndrewRadev/splitjoin.vim'
Plug 'bradford-smith94/quick-scope'
Plug 'google/vim-searchindex'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-sneak'
Plug 'ludovicchabant/vim-gutentags'
Plug 'machakann/vim-highlightedyank'
Plug 'machakann/vim-sandwich'
Plug 'rafaqz/ranger.vim'
Plug 'raimondi/delimitmate'
Plug 'rizzatti/dash.vim'
Plug 'sheerun/vim-polyglot'
Plug 'simeji/winresizer'
Plug 'thaerkh/vim-indentguides'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'w0rp/ale'

" Deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" FZF
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" markup
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'

" Ruby
Plug 'ecomba/vim-ruby-refactoring'
Plug 'joker1007/vim-ruby-heredoc-syntax'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }

" testing
Plug 'janko-m/vim-test'
Plug 'radenling/vim-dispatch-neovim'
Plug 'tpope/vim-dispatch'

" text objects
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'

" themes
Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'

call plug#end()

" set theme
set background=dark
colorscheme nord
set termguicolors
syntax enable

" general
set clipboard+=unnamedplus
set colorcolumn=80
set cursorline
set fillchars+=vert:│ " vertical split character
set inccommand=split
set lazyredraw
set noshowmode " remove extra status line
set nowrap
set shortmess=I
set sidescroll=1
set spell spelllang=en_us
set wildmenu

" line numbers
set number
set numberwidth=2
set relativenumber
set ruler

" searching
set ignorecase
set showmatch
set smartcase

" show invisibles
set list
set listchars=eol:¬,tab:￫\ ,trail:·,extends:»,precedes:«,nbsp:␣

" tab settings
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2

for f in split(glob('~/.config/nvim/config/general/*.vim'), '\n')
  exe 'source' f
endfor

for f in split(glob('~/.config/nvim/config/plugin/*.vim'), '\n')
  exe 'source' f
endfor
