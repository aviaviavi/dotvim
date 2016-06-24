execute pathogen#infect()
set nu
syntax enable 
filetype on
filetype plugin on
filetype indent on
map <C-n> :NERDTreeToggle<CR>
set background=dark
colorscheme solarized 
let g:solarized_termcolors=256
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

"escape/unescape & < > HTML entities in range (default current line).
nnoremap <Leader>h :'[,']call HtmlEscape()<CR>
vnoremap <Leader>h :call HtmlEscape()<CR>

function HtmlEscape()
  silent s/\&amp;/\&/eg
  silent s/\&lt;/</eg
  silent s/\&gt;/>/eg
  silent s/&quot;/"/eg
  silent s/&#39;/'/eg
endfunction

map <C-c> y:e ~/viclipboard<CR>P:w !pbcopy<CR><CR>:bdelete!<CR>

"for vim-airline
set laststatus=2
