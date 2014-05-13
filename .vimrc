set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
 
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

:set runtimepath=/home/guanhao97/.vim,$VIMRUNTIME

" Turn on line numbering. Turn it off with "set nonu" 
set nu 

" Set syntax on
syntax on

" Indent automatically depending on filetype
filetype indent on
set autoindent

" Case insensitive search
set ic

" Higlhight search
set hls

" Wrap text instead of being on one line
set lbr

set t_Co=256
colorscheme molokai
set background=dark

" The following are my custom keymappings
" Disabling arrow keys for training
" Replacing Esc with Caps-Lock for productivity
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
