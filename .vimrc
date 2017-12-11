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
"Plugin 'Valloric/YouCompleteMe'

Plugin 'ekalinin/Dockerfile.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-scripts/Conque-GDB'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


set tabstop=4
set shiftwidth=4
set expandtab
set exrc
set secure
nnoremap <F5> :wall<CR> :make<CR>
nnoremap <S-F5> :make clean && make<CR>
nnoremap <F8> :cn<CR>
nnoremap <S-F8> :cp<CR>
nnoremap <F7> :cw<CR>
nnoremap <F2> :b Makefile<CR>
nnoremap <F3> :e %:r.h<CR>
nnoremap <F4> :e %:r.cpp<CR>
nnoremap <S-F2> :b Makefile.files<CR>
set tags=./tags;,tags;
colorscheme desert
set number

syntax on
nnoremap gr :grep -r <cword> * 
nnoremap <leader>f :Files<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>g :GFiles?<CR>
nnoremap <leader>l :Buffers<CR>
nnoremap <leader>d :Gdiff<CR>
nnoremap <leader>s :Gstatus<CR>
nnoremap <F9> :cd %:p:h
nnoremap <F6> :make %:r.o 
