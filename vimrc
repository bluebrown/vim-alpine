" source config files
for f in glob('~/.vim/modules/*.vim', -1, 1)
    execute 'source' f
endfor

" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+

" Plugins:
"use :help <plugin-name> to learn more

" core:
" "surround" new motions for surroundings
" "supertab" autocomplete on tab
" "fugitive" git integration
" "gitgutter" show changes


" language:
" "jedi-vim"
" "vim-javascript"
" "emmet-vim"

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+

"  Custom Functionallity:

"  "<F3>" to toggle "netrw" file browser
" ":MakeTags" to generaze "ctags"

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+

" Snippets: will expand in current file

" "\bulma" - html template

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+

