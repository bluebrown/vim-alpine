
# vim-alpine

A minimalist setup, that contains only a handful of essential configurations and plugins.


## Setup

Make sure to clone this repository recursively, as it is composed of several sub modules.

```
git clone --recursive https://github.com/bluebrown/vim-alpine.git ~/.vim

```

Since this project relies on vim8's native plugin management through :packadd, no other tools or installation are required.


## vimrc

The vimrc loads files from the modules folder, to keep things more organized. Add new functionality and settings there.


## Vim

*Use `:help <script name>` to learn more.*


### Vim Extended

#### Actions - 'verbs'

| Script Name         | Motion | Description             |
|:-------------------:|:------:|:-----------------------:|
| surround            |   `s`  | manipulate surroundings |
| commentary          |  `gc`  | toggle comments         |
| ReplaceWithRegister |  `gr`  | replace selection       |
| sort_motion         |  `gs`  | sort selection          |
| system_copy         |  `cp`  | copy to xsel clipboard  |

#### Text Objects - 'nouns'

| Script Name    | Motion | Description                    |
|:--------------:|:------:|:------------------------------:|
| indent-object  |   `i`  | target indent group            |
| textobj-line   |   `l`  | target line without whitespace |
| entire         |   `e`  | target entire document         |


### IDE Feautres

#### Editor

| Plugin    | Description                    |
|:---------:|:------------------------------:|
| powerline | python powerline integreation  |
| supertab  | autocomplete on tab            |
| auto-pair | auto close brackets and quotes |

#### Language

| Plugin    | Description             |
|:---------:|:-----------------------:|
| polyglot  | syntax highlighting     |
| ale       | linting                 |
| emmet-vim | html/css/js snippets    |
| jedi-vim  | python intellisense     |
| tern      | javascript intellisense |

*Caveat **Ale***<br>
 to use ale with **pipenv**, run `pipenv install --dev pylint`.<br>
 To use ale  with **eslint** run `yarn add --dev eslint` & `eslint --init`.<br>

 *Caveat **Tern***<br>
 To use tern, setup a `.tern-project.json` file.<br>
 You can copy the example file from `:help tern-usage` to get going.<br>
It doesn't play with supetab at the moment. Get completion with `^X^O`

### Git Integration

| Plugin    | Description          |
|:---------:|:--------------------:|
| fugitive  | git integration      |
| gitgutter | show changes, inline |


### Custom Functionality

| Command     | Description                   |
|:-----------:|:-----------------------------:|
| `<F3>`      | toggle netrw file browser     |
| `:MakeTags` | generate ctags                |


### Snippets

| Command  | Description   |
|:--------:|:-------------:|
| `\bulma` | html template |
