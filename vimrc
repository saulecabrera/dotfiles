set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'whatyouhide/vim-gotham'
Plugin 'wting/rust.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jiangmiao/auto-pairs'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mxw/vim-jsx'
Plugin 'elixir-lang/vim-elixir'
Plugin 'junegunn/goyo.vim'
Plugin 'morhetz/gruvbox'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-classpath'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'
Plugin 'slashmili/alchemist.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
call vundle#end()
filetype plugin indent on

"mapping
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gc :Gcommit<CR>

if has('gui_running')
  set guifont=Monaco:h14
  set background=dark
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
  set background=dark
  colorscheme gruvbox
  let g:gruvbox_termcolors=256
  let g:gruvbox_contrast_dark="hard"
endif
set cursorline
set number
syntax on
set backspace=indent,eol,start
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set ignorecase
set hlsearch

"airline configuration
let g:airline#extensions#tabline#enabled = 0
let g:airline_left_sep = '>'
let g:airline_right_sep = '<'
let g:airline_powerline_fonts = 1
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
