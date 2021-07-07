call plug#begin('~/.config/nvim/plugged')

" general
Plug 'AndrewRadev/splitjoin.vim'                                        " Switch between single-line and multi-line statements
Plu
Plug 'SirVer/ultisnips'                                                 " Snippet manager
Plug 'andymass/vim-tradewinds'                                          " Easy window movement
Plug 'junegunn/vim-easy-align'                                          " Align lines by a specific character
Plug 'ludovicchabant/vim-gutentags'                                     " Tag file management
Plug 'machakann/vim-sandwich'                                           " Add/delete/replace surroundings of a sandwiched text object
Plug 'mbbill/undotree'                                                  " Undo history visualizer
Plug 'raimondi/delimitmate'                                             " Auto-completion for quotes, parens, brackets, etc.
Plug 'rizzatti/dash.vim'                                                " Look up documentation using Dash
Plug 'sheerun/vim-polyglot'                                             " Language pack
Plug 'simeji/winresizer'                                                " Easy window resizing
Plug 'stsewd/fzf-checkout.vim'                                          " Manage branches and tags with fzf
Plug 'tpope/vim-bundler'                                                " A lightweight bag of Vim goodies for Bundler
Plug 'tpope/vim-commentary'                                             " Comment stuff out
Plug 'tpope/vim-eunuch'                                                 " UNIX shell command helpers
Plug 'tpope/vim-repeat'                                                 " Enable repeating for supported plugins
Plug 'tpope/vim-unimpaired'                                             " Pairs of handy bracket mappings
Plug 'tyru/open-browser.vim'                                            " Open URL under cursor in the default browser
Plug 'vim-airline/vim-airline'                                          " Statusline
Plug 'vim-scripts/ReplaceWithRegister'                                  " Replace text object with contents of register
Plug 'w0rp/ale'                                                         " Asynchronous linting

" lua plugins
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'lewis6991/gitsigns.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'neovim/nvim-lspconfig'

" Git
Plug 'tpope/vim-fugitive'                                               " Git wrapper
Plug 'tpope/vim-rhubarb'                                                " GitHub extension for fugitive.vim

" markup
Plug 'alvan/vim-closetag'                                               " Automatically close HTML tags
Plug 'mattn/emmet-vim'                                                  " HTML/CSS text expansion
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }               " Display CSS colors inline

" Ruby
Plug 'joker1007/vim-ruby-heredoc-syntax'                                " Syntax highlighting inside Ruby heredoc
Plug 'tpope/vim-endwise'                                                " Automatically close Ruby blocks and more
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }                    " RoR tools

" Rust
Plug 'rust-lang/rust.vim'

" testing
Plug 'janko-m/vim-test'                                                 " Test runner
Plug 'radenling/vim-dispatch-neovim'                                    " Add support for neovim's terminal emulator and job control to dispatch.vim
Plug 'tpope/vim-dispatch'                                               " Asynchronous build and test dispatcher

" text objects
Plug 'kana/vim-textobj-entire'                                          " Text objects for entire buffers
Plug 'kana/vim-textobj-indent'                                          " Text objects for indented blocks of lines
Plug 'kana/vim-textobj-line'                                            " Text objects for the current line
Plug 'kana/vim-textobj-user'                                            " Create your own text objects
Plug 'nelstrom/vim-textobj-rubyblock'                                   " A custom text object for ruby blocks

" themes
Plug 'shaunsingh/nord.nvim'                                             " An arctic, north-bluish clean and elegant Vim theme

" tmux
Plug 'christoomey/vim-tmux-navigator'                                   " Seamless navigation between tmux panes and vim splits
Plug 'tmux-plugins/vim-tmux-focus-events'                               " Make terminal vim and tmux work better together

call plug#end()

" set theme
set background=dark                                                     " Set colorscheme background color
set termguicolors                                                       " Enable 24-bit color
syntax enable                                                           " Enable syntax highlighting

" general
set autoread                                                            " Reload files changed outside Vim
set clipboard+=unnamedplus                                              " Use system clipboard
set colorcolumn=80                                                      " Show line length ruler
set complete+=kspell                                                    " Autocomplete with dictionary words when spell check is on
set cursorline                                                          " Highlight the line the cursor is on
set fillchars+=vert:│                                                   " Set the vertical split character
set hidden                                                              " Hide modified buffers instead of closing
set inccommand=split                                                    " Enable preview split for substitution
set lazyredraw                                                          " Increase performance of screen drawing
set nofoldenable                                                        " Disable folding by default
set noshowmode                                                          " Remove extra status line
set nowrap                                                              " Don't wrap lines
set mouse=a                                                             " Enable mouse in all modes
set shortmess=tIF                                                       " Don't show the intro message when starting Vim
set sidescroll=1                                                        " Scroll one character at a time when moving horizontally
set wildmenu                                                            " Enable autocomplete menu

" line numbers
set number                                                              " Show absolute line number of the current line
set numberwidth=2                                                       " Pad single digit numbers with a space
set relativenumber                                                      " Show line numbers relative to the current line
set ruler                                                               " Show the line and column number of the cursor position

" searching
set ignorecase                                                          " Ignore case in search patterns
set showmatch                                                           " When a bracket is inserted, briefly jump to the matching one
set smartcase                                                           " Perform a case sensitive search if the pattern contains upper case characters

" show invisibles
set list                                                                " Show invisible characters
set listchars=eol:¬,tab:￫\ ,trail:·,extends:»,precedes:«,nbsp:␣         " Set custom invisibles
set shortmess-=S                                                        " Display search match count

" tab settings
set autoindent                                                          " Copy indent from current line when starting a new line
set expandtab                                                           " Use the appropriate number of spaces to insert a <Tab>
set shiftround                                                          " Round indent to multiple of 'shiftwidth'
set shiftwidth=2                                                        " Number of spaces to use for each step of indent
set softtabstop=2                                                       " Number of spaces that a <Tab> counts for

" undo settings
set undodir=$HOME/.config/nvim/undo                                     " Set persistent undodir path
set undofile                                                            " Write changes to the undofile
set undolevels=1000                                                     " Max changes that can be undone
set undoreload=10000                                                    " Max lines to save for undo on buffer reload

for f in split(glob('~/.config/nvim/config/general/*.vim'), '\n')
  exe 'source' f
endfor

for f in split(glob('~/.config/nvim/config/plugin/*.vim'), '\n')
  exe 'source' f
endfor
