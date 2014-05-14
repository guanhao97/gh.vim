 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "                                                                     "
 " .##.....##.##....##....##.....##.####.##.....##.########...######.  " 
 " .###...###..##..##.....##.....##..##..###...###.##.....##.##....##  "
 " .####.####...####......##.....##..##..####.####.##.....##.##......  "
 " .##.###.##....##.......##.....##..##..##.###.##.########..##......  " 
 " .##.....##....##........##...##...##..##.....##.##...##...##......  "
 " .##.....##....##.........##.##....##..##.....##.##....##..##....##  "
 " .##.....##....##..........###....####.##.....##.##.....##..######.  "
 "                                                                     "
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""" Compulsory Vundle code
set nocompatible  " be iMproved, required
filetype off  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Alternatively, pass a path where Vundle should install Bundles
" Call vundle#begin('~/some/path/here')
set runtimepath=/home/guanhao97/.vim,$VIMRUNTIME

"""""" PLUGINS
" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'mbadran/headlights'
Plugin 'tpope/vim-fugitive'

"""""" STARTUP SETTINGS
" .vimrc reload
autocmd! bufwritepost .vimrc source %

" NERDTree Settings
autocmd VimEnter * NERDTree  " Open on startup
autocmd VimEnter * wincmd w  " Move focus away from NERDTree
let NERDTreeShowBookmarks=1  " Show bookmarks on startup

"""""" MISC. SETTINGS
" Indent settings set tabstop=4
set tabstop=4

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

set nu  " Turn on line numbering. Turn it off with 'set nonu' 
set showcmd  " Show (partial) command in status line.
set colorcolumn=80  " Set the ruler to 80 columns
highlight ColorColumn guibg=Black
set ignorecase  " Ignore case in search patterns
set scrolloff=3  " Keep at least 3 lines above/below"
syntax on  " Set syntax on
set ic  " Case insensitive search
set hls  " Higlhight search
set lbr  " Wrap text instead of being on one line

""""""" APPEARANCE SETTINGS
" Set font
if has('gui_running')
  set guifont=Consolas\ 12
endif

" Set initial size of window
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=24
  endif
  if exists("+columns")
    set columns=80
  endif
endif

" Remove toolbar
:set guioptions-=T  " remove toolbar
:set guioptions-=L  " remove left-hand scroll bar

" Color settings
set t_Co=256
colorscheme molokai
set background=dark

"""""" KEYMAP SETTINGS
" The following are my custom keymappings
" Disabling arrow keys for training
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

"""""" NECESSARY ENDING VUNDLE CODE
call vundle#end()
filetype plugin indent on

