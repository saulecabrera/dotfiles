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
Plugin 'gregsexton/Atom'
Plugin 'raphamorim/lucario'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'mxw/vim-jsx'
Plugin 'elixir-lang/vim-elixir'
Plugin 'junegunn/goyo.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'morhetz/gruvbox'
Plugin 'chriskempson/tomorrow-theme'
Plugin 'lsdr/monokai'
Plugin 'trusktr/seti.vim'
call vundle#end()
filetype plugin indent on

if has('gui_running')
  set guifont=Monaco:h13
  set background=dark
  colorscheme gruvbox
else
  set term=screen-256color
  set t_Co=256
  set background=dark
  "colorscheme gruvbox
  "let g:hybrid_reduced_contrast = 1
  "let g:hybrid_use_Xresources = 1
  "let g:gruvbox_termcolors=16
  "16 if solarized is the current terminal theme
  "256 if solarized is not the current terminal theme
  "let g:solarized_termcolors=16
  "let g:solarized_contrast="high"
endif
set cursorline
set number
syntax on
set backspace=indent,eol,start
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

let g:airline#extensions#tabline#enabled = 1 "showing buffer tabs
let g:airline_powerline_fonts = 0
set laststatus=2 "for vim-airline to work

"enable jsx in files with js extension
let g:jsx_ext_required = 0

"enabling comments in italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic

"disabling arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
