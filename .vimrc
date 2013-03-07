let mapleader=","

filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible

set modelines=0

set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
"set number
set relativenumber

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set mouse=a
set guicursor="n-v-c:block-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175"

" I think we want brace/paren matching off
"set showmatch

set history=700
set autoread
syntax enable

set background=dark
colorscheme solarized
call togglebg#map("<F5>")
let g:solarized_contrast="normal"
let g:solarized_visibility="high"

set gfn=Menlo\ Regular:h13
set anti

nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>sv :so $MYVIMRC<CR>

" Shortcut to rapidly toggle 'set list'
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <Leader><space> :noh<CR>
nnoremap <tab> %
vnoremap <tab> %

map <F2> :previous<CR>
map <F3> :next<CR>

nnoremap <F4> :set invpaste?<CR>
set pastetoggle=<F4>

let g:CommandTMaxHeight=10
let g:CommandTMatchWindowReverse=1

" Quote a word consisting of letters from iskeyword.
" WARNING: Seems to be a big performance penalty for use of the _w_ movement
"nnoremap <silent> qw :call Quote('"')<CR>
"nnoremap <silent> qs :call Quote("'")<CR>
"nnoremap <silent> wq :call UnQuote()<CR>
"function! Quote(quote)
"  normal mz
"  exe 's/\(\k*\%#\k*\)/' . a:quote . '\1' . a:quote . '/'
"  normal `zl
"endfunction
"
"function! UnQuote()
"  normal mz
"  exe 's/["' . "'" . ']\(\k*\%#\k*\)[' . "'" . '"]/\1/'
"  normal `z
"endfunction
"
"nnoremap <Leader>" ciw"<C-r>""<Esc>
"vnoremap <Leader>" c"<C-r>""<Esc>

function! RunSpec(args)
  if exists("b:rails_root") && filereadable(b:rails_root . "/script/spec")
    let spec = b:rails_root . "/script/spec"
  else
    let spec = "rspec"
  end
  let cmd = ":! " . spec . " % -cfn " . a:args
  execute cmd
endfunction

" run one rspec example or describe block based on cursor position
map !s :call RunSpec("-l " . <C-r>=line('.')<CR>)
" run full rspec file
map !S :call RunSpec("")

nmap <Leader>n :NERDTreeToggle><CR>
nmap <Leader>nf :NERDTreeFind<CR>

nmap <Leader>wp yss<p>
nmap <Leader>w4 yss<h4>
nmap <Leader>w5 yss<h5>
nmap <Leader>wl yss<li>

cnoremap <C-a>  <Home>
cnoremap <C-e>  <End>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Delete>
cnoremap <M-b>  <S-Left>
cnoremap <M-f>  <S-Right>
cnoremap <M-d>  <S-right><Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>d <S-right><Delete>
