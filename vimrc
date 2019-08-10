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

" PLUGINS:
"use :help <plugin-name> to learn more

" Actions: verbs
" "surround"                's'  for surroundings
" "commentary"              'gc' for comments
" "ReplaceWithRegister"     'gr 'for replacements
" "sort_motion"             'gs' for sorting
" "system_copy"             'cp' for copying to xsel clipboard

" Text Objects: nouns
" "indent-object"           'i' to target indent group e.g. gcai
" "textobj-line"            'l' to target line without whitespace e.g. yal
" "entire"                  'e' to target entire document e.g. dae

" IDE:
" "auto-pair"               auto close brackets and quotes
" "supertab"                autocomplete on tab

" Git:
" "fugitive"                git integration
" "gitgutter"               show changes

" Language:
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

