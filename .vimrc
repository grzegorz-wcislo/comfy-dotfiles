"
" ~./vimrc
"

" Enable modern VIM "
set nocompatible

" Set correct encoding "
set encoding=utf8

" Set filetype specific stuff "
filetype plugin on
filetype indent on
syntax on
set autoindent

" General visual stuff
set number relativenumber
set ruler
set nowrap
set showcmd
set t_Co=16

" Set default tab settings "
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" Searching "
set incsearch
set ignorecase
set smartcase

" Finding files "
set path+=**
set wildmenu

" Windows "
set splitbelow
set splitright
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Buffers "
nnoremap gb :ls<CR>:b<Space>

" Tags "
command! MakeTags !ctags -R .

" Keymaps "
nnoremap Y y$
nnoremap <F5> :w<CR>:!make<CR>

" Spelling "
nnoremap <F6> :setlocal spell! spelllang=pl<CR>
nnoremap <F7> :setlocal spell! spelllang=en<CR>

" Themes "
"let g:airline_theme='term'
"let g:airline_powerline_fonts=1

" Git "
"autocmd BufWritePost * GitGutter

" Plugins "
"call plug#begin()
    "Plug 'airblade/vim-gitgutter'
    "Plug 'valloric/youcompleteme'
    "Plug 'octol/vim-cpp-enhanced-highlight'
    "Plug 'pangloss/vim-javascript'
    "Plug 'ap/vim-css-color'
    "Plug 'bling/vim-airline'
    "Plug 'vim-airline/vim-airline-themes'
"call plug#end()
