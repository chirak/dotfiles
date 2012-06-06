" ASCII cat greeting :D
echom '>^.^<'

call pathogen#infect()

filetype plugin on
filetype indent on
syntax on

let g:solarized_termtrans=1
colorscheme solarized

" Might be some issues with fancy characters in bottom status bar
" let g:Powerline_symbols='fancy'

" Fixes backspace issues in terminal
set backspace=indent,eol,start
" Can toggle bg between 'dark' and 'light' for solarized theme
set background=dark
" UTF-8 characters for vim powerline plugin
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

let mapleader=","

" Easy mapping to edit vimrc
nnoremap <leader>ev :e  $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>

" Maps c-j to escape
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>

" Set indentation for rb files to 2
if has("autocmd")
	filetype on
	autocmd FileType ruby,html,erb setlocal ts=2 sts=2 sw=2 et
endif

" Shortcut for printing the directory of the file which is active
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Map space to toggle fold in normal mode
nnoremap <space> za

" Mapping to uppercase current word in insert mode
inoremap <c-u> <esc>viwUA

" Example of how to use abbreviations
iabbrev ssig <cr>Chirag Khatri<cr>ckhatri4@gmail.com
