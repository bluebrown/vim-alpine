"~~~~~~~~~~~~~~~~~~~~~~~
" SETTINGS:
"~~~~~~~~~~~~~~~~~~~~~~~
" Basic:
filetype plugin on
set encoding=utf-8
set autoread
set clipboard=unnamedplus
set mouse=a
set title
autocmd BufWritePre * %s/\s\+$//e
set splitbelow
set noswapfile
set noerrorbells
if has("autocmd") " Remember curser position in files
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
" Editor:
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set cindent
set list
set listchars=tab:\|\ ,trail:▫
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
set foldcolumn=4
highlight foldcolumn ctermbg=none
highlight Search guibg=DeepPink4 guifg=White ctermbg=53 ctermfg=White
highlight Normal ctermbg=none
highlight NonText ctermbg=none
" Search:
set incsearch
set hlsearch
if has('nvim')
set inccommand=split
endif
"~~~~~~~~~~~~~~~~~~~~~~~
" KEY BINDINGS:
"~~~~~~~~~~~~~~~~~~~~~~~
" Sane Splits:
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>h :split<cr>
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
" Search:
map <leader>c :nohlsearch<cr>
nnoremap n nzzzv
nnoremap N Nzzzv
"~~~~~~~~~~~~~~~~~~~~~~~
" TOOL CONFIGS:
"~~~~~~~~~~~~~~~~~~~~~~~
" Nerdtree:
nnoremap <F3> :NERDTreeToggle<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden = 1
let g:NERDTreeChDirMode = 2
" Airline:
let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
"~~~~~~~~~~~~~~~~~~~~~~~
" LANGUAGE CONFIGS:
"~~~~~~~~~~~~~~~~~~~~~~~
" Bash
au FileType sh set noexpandtab
" Gitcommit
au FileType gitcommit setlocal spell
au FileType gitcommit setlocal textwidth=80
" Gitconfig
au FileType gitconfig set noexpandtab
" Make
au FileType make set noexpandtab
" Markdown
au FileType markdown set syntax=markdown
" Python
autocmd FileType python setlocal omnifunc=python3complete#Complete
" JavaScript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
