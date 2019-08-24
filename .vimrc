if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'lifepillar/vim-solarized8'
Plug 'airblade/vim-gitgutter'
Plug 'valloric/youcompleteme', { 'do': './install.py' }
Plug 'kien/rainbow_parentheses.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
call plug#end()

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:EasyMotion_smartcase = 1

set completeopt-=preview

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
set showbreak=>>
set breakindentopt=sbr

set linebreak

set number
set relativenumber
set showcmd
set scrolloff=10

set tags=./.tags;

set autoindent
set smartindent
set spell

set hlsearch
set incsearch
set smartcase
set cursorline

set timeoutlen=1000 ttimeoutlen=0
set updatetime=100

set ls=2

let mapleader = "\<space>"

map <leader>u <C-]>
map <leader>U g<C-]>
map <leader>e <C-t>

nnoremap <silent> <leader>r :History<cr>
nnoremap <silent> <leader>t :GFiles<cr>
nnoremap <silent> <leader>T :Files<cr>

nnoremap <silent> <leader>l :Lines<cr>
nnoremap <silent> <leader>d :Rg<cr>

nnoremap <silent> <leader>gs :Gstatus<cr>
nnoremap <silent> <leader>gd :Gdiffsplit<cr>
nnoremap <silent> <leader>gl :Glog<cr>
nnoremap <silent> <leader>gb :Gblame<cr>

nnoremap <silent> <leader>bv :new<cr>
nnoremap <silent> <leader>bh :vnew<cr>
nnoremap <silent> <leader>bb :tabnew<cr>
nnoremap <silent> <leader>. :term ++curwin<cr>

set pastetoggle=<leader>p
map <silent> <leader>i :noh<cr>
map <silent> <leader>m :!make<cr>

nnoremap <silent> <leader>w :w<cr>
nnoremap <silent> <leader>x :x<cr>
nnoremap <silent> <leader>q :q<cr>
nnoremap <silent> <leader>Q :q!<cr>

nnoremap <silent> <leader>h :wincmd h<cr>
nnoremap <silent> <leader>l :wincmd l<cr>
nnoremap <silent> <leader>j :wincmd j<cr>
nnoremap <silent> <leader>k :wincmd k<cr>
nnoremap <silent> <leader>n :tabn<cr>
nnoremap <silent> <leader>p :tabp<cr>

tnoremap <Esc><Esc> <C-\><C-n>
set termwinkey=<C-U>

nmap m <Plug>(EasyAlign)
xmap m <Plug>(EasyAlign)

let g:gitgutter_map_keys = 0
set signcolumn=yes

let g:ycm_filetype_specific_completion_to_disable = {
      \ 'python': 1
      \}

au BufNewFile,BufRead *.tikz set filetype=tex
