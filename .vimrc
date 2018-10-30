if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'lifepillar/vim-solarized8'
Plug 'valloric/youcompleteme', { 'do': './install.py' }
Plug 'kien/rainbow_parentheses.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
call plug#end()

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys='AOEUIDHTNSPYFGCRLQJKXBMWV'

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark
colorscheme solarized8

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set ignorecase
set smartcase

set breakindent
set showbreak=>>>
set breakindentopt=sbr

set linebreak
set textwidth=100
set colorcolumn=+1
"set formatoptions+=ant

set number
set relativenumber
set showcmd
set scrolloff=10

set tags=./tags;

set autoindent
set smartindent
set spell

set hlsearch
set incsearch
set smartcase
set cursorline

set timeoutlen=1000 ttimeoutlen=0

let mapleader = "\<space>"

map <leader>u <C-]>
map <leader>U g<C-]>
map <leader>e <C-t>

nnoremap <silent> <leader>n :GFiles<cr>
nnoremap <silent> <leader>N :Files<cr>
nnoremap <silent> <leader>t :Tags<cr>
nnoremap <silent> <leader>h :History<cr>
nnoremap <silent> <leader>s :Lines<cr>
nnoremap <silent> <leader>S :BLines<cr>
nnoremap <silent> <leader>g :Ag<cr>

nmap <backspace> <Plug>(easymotion-overwin-f2)

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

set pastetoggle=<leader>p
map <silent> <leader>i :noh<cr>

nnoremap <silent> <leader>w :w<cr>
nnoremap <silent> <leader>x :x<cr>
nnoremap <silent> <leader>q :q<cr>
nnoremap <silent> <leader>Q :q!<cr>

set fo+=aw
