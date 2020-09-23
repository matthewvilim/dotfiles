if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'kien/rainbow_parentheses.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'nvim-treesitter/nvim-treesitter'
call plug#end()

set guicursor=

let g:lightline = {
      \ 'colorscheme': 'nightfly',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction',
      \   'fugitive': 'FugitiveHead'
      \ },
      \ }

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

set cmdheight=2
set shortmess+=c

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  highlight = {
    enable = true,
  },
}
EOF

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set noshowmode
set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P

set completeopt-=preview

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark
colorscheme nightfly

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
"set cursorline

set timeoutlen=1000 ttimeoutlen=0
set updatetime=50

set ls=2

let mapleader = "\<space>"

map <leader>u <C-]>
map <leader>U g<C-]>
map <leader>e <C-t>

nmap <leader>D <Plug>(coc-implementation)
nmap <leader>d <Plug>(coc-definition)
nmap <leader>r <Plug>(coc-references)
nmap <leader>R <Plug>(coc-rename)

nnoremap <silent> <leader>h :History<cr>
nnoremap <silent> <leader>b :Windows<cr>
nnoremap <silent> <leader>c :Commands<cr>
nnoremap <silent> <leader>t :GFiles<cr>
nnoremap <silent> <leader>T :Files<cr>

nnoremap <silent> <leader>f :Files ~<cr>

nnoremap <silent> <leader>l :Lines<cr>
"nnoremap <silent> <leader>d :Rg<cr>

"nnoremap <silent> <leader>gs :Gstatus<cr>
"nnoremap <silent> <leader>gd :Gdiffsplit<cr>
"nnoremap <silent> <leader>gl :Glog<cr>
"nnoremap <silent> <leader>gb :Gblame<cr>

"nnoremap <silent> <leader>bv :new<cr>
"nnoremap <silent> <leader>bh :vnew<cr>
"nnoremap <silent> <leader>bb :tabnew<cr>
"nnoremap <silent> <leader>. :term ++curwin<cr>

set pastetoggle=<leader>p
map <silent> <leader>i :noh<cr>
map <silent> <leader>m :!make<cr>

nnoremap <silent> <leader>w :w<cr>
nnoremap <silent> <leader>x :x<cr>
nnoremap <silent> <leader>q :q<cr>
nnoremap <silent> <leader>Q :q!<cr>

"nnoremap <silent> <C-h> :wincmd h<cr>
"nnoremap <silent> <C-l> :wincmd l<cr>
"nnoremap <silent> <C-j> :wincmd j<cr>
"nnoremap <silent> <C-k> :wincmd k<cr>

"tnoremap <leader><Esc> <C-\><C-n>
"set termwinkey=<C-U>

"set grepprg=rg\ --vimgrep\ --smart-case\ --follow

nmap m <Plug>(EasyAlign)
xmap m <Plug>(EasyAlign)

let g:gitgutter_map_keys = 0
set signcolumn=yes

let g:ycm_filetype_specific_completion_to_disable = {
      \ 'python': 1
      \}

au BufNewFile,BufRead *.tikz set filetype=tex
au BufNewFile,BufRead *.cppm set filetype=cpp
autocmd BufEnter *.fs :setlocal filetype=cpp
