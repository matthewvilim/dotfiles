set wildignorecase
set autochdir
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set foldmethod=syntax
set foldlevelstart=20
set ignorecase
set smartcase

set number
set relativenumber
syntax on
set showcmd
set scrolloff=10

set tags=./tags;

set autoindent
set smartindent
set spell

set hlsearch
set smartcase
set cursorline
set incsearch

set completeopt=longest,menuone,preview
set timeoutlen=1000 ttimeoutlen=0
set laststatus=2
set backspace=indent,eol,start

set background=dark
colorscheme solarized
let g:solarized_diffmode="high"

nnoremap <C-h> <C-]>
nnoremap <C-n> g<C-]>

autocmd BufNewFile,BufRead *.sv set syntax=verilog
autocmd FileType make setlocal noexpandtab
