"~~~~~~~~~~~~~~~~~~~~~~~
" SETTINGS:
"~~~~~~~~~~~~~~~~~~~~~~~
" Basic:
set nocompatible
set showcmd
filetype plugin on
set path +=** "allow recursive search
set wildmenu " tab complete for :find
set encoding=utf-8
set autoread " re-read file when its changed outside vim
set clipboard=unnamedplus
set mouse=a " allow to use the mouse
autocmd BufWritePre * %s/\s\+$//e " trim trailing white space
set splitbelow
set noswapfile
set noerrorbells
set title
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
set nowrap
set nospell
" Visual:
set listchars=tab:\|\ ,trail:▫ " show trailing whitespace
set t_Co=256
try
  colorscheme dracula
catch
endtry
syntax enable
set ruler
set foldcolumn=2
highlight foldcolumn ctermbg=none
highlight Search guibg=DeepPink4 guifg=White ctermbg=53 ctermfg=White
highlight Normal ctermbg=none
highlight NonText ctermbg=none
" Search:
set incsearch
set hlsearch
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
" Ctags:
command! MakeTags !ctags -R . " Generates tags file in current dir
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack
"~~~~~~~~~~~~~~~~~~~~~~~
" LANGUAGE CONFIGS:
"~~~~~~~~~~~~~~~~~~~~~~~
" Bash:
au FileType sh set noexpandtab
" Gitcommit:
au FileType gitcommit setlocal spell
au FileType gitcommit setlocal textwidth=80
" Gitconfig:
au FileType gitconfig set noexpandtab
" Make:
au FileType make set noexpandtab
" Markdown:
au FileType markdown set syntax=markdown
" Python:
autocmd FileType python setlocal omnifunc=python3complete#Complete
" JavaScript:
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
" HTML:
" TypeScript:
autocmd!  BufRead *.ts  set filetype=typescript
"~~~~~~~~~~~~~~~~~~~~~~~
" FILE BROWSING:
"~~~~~~~~~~~~~~~~~~~~~~~
" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings
