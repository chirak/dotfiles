call pathogen#infect()

filetype plugin on
filetype indent on
syntax on

" Color settings
set t_Co=16

" Fancy UTF-8 characters for Vim Powerline
let g:Powerline_symbols='fancy'

set background=dark "Can toggle bg between 'dark' and 'light' for solarized theme

" Fixes backspace issues in terminal
set backspace=indent,eol,start
set encoding=utf-8
" Allows editing of multiple unsaved buffers
set hidden
" Saves the last 200 ex. mode commands
set history=200
set hlsearch
" Shows vim powerline status bar below. Setting 
" laststatus=1 only shows status bar if window is split
set laststatus=2
" Shows all numbers in vim as decimals
set nrformats=

" Basic settings
set autoindent
set nocompatible
set number
set ruler
set shiftwidth=4
set showcmd
set showmatch
set showmode
set smartcase
set tabstop=4
set ttyfast " allows quick scrolling

let mapleader=","
let maplocalleader="-"

" Easy mapping to edit vimrc
nnoremap <leader>ev :e  $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>

" Maps kj to escape
inoremap kj <Esc>

" Set indentation for certain file types to 2
if has("autocmd")
	filetype on
	autocmd FileType ruby,html,erb setlocal ts=2 sts=2 sw=2 et
endif

" Shortcut for printing the directory of the file which is active
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Map space to toggle fold in normal mode
nnoremap <space> za

" Mapping to uppercase current word in insert mode
inoremap <c-u> <esc>viwUea

" Example of how to use abbreviations
iabbrev ssig <cr>Chirag Khatri<cr>ckhatri4@gmail.com
