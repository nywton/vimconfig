# vimconfig

## Plugin Manager
Install a Plugin Manager:
Vim plugins are usually managed using a plugin manager. One popular option is Vim-Plug. Install it by running this command in your terminal:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

# Copy to Clipboard
```
# ubuntu
sudo apt install vim-gtk3 -y
```

# Install fzf
```
# osx
brew install fzf

# ubuntu
sudo apt install fzf
```
Create or Edit your Vim Configuration:
Create a .vimrc file in your home directory if it doesn't exist, or edit it if it does:

```
vim ~/.vimrc
```

Copy the .vimrc file



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
