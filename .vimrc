set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'ekalinin/Dockerfile.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-scripts/Conque-GDB'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rking/ag.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer.git'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line

let g:airline#extensions#tabline#enabled = 1

set tabstop=4
set shiftwidth=4
set expandtab
set exrc
set secure
set number
syntax on

nnoremap <F5> :wall :make<CR>
nnoremap <F8> :cn<CR>
nnoremap <S-F8> :cp<CR>
nnoremap <F7> :cw<CR>
nnoremap <F2> :b Makefile<CR>
nnoremap <F3> :e %:r.h<CR>
nnoremap <F4> :e %:r.cpp<CR>
nnoremap <S-F2> :b Makefile.files<CR>
set tags=./tags;,tags;

set mouse=a
nnoremap <F1> :bd<CR>

nnoremap gr :Ag <cword><CR>
nnoremap <leader>F :Files<CR>
nnoremap <leader>T :Tags<CR>
nnoremap <leader>G :GFiles?<CR>
nnoremap <leader>L :Buffers<CR>
nnoremap <leader>D :Gdiff<CR>
nnoremap <leader>S :Gstatus<CR>
nnoremap Č :
nnoremap Ч :

set clipboard=unnamedplus
set diffopt+=iwhite
