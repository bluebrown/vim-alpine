# vim-alpine

a minimalist setup, that containes only a handfull of essential configurations and plugins.

## [](https://github.com/bluebrown/vim-alpine/blob/master/README.md#setup)Setup

Make sure to clone this repository recursively, as it is composed of serveral submodules.

```
git clone --recursive https://github.com/bluebrown/vim-alpine.git ~/.vim

```

Since this project relies on vim8's native plugin management through :packadd, no other tools or installation are required.

## [](https://github.com/bluebrown/vim-alpine/blob/master/README.md#vimrc)vimrc

The vimrc loads files from the modules folder to keep things more organized add new functionalitly and settings there

## [](https://github.com/bluebrown/vim-alpine/blob/master/README.md#plugins)Plugins:

*use `:help <script name>` to learn more*

### Actions - 'verbs'

| Scriptname | Motion | Description |
|:-:|:-:|:-:|
|surround|`s`| manipulate surroundings
|commentary|`gc`|toggle comments
|ReplaceWithRegister|`gr`|replace selection
|sort_motion|`gs`|sort selection
|system_copy|`cp`|copy to xsel clipboard

### Text Objects - 'nouns'

| Scriptname | Motion | Description |
|:-:|:-:|:-:|
|indent-object|`i`|target indent group
textobj-line|`l`|target line without whitespace
entire|`e`|target entire document

### IDE:

| Plugin | Description |
|:-:|:-:|
auto-pair|auto close brackets and quotes
supertab|autocomplete on tab

### [](https://github.com/bluebrown/vim-alpine/blob/master/README.md#git)Git:

| Plugin | Description |
|:-:|:-:|
-fugitive|git integration
-gitgutter|show changes

### [](https://github.com/bluebrown/vim-alpine/blob/master/README.md#language)Language:

| Plugin | Description |
|:-:|:-:|
polyglot|syntax hightlighting
emmet-vim|html/css/js snippets
jedi-vim|python intellisense
tern|javascript intellisense

## [](https://github.com/bluebrown/vim-alpine/blob/master/README.md#custom-functionallity)Custom Functionallity:

| Command | Description |
|:-:|:-:|
`<F3>`|to toggle 'netrw' file browser
`:MakeTags`|to generaze 'tags'

## [](https://github.com/bluebrown/vim-alpine/blob/master/README.md#snippets-will-expand-in-current-file)Snippets: will expand in current file

| Command | Description |
|:-:|:-:|
|`\bulma`|html template
