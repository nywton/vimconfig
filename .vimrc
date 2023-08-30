" Use Vim-Plug to manage plugins
call plug#begin('~/.vim/plugged')

" Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

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

" Status bar
Plug 'vim-airline/vim-airline' " Status bar

" Git
Plug 'zivyangll/git-blame.vim'
Plug 'tpope/vim-fugitive'

call plug#end()

"
" Shortcuts with <leader> \
"
" Git Blame
nnoremap <silent> <leader>g :<C-u>call gitblame#echo()<CR>

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
noremap <Leader>y "*y

" Max line length that prettier will wrap on: a number or 'auto' (use
" textwidth).
" default: 'auto'
let g:prettier#config#print_width = 'auto'

" number of spaces per indentation level: a number or 'auto' (use
" softtabstop)
" default: 'auto'
let g:prettier#config#tab_width = 'auto'

" use tabs instead of spaces: true, false, or auto (use the expandtab setting).
" default: 'auto'
let g:prettier#config#use_tabs = 'auto'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown or empty string
" (let prettier choose).
" default: ''
let g:prettier#config#parser = ''

" cli-override|file-override|prefer-file
" default: 'file-override'
let g:prettier#config#config_precedence = 'file-override'

" always|never|preserve
" default: 'preserve'
let g:prettier#config#prose_wrap = 'preserve'

" css|strict|ignore
" default: 'css'
let g:prettier#config#html_whitespace_sensitivity = 'css'

" false|true
" default: 'false'
let g:prettier#config#require_pragma = 'false'

" Define the flavor of line endings
" lf|crlf|cr|all
" defaut: 'lf'
let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line', 'lf')

" === / Prettier

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

" Show file path
set statusline+=%F

" Cursor Config
set cursorline
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

" clipboard
set clipboard=unnamedplus
nnoremap y "+y
nnoremap y "+y
