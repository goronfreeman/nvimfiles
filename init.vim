call plug#begin('~/.config/nvim/plugged')

" general
Plug 'google/vim-searchindex'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-sneak'
Plug 'ludovicchabant/vim-gutentags'
Plug 'machakann/vim-highlightedyank'
Plug 'rafaqz/ranger.vim'
Plug 'raimondi/delimitmate'
Plug 'rizzatti/dash.vim'
Plug 'sheerun/vim-polyglot'
Plug 'thaerkh/vim-indentguides'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
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
Plug 'joshdick/onedark.vim'

call plug#end()

" set theme
set background=dark
colorscheme onedark
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
