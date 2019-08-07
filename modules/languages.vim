"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" LANGUAGE CONFIGS:
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
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

