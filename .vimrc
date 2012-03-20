set nocompatible
set autoindent
set smartindent
set tabstop=4
set showmatch
set ruler
set history=700
set autoread
set number
set hidden
set wildmenu
set wildmode=list:longest

filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

syntax enable
set background=light
colorscheme solarized

let mapleader=","

nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>sv :so $MYVIMRC<CR>

map <F2> :previous<CR>
map <F3> :next<CR>

