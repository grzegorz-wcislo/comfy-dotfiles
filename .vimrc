set nocompatible
set encoding=utf8

filetype indent plugin on
syntax on
set number relativenumber
set ruler
set nowrap
set autoindent

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

set showcmd

set t_Co=16

" KEYMAPS "
nnoremap Y y$
nnoremap <F5> :w<CR>:!make<CR>

" THEMES "
let g:airline_theme='term'
let g:airline_powerline_fonts=1
let g:airline_extensions=[ 'tabline' ]
let g:airline#extensions#tabline#enabled = 1

" PLUGINS "
call plug#begin()
    Plug 'valloric/youcompleteme'
    Plug 'scrooloose/nerdtree'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'pangloss/vim-javascript'
    Plug 'ap/vim-css-color'
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()
