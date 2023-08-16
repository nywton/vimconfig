# vimconfig

## Plugin Manager
Install a Plugin Manager:
Vim plugins are usually managed using a plugin manager. One popular option is Vim-Plug. Install it by running this command in your terminal:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Create or Edit your Vim Configuration:
Create a .vimrc file in your home directory if it doesn't exist, or edit it if it does:

```
vim ~/.vimrc
```
Add Plugins:
Add the following lines to your .vimrc to configure plugins for Ruby, Rails, JavaScript, and Docker:

```
" Use Vim-Plug to manage plugins
call plug#begin('~/.vim/plugged')

" Ruby and Rails
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Docker
Plug 'ekalinin/Dockerfile.vim'
Plug 'tpope/vim-dadbod' " For database support, including Docker

" Other useful plugins
Plug 'tpope/vim-fugitive' " Git integration
Plug 'scrooloose/nerdtree' " File explorer
Plug 'airblade/vim-gitgutter' " Git diff indicators
Plug 'vim-airline/vim-airline' " Status bar

call plug#end()
```

Save the file and run :PlugInstall within Vim to install the listed plugins.

Configure Plugins:
Below the plugin section in your .vimrc, add configurations for specific plugins:

```
" vim-ruby and vim-rails
autocmd FileType ruby,rails setlocal shiftwidth=2 tabstop=2 expandtab

" vim-jsx
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab

" Dockerfile.vim
autocmd FileType dockerfile setlocal shiftwidth=4 tabstop=4 expandtab

" vim-dadbod
let g:db#connect_prompt = 0 " Disable DB connection prompts in Docker

" vim-gitgutter
let g:gitgutter_enabled = 1

" vim-airline
let g:airline_powerline_fonts = 1
```

## .vimrc
```
set number
syntax on  
colorscheme peachpuff  
set cindent
set autoindent
set smarttab
set expandtab
set cursorline
```
## Essential Vim plugins
Those folks are language-agnostic.

`NERDTree` to navigate the file tree https://github.com/preservim/nerdtree <br/>
`FZF` let's you fuzzy search through the files in project (and much more, really) https://github.com/junegunn/fzf.vim <br/>
`jiangmiao/auto-pairs` inserts quotes and parenthesis in pairs as you type https://github.com/jiangmiao/auto-pairs <br/>
`tpope/vim-commentary` press gcc to comment out a line or gc to comment a selection in visual mode https://github.com/tpope/vim-commentary <br/>
`Vim Endwise` https://github.com/tpope/vim-endwise <br/>

## Useful terminal tools

### fzf search (ctrl + t) <br>
```git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install```
### The silver searcher 
https://github.com/ggreer/the_silver_searcher

### PowerLevel10k Theme
https://github.com/romkatv/powerlevel10k#oh-my-zsh

### References
https://dougblack.io/words/a-good-vimrc.html
