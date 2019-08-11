" source config files
for f in glob('~/.vim/modules/*/*.vim', -1, 1)
    execute 'source' f
endfor

" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL


