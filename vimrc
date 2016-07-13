execute pathogen#infect()
set nu
syntax enable 
filetype on
filetype plugin on
filetype indent on
map <C-n> :NERDTreeToggle<CR>
colorscheme solarized 
let g:solarized_termcolors=256
set t_Co=16
set background=dark

set tabstop=4
set shiftwidth=4
set expandtab
set nocompatible
set showcmd
set foldmethod=marker
set autoindent
set encoding=UTF-8

"tab completion
set wildmenu
set wildmode=list:longest,full

"mouse in console
set mouse=a

set smartcase

set clipboard=unnamed

map <Leader>t :GhcModType<CR>
map <Leader>l :GhcModTypeClear<CR>
map <Leader>c :! stack install<CR>
map <Leader>r :so! $MYVIMRC<CR>

map <C-c> y:e ~/viclipboard<CR>P:w !pbcopy<CR><CR>:bdelete!<CR>

"for vim-airline
set laststatus=2
