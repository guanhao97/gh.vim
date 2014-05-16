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

"""""""""""""""""""""""""""""""""""""""""""""""""" 
" => COMPULSORY VUNDLE CODE & RUNTIME PATHS
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible  " be iMproved, required
filetype off  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Alternatively, pass a path where Vundle should install Bundles
" Call vundle#begin('~/some/path/here')
set runtimepath=/home/guanhao97/.vim,$VIMRUNTIME

"""""""""""""""""""""""""""""""""""""""""""""""""" 
" => PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""
" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-obsession'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'szw/vim-g'
Plugin 'matchit'
Plugin 'Yggdroot/indentLine'
Plugin 'maxbrunsfeld/vim-yankstack'

"""""""""""""""""""""""""""""""""""""""""""""""""" 
" => PLUGINS SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""
""""" PLUGIN SETTINGS
" Continue session from saved session file
source /$HOME/Session.vim

NERDTree Settings
let NERDTreeShowBookmarks=1  " Show bookmarks on startup

"""""""""""""""""""""""""""""""""""""""""""""""""" 
" => MISCELLANEOUS SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs Settings
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set textwidth=80

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

set showcmd  " Show (partial) command in status line.
set ignorecase  " Ignore case in search patterns
set scrolloff=3  " Keep at least 3 lines above/below"
syntax on  " Set syntax on
set ic  " Case insensitive search
set hls  " Higlhight search
set lbr  " Wrap text instead of being on one line

"""""""""""""""""""""""""""""""""""""""""""""""""" 
" => APPEARANCE
""""""""""""""""""""""""""""""""""""""""""""""""""
set nu  " Turn on line numbering. Turn it off with 'set nonu' 

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
set guioptions-=T  " remove toolbar
set guioptions-=L  " remove left-hand scroll bar

" Color settings
set t_Co=256
colorscheme molokai
set background=dark

"""""""""""""""""""""""""""""""""""""""""""""""""" 
" => KEYMAPS
""""""""""""""""""""""""""""""""""""""""""""""""""
" The following are my custom keymappings
" Disabling arrow keys for training
inoremap  <Up>           <NOP>
inoremap  <Down>         <NOP>
inoremap  <Left>         <NOP>
inoremap  <Right>        <NOP>
noremap   <Up>           <NOP>
noremap   <Down>         <NOP>
noremap   <Left>         <NOP>
noremap   <Right>        <NOP>
nmap      <S-Enter> O    <Esc>j
nmap      <CR>           o<Esc>k
noremap   <F1>           :Obsession<CR>
noremap   <F2>           :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""" 
" => VUNDLE END CODE
""""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#end()
filetype plugin indent on

