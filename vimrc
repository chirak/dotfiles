call pathogen#infect()

filetype plugin on
filetype indent on
syntax on

let g:solarized_termtrans=1
colorscheme solarized

let g:Powerline_symbols='fancy'

set autoindent
set backspace=indent,eol,start
set background=dark
set encoding=utf-8
set hidden
set history=200
set hlsearch
set laststatus=1
set nrformats=
set nocompatible
set number
set ruler
set shiftwidth=4
set showcmd
set showmatch
set showmode
set smartcase
set tabstop=4

imap <C-j> <Esc>

if has("autocmd")
	filetype on
	autocmd FileType ruby setlocal ts=2 sts=2 sw=2 et
endif

" Shortcut for printing the directory of the file which is active
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Yank text to the clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y
" Preserve indentation while pasting text from the clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>
