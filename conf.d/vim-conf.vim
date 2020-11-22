"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" SETTINGS:
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Basic:
filetype plugin indent on         " enabled file browser plugin with :edit <dirname> and indentation
set nocompatible                  " modern features
set encoding=utf-8                " standard encoding
set updatetime=100                " reduce clockrate from 4sec to 100ms
set autoread                      " re-read file when its changed outside vim
set clipboard=unnamedplus         " allows to copy from os clipboard
set mouse=a                       " allow to use the mouse
set noswapfile                    " disable swap files
set undofile undodir=~/.vim/undo  " persistent undo history
set path +=**                     " allow recursive search
set wildmenu                      " tab complete for :find
set incsearch hlsearch            " enable incremental search with hightlight and matches.
set splitbelow splitright         " new splits buffer on bottom or right
set noerrorbells                  " no sound on error
set title                         " file info in window title
set showcmd                       " show typed commands
au BufWritePre * %s/\s\+$//e      " trim trailing white space
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif " Remember cursor position in files

" Editor:
set expandtab
set tabstop=2 softtabstop=2 shiftwidth=2
set autoindent smartindent cindent
set list
set nowrap
set nospell

" Visual:
set t_Co=256
syntax enable
set ruler
set foldcolumn=1
set listchars=tab:\|\ ,trail:▫
set number
hi LineNr ctermfg=gray
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" KEY BINDINGS:
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Typo:
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

