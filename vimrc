" .vimrc


" Setup

" Leader as a comma
let mapleader = ","
" Use Vim features, not Vi
set nocompatible
set encoding=utf-8



" Starts Vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'crusoexia/vim-monokai'
Plugin 'bling/vim-bufferline'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
Plugin 'othree/html5.vim'
Plugin 'ap/vim-css-color'
Plugin 'tpope/vim-commentary'
" Plugin 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" ends Vundle

let g:indentLine_char = '│'
let g:indentLine_color_term = 239

" Syntax highlighting"

" Enable syntax highighting
syntax enable
" 256 colours please
set t_Co=256
" Dark solarized scheme
" set background=dark
" colorscheme solarized
colorscheme monokai



" Emmet setting
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall



"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_show_hidden = 1



" Airline
let g:airline#extensions#bufferline#enabled = 1
set laststatus=2

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" Removes the path of the files
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline_right_sep=''
let g:airline_section_z=''
let g:airline_theme='powerlineish'



" NERDTree

" Run NERDTree as soon as we launch Vim...
"autocmd vimenter * NERDTree
"" ...but focus on the file itself, rather than NERDTree
"autocmd VimEnter * wincmd p
" Close Vim if only NERDTree is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1



" Set relevant filetypes
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.hbs set filetype=html



" Buffer management

" Open splits to the right or below; more natural than the default
set splitright
set splitbelow
" Set the working directory to wherever the open file lives (can be problematic)
set autochdir
set path+=**
" Show file options above the command line
set wildmenu



" Text management

filetype plugin indent on
" 2 spaces please
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
" Round indent to nearest multiple of 2
set shiftround
" No line-wrapping
set nowrap
" Spell-check always on
set spell
" underlines spelling errors
hi clear SpellBad
hi SpellBad cterm=undercurl
" Underscores denote words
" set iskeyword-=_
" No extra spaces when joining lines
set nojoinspaces
" Interpret numbers with leading zeroes as decimal, not octal
set nrformats=

" refreshes buffers when you do git merge  or change files with git
set autoread



" Interactions

" Start scrolling slightly before the cursor reaches an edge
set scrolloff=3
set sidescrolloff=5
" Scroll sideways a character at a time, rather than a screen at a time
set sidescroll=1
" Allow motions and back-spacing over line-endings etc
set backspace=indent,eol,start
set whichwrap=h,l,b,<,>,~,[,]
set backspace=2


" Visual decorations

" Show status line
" set laststatus=2
" Show what mode you're currently in
set showmode
" Show what commands you're typing
set showcmd
" Allow modelines
set modeline
" Show current line and column position in file
set ruler
" Show file title in terminal tab
set title
" Show invisibles
set list
set listchars=tab:»-,trail:•

" Set relative line numbers...
set relativenumber
" ...but absolute numbers on the current line
set number
" Limit line-length to 80 columns by highlighting col 81 onward
set colorcolumn=81
" Force cursor onto a new line after 80 characters
set textwidth=80
" Highlight current line
set cursorline
" Mute bells
set visualbell



" Search

" Don't keep results highlighted after searching...
set nohlsearch
" ...just highlight as we type
set incsearch
" Ignore case when searching...
set ignorecase
" ...except if we input a capital letter
set smartcase



" Abbreviations and auto-completions

" lorem<Tab> drops some Lorem ipsum text into the document
iab lorem Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.



" Key mappings

" Disable arrow keys (hardcore)
  " map  <up>    <nop>
  " imap <up>    <nop>
  " map  <down>  <nop>
"  imap <down>  <nop>
"  map  <left>  <nop>
"  imap <left>  <nop>
"  map  <right> <nop>
"  map <right> <nop>
"  nnoremap <Left> :echoe "Use h"<CR>
"  nnoremap <Right> :echoe "Use l"<CR>
"  nnoremap <Up> :echoe "Use k"<CR>
"  nnoremap <Down> :echoe "Use j"<CR>


"  Set clipboard to unname so I can yy and paste in another app like Atom
set clipboard=unnamed

" Send more characters for redraws
set ttyfast

" Enable mouse use in all modes
set mouse=a

" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2

" Save And quits
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" Comment line
map <Leader>/ gc$<ESC>

" Opens ctrl P
nnoremap <Leader>o :CtrlP<CR>

" Move around buffers
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>

" Close buffer without closing the window
nmap <leader>d :bprevious<CR>:bdelete #<CR>

" Insert lines, I am so happy with this one
map <Enter> o<ESC>

" Make backspace delete
nnoremap <BS> X

" Moves around splits
nnoremap <leader>j <C-W><C-J>
nnoremap <leader><down> <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader><up> <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader><right> <C-W><C-L>
nnoremap <leader>h <C-W><C-H>
nnoremap <leader><left> <C-W><C-H>

" Opens and source vimrc
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>


