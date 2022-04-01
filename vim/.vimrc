" PLUGINS ----------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

    Plug 'dense-analysis/ale'

    " File tree navigation
    Plug 'preservim/nerdtree'

    " Colors
    Plug 'morhetz/gruvbox'
    Plug 'sainnhe/gruvbox-material'
    Plug 'arcticicestudio/nord-vim'


call plug#end()

" }}}

" MAPPINGS ----------------------------------------------------------------- {{{

inoremap { {}<left>
inoremap {{ {
inoremap {} {}
inoremap [ []<left>
inoremap [[ [
inoremap [] []
inoremap ( ()<left>
inoremap (( (
inoremap () ()
inoremap " ""<left>
inoremap "" "
inoremap ' ''<left>
inoremap '' '
inoremap < <><left>

inoremap jj <esc>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Up> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Up> <Nop>
noremap <Right> <Nop>

" }}}

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


" STATUS LINE -------------------------------------------------------------- {{{

" Clear status line when vimrc is reloaded
set statusline=

" Status line left side
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side
set statusline+=%=

" Status line right side
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line
set laststatus=2

" }}}
