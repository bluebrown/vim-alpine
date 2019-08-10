# vim-alpine
a minimalist setup, that containes only a handfull of essential configurations and plugins.

## Setup
Make sure to clone this repository recursively, as it is composed of serveral submodules.
```
git clone --recursive https://github.com/bluebrown/vim-alpine.git ~/.vim
```
Since this project relies on vim8's native plugin management through :packadd,
no other tools or installation are required.

## vimrc

The vimrc loads files from the modules folder to keep things more organized
add new functionalitly and settings there


## Plugins:

use :help <plugin-name> to learn more

### Actions: verbs

- surround                's'  for surroundings
- commentary              'gc' for comments
- ReplaceWithRegister     'gr 'for replacements
- sort_motion             'gs' for sorting
- system_copy             'cp' for copying to xsel clipboard

### Text Objects: nouns

- indent-object           'i' to target indent group e.g. gcai
- textobj-line            'l' to target line without whitespace e.g. yal
- entire                  'e' to target entire document e.g. dae

### IDE:
- auto-pair               auto close brackets and quotes
- supertab                autocomplete on tab

### Git:
- fugitive                git integration
- gitgutter               show changes

### Language:
- jedi-vim
- vim-javascript
- emmet-vim


## Custom Functionallity:

- <F3> to toggle 'netrw' file browser
- :MakeTags to generaze 'tags'


## Snippets: will expand in current file

- \bulma - html template
