set nocompatible              " be iMproved, required
filetype off                  " required set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-scripts/Conque-GDB'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'
Plugin 'rking/ag.vim'
Plugin 'jremmen/vim-ripgrep'

Plugin 'rust-lang/rust.vim'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/vim-lsp'
"Plugin 'prabirshrestha/asyncomplete.vim'
"Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'ncm2/ncm2'
Plugin 'rhysd/git-messenger.vim'
Plugin 'andreypopp/vim-colors-plain'
Plugin 'neoclide/coc.nvim', {'pinned': 1}
Plugin 'jacoborus/tender.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line

Bundle 'sonph/onehalf', {'rtp': 'vim/'}
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

let g:airline#extensions#tabline#enabled = 1
let g:ycm_server_python_interpreter='/usr/bin/python2'

" rustup component add rls rust-analysis rust-src
if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
endif

if executable('rg')
    set grepprg=rg\ --no-heading\ --vimgrep
    set grepformat=%f:%l:%c:%m
endif

let mapleader=' '

set tabstop=4
set shiftwidth=4
set expandtab
set exrc
set secure
set number
syntax on

nnoremap <F5> :make build<CR>
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
nnoremap <leader>h :LspHover<CR>
nnoremap <leader>z :put =strftime('%FT%T')<CR>
nnoremap <F12> :LspDefinition<CR>
nnoremap <leader>h :nohl<CR>
nnoremap Č :
nnoremap Ч :

set diffopt+=iwhite

set undodir=~/.vimdid
set undofile
set modeline

"alphsubs ---------------------- {{{
        execute "digraphs ks " . 0x2096
        execute "digraphs as " . 0x2090
        execute "digraphs es " . 0x2091
        execute "digraphs hs " . 0x2095
        execute "digraphs is " . 0x1D62
        execute "digraphs ks " . 0x2096
        execute "digraphs ls " . 0x2097
        execute "digraphs ms " . 0x2098
        execute "digraphs ns " . 0x2099
        execute "digraphs os " . 0x2092
        execute "digraphs ps " . 0x209A
        execute "digraphs rs " . 0x1D63
        execute "digraphs ss " . 0x209B
        execute "digraphs ts " . 0x209C
        execute "digraphs us " . 0x1D64
        execute "digraphs vs " . 0x1D65
        execute "digraphs xs " . 0x2093
"}}}


set virtualedit=all
set termguicolors

au BufReadPost *.klv :silent %!xxd
"au BufReadPost *.klv :silent !cargo run -- vim % > %.vim 
"au BufReadPost *.klv :source %.vim
"
au BufReadPost *.txt :nnoremap go :m?DONE<CR>
au BufReadPost *.txt :vnoremap go :m?DONE<CR>
au BufReadPost *.txt :nnoremap == 80i=<ESC> :put =strftime('%FT%T')<CR> 

map а a
map б b
map в v
map г g
map д d
map ђ ]
map е e
map ж \\
map з z
map и i
map ј j
map к k
map л l
map љ q
map м m
map н n
map њ w
map о o
map п p
map р r
map с s
map т t
map ћ '
map у u
map ф f
map х h
map ц c
map ч ;
map џ x
map ш [

map А A
map Б B
map В V
map Г G
map Д D
map Ђ }
map Е E
map Ж '|'
map З Z
map И I
map Ј J
map К K
map Л L
map Љ Q
map М M
map Н N
map Њ W
map О O
map П P
map Р R
map С S
map Т T
map Ћ "
map У U
map Ф F
map Х H
map Ц C
map Ч :
map Џ X
map Ш {

map š [
map Š {
map đ ]
map Đ }
map č ;
map Č :
map ć '
map Ć "
map ž \\
map Ž '|'

