execute pathogen#infect()
set nu
syntax enable 
filetype on
filetype plugin on
map <C-n> :NERDTreeToggle<CR>
colorscheme molokai
let g:molokai_original = 1
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
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

"jj to leave insert mode
inoremap jj <Esc>

set clipboard=unnamed
au FileType xhtml,xml so ~/.vim/ftplugin/html_autoclosetag.vim
retab
map <F6> :w<Enter>:!pdflatex %<Enter>
map <F7> :w<Enter>:!python %<Enter>
set textwidth=80
"double escape to save"
map <Esc><Esc> :w<CR>
