set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'whatyouhide/vim-gotham'
Plugin 'wting/rust.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jiangmiao/auto-pairs'
Plugin 'pangloss/vim-javascript'
Plugin 'gregsexton/Atom'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'raphamorim/lucario'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'mxw/vim-jsx'
Plugin 'elixir-lang/vim-elixir'
Plugin 'junegunn/goyo.vim'
call vundle#end()
filetype plugin indent on

set t_Co=256
if has('gui_running')
  set guifont=Inconsolata:h16
  colorscheme atom
else
  set background=dark
  colorscheme gotham
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

"disabling arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
