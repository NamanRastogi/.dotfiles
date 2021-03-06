" Enable modern Vim features not compatible with Vi spec.
set nocompatible

" Enable UTF-8 encoding
set encoding=UTF-8

" Enable mouse support
set mouse=a

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Enable auto indentation
set autoindent

" Load an indent file for the detected file type.
filetype indent on

" Enable file type based indent configuration and syntax highlighting.
" Note that when code is pasted via the terminal, vim by default does not detect
" that the code is pasted (as opposed to when using vim's paste mappings), which
" leads to incorrect indentation when indent mode is on.
" To work around this, use ":set paste" / ":set nopaste" to toggle paste mode.
" You can also use a plugin to:
" - enter insert mode with paste (https://github.com/tpope/vim-unimpaired)
" - auto-detect pasting (https://github.com/ConradIrwin/vim-bracketed-paste)
filetype plugin indent on

" Turn syntax highlighting on.
syntax on

" Set dark background
set background=dark

" Add numbers to each line on the left-hand side.
set number
" set relativenumber

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Highlight search
set hlsearch
nnoremap <esc><esc> :silent! nohls<cr>

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" Enable status line
set laststatus=2


" ##########################################
" ## Plugins using vim-plug
" ## https://github.com/junegunn/vim-plug
" ##########################################

call plug#begin()

Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'itchyny/lightline.vim'

call plug#end()

" Colorscheme: OneHalfDark
" https://github.com/sonph/onehalf
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme onehalfdark

" Lightline
let g:lightline = {'colorscheme': 'one'}
