"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" SETTINGS:
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Basic:
" modern features
set nocompatible
" standard encoding
set encoding=utf-8
" re-read file when its changed outside vim
set autoread
" allows to copy from os clipboard
set clipboard=unnamedplus
" allow to use the mouse
set mouse=a
" disable swap files
set noswapfile
" persistent undo history
set undofile
set undodir=~/.vim/undo
" enabled file browser plugin with :edit <dirname>
filetype plugin on
" allow recursive search
set path +=**
" tab complete for :find
set wildmenu
" enable incremental search with and hightlight matches use / to search
set incsearch
set hlsearch
" Remember cursor position in files
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" trim trailing white space
au BufWritePre * %s/\s\+$//e
" new splits buffer on bottom
set splitbelow
" no sound on error
set noerrorbells
" file info in window title
set title
" show typed commands
set showcmd

" Editor:
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set cindent
set list
set nowrap
set nospell

" Visual:
set t_Co=256
try
  colorscheme dracula
catch
endtry
syntax enable
set ruler
set foldcolumn=2
set listchars=tab:\|\ ,trail:▫
highlight foldcolumn ctermbg=none
" Below will use the terminal background - useful when using with tmux
"highlight Search guibg=DeepPink4 guifg=White ctermbg=53 ctermfg=White
"highlight Normal ctermbg=none
"highlight NonText ctermbg=none


