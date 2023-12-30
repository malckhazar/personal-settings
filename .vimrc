set nocompatible              " be iMproved, required
filetype off                  " required

" some useful plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'preservim/NERDTree'
Plugin 'https://github.com/preservim/nerdtree.git'
Plugin 'https://github.com/vim-airline/vim-airline.git'
Plugin 'https://github.com/vim-airline/vim-airline-themes.git'
Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/preservim/tagbar.git'
" Plugin 'https://github.com/ludovicchabant/vim-gutentags.git'
call vundle#end()
filetype plugin indent on    " required
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set softtabstop=4

" airline theme
let g:airline_theme='violet'

" security
set exrc
set secure

set colorcolumn=90
highlight ColorColumn ctermbg=darkgray

" set *.h files to be treated as C files
augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

" Tagbar hotkey
nmap <F8> :TagbarToggle<CR>

set background=dark
set t_Co=256

set number

