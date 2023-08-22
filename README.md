# vimconfig

## Plugin Manager
Install a Plugin Manager:
Vim plugins are usually managed using a plugin manager. One popular option is Vim-Plug. Install it by running this command in your terminal:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
```
# Install fzf

brew install fzf
```
Create or Edit your Vim Configuration:
Create a .vimrc file in your home directory if it doesn't exist, or edit it if it does:

```
vim ~/.vimrc
```
Add Plugins:
Add the following lines to your .vimrc to configure plugins for Ruby, Rails, JavaScript, and Docker:

### The `.vimrc`

```
" Use Vim-Plug to manage plugins
call plug#begin('~/.vim/plugged')

" Ruby and Rails
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

" File Searching
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" NerdTree -  https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Docker
Plug 'ekalinin/Dockerfile.vim'
Plug 'tpope/vim-dadbod' " For database support, including Docker

Plug 'vim-airline/vim-airline' " Status bar

call plug#end()

" Press <leader>f to trigger file search
nnoremap <silent> <leader>f :Files<CR>

" Press <leader>s to trigger file search
nnoremap <silent> <leader>s :Ag<CR>

" Press <leader>b to switch buffers
nnoremap <silent> <leader>b :Buffers<CR>

" Press <leader>h to search for text within open buffers
nnoremap <silent> <leader>h :History<CR>

" NerdTree shorts
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-l> :tabn<CR>
nnoremap <C-h> :tabp<CR>


set number
se mouse+=a
syntax on  
set cindent
set autoindent
filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
set smarttab
set expandtab
set cursorline

```

Save the file and run `:PlugInstall` within Vim to install the listed plugins.


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
