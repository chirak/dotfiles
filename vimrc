call pathogen#infect()

filetype plugin on
filetype indent on
syntax on

" gVim settings only
if has("gui_running")
  colorscheme twilight
  " Remove gui menu and tool bars
  set guioptions-=m
  set guioptions-=T
  set guioptions-=l
  set guioptions-=r
  set guioptions-=b
  set guioptions-=L
  if has("gui_win32")
    source $VIMRUNTIME/mswin.vim
    behave mswin
    set guifont=Consolas:h11:cANSI

    " Setup backup directory so temp files to do clutter up working directory
    set backupdir=~/vimtmp
    set directory=~/vimtmp

    " Disable annoying bell sound in Windows
    set noerrorbells visualbell t_vb=
    autocmd GUIEnter * set visualbell t_vb=
  endif
endif


set autoindent
set encoding=utf-8
set expandtab
set hidden
set history=200
set hlsearch
set laststatus=2
set nocompatible
set nrformats=
set ruler
set relativenumber
set shiftwidth=2
set showcmd
set showmatch
set showmode
set smartcase
set tabstop=2
set wildmenu

let mapleader=","
let maplocalleader="-"

" Easy mapping to edit vimrc
nnoremap <leader>ev :e  $MYVIMRC<cr>

" Maps kj to escape
inoremap kj <Esc>

" Set indentation for certain file types to 2
if has("autocmd")
	filetype on
	autocmd FileType ruby,html,erb setlocal ts=2 sts=2 sw=2 et
endif

" Shortcut for printing the directory of the file which is active
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Mapping to uppercase current word in insert mode
inoremap <c-u> <esc>viwUea

" Example of how to use abbreviations
iabbrev ssig <cr>Chirag Khatri<cr>ckhatri4@gmail.com
