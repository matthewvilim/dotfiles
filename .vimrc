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

map <Leader>u <C-]>
map <Leader>U g<C-]>
map <Leader>e <C-t>

nnoremap <silent> <leader>f :GFiles<CR>
nnoremap <silent> <leader>F :Files<CR>
nnoremap <silent> <leader>t :BTags<CR>
nnoremap <silent> <leader>T :Tags<CR>
nnoremap <silent> <leader>h :History<CR>
nnoremap <silent> <leader>l :Lines<CR>
nnoremap <silent> <leader>L :BLines<CR>
nnoremap <silent> <leader>g :Ag<CR>

nmap <backspace> <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys='AOEUIDHTNSPYFGCRLQJKXBMWV'

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>x :x<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>Q :q!<CR>
