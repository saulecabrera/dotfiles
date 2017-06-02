set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"Colors
Plugin 'whatyouhide/vim-gotham'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'chriskempson/vim-tomorrow-theme'

"Colors - Airline
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Elixir
Plugin 'elixir-lang/vim-elixir'
Plugin 'slashmili/alchemist.vim'

"Rust
Plugin 'wting/rust.vim'
Plugin 'jiangmiao/auto-pairs'

"Clojure
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-classpath'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'

"JS
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mxw/vim-jsx'
Plugin 'kchmck/vim-coffee-script'

"LESS
Plugin 'groenewege/vim-less'

"Markdown
Plugin 'tpope/vim-markdown'
Plugin 'junegunn/goyo.vim'

"Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'cohama/agit.vim'

"Editing
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'duggiefresh/vim-easydir'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'ervandew/supertab'
call vundle#end()
filetype plugin indent on

"mapping
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>x :Explore<CR>

"workaround for nvim clipboard
vnoremap <LeftRelease> "*ygv

if has('gui_running')
  set macligatures
  set guifont=DejaVu\ Sans\ Code:h13
  colorscheme gruvbox
  set guioptions-=R
  set guioptions-=r
  set guioptions-=L
  set guioptions-=l
else
  if $TERM_PROGRAM =~ "iTerm"
    set termguicolors
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  endif
  colorscheme gruvbox
  let g:gruvbox_termcolors=256
  let g:gruvbox_contrast_dark="dark"
endif
set background=dark
set cursorline
set number
syntax on
set backspace=indent,eol,start
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set ignorecase
set smartcase
set hlsearch

"airline configuration
let g:airline#extensions#tabline#enabled = 0
let g:airline_left_sep = '>'
let g:airline_right_sep = '<'
let g:airline_powerline_fonts = 0
let g:airline_solarized_normal_green = 1
let g:airline_theme = 'gruvbox'
set laststatus=2 "for vim-airline to work

"enable jsx in files with js extension
let g:jsx_ext_required = 0

"enabling comments in italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
"highlight Comment cterm=italic

"vim-instant-markdown config
"display changes on save
let g:instant_markdown_slow = 1
"do not auto start plugin on opening a markdown buffer
"start the plugin manually with :InstantMarkdownPreview
let g:instant_markdown_autostart = 0

"omnicompletion configuration
set omnifunc=syntaxcomplete#Complete

"disabling arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"gitgutter
set updatetime=250

set mouse=a
