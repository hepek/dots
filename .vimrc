set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rust-lang/rust.vim' 
Plugin 'junegunn/fzf.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line

set tabstop=4
set shiftwidth=4
set expandtab
syntax on
set number
colorscheme industry

nnoremap <F5> :make<CR>
nnoremap <F8> :cn<CR>
nnoremap <S-F8> :cp<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>g :GFiles?<CR>
nnoremap <Leader>t :Tags<CR>
nnoremap <Leader>l :Lines<CR>


