set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set wildmode=longest,list   " get bash-like tab completions
"set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard+=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.


call plug#begin('~/.vim/plugged')

" Color scheme
Plug 'sainnhe/gruvbox-material'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'

" Treesitter
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" lsp
Plug 'neovim/nvim-lspconfig'

" NERDTree
Plug 'preservim/nerdtree'

" Status bar
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

inoremap { {}<left>
inoremap {{ {
inoremap [ []<left>
inoremap [[ [
inoremap ( ()<left>
inoremap " ""<left>
inoremap "" "
inoremap ' ''<left>
inoremap ''  '

inoremap jj <Esc> 

inoremap <Esc> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" NerdTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Telescope shortcuts
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>fe <cmd>Telescope file_browser<cr>

" COLOR -------------------------------------------------------------------- {{{

set background=dark
colorscheme gruvbox-material 

" }}}

" Disable vi compatibility
set nocompatible

" Detect file type
filetype on

" Enable plugins
filetype plugin on

" Indent file on detected file type
filetype indent on

" Enable syntax colorization
syntax on

set noerrorbells
set softtabstop=4
set smartindent
"set nowrap
set nobackup
set noswapfile
set undodir=~/.vim/undodir

" Add line number
set number

" Add cursor line
set cursorline

" Set shift width to 4 space
set shiftwidth=4

" Set tab width to 4 columns
set tabstop=4

" Use space characters instead of tabs
set expandtab

" Do not let cursor scroll below or above N number of lines when scrolling
" Makes copy paste of large files very slow...
" set scrolloff=10

" While searching though a file incrementally highlight matching characters as
" you type
set incsearch

" Ignore capital letters during search
set ignorecase

" Override the ignorecase option if searching for capital letters
" This will allow you to search specifically for capital letters
set smartcase

" Show partial command you type in the last line of the screen
set showcmd

" Show the mode you are on the last line
set showmode

" Show matching words during a search
set showmatch

" Use highlighting when doing a search
set hlsearch

" Set the commands to save in history default number is 20
set history=10000

" Enable auto completion menu after pressing TAB
set wildmenu


" Telescope
" will find .lua file that exist at runtime
" should be unique
lua require("damn") 
