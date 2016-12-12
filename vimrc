"<vundle>
set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}
"
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Townk/vim-autoclose'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'elixir-lang/vim-elixir'
Plugin 'derekwyatt/vim-scala'
Plugin 'Shougo/vimproc.vim'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" </vundle>

set nu
syntax enable 
filetype on
filetype plugin on
filetype indent on
map <C-n> :NERDTreeToggle<CR>
map <C-b> :CtrlPBuffer<CR>
colorscheme solarized 
"let g:solarized_termcolors=256
"set t_Co=16
set background=dark

set tabstop=4
set shiftwidth=4
set expandtab
set nocompatible
set showcmd
set foldmethod=marker
set autoindent
set encoding=UTF-8
set backspace=2

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
let g:airline#extensions#tabline#enabled = 1

map <F7> :bp<CR>
map <F9> :bn<CR>

:set tags=~/mytags

" neocomplete stuff
let g:neocomplete#enable_at_startup = 1

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
    "For no inserting <CR> key.
    "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>\<Esc>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>\<Esc>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>""" "
" /neocomplete stuff

