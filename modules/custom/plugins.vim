"Powerline:
"sudo dnf install vim-powerline
"
"place this in .bashrc
"
" if [ -f `which powerline-daemon`  ]; then
"   powerline-daemon -q
"   POWERLINE_BASH_CONTINUATION=1
"   POWERLINE_BASH_SELECT=1
"   . /usr/share/powerline/bash/powerline.sh
" fi
"
"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup
"set laststatus=2 " Always display the statusline in all windows
"set showtabline=2 " Always display the tabline, even if there is only one tab
"set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)


"FileBrowser: use <F3> to open
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END
let g:netrw_banner=0        " disable annoying banner
let g:netrw_winsize = 25    " width in percent
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
" check: |netrw-browse-maps| for more mappings
function! ToggleNetrw()
        let i = bufnr("$")
        let wasOpen = 0
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
                let wasOpen = 1
            endif
            let i-=1
        endwhile
    if !wasOpen
        silent Lexplore
    endif
endfunction


"Ctags: creates tags file in current dir
command! MakeTags !ctags -R --exclude=*css --exclude=*.html --exclude=.git --exclude=node_modules
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack
