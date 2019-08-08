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

## Features

- Native file browser configuration with `<F3>`
- Snippet integration  e.g.g `\bulma`
- Build ctags with `MakeTags`

