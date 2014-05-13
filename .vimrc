set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Alternatively, pass a path where Vundle should install plugins
" Call vundle#begin('~/some/path/here')
 
" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

:set runtimepath=/home/guanhao97/.vim,$VIMRUNTIME

" Indent settings set tabstop=4
set shiftwidth=4
set smartindent

set nu  " Turn on line numbering. Turn it off with 'set nonu' 
set showcmd  " Show (partial) command in status line.
set colorcolumn=80  " Set the ruler to 80 columns
set ignorecase  " Ignore case in search patterns
set scrolloff=3  " Keep at least 3 lines above/below"
syntax on  " Set syntax on
set ic  " Case insensitive search
set hls  " Higlhight search
set lbr  " Wrap text instead of being on one line

" Appearance
if has('gui_running')
  set guifont=Consolas\ 12
endif
" Color settings
set t_Co=256
colorscheme molokai
set background=dark

" The following are my custom keymappings
" Disabling arrow keys for training
" Replaced Caps-Lock with Escape on OS level
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

call vundle#end()
filetype plugin indent on

