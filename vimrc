"~~~~~~~~~~~~~~~~~~~~~~~
" SETTINGS:
"~~~~~~~~~~~~~~~~~~~~~~~
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
" enable incremental search with /
set incsearch
" highlight search matches
set hlsearch
" Remember cursor position in files
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" trim trailing white space
au BufWritePre * %s/\s\+$//e
" new splits buffere on bottom
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
highlight Search guibg=DeepPink4 guifg=White ctermbg=53 ctermfg=White
highlight Normal ctermbg=none
highlight NonText ctermbg=none


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

" FileBrowser:

"~~~~~~~~~~~~~~~~~~~~~~~
" TOOL CONFIGS:
"~~~~~~~~~~~~~~~~~~~~~~~
" Ctags: creates tags file in current dir
command! MakeTags !ctags -R .
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

"FileBrowser: use <F3> to open
map <F3> :call ToggleNetrw() <CR>
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
let g:netrw_banner=0        " disable annoying banner
let g:netrw_winsize = 18    " width in percent
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
" ret g:netrw_list_hide=netrw_gitignore#Hide()
" let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
" check: |netrw-browse-maps| for more mappings
function! ToggleNetrw()
        let i = bufnr("$")
        let isOpen = 1
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
                let isOpen = 0
            endif
            let i-=1
        endwhile
    if isOpen
        silent Lexplore
    endif
endfunction
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
set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
set errorformat=%f:%l:\ %m
autocmd FileType python setlocal omnifunc=python3complete#Complete

" JavaScript:
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" TypeScript:
autocmd!  BufRead *.ts  set filetype=typescript


"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
