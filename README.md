
# vim-alpine

A minimalist setup, that contains only a handful of essential configurations and plugins.


## Setup

Make sure to clone this repository recursively, as it is composed of several sub modules.

```
git clone --recursive https://github.com/bluebrown/vim-alpine.git ~/.vim
```

Since this project relies on vim8's native plugin management through :packadd, no other tools or installation are required.

## vimrc

The vimrc will load every `.vim` file in the `conf.d` folder. Put additionally configuration here and or edit the vim-conf.vim
placed there.

```bash
for f in glob('~/.vim/conf.d/*.vim', -1, 1)
    execute 'source' f
endfor
```

## Plugins

Tou install plugins, add the repo of the plugin as `submodule` under `pack/core/start`. `Nerdtree` has been added to this path as example.

.gitmodules
```
[submodule "pack/core/start/nerdtree"]
	path = pack/core/start/nerdtree
	url = https://github.com/preservim/nerdtree.git
```

## Other Material

- [Mastering the Vim Language](https://www.youtube.com/watch?v=wlR5gYd6um0)
- [How to Do 90% of What Plugins Do (With Just Vim)](https://www.youtube.com/watch?v=XA2WjJbmmoM)


