
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
 " By Chan Guan Hao                                                    "
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""" 
" => START CODE & RUNTIME PATHS
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible  " be iMproved, required
filetype off  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Alternatively, pass a path where Vundle should install Bundles
" Call vundle#begin('~/some/path/here')
set runtimepath=/home/guanhao97/.vim,$VIMRUNTIME
set backupdir=/$HOME/tmp

" Set no backup
set nobackup       
set nowritebackup
set noswapfile

" Avoid welcome message
set shortmess+=I

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
Plugin 'Lokaltog/vim-easymotion'
Plugin 'szw/vim-g'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'matchit'
Plugin 'Raimondi/delimitMate'

"""""""""""""""""""""""""""""""""""""""""""""""""" 
" => PLUGINS SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree Settings
let NERDTreeShowBookmarks=1  " Show bookmarks on startup

" Windowswap Settings
let g:windowswap_map_keys=0  " Prevent default bindings

" CTRL-p Settings
let g:ctrlp_open_new_file = 'v'

"""""""""""""""""""""""""""""""""""""""""""""""""" 
" => MISCELLANEOUS SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs Settings
set softtabstop=4
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent

" <Ctrl-l> redraws the screen and removes any search highlighting.

set showcmd  " Show (partial) command in status line.
set ignorecase  " Ignore case in search patterns
set scrolloff=3  " Keep at least 3 lines above/below"
syntax on  " Set syntax on
set ic  " Case insensitive search
set hls  " Higlhight search
set lbr  " Wrap text instead of being on one line

" Directory management
set autochdir

"""""""""""""""""""""""""""""""""""""""""""""""""" 
" => APPEARANCE
""""""""""""""""""""""""""""""""""""""""""""""""""
set nu  " Turn on line numbering 

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
set guioptions-=m  " Remove menubar
set guioptions-=T  " Remove toolbar
set guioptions-=L  " Remove left-hand scroll bar
set guioptions-=r  " Remove left-hand scroll bar

" Color settings
set t_Co=256
colorscheme molokai
highlight NonText ctermfg=bg guifg=bg

"""""""""""""""""""""""""""""""""""""""""""""""""" 
" => KEYMAPS
""""""""""""""""""""""""""""""""""""""""""""""""""
" Insert Mode
" Disabling arrow keys for training
inoremap  <Up>                <NOP>
inoremap  <Down>              <NOP>
inoremap  <Left>              <NOP>
inoremap  <Right>             <NOP>

" Normal Mode
nnoremap  <S-Enter>           O<Esc>
nnoremap  <CR>                o<Esc>
nnoremap  <C-z>               "*p
nnoremap  =                   <C-w>=
nnoremap  <C-l>               :nohl<CR><C-l>
nnoremap  <C-s>               :w<CR><C-s>   

" All modes
noremap   <Up>                <NOP> 
noremap   <Down>              <NOP>
noremap   <Left>              <NOP>
noremap   <Right>             <NOP>
noremap   <C-n>               :vnew<CR>
noremap   <C-N>               :new<CR>
noremap   <C-a>               :%y+<CR>
noremap   <C-q>               :q<CR>
noremap   <leader>w           <C-W>r
noremap   <F1>                :NERDTreeToggle /home/guanhao97/Desktop/chem-mystery<CR>              
noremap   <F2>                :vnew /$HOME/.vimrc<CR>
noremap   <F3>                :!xmodmap /$HOME/.Xmodmap<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""" 
" => END CODE
""""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#end()
filetype plugin indent on
autocmd VimEnter * winc =  " Equalizes the window sizes

""""""""""""""""""""""""""""""""""""""""""""""""""

